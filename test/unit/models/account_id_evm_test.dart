import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';

void main() {
  group('AccountId EVM alias support', () {
    // ---- AccountId.evm constructor ----

    group('AccountId.evm constructor', () {
      test('creates an AccountId with the given evmAddress', () {
        final bytes = List<int>.filled(20, 0)..[19] = 0xED5 & 0xFF;
        final accountId = AccountId.evm(evmAddress: bytes);
        expect(accountId.evmAddress, equals(bytes));
      });

      test('accountNum defaults to 0', () {
        final bytes = List<int>.filled(20, 0);
        final accountId = AccountId.evm(evmAddress: bytes);
        expect(accountId.accountNum, equals(0));
      });

      test('shardNum and realmNum default to 0', () {
        final bytes = List<int>.filled(20, 0);
        final accountId = AccountId.evm(evmAddress: bytes);
        expect(accountId.shardNum, equals(0));
        expect(accountId.realmNum, equals(0));
      });

      test('isEvmAddress returns true', () {
        final bytes = List<int>.filled(20, 0);
        final accountId = AccountId.evm(evmAddress: bytes);
        expect(accountId.isEvmAddress, isTrue);
      });
    });

    // ---- native constructor ----

    group('native constructor', () {
      test('evmAddress defaults to null', () {
        const accountId = AccountId(accountNum: 12345);
        expect(accountId.evmAddress, isNull);
      });

      test('isEvmAddress returns false', () {
        const accountId = AccountId(accountNum: 12345);
        expect(accountId.isEvmAddress, isFalse);
      });
    });

    // ---- AccountId.fromEvmAddress ----

    group('fromEvmAddress', () {
      test('parses a valid 20-byte address with 0x prefix', () {
        final accountId = AccountId.fromEvmAddress(
          '0xedededededededededededededededededededed',
        );
        expect(accountId.isEvmAddress, isTrue);
        expect(accountId.evmAddress!.length, equals(20));
      });

      test('parses a valid 20-byte address without 0x prefix', () {
        final accountId = AccountId.fromEvmAddress(
          '00000000000000000000000000000000000000e5',
        );
        expect(accountId.isEvmAddress, isTrue);
        expect(accountId.evmAddress!.length, equals(20));
      });

      test('decodes hex bytes correctly', () {
        final accountId = AccountId.fromEvmAddress(
          '0x00000000000000000000000000000000000000ff',
        );
        expect(accountId.evmAddress!.last, equals(0xFF));
      });

      test('throws FormatException for address shorter than 20 bytes', () {
        expect(
          () => AccountId.fromEvmAddress('0x1234'),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException for address longer than 20 bytes', () {
        expect(
          () => AccountId.fromEvmAddress(
            '0x${'00' * 21}',
          ),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException for empty string', () {
        expect(
          () => AccountId.fromEvmAddress(''),
          throwsA(isA<FormatException>()),
        );
      });
    });

    // ---- toString ----

    group('toString', () {
      test('native AccountId returns shard.realm.num format', () {
        const accountId = AccountId(accountNum: 12345);
        expect(accountId.toString(), equals('0.0.12345'));
      });

      test('EVM AccountId returns 0x-prefixed lowercase hex', () {
        final accountId = AccountId.fromEvmAddress(
          '0x00000000000000000000000000000000000000FF',
        );
        expect(
          accountId.toString(),
          equals('0x00000000000000000000000000000000000000ff'),
        );
      });

      test('round-trips through fromEvmAddress and toString', () {
        const address = '0x1234567890abcdef1234567890abcdef12345678';
        final accountId = AccountId.fromEvmAddress(address);
        expect(accountId.toString(), equals(address));
      });
    });

    // ---- equality ----

    group('equality', () {
      test('two EVM AccountIds with same address are equal', () {
        final a = AccountId.fromEvmAddress(
          '0xedededededededededededededededededededed',
        );
        final b = AccountId.fromEvmAddress(
          '0xedededededededededededededededededededed',
        );
        expect(a, equals(b));
        expect(a.hashCode, equals(b.hashCode));
      });

      test('two EVM AccountIds with different addresses are not equal', () {
        final a = AccountId.fromEvmAddress(
          '0xedededededededededededededededededededed',
        );
        final b = AccountId.fromEvmAddress(
          '0x00000000000000000000000000000000000000f5',
        );
        expect(a, isNot(equals(b)));
      });

      test('EVM AccountId is not equal to native AccountId', () {
        final evmId = AccountId.fromEvmAddress(
          '0xedededededededededededededededededededed',
        );
        const nativeId = AccountId(accountNum: 12345);
        expect(evmId, isNot(equals(nativeId)));
      });

      test('native AccountId is not equal to EVM AccountId', () {
        const nativeId = AccountId(accountNum: 12345);
        final evmId = AccountId.fromEvmAddress(
          '0xedededededededededededededededededededed',
        );
        expect(nativeId, isNot(equals(evmId)));
      });

      test('two native AccountIds still compare as before', () {
        const a = AccountId(accountNum: 12345);
        const b = AccountId(accountNum: 12345);
        expect(a, equals(b));
        expect(a.hashCode, equals(b.hashCode));
      });
    });

    // ---- toProto ----

    group('toProto', () {
      test('native AccountId sets accountNum on the Protobuf message', () {
        const accountId = AccountId(
          accountNum: 12345,
          realmNum: 1,
          shardNum: 2,
        );
        final proto = accountId.toProto();

        expect(proto.shardNum.toInt(), equals(2));
        expect(proto.realmNum.toInt(), equals(1));
        expect(proto.accountNum.toInt(), equals(12345));
        expect(proto.hasAlias(), isFalse);
      });

      test('EVM AccountId sets alias on the Protobuf message', () {
        final accountId = AccountId.fromEvmAddress(
          '0xedededededededededededededededededededed',
        );
        final proto = accountId.toProto();

        expect(proto.hasAlias(), isTrue);
        expect(proto.alias, equals(accountId.evmAddress));
      });

      test('EVM AccountId does not set accountNum on the Protobuf message', () {
        final accountId = AccountId.fromEvmAddress(
          '0xedededededededededededededededededededed',
        );
        final proto = accountId.toProto();

        expect(proto.hasAccountNum(), isFalse);
      });

      test('EVM AccountId still encodes shardNum and realmNum', () {
        final accountId = AccountId.evm(
          evmAddress: List<int>.filled(20, 0),
          realmNum: 1,
          shardNum: 2,
        );
        final proto = accountId.toProto();

        expect(proto.shardNum.toInt(), equals(2));
        expect(proto.realmNum.toInt(), equals(1));
      });

      test('round-trips through Protobuf serialization', () {
        final accountId = AccountId.fromEvmAddress(
          '0xedededededededededededededededededededed',
        );
        final proto = accountId.toProto();
        final bytes = proto.writeToBuffer();
        final decoded = AccountID.fromBuffer(bytes);

        expect(decoded.alias, equals(accountId.evmAddress));
      });
    });
  });
}
