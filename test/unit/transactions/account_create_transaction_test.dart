import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_create.pb.dart';

void main() {
  group('AccountCreateTransaction', () {
    // ---- default values ----

    group('default values', () {
      test('key defaults to null', () {
        final tx = AccountCreateTransaction();
        expect(tx.key, isNull);
      });

      test('initialBalance defaults to zero', () {
        final tx = AccountCreateTransaction();
        expect(tx.initialBalance, equals(Hbar.zero));
      });

      test('maxAutomaticTokenAssociations defaults to null', () {
        final tx = AccountCreateTransaction();
        expect(tx.maxAutomaticTokenAssociations, isNull);
      });

      test('receiverSignatureRequired defaults to false', () {
        final tx = AccountCreateTransaction();
        expect(tx.receiverSignatureRequired, isFalse);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setKey sets key and returns this', () async {
        final tx = AccountCreateTransaction();
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final result = tx.setKey(publicKey);
        expect(result, same(tx));
        expect(tx.key, equals(publicKey));
      });

      test('setInitialBalance sets balance and returns this', () {
        final tx = AccountCreateTransaction();
        final result = tx.setInitialBalance(Hbar(10));
        expect(result, same(tx));
        expect(tx.initialBalance, equals(Hbar(10)));
      });

      test(
        'setMaxAutomaticTokenAssociations sets value and returns this',
        () {
          final tx = AccountCreateTransaction();
          final result = tx.setMaxAutomaticTokenAssociations(10);
          expect(result, same(tx));
          expect(tx.maxAutomaticTokenAssociations, equals(10));
        },
      );

      test('setMaxAutomaticTokenAssociations accepts -1 (unlimited)', () {
        final tx = AccountCreateTransaction()
          ..setMaxAutomaticTokenAssociations(-1);
        expect(tx.maxAutomaticTokenAssociations, equals(-1));
      });

      test(
        'setReceiverSignatureRequired sets value and returns this',
        () {
          final tx = AccountCreateTransaction();
          final result = tx.setReceiverSignatureRequired(value: true);
          expect(result, same(tx));
          expect(tx.receiverSignatureRequired, isTrue);
        },
      );
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if key is not set', () {
        final tx = AccountCreateTransaction();
        expect(
          tx.toBytes,
          throwsA(isA<ArgumentError>()),
        );
      });

      test('does not throw if key is set', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction().setKey(publicKey);
        expect(tx.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('returns non-empty bytes', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction().setKey(publicKey);
        expect(tx.toBytes(), isNotEmpty);
      });

      test('is deterministic for same input', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction().setKey(publicKey);
        final bytes1 = tx.toBytes();
        final bytes2 = tx.toBytes();
        expect(bytes1, equals(bytes2));
      });

      test('encodes the ED25519 public key bytes', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction().setKey(publicKey);

        final body = CryptoCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.key.ed25519, equals(publicKey.bytes));
      });

      test('encodes the initial balance in tinybars', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction()
            .setKey(publicKey)
            .setInitialBalance(Hbar(10));

        final body = CryptoCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.initialBalance.toInt(), equals(Hbar(10).toTinybars()));
      });

      test('encodes the inherited memo', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction()
            .setKey(publicKey)
            .setMemo('NemorixPay wallet');

        final body = CryptoCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.memo, equals('NemorixPay wallet'));
      });

      test('encodes maxAutomaticTokenAssociations when set', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction()
            .setKey(publicKey)
            .setMaxAutomaticTokenAssociations(10);

        final body = CryptoCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.maxAutomaticTokenAssociations, equals(10));
      });

      test('does not set maxAutomaticTokenAssociations when not set', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction().setKey(publicKey);

        final body = CryptoCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.hasMaxAutomaticTokenAssociations(), isFalse);
      });

      test('encodes receiverSigRequired when true', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction()
            .setKey(publicKey)
            .setReceiverSignatureRequired(value: true);

        final body = CryptoCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.receiverSigRequired, isTrue);
      });

      test('encodes receiverSigRequired as false by default', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction().setKey(publicKey);

        final body = CryptoCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.receiverSigRequired, isFalse);
      });
    });

    // ---- integration with Transaction base class ----

    group('integration', () {
      test('can be signed after setting key', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx = AccountCreateTransaction().setKey(publicKey);

        await tx.sign(privateKey);

        expect(tx.isSigned, isTrue);
        expect(tx.signatureCount, equals(1));
      });

      test('respects inherited memo length validation', () {
        final tx = AccountCreateTransaction();
        final longMemo = 'a' * (HederaConstants.maxMemoLength + 1);
        expect(
          () => tx.setMemo(longMemo),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('fluent API can chain Transaction and subclass setters', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();

        final tx = AccountCreateTransaction()
            .setKey(publicKey)
            .setInitialBalance(Hbar(5))
            .setMemo('test wallet')
            .setMaxAutomaticTokenAssociations(5);

        expect(tx.key, equals(publicKey));
        expect(tx.initialBalance, equals(Hbar(5)));
        expect(tx.memo, equals('test wallet'));
        expect(tx.maxAutomaticTokenAssociations, equals(5));
      });
    });
  });
}
