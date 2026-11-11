import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

Map<String, dynamic> _key(String type, String key) {
  return {'_type': type, 'key': key};
}

Map<String, dynamic> _fullJson() {
  return {
    'admin_key': _key('ED25519', 'aa'),
    'auto_renew_account': '0.1.2',
    'auto_renew_period': 7776000,
    'created_timestamp': '1234567890.000000001',
    'custom_fees': {
      'created_timestamp': '1234567890.000000001',
      'fixed_fees': [
        {'amount': 100, 'collector_account_id': '0.0.98'},
      ],
      'fractional_fees': <dynamic>[],
      'royalty_fees': <dynamic>[],
    },
    'decimals': '2',
    'deleted': false,
    'expiry_timestamp': 1234567890100000,
    'fee_schedule_key': _key('ED25519', 'ab'),
    'freeze_default': true,
    'freeze_key': _key('ECDSA_SECP256K1', 'bb'),
    'initial_supply': '1000000',
    'kyc_key': _key('ProtobufEncoded', 'cc'),
    'max_supply': '5000000',
    'memo': 'token memo',
    'metadata': 'aGk=',
    'metadata_key': _key('ED25519', 'dd'),
    'modified_timestamp': '1234567891.000000001',
    'name': 'Token name',
    'pause_key': _key('ED25519', 'ee'),
    'pause_status': 'UNPAUSED',
    'supply_key': _key('ED25519', 'ff'),
    'supply_type': 'FINITE',
    'symbol': 'TKN',
    'token_id': '0.0.1135',
    'total_supply': '900000',
    'treasury_account_id': '0.0.98',
    'type': 'FUNGIBLE_COMMON',
    'wipe_key': _key('ED25519', '11'),
  };
}

void main() {
  group('PauseStatus', () {
    test('fromApiValue maps every known value', () {
      expect(
        PauseStatus.fromApiValue('NOT_APPLICABLE'),
        PauseStatus.notApplicable,
      );
      expect(PauseStatus.fromApiValue('PAUSED'), PauseStatus.paused);
      expect(PauseStatus.fromApiValue('UNPAUSED'), PauseStatus.unpaused);
    });

    test('fromApiValue gives unknown for null or new values', () {
      expect(PauseStatus.fromApiValue(null), PauseStatus.unknown);
      expect(PauseStatus.fromApiValue(''), PauseStatus.unknown);
      expect(PauseStatus.fromApiValue('SOMETHING_NEW'), PauseStatus.unknown);
    });

    test('apiValue holds the Mirror Node text', () {
      expect(PauseStatus.paused.apiValue, 'PAUSED');
      expect(PauseStatus.unpaused.apiValue, 'UNPAUSED');
      expect(PauseStatus.notApplicable.apiValue, 'NOT_APPLICABLE');
    });
  });

  group('MirrorNodeTokenInfo.fromJson', () {
    test('parses identity, supplies and kind', () {
      final info = MirrorNodeTokenInfo.fromJson(_fullJson());

      expect(info.tokenId, TokenId.fromString('0.0.1135'));
      expect(info.name, 'Token name');
      expect(info.symbol, 'TKN');
      expect(info.memo, 'token memo');
      expect(info.type, TokenType.FUNGIBLE_COMMON);
      expect(info.supplyType, TokenSupplyType.FINITE);
      expect(info.decimals, 2);
      expect(info.initialSupply, 1000000);
      expect(info.totalSupply, 900000);
      expect(info.maxSupply, 5000000);
    });

    test('parses accounts, flags and timestamps', () {
      final info = MirrorNodeTokenInfo.fromJson(_fullJson());

      expect(info.treasuryAccountId, AccountId.fromString('0.0.98'));
      expect(info.autoRenewAccount, AccountId.fromString('0.1.2'));
      expect(info.autoRenewPeriod, 7776000);
      expect(info.expiryTimestamp, 1234567890100000);
      expect(info.createdTimestamp, '1234567890.000000001');
      expect(info.modifiedTimestamp, '1234567891.000000001');
      expect(info.freezeDefault, isTrue);
      expect(info.deleted, isFalse);
      expect(info.pauseStatus, PauseStatus.unpaused);
    });

    test('parses the eight keys', () {
      final info = MirrorNodeTokenInfo.fromJson(_fullJson());

      expect(info.adminKey!.key, 'aa');
      expect(info.feeScheduleKey!.key, 'ab');
      expect(info.freezeKey!.type, MirrorNodeKeyType.ecdsaSecp256k1);
      expect(info.kycKey!.type, MirrorNodeKeyType.protobufEncoded);
      expect(info.metadataKey!.key, 'dd');
      expect(info.pauseKey!.key, 'ee');
      expect(info.supplyKey!.key, 'ff');
      expect(info.wipeKey!.key, '11');
    });

    test('decodes the metadata from base64', () {
      final info = MirrorNodeTokenInfo.fromJson(_fullJson());

      expect(info.metadata, [104, 105]);
    });

    test('parses the custom fees', () {
      final info = MirrorNodeTokenInfo.fromJson(_fullJson());

      expect(info.customFees.isEmpty, isFalse);
      expect(info.customFees.fixedFees.single.amount, 100);
    });

    test('keys that are null stay null', () {
      final json = _fullJson()
        ..['admin_key'] = null
        ..['kyc_key'] = null;

      final info = MirrorNodeTokenInfo.fromJson(json);

      expect(info.adminKey, isNull);
      expect(info.kycKey, isNull);
    });

    test('decimals sent as a number are accepted', () {
      final json = _fullJson()..['decimals'] = 6;

      expect(MirrorNodeTokenInfo.fromJson(json).decimals, 6);
    });

    test('parses a non-fungible token', () {
      final json = _fullJson()
        ..['type'] = 'NON_FUNGIBLE_UNIQUE'
        ..['supply_type'] = 'INFINITE';

      final info = MirrorNodeTokenInfo.fromJson(json);

      expect(info.type, TokenType.NON_FUNGIBLE_UNIQUE);
      expect(info.supplyType, TokenSupplyType.INFINITE);
    });

    test('only token_id is required', () {
      final info = MirrorNodeTokenInfo.fromJson(const {'token_id': '0.0.7'});

      expect(info.name, '');
      expect(info.symbol, '');
      expect(info.memo, '');
      expect(info.type, isNull);
      expect(info.supplyType, isNull);
      expect(info.decimals, 0);
      expect(info.totalSupply, 0);
      expect(info.treasuryAccountId, isNull);
      expect(info.adminKey, isNull);
      expect(info.metadata, isNull);
      expect(info.pauseStatus, PauseStatus.unknown);
      expect(info.freezeDefault, isFalse);
      expect(info.deleted, isFalse);
      expect(info.customFees.isEmpty, isTrue);
    });

    test('an unrecognized type becomes null', () {
      final json = _fullJson()..['type'] = 'SOMETHING_NEW';

      expect(MirrorNodeTokenInfo.fromJson(json).type, isNull);
    });

    test('a missing token_id throws FormatException', () {
      final json = _fullJson()..remove('token_id');

      expect(() => MirrorNodeTokenInfo.fromJson(json), throwsFormatException);
    });

    test('an invalid treasury account throws FormatException', () {
      final json = _fullJson()..['treasury_account_id'] = 'abc';

      expect(() => MirrorNodeTokenInfo.fromJson(json), throwsFormatException);
    });

    test('invalid base64 metadata throws FormatException', () {
      final json = _fullJson()..['metadata'] = '!!!';

      expect(() => MirrorNodeTokenInfo.fromJson(json), throwsFormatException);
    });

    test('malformed custom fees throw FormatException', () {
      final json = _fullJson()
        ..['custom_fees'] = {
          'fixed_fees': [
            {'collector_account_id': '0.0.98'},
          ],
        };

      expect(() => MirrorNodeTokenInfo.fromJson(json), throwsFormatException);
    });

    test('toString shows the token and the symbol', () {
      final info = MirrorNodeTokenInfo.fromJson(_fullJson());

      expect(info.toString(), 'MirrorNodeTokenInfo(0.0.1135, TKN)');
    });
  });
}
