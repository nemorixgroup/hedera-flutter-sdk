import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_get_info.pb.dart';

void main() {
  group('AccountInfo', () {
    // ---- constructor ----

    group('constructor', () {
      test('stores all fields correctly', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final accountId = AccountId.fromString('0.0.12345');

        final info = AccountInfo(
          accountId: accountId,
          key: publicKey,
          balance: Hbar(10),
          deleted: false,
          memo: 'test account',
          receiverSignatureRequired: true,
          maxAutomaticTokenAssociations: 5,
          ownedNfts: 3,
        );

        expect(info.accountId, equals(accountId));
        expect(info.key, equals(publicKey));
        expect(info.balance, equals(Hbar(10)));
        expect(info.deleted, isFalse);
        expect(info.memo, equals('test account'));
        expect(info.receiverSignatureRequired, isTrue);
        expect(info.maxAutomaticTokenAssociations, equals(5));
        expect(info.ownedNfts, equals(3));
      });
    });

    // ---- toString ----

    group('toString', () {
      test('includes accountId, balance, memo, and deleted', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final accountId = AccountId.fromString('0.0.12345');

        final info = AccountInfo(
          accountId: accountId,
          key: publicKey,
          balance: Hbar(10),
          deleted: false,
          memo: 'test account',
          receiverSignatureRequired: false,
          maxAutomaticTokenAssociations: 0,
          ownedNfts: 0,
        );

        final result = info.toString();
        expect(result, contains('0.0.12345'));
        expect(result, contains('test account'));
        expect(result, contains('false'));
      });
    });
  });

  group('AccountInfoQuery', () {
    // ---- default values ----

    group('default values', () {
      test('accountId defaults to null', () {
        final query = AccountInfoQuery();
        expect(query.accountId, isNull);
      });

      test('nodeAccountId defaults to null', () {
        final query = AccountInfoQuery();
        expect(query.nodeAccountId, isNull);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setAccountId sets accountId and returns this', () {
        final query = AccountInfoQuery();
        final accountId = AccountId.fromString('0.0.12345');
        final result = query.setAccountId(accountId);
        expect(result, same(query));
        expect(query.accountId, equals(accountId));
      });

      test('setNodeAccountId sets nodeAccountId and returns this', () {
        final query = AccountInfoQuery();
        final nodeId = AccountId.fromString('0.0.3');
        final result = query.setNodeAccountId(nodeId);
        expect(result, same(query));
        expect(query.nodeAccountId, equals(nodeId));
      });

      test('fluent API can chain Query and subclass setters', () {
        final accountId = AccountId.fromString('0.0.12345');
        final nodeId = AccountId.fromString('0.0.3');

        final query =
            AccountInfoQuery().setAccountId(accountId).setNodeAccountId(nodeId);

        expect(query.accountId, equals(accountId));
        expect(query.nodeAccountId, equals(nodeId));
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if accountId is not set', () {
        final query = AccountInfoQuery();
        expect(
          query.toBytes,
          throwsA(isA<ArgumentError>()),
        );
      });

      test('does not throw if accountId is set', () {
        final query = AccountInfoQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );
        expect(query.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('returns non-empty bytes', () {
        final query = AccountInfoQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );
        expect(query.toBytes(), isNotEmpty);
      });

      test('is deterministic for same input', () {
        final query = AccountInfoQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );
        final bytes1 = query.toBytes();
        final bytes2 = query.toBytes();
        expect(bytes1, equals(bytes2));
      });

      test('encodes the accountNum', () {
        final query = AccountInfoQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );

        final protoQuery = CryptoGetInfoQuery.fromBuffer(query.toBytes());

        expect(protoQuery.accountID.accountNum.toInt(), equals(12345));
      });

      test('encodes shardNum and realmNum', () {
        final query = AccountInfoQuery().setAccountId(
          const AccountId(accountNum: 100, realmNum: 1, shardNum: 2),
        );

        final protoQuery = CryptoGetInfoQuery.fromBuffer(query.toBytes());

        expect(protoQuery.accountID.shardNum.toInt(), equals(2));
        expect(protoQuery.accountID.realmNum.toInt(), equals(1));
        expect(protoQuery.accountID.accountNum.toInt(), equals(100));
      });

      test('encodes default shardNum and realmNum as zero', () {
        final query = AccountInfoQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );

        final protoQuery = CryptoGetInfoQuery.fromBuffer(query.toBytes());

        expect(protoQuery.accountID.shardNum.toInt(), equals(0));
        expect(protoQuery.accountID.realmNum.toInt(), equals(0));
      });

      test('includes an empty QueryHeader', () {
        final query = AccountInfoQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );

        final protoQuery = CryptoGetInfoQuery.fromBuffer(query.toBytes());

        expect(protoQuery.hasHeader(), isTrue);
        expect(protoQuery.header.hasPayment(), isFalse);
      });
    });
  });
}
