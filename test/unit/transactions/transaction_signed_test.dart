import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_contents.pb.dart';

/// Minimal concrete Transaction for testing buildSignedTransaction().
class _TestTransaction extends Transaction<_TestTransaction> {
  @override
  Uint8List toBytes() => Uint8List.fromList([1, 2, 3]);

  @override
  void applyToBody(hedera_tx.TransactionBody body) {}
}

void main() {
  group('Transaction.buildSignedTransaction', () {
    late HederaClient client;
    late PrivateKey privateKey;

    setUp(() async {
      privateKey = await PrivateKey.generateED25519();
      client = HederaClient.forTestnet().setOperator(
        AccountId.fromString('0.0.12345'),
        privateKey,
      );
    });

    // ---- structure ----

    group('structure', () {
      test('returns a SignedTransaction', () async {
        final tx = _TestTransaction();
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);
        expect(signed, isA<SignedTransaction>());
      });

      test('bodyBytes is non-empty', () async {
        final tx = _TestTransaction();
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);
        expect(signed.bodyBytes, isNotEmpty);
      });

      test('bodyBytes deserializes to a valid TransactionBody', () async {
        final tx = _TestTransaction()..setMemo('test memo');
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);

        final body = hedera_tx.TransactionBody.fromBuffer(signed.bodyBytes);
        expect(body.memo, equals('test memo'));
      });

      test('sigMap is included', () async {
        final tx = _TestTransaction();
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);
        expect(signed.hasSigMap(), isTrue);
      });
    });

    // ---- signatures ----

    group('signatures', () {
      test('sigMap has one sigPair after signing with one key', () async {
        final tx = _TestTransaction();
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);
        expect(signed.sigMap.sigPair.length, equals(1));
      });

      test('sigMap has two sigPairs after signing with two keys', () async {
        final key2 = await PrivateKey.generateED25519();
        final tx = _TestTransaction();
        await tx.sign(privateKey);
        await tx.sign(key2);
        final signed = tx.buildSignedTransaction(client);
        expect(signed.sigMap.sigPair.length, equals(2));
      });

      test('sigPair contains non-empty pubKeyPrefix', () async {
        final tx = _TestTransaction();
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);
        expect(signed.sigMap.sigPair.first.pubKeyPrefix, isNotEmpty);
      });

      test('sigPair contains non-empty ed25519 signature', () async {
        final tx = _TestTransaction();
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);
        expect(signed.sigMap.sigPair.first.ed25519, isNotEmpty);
      });

      test('ed25519 signature is 64 bytes', () async {
        final tx = _TestTransaction();
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);
        expect(signed.sigMap.sigPair.first.ed25519.length, equals(64));
      });

      test('sigMap is empty when no signatures added', () {
        final tx = _TestTransaction();
        final signed = tx.buildSignedTransaction(client);
        expect(signed.sigMap.sigPair, isEmpty);
      });
    });

    // ---- bodyBytes consistency ----

    group('bodyBytes consistency', () {
      test('bodyBytes contains operator accountID', () async {
        final tx = _TestTransaction();
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);

        final body = hedera_tx.TransactionBody.fromBuffer(signed.bodyBytes);
        expect(
          body.transactionID.accountID.accountNum.toInt(),
          equals(12345),
        );
      });

      test('bodyBytes contains node accountID', () async {
        final tx = _TestTransaction()
          ..setNodeAccountId(AccountId.fromString('0.0.5'));
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);

        final body = hedera_tx.TransactionBody.fromBuffer(signed.bodyBytes);
        expect(body.nodeAccountID.accountNum.toInt(), equals(5));
      });

      test('bodyBytes contains transactionFee', () async {
        final tx = _TestTransaction()..setMaxTransactionFee(Hbar(3));
        await tx.sign(privateKey);
        final signed = tx.buildSignedTransaction(client);

        final body = hedera_tx.TransactionBody.fromBuffer(signed.bodyBytes);
        expect(body.transactionFee.toInt(), equals(Hbar(3).toTinybars()));
      });
    });

    // ---- throws ----

    group('throws', () {
      test('throws ArgumentError if client has no operator', () {
        final tx = _TestTransaction();
        final clientWithoutOperator = HederaClient.forTestnet();
        expect(
          () => tx.buildSignedTransaction(clientWithoutOperator),
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });
}
