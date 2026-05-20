import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('HederaStatusException', () {
    test('is an Exception', () {
      const exception = HederaStatusException(
        HederaStatusCode.success,
      );
      expect(exception, isA<Exception>());
    });

    test('stores status code correctly', () {
      const exception = HederaStatusException(
        HederaStatusCode.insufficientAccountBalance,
      );
      expect(
        exception.statusCode,
        equals(HederaStatusCode.insufficientAccountBalance),
      );
    });

    test('toString includes status name and code', () {
      const exception = HederaStatusException(
        HederaStatusCode.invalidSignature,
      );
      expect(exception.toString(), contains('INVALID_SIGNATURE'));
      expect(exception.toString(), contains('7'));
    });

    test('toString format is correct', () {
      const exception = HederaStatusException(
        HederaStatusCode.success,
      );
      expect(
        exception.toString(),
        equals('HederaStatusException: SUCCESS (22)'),
      );
    });

    test('can be thrown and caught', () {
      expect(
        () => throw const HederaStatusException(
          HederaStatusCode.transactionExpired,
        ),
        throwsA(isA<HederaStatusException>()),
      );
    });

    test('caught exception has correct status code', () {
      try {
        throw const HederaStatusException(
          HederaStatusCode.tokenIsPaused,
        );
      } on HederaStatusException catch (e) {
        expect(e.statusCode, equals(HederaStatusCode.tokenIsPaused));
      }
    });
  });
}
