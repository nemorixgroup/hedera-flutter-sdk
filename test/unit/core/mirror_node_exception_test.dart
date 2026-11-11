import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('MirrorNodeException', () {
    test('stores its fields', () {
      const e = MirrorNodeException(
        path: '/api/v1/tokens/abc',
        statusCode: 400,
        message: 'Invalid parameter: tokenid',
      );

      expect(e.path, '/api/v1/tokens/abc');
      expect(e.statusCode, 400);
      expect(e.message, 'Invalid parameter: tokenid');
    });

    test('statusCode and message are optional', () {
      const e = MirrorNodeException(path: '/api/v1/x');

      expect(e.statusCode, isNull);
      expect(e.message, isNull);
    });

    test('toString includes status, path and message', () {
      const e = MirrorNodeException(
        path: '/api/v1/tokens/abc',
        statusCode: 400,
        message: 'Invalid parameter: tokenid',
      );

      expect(
        e.toString(),
        'MirrorNodeException: HTTP 400 for /api/v1/tokens/abc: '
        'Invalid parameter: tokenid',
      );
    });

    test('toString without message omits the detail', () {
      const e = MirrorNodeException(path: '/api/v1/x', statusCode: 403);

      expect(e.toString(), 'MirrorNodeException: HTTP 403 for /api/v1/x');
    });

    test('toString without status code says no response', () {
      const e = MirrorNodeException(
        path: '/api/v1/x',
        message: 'Network error',
      );

      expect(
        e.toString(),
        'MirrorNodeException: no response for /api/v1/x: Network error',
      );
    });

    test('is an Exception', () {
      expect(const MirrorNodeException(path: '/p'), isA<Exception>());
    });
  });
}
