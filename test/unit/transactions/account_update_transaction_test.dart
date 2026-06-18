import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_update.pb.dart';

void main() {
  group('AccountUpdateTransaction', () {
    // ---- default values ----

    group('default values', () {
      test('accountIdToUpdate defaults to null', () {
        final tx = AccountUpdateTransaction();
        expect(tx.accountIdToUpdate, isNull);
      });

      test('key defaults to null', () {
        final tx = AccountUpdateTransaction();
        expect(tx.key, isNull);
      });

      test('newMemo defaults to null', () {
        final tx = AccountUpdateTransaction();
        expect(tx.newMemo, isNull);
      });

      test('receiverSignatureRequired defaults to null', () {
        final tx = AccountUpdateTransaction();
        expect(tx.receiverSignatureRequired, isNull);
      });

      test('maxAutomaticTokenAssociations defaults to null', () {
        final tx = AccountUpdateTransaction();
        expect(tx.maxAutomaticTokenAssociations, isNull);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setAccountIdToUpdate sets value and returns this', () {
        final tx = AccountUpdateTransaction();
        final accountId = AccountId.fromString('0.0.12345');
        final result = tx.setAccountIdToUpdate(accountId);
        expect(result, same(tx));
        expect(tx.accountIdToUpdate, equals(accountId));
      });

      test('setKey sets value and returns this', () async {
        final tx = AccountUpdateTransaction();
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final result = tx.setKey(publicKey);
        expect(result, same(tx));
        expect(tx.key, equals(publicKey));
      });

      test('setNewMemo sets value and returns this', () {
        final tx = AccountUpdateTransaction();
        final result = tx.setNewMemo('updated memo');
        expect(result, same(tx));
        expect(tx.newMemo, equals('updated memo'));
      });

      test(
        'setReceiverSignatureRequired sets value and returns this',
        () {
          final tx = AccountUpdateTransaction();
          final result = tx.setReceiverSignatureRequired(value: true);
          expect(result, same(tx));
          expect(tx.receiverSignatureRequired, isTrue);
        },
      );

      test(
        'setMaxAutomaticTokenAssociations sets value and returns this',
        () {
          final tx = AccountUpdateTransaction();
          final result = tx.setMaxAutomaticTokenAssociations(10);
          expect(result, same(tx));
          expect(tx.maxAutomaticTokenAssociations, equals(10));
        },
      );

      test('setMaxAutomaticTokenAssociations accepts -1 (unlimited)', () {
        final tx = AccountUpdateTransaction()
          ..setMaxAutomaticTokenAssociations(-1);
        expect(tx.maxAutomaticTokenAssociations, equals(-1));
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if accountIdToUpdate is not set', () {
        final tx = AccountUpdateTransaction();
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('does not throw if accountIdToUpdate is set', () {
        final tx = AccountUpdateTransaction().setAccountIdToUpdate(
          AccountId.fromString('0.0.12345'),
        );
        expect(tx.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('returns non-empty bytes', () {
        final tx = AccountUpdateTransaction().setAccountIdToUpdate(
          AccountId.fromString('0.0.12345'),
        );
        expect(tx.toBytes(), isNotEmpty);
      });

      test('is deterministic for same input', () {
        final tx = AccountUpdateTransaction().setAccountIdToUpdate(
          AccountId.fromString('0.0.12345'),
        );
        final bytes1 = tx.toBytes();
        final bytes2 = tx.toBytes();
        expect(bytes1, equals(bytes2));
      });

      test('encodes the accountIDToUpdate', () {
        final tx = AccountUpdateTransaction().setAccountIdToUpdate(
          const AccountId(accountNum: 100, realmNum: 1, shardNum: 2),
        );

        final body = CryptoUpdateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.accountIDToUpdate.shardNum.toInt(), equals(2));
        expect(body.accountIDToUpdate.realmNum.toInt(), equals(1));
        expect(body.accountIDToUpdate.accountNum.toInt(), equals(100));
      });

      test('does not set key when not provided', () {
        final tx = AccountUpdateTransaction().setAccountIdToUpdate(
          AccountId.fromString('0.0.12345'),
        );

        final body = CryptoUpdateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.hasKey(), isFalse);
      });

      test('encodes the key when provided', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();

        final tx = AccountUpdateTransaction()
            .setAccountIdToUpdate(AccountId.fromString('0.0.12345'))
            .setKey(publicKey);

        final body = CryptoUpdateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.hasKey(), isTrue);
        expect(body.key.ed25519, equals(publicKey.bytes));
      });

      test('does not set memo wrapper when not provided', () {
        final tx = AccountUpdateTransaction().setAccountIdToUpdate(
          AccountId.fromString('0.0.12345'),
        );

        final body = CryptoUpdateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.hasMemo(), isFalse);
      });

      test('encodes the memo wrapper when provided', () {
        final tx = AccountUpdateTransaction()
            .setAccountIdToUpdate(AccountId.fromString('0.0.12345'))
            .setNewMemo('updated memo');

        final body = CryptoUpdateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.hasMemo(), isTrue);
        expect(body.memo.value, equals('updated memo'));
      });

      test(
        'does not set receiverSigRequiredWrapper when not provided',
        () {
          final tx = AccountUpdateTransaction().setAccountIdToUpdate(
            AccountId.fromString('0.0.12345'),
          );

          final body = CryptoUpdateTransactionBody.fromBuffer(
            tx.toBytes(),
          );

          expect(body.hasReceiverSigRequiredWrapper(), isFalse);
        },
      );

      test(
        'encodes receiverSigRequiredWrapper as true when provided',
        () {
          final tx = AccountUpdateTransaction()
              .setAccountIdToUpdate(AccountId.fromString('0.0.12345'))
              .setReceiverSignatureRequired(value: true);

          final body = CryptoUpdateTransactionBody.fromBuffer(
            tx.toBytes(),
          );

          expect(body.hasReceiverSigRequiredWrapper(), isTrue);
          expect(body.receiverSigRequiredWrapper.value, isTrue);
        },
      );

      test(
        'encodes receiverSigRequiredWrapper as false when explicitly set',
        () {
          final tx = AccountUpdateTransaction()
              .setAccountIdToUpdate(AccountId.fromString('0.0.12345'))
              .setReceiverSignatureRequired(value: false);

          final body = CryptoUpdateTransactionBody.fromBuffer(
            tx.toBytes(),
          );

          expect(body.hasReceiverSigRequiredWrapper(), isTrue);
          expect(body.receiverSigRequiredWrapper.value, isFalse);
        },
      );

      test(
        'does not set maxAutomaticTokenAssociations when not provided',
        () {
          final tx = AccountUpdateTransaction().setAccountIdToUpdate(
            AccountId.fromString('0.0.12345'),
          );

          final body = CryptoUpdateTransactionBody.fromBuffer(
            tx.toBytes(),
          );

          expect(body.hasMaxAutomaticTokenAssociations(), isFalse);
        },
      );

      test('encodes maxAutomaticTokenAssociations when provided', () {
        final tx = AccountUpdateTransaction()
            .setAccountIdToUpdate(AccountId.fromString('0.0.12345'))
            .setMaxAutomaticTokenAssociations(10);

        final body = CryptoUpdateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.hasMaxAutomaticTokenAssociations(), isTrue);
        expect(body.maxAutomaticTokenAssociations.value, equals(10));
      });

      test('encodes maxAutomaticTokenAssociations as -1 (unlimited)', () {
        final tx = AccountUpdateTransaction()
            .setAccountIdToUpdate(AccountId.fromString('0.0.12345'))
            .setMaxAutomaticTokenAssociations(-1);

        final body = CryptoUpdateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.maxAutomaticTokenAssociations.value, equals(-1));
      });
    });

    // ---- integration ----

    group('integration', () {
      test('can be signed after setting accountIdToUpdate', () async {
        final privateKey = await PrivateKey.generateED25519();
        final tx = AccountUpdateTransaction().setAccountIdToUpdate(
          AccountId.fromString('0.0.12345'),
        );

        await tx.sign(privateKey);

        expect(tx.isSigned, isTrue);
      });

      test('respects inherited memo length validation', () {
        final tx = AccountUpdateTransaction();
        final longMemo = 'a' * 101;
        expect(() => tx.setMemo(longMemo), throwsA(isA<ArgumentError>()));
      });

      test(
        'fluent API can chain Transaction and subclass setters',
        () async {
          final privateKey = await PrivateKey.generateED25519();
          final publicKey = await privateKey.derivePublicKey();
          final accountId = AccountId.fromString('0.0.12345');

          final tx = AccountUpdateTransaction()
              .setAccountIdToUpdate(accountId)
              .setKey(publicKey)
              .setNewMemo('chained memo')
              .setMemo('inherited memo')
              .setMaxAutomaticTokenAssociations(5);

          expect(tx.accountIdToUpdate, equals(accountId));
          expect(tx.key, equals(publicKey));
          expect(tx.newMemo, equals('chained memo'));
          expect(tx.memo, equals('inherited memo'));
          expect(tx.maxAutomaticTokenAssociations, equals(5));
        },
      );
    });
  });
}
