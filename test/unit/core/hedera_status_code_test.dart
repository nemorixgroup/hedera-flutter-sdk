import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/response_code.pbenum.dart';

void main() {
  group('HederaStatusCode', () {
    group('fromCode', () {
      test('returns success for code 22', () {
        final status = HederaStatusCode.fromCode(22);
        expect(status, equals(HederaStatusCode.success));
      });

      test('returns insufficientAccountBalance for code 28', () {
        final status = HederaStatusCode.fromCode(28);
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

      test('returns accountFrozenForToken for code 165', () {
        final status = HederaStatusCode.fromCode(165);
        expect(status, equals(HederaStatusCode.accountFrozenForToken));
      });

      test('returns accountKycNotGrantedForToken for code 176', () {
        final status = HederaStatusCode.fromCode(176);
        expect(
          status,
          equals(HederaStatusCode.accountKycNotGrantedForToken),
        );
      });

      test('returns tokenHasNoKycKey for code 177', () {
        final status = HederaStatusCode.fromCode(177);
        expect(status, equals(HederaStatusCode.tokenHasNoKycKey));
      });

      test('returns tokenHasNoFreezeKey for code 172', () {
        final status = HederaStatusCode.fromCode(172);
        expect(status, equals(HederaStatusCode.tokenHasNoFreezeKey));
      });

      test('code 18 is RECEIPT_NOT_FOUND, not an account balance error', () {
        final status = HederaStatusCode.fromCode(18);
        expect(status.name, equals('RECEIPT_NOT_FOUND'));
        expect(
          status,
          isNot(equals(HederaStatusCode.insufficientAccountBalance)),
        );
      });

      test('resolves a code without a constant through the proto enum', () {
        final status = HederaStatusCode.fromCode(181);
        expect(status.name, equals('TOKEN_HAS_NO_WIPE_KEY'));
      });

      test('fallback by name preserves the original code value', () {
        final status = HederaStatusCode.fromCode(181);
        expect(status.code, equals(181));
      });

      test('returns UNKNOWN_STATUS for a code defined nowhere', () {
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

      test('insufficientAccountBalance has code 28', () {
        expect(HederaStatusCode.insufficientAccountBalance.code, equals(28));
      });

      test('tokenIsPaused has code 265', () {
        expect(HederaStatusCode.tokenIsPaused.code, equals(265));
      });

      test('invalidTokenId has code 167', () {
        expect(HederaStatusCode.invalidTokenId.code, equals(167));
      });
    });

    // Guards against hand-typed numbers drifting from the official
    // protobuf definitions: every named constant must match the
    // generated ResponseCodeEnum by both code and name.
    group('constants match the protobuf ResponseCodeEnum', () {
      const constants = <HederaStatusCode>[
        HederaStatusCode.success,
        HederaStatusCode.insufficientTxFee,
        HederaStatusCode.insufficientAccountBalance,
        HederaStatusCode.insufficientPayerBalance,
        HederaStatusCode.invalidSignature,
        HederaStatusCode.invalidAccountId,
        HederaStatusCode.accountDeleted,
        HederaStatusCode.tokenNotAssociatedToAccount,
        HederaStatusCode.accountKycNotGrantedForToken,
        HederaStatusCode.accountFrozenForToken,
        HederaStatusCode.insufficientTokenBalance,
        HederaStatusCode.tokenHasNoFreezeKey,
        HederaStatusCode.tokenHasNoKycKey,
        HederaStatusCode.tokenHasNoSupplyKey,
        HederaStatusCode.tokenWasDeleted,
        HederaStatusCode.tokenIsPaused,
        HederaStatusCode.transactionExpired,
        HederaStatusCode.invalidTokenId,
      ];

      for (final status in constants) {
        test('${status.name} (${status.code})', () {
          final proto = ResponseCodeEnum.valueOf(status.code);
          expect(proto?.name, equals(status.name));
          expect(HederaStatusCode.fromCode(status.code), same(status));
        });
      }
    });
  });
}
