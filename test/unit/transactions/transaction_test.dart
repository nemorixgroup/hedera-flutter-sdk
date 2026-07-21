import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Minimal concrete Transaction for testing the base class.
// class _TestTransaction extends Transaction<_TestTransaction> {
//   @override
//   Uint8List toBytes() => Uint8List.fromList([1, 2, 3]);
// }
class _TestTransaction extends Transaction<_TestTransaction> {
  @override
  Uint8List toBytes() => Uint8List.fromList([1, 2, 3]);

  /// No-op implementation for testing purposes.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {}

  /// No-op implementation for testing purposes.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    CryptoServiceClient cryptoClient,
    hedera_tx.Transaction tx,
  ) async {
    return hedera_response.TransactionResponse();
  }
}

void main() {
  group('Transaction', () {
    // ---- default values ----

    group('default values', () {
      test('memo defaults to empty string', () {
        final tx = _TestTransaction();
        expect(tx.memo, equals(''));
      });

      test('validDuration defaults to 120 seconds', () {
        final tx = _TestTransaction();
        expect(tx.validDuration, equals(120));
      });

      test('maxTransactionFee defaults to 2 HBAR', () {
        final tx = _TestTransaction();
        expect(
          tx.maxTransactionFee.toTinybars(),
          equals(HederaConstants.defaultMaxTransactionFeeTinybars),
        );
      });

      test('nodeAccountId defaults to null', () {
        final tx = _TestTransaction();
        expect(tx.nodeAccountId, isNull);
      });

      test('transactionId defaults to null', () {
        final tx = _TestTransaction();
        expect(tx.transactionId, isNull);
      });

      test('signatureCount defaults to 0', () {
        final tx = _TestTransaction();
        expect(tx.signatureCount, equals(0));
      });

      test('isSigned defaults to false', () {
        final tx = _TestTransaction();
        expect(tx.isSigned, isFalse);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setNodeAccountId sets nodeAccountId and returns this', () {
        final tx = _TestTransaction();
        final result = tx.setNodeAccountId(AccountId.fromString('0.0.3'));
        expect(result, same(tx));
        expect(tx.nodeAccountId, equals(AccountId.fromString('0.0.3')));
      });

      test('setMaxTransactionFee sets fee and returns this', () {
        final tx = _TestTransaction();
        final result = tx.setMaxTransactionFee(Hbar(5));
        expect(result, same(tx));
        expect(tx.maxTransactionFee, equals(Hbar(5)));
      });

      test('setMemo sets memo and returns this', () {
        final tx = _TestTransaction();
        final result = tx.setMemo('test memo');
        expect(result, same(tx));
        expect(tx.memo, equals('test memo'));
      });

      test('setMemo throws ArgumentError if exceeds max length', () {
        final tx = _TestTransaction();
        final longMemo = 'a' * (HederaConstants.maxMemoLength + 1);
        expect(
          () => tx.setMemo(longMemo),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('setMemo accepts exactly max length', () {
        final tx = _TestTransaction();
        final maxMemo = 'a' * HederaConstants.maxMemoLength;
        tx.setMemo(maxMemo);
        expect(tx.memo, equals(maxMemo));
      });

      test('setValidDuration sets duration and returns this', () {
        final tx = _TestTransaction();
        final result = tx.setValidDuration(60);
        expect(result, same(tx));
        expect(tx.validDuration, equals(60));
      });

      test('setValidDuration throws ArgumentError if exceeds maximum', () {
        final tx = _TestTransaction();
        expect(
          () => tx.setValidDuration(
            HederaConstants.maxTransactionValidDurationSeconds + 1,
          ),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('setValidDuration accepts exactly maximum', () {
        final tx = _TestTransaction();
        const maxDuration = HederaConstants.maxTransactionValidDurationSeconds;
        tx.setValidDuration(maxDuration);
        expect(tx.validDuration, equals(maxDuration));
      });

      test('setTransactionId sets transactionId and returns this', () {
        final tx = _TestTransaction();
        final txId = TransactionId.fromString('0.0.12345@1706745600.0');
        final result = tx.setTransactionId(txId);
        expect(result, same(tx));
        expect(tx.transactionId, equals(txId));
      });
    });

    // ---- sign ----

    group('sign', () {
      test('sign adds a signature', () async {
        final tx = _TestTransaction();
        final privateKey = await PrivateKey.generateED25519();
        await tx.sign(privateKey);
        expect(tx.signatureCount, equals(1));
        expect(tx.isSigned, isTrue);
      });

      test('sign returns this for chaining', () async {
        final tx = _TestTransaction();
        final privateKey = await PrivateKey.generateED25519();
        final result = await tx.sign(privateKey);
        expect(result, same(tx));
      });

      test('signing with multiple keys increases signatureCount', () async {
        final tx = _TestTransaction();
        final key1 = await PrivateKey.generateED25519();
        final key2 = await PrivateKey.generateED25519();
        await tx.sign(key1);
        await tx.sign(key2);
        expect(tx.signatureCount, equals(2));
      });

      test('signing with same key twice does not duplicate', () async {
        final tx = _TestTransaction();
        final key = await PrivateKey.generateED25519();
        await tx.sign(key);
        await tx.sign(key);
        expect(tx.signatureCount, equals(1));
      });
    });

    // ---- addSignature ----

    group('addSignature', () {
      test('addSignature adds a signature manually', () async {
        final tx = _TestTransaction();
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final signature = await privateKey.sign(tx.toBytes());
        final result = tx.addSignature(publicKey, signature);
        expect(result, same(tx));
        expect(tx.signatureCount, equals(1));
        expect(tx.isSigned, isTrue);
      });
    });

    // ---- signWithOperator ----

    group('signWithOperator', () {
      test('execute throws ArgumentError if client has no operator', () async {
        final tx = _TestTransaction();
        final client = HederaClient.forTestnet();
        expect(
          () => tx.signWithOperator(client),
          throwsA(isA<HederaStatusException>()),
        );
      });

      test('signs successfully when operator is set', () async {
        final tx = _TestTransaction();
        final privateKey = await PrivateKey.generateED25519();
        final client = HederaClient.forTestnet().setOperator(
          AccountId.fromString('0.0.12345'),
          privateKey,
        );
        await tx.signWithOperator(client);
        expect(tx.signatureCount, equals(1));
      });
    });

    // ---- execute ----

    group('execute', () {
      test('execute throws ArgumentError if client has no operator', () {
        final tx = _TestTransaction();
        final client = HederaClient.forTestnet();
        expect(
          () => tx.execute(client),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    // ---- buildSignedTransaction ----

    group('buildSignedTransaction', () {
      test('uses the ed25519 field for ED25519 signatures', () async {
        final tx = _TestTransaction();
        final privateKey = await PrivateKey.generateED25519();
        final client = HederaClient.forTestnet().setOperator(
          AccountId.fromString('0.0.12345'),
          privateKey,
        );
        await tx.sign(privateKey);

        final signedTx = tx.buildSignedTransaction(client);
        final sigPair = signedTx.sigMap.sigPair.single;

        expect(
          sigPair.whichSignature(),
          equals(SignaturePair_Signature.ed25519),
        );
      });

      test('uses the eCDSASecp256k1 field for ECDSA signatures', () async {
        final tx = _TestTransaction();
        final privateKey = await PrivateKey.generateECDSA();
        final client = HederaClient.forTestnet().setOperator(
          AccountId.fromString('0.0.12345'),
          privateKey,
        );
        await tx.sign(privateKey);

        final signedTx = tx.buildSignedTransaction(client);
        final sigPair = signedTx.sigMap.sigPair.single;

        expect(
          sigPair.whichSignature(),
          equals(SignaturePair_Signature.eCDSASecp256k1),
        );
      });

      test(
        'ECDSA signature is not misrouted into the ed25519 field',
        () async {
          final tx = _TestTransaction();
          final privateKey = await PrivateKey.generateECDSA();
          final client = HederaClient.forTestnet().setOperator(
            AccountId.fromString('0.0.12345'),
            privateKey,
          );
          await tx.sign(privateKey);

          final signedTx = tx.buildSignedTransaction(client);
          final sigPair = signedTx.sigMap.sigPair.single;

          expect(sigPair.hasEd25519(), isFalse);
          expect(sigPair.hasECDSASecp256k1(), isTrue);
        },
      );

      test(
        'pubKeyPrefix contains the full 33-byte compressed ECDSA key',
        () async {
          final tx = _TestTransaction();
          final privateKey = await PrivateKey.generateECDSA();
          final publicKey = await privateKey.derivePublicKey();
          final client = HederaClient.forTestnet().setOperator(
            AccountId.fromString('0.0.12345'),
            privateKey,
          );
          await tx.sign(privateKey);

          final signedTx = tx.buildSignedTransaction(client);
          final sigPair = signedTx.sigMap.sigPair.single;

          expect(sigPair.pubKeyPrefix.length, equals(33));
          expect(sigPair.pubKeyPrefix, equals(publicKey.bytes));
        },
      );

      test(
        'mixed ED25519 and ECDSA signatures each use their own field',
        () async {
          final tx = _TestTransaction();
          final ed25519Key = await PrivateKey.generateED25519();
          final ecdsaKey = await PrivateKey.generateECDSA();
          final client = HederaClient.forTestnet().setOperator(
            AccountId.fromString('0.0.12345'),
            ed25519Key,
          );
          await tx.sign(ed25519Key);
          await tx.sign(ecdsaKey);

          final signedTx = tx.buildSignedTransaction(client);
          final sigPairs = signedTx.sigMap.sigPair;

          expect(sigPairs.length, equals(2));
          final signatureTypes =
              sigPairs.map((pair) => pair.whichSignature()).toSet();
          expect(
            signatureTypes,
            equals({
              SignaturePair_Signature.ed25519,
              SignaturePair_Signature.eCDSASecp256k1,
            }),
          );
        },
      );
    });

    // ---- toBytes ----

    group('toBytes', () {
      test('subclass implementation is used', () {
        final tx = _TestTransaction();
        expect(tx.toBytes(), equals(Uint8List.fromList([1, 2, 3])));
      });
    });
  });

  group('TransactionResponse', () {
    test('stores transactionId', () {
      final txId = TransactionId.fromString('0.0.12345@1706745600.0');
      final response = TransactionResponse(transactionId: txId);
      expect(response.transactionId, equals(txId));
    });

    test('toString includes transactionId', () {
      final txId = TransactionId.fromString('0.0.12345@1706745600.0');
      final response = TransactionResponse(transactionId: txId);
      expect(response.toString(), contains('0.0.12345'));
    });

    test('getReceipt returns a Future', () {
      final txId = TransactionId.fromString('0.0.12345@1706745600.0');
      final response = TransactionResponse(transactionId: txId);
      final client = HederaClient.forTestnet();
      expect(response.getReceipt(client), isA<Future<TransactionReceipt>>());
    });

    test('getRecord returns a Future<TransactionRecord>', () {
      final txId = TransactionId.fromString('0.0.12345@1706745600.0');
      final response = TransactionResponse(transactionId: txId);
      final client = HederaClient.forTestnet();
      expect(
        response.getRecord(client),
        isA<Future<TransactionRecord>>(),
      );
    });
  });

  group('TransactionReceipt', () {
    test('stores status, accountId, and tokenId', () {
      const receipt = TransactionReceipt(
        status: 'SUCCESS',
        accountId: '0.0.12345',
        tokenId: '0.0.99999',
      );
      expect(receipt.status, equals('SUCCESS'));
      expect(receipt.accountId, equals('0.0.12345'));
      expect(receipt.tokenId, equals('0.0.99999'));
    });

    test('accountId and tokenId default to null', () {
      const receipt = TransactionReceipt(status: 'SUCCESS');
      expect(receipt.accountId, isNull);
      expect(receipt.tokenId, isNull);
    });

    test('toString includes status', () {
      const receipt = TransactionReceipt(status: 'SUCCESS');
      expect(receipt.toString(), contains('SUCCESS'));
    });
  });

  group('TransactionRecord', () {
    test('stores transactionId, fee, and memo', () {
      final txId = TransactionId.fromString('0.0.12345@1706745600.0');
      final record = TransactionRecord(
        transactionId: txId,
        transactionFee: 100000,
        memo: 'test',
        consensusTimestamp: DateTime.utc(2024),
        status: 'SUCCESS',
      );
      expect(record.transactionId, equals(txId));
      expect(record.transactionFee, equals(100000));
      expect(record.memo, equals('test'));
      expect(record.consensusTimestamp, equals(DateTime.utc(2024)));
      expect(record.status, equals('SUCCESS'));
    });

    test('toString includes transactionId and fee', () {
      final txId = TransactionId.fromString('0.0.12345@1706745600.0');
      final record = TransactionRecord(
        transactionId: txId,
        transactionFee: 100000,
        memo: 'test',
        consensusTimestamp: DateTime.utc(2024),
        status: 'SUCCESS',
      );
      expect(record.toString(), contains('0.0.12345'));
      expect(record.toString(), contains('100000'));
      expect(record.toString(), contains('SUCCESS'));
    });
  });
}
