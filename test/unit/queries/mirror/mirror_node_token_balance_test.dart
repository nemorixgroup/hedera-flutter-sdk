import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('KycStatus', () {
    test('fromApiValue maps every known value', () {
      expect(KycStatus.fromApiValue('NOT_APPLICABLE'), KycStatus.notApplicable);
      expect(KycStatus.fromApiValue('GRANTED'), KycStatus.granted);
      expect(KycStatus.fromApiValue('REVOKED'), KycStatus.revoked);
    });

    test('fromApiValue gives unknown for null or new values', () {
      expect(KycStatus.fromApiValue(null), KycStatus.unknown);
      expect(KycStatus.fromApiValue(''), KycStatus.unknown);
      expect(KycStatus.fromApiValue('SOMETHING_NEW'), KycStatus.unknown);
    });

    test('apiValue holds the Mirror Node text', () {
      expect(KycStatus.granted.apiValue, 'GRANTED');
      expect(KycStatus.revoked.apiValue, 'REVOKED');
      expect(KycStatus.notApplicable.apiValue, 'NOT_APPLICABLE');
    });
  });

  group('FreezeStatus', () {
    test('fromApiValue maps every known value', () {
      expect(
        FreezeStatus.fromApiValue('NOT_APPLICABLE'),
        FreezeStatus.notApplicable,
      );
      expect(FreezeStatus.fromApiValue('FROZEN'), FreezeStatus.frozen);
      expect(FreezeStatus.fromApiValue('UNFROZEN'), FreezeStatus.unfrozen);
    });

    test('fromApiValue gives unknown for null or new values', () {
      expect(FreezeStatus.fromApiValue(null), FreezeStatus.unknown);
      expect(FreezeStatus.fromApiValue(''), FreezeStatus.unknown);
      expect(FreezeStatus.fromApiValue('SOMETHING_NEW'), FreezeStatus.unknown);
    });

    test('apiValue holds the Mirror Node text', () {
      expect(FreezeStatus.frozen.apiValue, 'FROZEN');
      expect(FreezeStatus.unfrozen.apiValue, 'UNFROZEN');
      expect(FreezeStatus.notApplicable.apiValue, 'NOT_APPLICABLE');
    });
  });

  group('MirrorNodeTokenBalance.fromJson', () {
    test('parses a complete entry', () {
      final balance = MirrorNodeTokenBalance.fromJson(const {
        'automatic_association': true,
        'balance': 5,
        'created_timestamp': '123456789.000000001',
        'decimals': 3,
        'freeze_status': 'UNFROZEN',
        'kyc_status': 'GRANTED',
        'token_id': '0.0.27335',
      });

      expect(balance.tokenId, TokenId.fromString('0.0.27335'));
      expect(balance.balance, 5);
      expect(balance.decimals, 3);
      expect(balance.kycStatus, KycStatus.granted);
      expect(balance.freezeStatus, FreezeStatus.unfrozen);
      expect(balance.automaticAssociation, isTrue);
      expect(balance.createdTimestamp, '123456789.000000001');
    });

    test('keeps nullable fields as null or unknown', () {
      final balance = MirrorNodeTokenBalance.fromJson(const {
        'automatic_association': null,
        'balance': 0,
        'created_timestamp': null,
        'decimals': null,
        'freeze_status': null,
        'kyc_status': 'NOT_APPLICABLE',
        'token_id': '0.0.7',
      });

      expect(balance.decimals, isNull);
      expect(balance.automaticAssociation, isNull);
      expect(balance.createdTimestamp, isNull);
      expect(balance.freezeStatus, FreezeStatus.unknown);
      expect(balance.kycStatus, KycStatus.notApplicable);
    });

    test('only token_id and balance are required', () {
      final balance = MirrorNodeTokenBalance.fromJson(const {
        'balance': 9,
        'token_id': '0.0.7',
      });

      expect(balance.balance, 9);
      expect(balance.kycStatus, KycStatus.unknown);
      expect(balance.freezeStatus, FreezeStatus.unknown);
    });

    test('a missing token_id throws FormatException', () {
      expect(
        () => MirrorNodeTokenBalance.fromJson(const {'balance': 1}),
        throwsFormatException,
      );
    });

    test('a missing balance throws FormatException', () {
      expect(
        () => MirrorNodeTokenBalance.fromJson(const {'token_id': '0.0.7'}),
        throwsFormatException,
      );
    });

    test('a balance that is not an integer throws FormatException', () {
      expect(
        () => MirrorNodeTokenBalance.fromJson(const {
          'balance': '5',
          'token_id': '0.0.7',
        }),
        throwsFormatException,
      );
    });

    test('an invalid token_id throws FormatException', () {
      expect(
        () => MirrorNodeTokenBalance.fromJson(const {
          'balance': 1,
          'token_id': 'abc',
        }),
        throwsFormatException,
      );
    });
  });

  group('MirrorNodeTokenBalance', () {
    MirrorNodeTokenBalance make({int balance = 5}) {
      return MirrorNodeTokenBalance(
        tokenId: TokenId.fromString('0.0.7'),
        balance: balance,
        decimals: 2,
        kycStatus: KycStatus.granted,
        freezeStatus: FreezeStatus.unfrozen,
        automaticAssociation: false,
        createdTimestamp: '1.000000001',
      );
    }

    test('is equal when every field is equal', () {
      expect(make(), make());
      expect(make().hashCode, make().hashCode);
    });

    test('is different when a field differs', () {
      expect(make(), isNot(make(balance: 6)));
    });

    test('toString shows the token and balance', () {
      expect(
        make().toString(),
        'MirrorNodeTokenBalance(tokenId: 0.0.7, balance: 5)',
      );
    });

    test('defaults to unknown statuses', () {
      final balance = MirrorNodeTokenBalance(
        tokenId: TokenId.fromString('0.0.7'),
        balance: 1,
      );

      expect(balance.kycStatus, KycStatus.unknown);
      expect(balance.freezeStatus, FreezeStatus.unknown);
      expect(balance.decimals, isNull);
    });
  });
}
