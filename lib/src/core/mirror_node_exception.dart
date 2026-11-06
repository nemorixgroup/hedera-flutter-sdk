/// Thrown when a Mirror Node REST request fails.
///
/// Consensus-style failures (an unknown account or token) are reported
/// as `HederaStatusException` instead; this exception covers everything
/// else: HTTP errors, malformed responses, timeouts and network
/// failures that persist after the retries of the client's
/// `RetryPolicy`.
///
/// Example:
/// ```dart
/// try {
///   await client.mirrorNode.getJson('/api/v1/tokens/abc');
/// } on MirrorNodeException catch (e) {
///   print(e.statusCode); // 400
///   print(e.message);
/// }
/// ```
class MirrorNodeException implements Exception {
  /// Creates a [MirrorNodeException].
  const MirrorNodeException({
    required this.path,
    this.statusCode,
    this.message,
  });

  /// The HTTP status code, or null when no HTTP response was received
  /// (timeout or network failure).
  final int? statusCode;

  /// The request path and query that failed.
  final String path;

  /// A human-readable detail, when one is available.
  final String? message;

  @override
  String toString() {
    final status = statusCode == null ? 'no response' : 'HTTP $statusCode';
    final detail = message == null ? '' : ': $message';
    return 'MirrorNodeException: $status for $path$detail';
  }
}
