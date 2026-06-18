import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_delete.pb.dart';

void main() {
  group('AccountDeleteTransaction', () {
    // ---- default values ----

    group('default values', () {
      test('accountId defaults to null', () {
        final tx = AccountDeleteTransaction();
        expect(tx.accountId, isNull);
      });

      test('transferAccountId defaults to null', () {
        final tx = AccountDeleteTransaction();
        expect(tx.transferAccountId, isNull);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setAccountId sets value and returns this', () {
        final tx = AccountDeleteTransaction();
        final accountId = AccountId.fromString('0.0.12345');
        final result = tx.setAccountId(accountId);
        expect(result, same(tx));
        expect(tx.accountId, equals(accountId));
      });

      test('setTransferAccountId sets value and returns this', () {
        final tx = AccountDeleteTransaction();
        final transferAccountId = AccountId.fromString('0.0.99');
        final result = tx.setTransferAccountId(transferAccountId);
        expect(result, same(tx));
        expect(tx.transferAccountId, equals(transferAccountId));
      });

      test('fluent API can chain both setters', () {
        final accountId = AccountId.fromString('0.0.12345');
        final transferAccountId = AccountId.fromString('0.0.99');

        final tx = AccountDeleteTransaction()
            .setAccountId(accountId)
            .setTransferAccountId(transferAccountId);

        expect(tx.accountId, equals(accountId));
        expect(tx.transferAccountId, equals(transferAccountId));
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if accountId is not set', () {
        final tx = AccountDeleteTransaction().setTransferAccountId(
          AccountId.fromString('0.0.99'),
        );
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if transferAccountId is not set', () {
        final tx = AccountDeleteTransaction().setAccountId(
          AccountId.fromString('0.0.12345'),
        );
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if neither field is set', () {
        final tx = AccountDeleteTransaction();
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('does not throw if both fields are set', () {
        final tx = AccountDeleteTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .setTransferAccountId(AccountId.fromString('0.0.99'));
        expect(tx.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('returns non-empty bytes', () {
        final tx = AccountDeleteTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .setTransferAccountId(AccountId.fromString('0.0.99'));
        expect(tx.toBytes(), isNotEmpty);
      });

      test('is deterministic for same input', () {
        final tx = AccountDeleteTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .setTransferAccountId(AccountId.fromString('0.0.99'));
        final bytes1 = tx.toBytes();
        final bytes2 = tx.toBytes();
        expect(bytes1, equals(bytes2));
      });

      test('encodes the deleteAccountID', () {
        final tx = AccountDeleteTransaction()
            .setAccountId(
              const AccountId(accountNum: 100, realmNum: 1, shardNum: 2),
            )
            .setTransferAccountId(AccountId.fromString('0.0.99'));

        final body = CryptoDeleteTransactionBody.fromBuffer(tx.toBytes());

        expect(body.deleteAccountID.shardNum.toInt(), equals(2));
        expect(body.deleteAccountID.realmNum.toInt(), equals(1));
        expect(body.deleteAccountID.accountNum.toInt(), equals(100));
      });

      test('encodes the transferAccountID', () {
        final tx = AccountDeleteTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .setTransferAccountId(
              const AccountId(accountNum: 99),
            );

        final body = CryptoDeleteTransactionBody.fromBuffer(tx.toBytes());

        expect(body.transferAccountID.shardNum.toInt(), equals(0));
        expect(body.transferAccountID.realmNum.toInt(), equals(0));
        expect(body.transferAccountID.accountNum.toInt(), equals(99));
      });

      test('encodes both accounts independently and correctly', () {
        final tx = AccountDeleteTransaction()
            .setAccountId(AccountId.fromString('0.0.111'))
            .setTransferAccountId(AccountId.fromString('0.0.222'));

        final body = CryptoDeleteTransactionBody.fromBuffer(tx.toBytes());

        expect(body.deleteAccountID.accountNum.toInt(), equals(111));
        expect(body.transferAccountID.accountNum.toInt(), equals(222));
      });
    });

    // ---- integration ----

    group('integration', () {
      test('can be signed after setting both required fields', () async {
        final privateKey = await PrivateKey.generateED25519();
        final tx = AccountDeleteTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .setTransferAccountId(AccountId.fromString('0.0.99'));

        await tx.sign(privateKey);

        expect(tx.isSigned, isTrue);
      });

      test('respects inherited memo length validation', () {
        final tx = AccountDeleteTransaction();
        final longMemo = 'a' * 101;
        expect(() => tx.setMemo(longMemo), throwsA(isA<ArgumentError>()));
      });

      test(
        'fluent API can chain Transaction and subclass setters',
        () {
          final accountId = AccountId.fromString('0.0.12345');
          final transferAccountId = AccountId.fromString('0.0.99');

          final tx = AccountDeleteTransaction()
              .setAccountId(accountId)
              .setMemo('closing wallet')
              .setTransferAccountId(transferAccountId);

          expect(tx.accountId, equals(accountId));
          expect(tx.memo, equals('closing wallet'));
          expect(tx.transferAccountId, equals(transferAccountId));
        },
      );
    });
  });
}
