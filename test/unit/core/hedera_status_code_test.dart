import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('HederaStatusCode', () {
    group('fromCode', () {
      test('returns success for code 22', () {
        final status = HederaStatusCode.fromCode(22);
        expect(status, equals(HederaStatusCode.success));
      });

      test('returns insufficientAccountBalance for code 18', () {
        final status = HederaStatusCode.fromCode(18);
        expect(
          status,
          equals(HederaStatusCode.insufficientAccountBalance),
        );
      });

      test('returns invalidSignature for code 7', () {
        final status = HederaStatusCode.fromCode(7);
        expect(status, equals(HederaStatusCode.invalidSignature));
      });

      test('returns tokenNotAssociatedToAccount for code 184', () {
        final status = HederaStatusCode.fromCode(184);
        expect(
          status,
          equals(HederaStatusCode.tokenNotAssociatedToAccount),
        );
      });

      test('returns unknown for unrecognized code', () {
        final status = HederaStatusCode.fromCode(9999);
        expect(status.name, equals('UNKNOWN_STATUS'));
      });

      test('unknown code preserves original code value', () {
        final status = HederaStatusCode.fromCode(9999);
        expect(status.code, equals(9999));
      });
    });

    group('toString', () {
      test('returns name for success', () {
        expect(HederaStatusCode.success.toString(), equals('SUCCESS'));
      });

      test('returns name for insufficientAccountBalance', () {
        expect(
          HederaStatusCode.insufficientAccountBalance.toString(),
          equals('INSUFFICIENT_ACCOUNT_BALANCE'),
        );
      });
    });

    group('equality', () {
      test('same code is equal', () {
        final a = HederaStatusCode.fromCode(22);
        final b = HederaStatusCode.fromCode(22);
        expect(a, equals(b));
      });

      test('different codes are not equal', () {
        expect(
          HederaStatusCode.success,
          isNot(equals(HederaStatusCode.invalidSignature)),
        );
      });

      test('hashCode is consistent with equality', () {
        final a = HederaStatusCode.fromCode(22);
        final b = HederaStatusCode.fromCode(22);
        expect(a.hashCode, equals(b.hashCode));
      });
    });

    group('static constants', () {
      test('success has code 22', () {
        expect(HederaStatusCode.success.code, equals(22));
      });

      test('transactionExpired has code 4', () {
        expect(HederaStatusCode.transactionExpired.code, equals(4));
      });

      test('tokenIsPaused has code 260', () {
        expect(HederaStatusCode.tokenIsPaused.code, equals(260));
      });

      test('invalidTokenId has code 150', () {
        expect(HederaStatusCode.invalidTokenId.code, equals(150));
      });
    });
  });
}
