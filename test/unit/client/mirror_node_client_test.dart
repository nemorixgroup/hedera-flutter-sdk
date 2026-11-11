import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

const _base = 'https://mirror.example.com';

const _notFoundBody = '{"_status":{"messages":[{"message":"Not found"}]}}';

const _badParamBody =
    '{"_status":{"messages":[{"message":"Invalid parameter: tokenid"}]}}';

const _page1 = '{"tokens":[{"token_id":"0.0.1"}],'
    '"links":{"next":"/api/v1/accounts/0.0.5/tokens'
    '?limit=100&token.id=gt:0.0.1"}}';

const _page2 = '{"tokens":[{"token_id":"0.0.2"}],"links":{"next":null}}';

http.Response _response(String body, [int status = 200]) =>
    http.Response(body, status);

MirrorNodeClient _client(
  MockClient mock, {
  RetryPolicy retryPolicy = const RetryPolicy(maxAttempts: 3),
  Duration requestTimeout = const Duration(seconds: 5),
  List<Duration>? delays,
}) {
  return MirrorNodeClient(
    baseUrl: _base,
    httpClient: mock,
    retryPolicy: retryPolicy,
    requestTimeout: requestTimeout,
    delay: (duration) async {
      delays?.add(duration);
    },
  );
}

/// An HTTP client that records whether it was closed.
class _TrackingClient extends http.BaseClient {
  bool closed = false;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    return http.StreamedResponse(
      Stream<List<int>>.value(utf8.encode('{}')),
      200,
    );
  }

  @override
  void close() {
    closed = true;
    super.close();
  }
}

void main() {
  group('MirrorNodeClient getJson', () {
    test('returns the decoded JSON object', () async {
      final mock = MockClient((request) async => _response('{"a":1}'));

      final result = await _client(mock).getJson('/api/v1/ping');

      expect(result['a'], 1);
    });

    test('builds the URL from path and query parameters', () async {
      late Uri requested;
      final mock = MockClient((request) async {
        requested = request.url;
        return _response('{}');
      });

      await _client(mock).getJson(
        '/api/v1/accounts/0.0.5/tokens',
        queryParameters: {'token.id': '0.0.7'},
      );

      expect(
        requested.toString(),
        '$_base/api/v1/accounts/0.0.5/tokens?token.id=0.0.7',
      );
    });

    test('sends no query string when there are no parameters', () async {
      late Uri requested;
      final mock = MockClient((request) async {
        requested = request.url;
        return _response('{}');
      });

      await _client(mock).getJson('/api/v1/ping', queryParameters: {});

      expect(requested.toString(), '$_base/api/v1/ping');
    });

    test('trims a trailing slash from the base URL', () async {
      late Uri requested;
      final mock = MockClient((request) async {
        requested = request.url;
        return _response('{}');
      });
      final client = MirrorNodeClient(baseUrl: '$_base/', httpClient: mock);

      await client.getJson('/api/v1/ping');

      expect(client.baseUrl, _base);
      expect(requested.toString(), '$_base/api/v1/ping');
    });

    test('404 with notFoundStatus throws HederaStatusException', () async {
      final mock = MockClient(
        (request) async => _response(_notFoundBody, 404),
      );

      await expectLater(
        _client(mock).getJson(
          '/api/v1/accounts/0.0.99999999/tokens',
          notFoundStatus: HederaStatusCode.invalidAccountId,
        ),
        throwsA(
          isA<HederaStatusException>().having(
            (e) => e.statusCode,
            'statusCode',
            HederaStatusCode.invalidAccountId,
          ),
        ),
      );
    });

    test('404 can map to INVALID_NFT_ID (code 226)', () async {
      final mock = MockClient(
        (request) async => _response(_notFoundBody, 404),
      );

      await expectLater(
        _client(mock).getJson(
          '/api/v1/tokens/0.0.1/nfts/1',
          notFoundStatus: HederaStatusCode.fromCode(226),
        ),
        throwsA(
          isA<HederaStatusException>().having(
            (e) => e.statusCode.name,
            'name',
            'INVALID_NFT_ID',
          ),
        ),
      );
    });

    test('404 without notFoundStatus throws MirrorNodeException', () async {
      final mock = MockClient(
        (request) async => _response(_notFoundBody, 404),
      );

      await expectLater(
        _client(mock).getJson('/api/v1/ping'),
        throwsA(
          isA<MirrorNodeException>()
              .having((e) => e.statusCode, 'statusCode', 404)
              .having((e) => e.message, 'message', 'Not found'),
        ),
      );
    });

    test('400 exposes the message from the error body', () async {
      final mock = MockClient(
        (request) async => _response(_badParamBody, 400),
      );

      await expectLater(
        _client(mock).getJson('/api/v1/tokens/abc'),
        throwsA(
          isA<MirrorNodeException>()
              .having((e) => e.statusCode, 'statusCode', 400)
              .having(
                (e) => e.message,
                'message',
                'Invalid parameter: tokenid',
              ),
        ),
      );
    });

    test('a non-JSON error body is used as the message', () async {
      final mock = MockClient((request) async => _response('Forbidden', 403));

      await expectLater(
        _client(mock).getJson('/api/v1/ping'),
        throwsA(
          isA<MirrorNodeException>().having(
            (e) => e.message,
            'message',
            'Forbidden',
          ),
        ),
      );
    });

    test('an empty error body gives no message', () async {
      final mock = MockClient((request) async => _response('', 403));

      await expectLater(
        _client(mock).getJson('/api/v1/ping'),
        throwsA(
          isA<MirrorNodeException>().having(
            (e) => e.message,
            'message',
            isNull,
          ),
        ),
      );
    });

    test('a long error body is shortened', () async {
      final mock = MockClient(
        (request) async => _response('x' * 300, 403),
      );

      await expectLater(
        _client(mock).getJson('/api/v1/ping'),
        throwsA(
          isA<MirrorNodeException>()
              .having((e) => e.message!.length, 'length', 203)
              .having((e) => e.message, 'message', endsWith('...')),
        ),
      );
    });

    test('a 200 with invalid JSON throws MirrorNodeException', () async {
      final mock = MockClient((request) async => _response('not json'));

      await expectLater(
        _client(mock).getJson('/api/v1/ping'),
        throwsA(
          isA<MirrorNodeException>()
              .having((e) => e.statusCode, 'statusCode', 200)
              .having(
                (e) => e.message,
                'message',
                'Response is not a JSON object',
              ),
        ),
      );
    });

    test('a 200 with a JSON array throws MirrorNodeException', () async {
      final mock = MockClient((request) async => _response('[1,2]'));

      await expectLater(
        _client(mock).getJson('/api/v1/ping'),
        throwsA(isA<MirrorNodeException>()),
      );
    });
  });

  group('MirrorNodeClient retries', () {
    test('retries a 503 and then succeeds', () async {
      var calls = 0;
      final delays = <Duration>[];
      final mock = MockClient((request) async {
        calls++;
        return calls == 1 ? _response('busy', 503) : _response('{"ok":1}');
      });

      final result = await _client(mock, delays: delays).getJson('/p');

      expect(result['ok'], 1);
      expect(calls, 2);
      expect(delays, [const Duration(milliseconds: 250)]);
    });

    test('gives up after maxAttempts on persistent 5xx', () async {
      var calls = 0;
      final delays = <Duration>[];
      final mock = MockClient((request) async {
        calls++;
        return _response('busy', 503);
      });

      await expectLater(
        _client(mock, delays: delays).getJson('/p'),
        throwsA(
          isA<MirrorNodeException>().having(
            (e) => e.statusCode,
            'statusCode',
            503,
          ),
        ),
      );

      expect(calls, 3);
      expect(delays, [
        const Duration(milliseconds: 250),
        const Duration(milliseconds: 500),
      ]);
    });

    test('does not retry a 404', () async {
      var calls = 0;
      final mock = MockClient((request) async {
        calls++;
        return _response(_notFoundBody, 404);
      });

      await expectLater(
        _client(mock).getJson('/p'),
        throwsA(isA<MirrorNodeException>()),
      );

      expect(calls, 1);
    });

    test('does not retry a 400', () async {
      var calls = 0;
      final mock = MockClient((request) async {
        calls++;
        return _response(_badParamBody, 400);
      });

      await expectLater(
        _client(mock).getJson('/p'),
        throwsA(isA<MirrorNodeException>()),
      );

      expect(calls, 1);
    });

    test('retries a 429 and then succeeds', () async {
      var calls = 0;
      final mock = MockClient((request) async {
        calls++;
        if (calls == 1) {
          return _response('slow down', 429);
        }
        return _response('{"ok":1}');
      });

      final result = await _client(mock).getJson('/p');

      expect(result['ok'], 1);
      expect(calls, 2);
    });

    test('gives up after maxAttempts on a persistent 429', () async {
      var calls = 0;
      final mock = MockClient((request) async {
        calls++;
        return _response('slow down', 429);
      });

      await expectLater(
        _client(mock).getJson('/p'),
        throwsA(
          isA<MirrorNodeException>().having(
            (e) => e.statusCode,
            'statusCode',
            429,
          ),
        ),
      );

      expect(calls, 3);
    });

    test('retries a network error and then succeeds', () async {
      var calls = 0;
      final mock = MockClient((request) async {
        calls++;
        if (calls == 1) {
          throw http.ClientException('connection reset');
        }
        return _response('{"ok":1}');
      });

      final result = await _client(mock).getJson('/p');

      expect(result['ok'], 1);
      expect(calls, 2);
    });

    test('a persistent network error has no status code', () async {
      var calls = 0;
      final mock = MockClient((request) async {
        calls++;
        throw http.ClientException('connection reset');
      });

      await expectLater(
        _client(mock).getJson('/p'),
        throwsA(
          isA<MirrorNodeException>()
              .having((e) => e.statusCode, 'statusCode', isNull)
              .having(
                (e) => e.message,
                'message',
                contains('Network error'),
              ),
        ),
      );

      expect(calls, 3);
    });

    test('a request that exceeds the timeout is retried then fails', () async {
      var calls = 0;
      final mock = MockClient((request) {
        calls++;
        return Completer<http.Response>().future;
      });

      await expectLater(
        _client(
          mock,
          retryPolicy: const RetryPolicy(maxAttempts: 2),
          requestTimeout: const Duration(milliseconds: 20),
        ).getJson('/p'),
        throwsA(
          isA<MirrorNodeException>()
              .having((e) => e.statusCode, 'statusCode', isNull)
              .having(
                (e) => e.message,
                'message',
                'Request timed out after 20 ms',
              ),
        ),
      );

      expect(calls, 2);
    });

    test('maxAttempts of 1 never retries', () async {
      var calls = 0;
      final delays = <Duration>[];
      final mock = MockClient((request) async {
        calls++;
        return _response('busy', 503);
      });

      await expectLater(
        _client(
          mock,
          retryPolicy: const RetryPolicy(maxAttempts: 1),
          delays: delays,
        ).getJson('/p'),
        throwsA(isA<MirrorNodeException>()),
      );

      expect(calls, 1);
      expect(delays, isEmpty);
    });

    test('maxAttempts below 1 still makes one attempt', () async {
      var calls = 0;
      final mock = MockClient((request) async {
        calls++;
        return _response('{}');
      });

      await _client(
        mock,
        retryPolicy: const RetryPolicy(maxAttempts: 0),
      ).getJson('/p');

      expect(calls, 1);
    });

    test('an Exception that is not transient is rethrown', () async {
      final mock = MockClient((request) async {
        throw const FormatException('bad');
      });

      await expectLater(
        _client(mock).getJson('/p'),
        throwsFormatException,
      );
    });
  });

  group('MirrorNodeClient getAll', () {
    test('follows links.next and joins the pages', () async {
      final urls = <Uri>[];
      final mock = MockClient((request) async {
        urls.add(request.url);
        return _response(urls.length == 1 ? _page1 : _page2);
      });

      final items = await _client(mock).getAll(
        '/api/v1/accounts/0.0.5/tokens',
        listKey: 'tokens',
      );

      expect(items.map((e) => e['token_id']), ['0.0.1', '0.0.2']);
      expect(urls, hasLength(2));
      expect(urls[1].path, '/api/v1/accounts/0.0.5/tokens');
      expect(urls[1].query, 'limit=100&token.id=gt:0.0.1');
    });

    test('adds the default page limit', () async {
      final urls = <Uri>[];
      final mock = MockClient((request) async {
        urls.add(request.url);
        return _response(_page2);
      });

      await _client(mock).getAll('/api/v1/x', listKey: 'tokens');

      expect(urls.single.queryParameters['limit'], '100');
    });

    test('keeps an explicit limit', () async {
      final urls = <Uri>[];
      final mock = MockClient((request) async {
        urls.add(request.url);
        return _response(_page2);
      });

      await _client(mock).getAll(
        '/api/v1/x',
        listKey: 'tokens',
        queryParameters: {'limit': '25', 'token.id': '0.0.2'},
      );

      expect(urls.single.queryParameters['limit'], '25');
      expect(urls.single.queryParameters['token.id'], '0.0.2');
    });

    test('a response without links is a single page', () async {
      final mock = MockClient(
        (request) async => _response('{"tokens":[{"token_id":"0.0.1"}]}'),
      );

      final items = await _client(mock).getAll(
        '/api/v1/x',
        listKey: 'tokens',
      );

      expect(items, hasLength(1));
    });

    test('an empty list returns an empty result', () async {
      final mock = MockClient(
        (request) async => _response('{"tokens":[],"links":{"next":null}}'),
      );

      final items = await _client(mock).getAll(
        '/api/v1/x',
        listKey: 'tokens',
      );

      expect(items, isEmpty);
    });

    test('a missing list key throws MirrorNodeException', () async {
      final mock = MockClient(
        (request) async => _response('{"links":{"next":null}}'),
      );

      await expectLater(
        _client(mock).getAll('/api/v1/x', listKey: 'tokens'),
        throwsA(
          isA<MirrorNodeException>().having(
            (e) => e.message,
            'message',
            contains('tokens'),
          ),
        ),
      );
    });

    test('an item that is not an object throws MirrorNodeException', () async {
      final mock = MockClient(
        (request) async => _response('{"tokens":[1],"links":{"next":null}}'),
      );

      await expectLater(
        _client(mock).getAll('/api/v1/x', listKey: 'tokens'),
        throwsA(isA<MirrorNodeException>()),
      );
    });

    test('throws when more than maxPages pages are needed', () async {
      var calls = 0;
      final mock = MockClient((request) async {
        calls++;
        return _response(
          '{"tokens":[],"links":{"next":"/api/v1/x?p=$calls"}}',
        );
      });

      await expectLater(
        _client(mock).getAll(
          '/api/v1/x',
          listKey: 'tokens',
          maxPages: 3,
        ),
        throwsA(
          isA<MirrorNodeException>().having(
            (e) => e.message,
            'message',
            contains('3 pages'),
          ),
        ),
      );

      expect(calls, 3);
    });

    test('404 maps to HederaStatusException', () async {
      final mock = MockClient(
        (request) async => _response(_notFoundBody, 404),
      );

      await expectLater(
        _client(mock).getAll(
          '/api/v1/accounts/0.0.99999999/tokens',
          listKey: 'tokens',
          notFoundStatus: HederaStatusCode.invalidAccountId,
        ),
        throwsA(isA<HederaStatusException>()),
      );
    });
  });

  group('MirrorNodeClient close', () {
    test('does not close an injected HTTP client', () {
      final tracking = _TrackingClient();

      MirrorNodeClient(baseUrl: _base, httpClient: tracking).close();

      expect(tracking.closed, isFalse);
    });

    test('closing a client with its own HTTP client does not throw', () {
      final client = MirrorNodeClient(baseUrl: _base);

      expect(client.close, returnsNormally);
    });
  });
}
