import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_constants.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_code.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_exception.dart';
import 'package:hedera_flutter_sdk/src/core/mirror_node_exception.dart';
import 'package:http/http.dart' as http;

/// A small HTTP client for the Hedera Mirror Node REST API.
///
/// It performs `GET` requests, decodes the JSON body, follows
/// pagination links and retries transient failures (HTTP 5xx, HTTP 429
/// "too many requests", timeouts and network errors) using the given
/// [RetryPolicy]. Other client errors (4xx) are never retried.
///
/// Use `HederaClient.mirrorNode` to get an instance configured for the
/// active network.
///
/// Example:
/// ```dart
/// final json = await client.mirrorNode.getJson(
///   '/api/v1/tokens/0.0.1135',
///   notFoundStatus: HederaStatusCode.invalidTokenId,
/// );
/// ```
class MirrorNodeClient {
  /// Creates a [MirrorNodeClient] for the Mirror Node at [baseUrl].
  ///
  /// If [httpClient] is omitted, an internal client is created and
  /// released by [close]. A client passed in is never closed by this
  /// class. [delay] replaces the wait between retries, which is
  /// useful in tests.
  MirrorNodeClient({
    required String baseUrl,
    http.Client? httpClient,
    this.retryPolicy = const RetryPolicy(),
    this.requestTimeout = const Duration(seconds: 30),
    Future<void> Function(Duration)? delay,
  })  : baseUrl = _trimTrailingSlash(baseUrl),
        _http = httpClient ?? http.Client(),
        _ownsHttpClient = httpClient == null,
        _delay = delay ?? _defaultDelay;

  /// The Mirror Node base URL, without a trailing slash.
  final String baseUrl;

  /// The retry policy for transient failures.
  final RetryPolicy retryPolicy;

  /// The maximum time to wait for each HTTP request.
  final Duration requestTimeout;

  final http.Client _http;
  final bool _ownsHttpClient;
  final Future<void> Function(Duration) _delay;

  static String _trimTrailingSlash(String url) =>
      url.endsWith('/') ? url.substring(0, url.length - 1) : url;

  static Future<void> _defaultDelay(Duration duration) =>
      Future<void>.delayed(duration);

  /// Releases the internal HTTP client, if this instance created one.
  void close() {
    if (_ownsHttpClient) {
      _http.close();
    }
  }

  /// Performs a `GET` request and returns the decoded JSON object.
  ///
  /// [path] must start with `/`, for example `/api/v1/tokens/0.0.1135`.
  ///
  /// If the server answers 404 and [notFoundStatus] is set, a
  /// `HederaStatusException` with that status is thrown, which matches
  /// the behavior of the official SDKs (for example
  /// `INVALID_ACCOUNT_ID`). Any other failure throws a
  /// [MirrorNodeException].
  Future<Map<String, dynamic>> getJson(
    String path, {
    Map<String, String>? queryParameters,
    HederaStatusCode? notFoundStatus,
  }) {
    return _get(_buildUri(path, queryParameters), notFoundStatus);
  }

  /// Performs a `GET` request and follows `links.next` until every page
  /// has been read, returning the items found under [listKey].
  ///
  /// A `limit` of [HederaConstants.mirrorNodeMaxPageSize] is added when
  /// [queryParameters] does not set one. Throws a [MirrorNodeException]
  /// if more than [maxPages] pages are needed.
  Future<List<Map<String, dynamic>>> getAll(
    String path, {
    required String listKey,
    Map<String, String>? queryParameters,
    HederaStatusCode? notFoundStatus,
    int maxPages = 100,
  }) async {
    final query = <String, String>{
      'limit': HederaConstants.mirrorNodeMaxPageSize.toString(),
      ...?queryParameters,
    };

    final items = <Map<String, dynamic>>[];
    var uri = _buildUri(path, query);

    for (var page = 0; page < maxPages; page++) {
      final json = await _get(uri, notFoundStatus);

      final list = json[listKey];
      if (list is! List<dynamic>) {
        throw MirrorNodeException(
          path: uri.toString(),
          message: 'Response has no "$listKey" array',
        );
      }
      for (final entry in list) {
        if (entry is! Map<String, dynamic>) {
          throw MirrorNodeException(
            path: uri.toString(),
            message: 'Unexpected item in "$listKey"',
          );
        }
        items.add(entry);
      }

      final links = json['links'];
      final next = links is Map<String, dynamic> ? links['next'] : null;
      if (next is! String || next.isEmpty) {
        return items;
      }
      uri = Uri.parse('$baseUrl$next');
    }

    throw MirrorNodeException(
      path: path,
      message: 'More than $maxPages pages of results',
    );
  }

  Uri _buildUri(String path, Map<String, String>? queryParameters) {
    return Uri.parse(baseUrl).replace(
      path: path,
      queryParameters: (queryParameters == null || queryParameters.isEmpty)
          ? null
          : queryParameters,
    );
  }

  Future<Map<String, dynamic>> _get(
    Uri uri,
    HederaStatusCode? notFoundStatus,
  ) async {
    final maxAttempts =
        retryPolicy.maxAttempts < 1 ? 1 : retryPolicy.maxAttempts;

    for (var attempt = 1;; attempt++) {
      final http.Response response;
      try {
        response = await _http.get(uri).timeout(requestTimeout);
      } on Exception catch (e) {
        if (!_isTransient(e)) {
          rethrow;
        }
        if (attempt >= maxAttempts) {
          throw MirrorNodeException(
            path: uri.toString(),
            message: _describe(e),
          );
        }
        await _delay(retryPolicy.backoffFor(attempt));
        continue;
      }

      if (_isRetryableStatus(response.statusCode) && attempt < maxAttempts) {
        await _delay(retryPolicy.backoffFor(attempt));
        continue;
      }
      return _parse(response, uri, notFoundStatus);
    }
  }

  bool _isRetryableStatus(int status) => status >= 500 || status == 429;

  bool _isTransient(Exception e) =>
      e is TimeoutException ||
      e is SocketException ||
      e is http.ClientException;

  String _describe(Exception e) => e is TimeoutException
      ? 'Request timed out after ${requestTimeout.inMilliseconds} ms'
      : 'Network error: $e';

  Map<String, dynamic> _parse(
    http.Response response,
    Uri uri,
    HederaStatusCode? notFoundStatus,
  ) {
    final status = response.statusCode;

    if (status == 404 && notFoundStatus != null) {
      throw HederaStatusException(notFoundStatus);
    }

    if (status < 200 || status >= 300) {
      throw MirrorNodeException(
        path: uri.toString(),
        statusCode: status,
        message: _errorMessage(response.body),
      );
    }

    try {
      final decoded = jsonDecode(response.body);
      if (decoded is Map<String, dynamic>) {
        return decoded;
      }
    } on FormatException {
      // Falls through to the exception below.
    }
    throw MirrorNodeException(
      path: uri.toString(),
      statusCode: status,
      message: 'Response is not a JSON object',
    );
  }

  /// Extracts the first message of a Mirror Node error body
  /// (`{"_status": {"messages": [{"message": "..."}]}}`), or falls back
  /// to the raw body, shortened.
  String? _errorMessage(String body) {
    if (body.isEmpty) {
      return null;
    }
    try {
      final decoded = jsonDecode(body);
      if (decoded is Map<String, dynamic>) {
        final status = decoded['_status'];
        if (status is Map<String, dynamic>) {
          final messages = status['messages'];
          if (messages is List<dynamic> && messages.isNotEmpty) {
            final first = messages.first;
            if (first is Map<String, dynamic> && first['message'] is String) {
              return first['message'] as String;
            }
          }
        }
      }
    } on FormatException {
      // Not JSON; use the raw body below.
    }
    return body.length > 200 ? '${body.substring(0, 200)}...' : body;
  }
}
