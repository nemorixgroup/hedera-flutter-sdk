import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_get_account_balance.pb.dart';

/// Minimal concrete Query for testing the base class.
class _TestQuery extends Query<int, _TestQuery> {
  @override
  Uint8List toBytes() => Uint8List.fromList([1, 2, 3]);
}

void main() {
  group('Query', () {
    // ---- default values ----

    group('default values', () {
      test('nodeAccountId defaults to null', () {
        final query = _TestQuery();
        expect(query.nodeAccountId, isNull);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setNodeAccountId sets nodeAccountId and returns this', () {
        final query = _TestQuery();
        final result = query.setNodeAccountId(AccountId.fromString('0.0.3'));
        expect(result, same(query));
        expect(query.nodeAccountId, equals(AccountId.fromString('0.0.3')));
      });
    });

    // ---- execute ----

    group('execute', () {
      test('throws UnimplementedError', () async {
        final query = _TestQuery();
        final client = HederaClient.forTestnet();
        expect(
          () => query.execute(client),
          throwsA(isA<UnimplementedError>()),
        );
      });
    });

    // ---- toBytes ----

    group('toBytes', () {
      test('subclass implementation is used', () {
        final query = _TestQuery();
        expect(query.toBytes(), equals(Uint8List.fromList([1, 2, 3])));
      });
    });
  });

  group('AccountBalanceQuery', () {
    // ---- default values ----

    group('default values', () {
      test('accountId defaults to null', () {
        final query = AccountBalanceQuery();
        expect(query.accountId, isNull);
      });

      test('nodeAccountId defaults to null', () {
        final query = AccountBalanceQuery();
        expect(query.nodeAccountId, isNull);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setAccountId sets accountId and returns this', () {
        final query = AccountBalanceQuery();
        final accountId = AccountId.fromString('0.0.12345');
        final result = query.setAccountId(accountId);
        expect(result, same(query));
        expect(query.accountId, equals(accountId));
      });

      test('setNodeAccountId sets nodeAccountId and returns this', () {
        final query = AccountBalanceQuery();
        final nodeId = AccountId.fromString('0.0.3');
        final result = query.setNodeAccountId(nodeId);
        expect(result, same(query));
        expect(query.nodeAccountId, equals(nodeId));
      });

      test('fluent API can chain Query and subclass setters', () {
        final accountId = AccountId.fromString('0.0.12345');
        final nodeId = AccountId.fromString('0.0.3');

        final query = AccountBalanceQuery()
            .setAccountId(accountId)
            .setNodeAccountId(nodeId);

        expect(query.accountId, equals(accountId));
        expect(query.nodeAccountId, equals(nodeId));
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if accountId is not set', () {
        final query = AccountBalanceQuery();
        expect(
          query.toBytes,
          throwsA(isA<ArgumentError>()),
        );
      });

      test('does not throw if accountId is set', () {
        final query = AccountBalanceQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );
        expect(query.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('returns non-empty bytes', () {
        final query = AccountBalanceQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );
        expect(query.toBytes(), isNotEmpty);
      });

      test('is deterministic for same input', () {
        final query = AccountBalanceQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );
        final bytes1 = query.toBytes();
        final bytes2 = query.toBytes();
        expect(bytes1, equals(bytes2));
      });

      test('encodes the accountNum', () {
        final query = AccountBalanceQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );

        final protoQuery = CryptoGetAccountBalanceQuery.fromBuffer(
          query.toBytes(),
        );

        expect(protoQuery.accountID.accountNum.toInt(), equals(12345));
      });

      test('encodes shardNum and realmNum', () {
        final query = AccountBalanceQuery().setAccountId(
          const AccountId(accountNum: 100, realmNum: 1, shardNum: 2),
        );

        final protoQuery = CryptoGetAccountBalanceQuery.fromBuffer(
          query.toBytes(),
        );

        expect(protoQuery.accountID.shardNum.toInt(), equals(2));
        expect(protoQuery.accountID.realmNum.toInt(), equals(1));
        expect(protoQuery.accountID.accountNum.toInt(), equals(100));
      });

      test('encodes default shardNum and realmNum as zero', () {
        final query = AccountBalanceQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );

        final protoQuery = CryptoGetAccountBalanceQuery.fromBuffer(
          query.toBytes(),
        );

        expect(protoQuery.accountID.shardNum.toInt(), equals(0));
        expect(protoQuery.accountID.realmNum.toInt(), equals(0));
      });

      test('includes an empty QueryHeader', () {
        final query = AccountBalanceQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );

        final protoQuery = CryptoGetAccountBalanceQuery.fromBuffer(
          query.toBytes(),
        );

        expect(protoQuery.hasHeader(), isTrue);
        expect(protoQuery.header.hasPayment(), isFalse);
      });

      test('does not set contractID', () {
        final query = AccountBalanceQuery().setAccountId(
          AccountId.fromString('0.0.12345'),
        );

        final protoQuery = CryptoGetAccountBalanceQuery.fromBuffer(
          query.toBytes(),
        );

        expect(protoQuery.hasContractID(), isFalse);
      });
    });
  });
}
