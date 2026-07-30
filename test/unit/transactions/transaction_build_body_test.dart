import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Minimal concrete Transaction for testing buildBody().
class _TestTransaction extends Transaction<_TestTransaction> {
  bool applyToBodyCalled = false;

  @override
  Uint8List toBytes() => Uint8List.fromList([1, 2, 3]);

  /// Records that applyToBody was called and sets a known field.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    applyToBodyCalled = true;
  }

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
  group('Transaction.buildBody', () {
    late HederaClient client;
    late AccountId operatorId;

    setUp(() {
      operatorId = AccountId.fromString('0.0.12345');
      client = HederaClient.forTestnet().setOperator(
        operatorId,
        PrivateKey.fromBytes(Uint8List(32)),
      );
    });

    // ---- validation ----

    group('validation', () {
      test('throws ArgumentError if client has no operator account ID',
          () async {
        final tx = _TestTransaction();
        final clientWithoutOperator = HederaClient.forTestnet();
        await expectLater(
          tx.buildBody(clientWithoutOperator),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('does not throw if client has operator account ID', () async {
        final tx = _TestTransaction();
        await expectLater(tx.buildBody(client), completes);
      });
    });

    // ---- transactionID ----

    group('transactionID', () {
      test('encodes operator accountID in transactionID', () async {
        final tx = _TestTransaction();
        final body = await tx.buildBody(client);

        expect(
          body.transactionID.accountID.accountNum.toInt(),
          equals(12345),
        );
      });

      test('transactionValidStart seconds is greater than zero', () async {
        final tx = _TestTransaction();
        final body = await tx.buildBody(client);

        expect(
          body.transactionID.transactionValidStart.seconds.toInt(),
          greaterThan(0),
        );
      });

      test('transactionValidStart nanos is non-negative', () async {
        final tx = _TestTransaction();
        final body = await tx.buildBody(client);

        expect(
          body.transactionID.transactionValidStart.nanos,
          greaterThanOrEqualTo(0),
        );
      });

      test('two consecutive buildBody calls have non-decreasing timestamps',
          () async {
        final tx1 = _TestTransaction();
        final tx2 = _TestTransaction();

        final body1 = await tx1.buildBody(client);
        await Future<void>.delayed(const Duration(milliseconds: 1));
        final body2 = await tx2.buildBody(client);

        expect(
          body2.transactionID.transactionValidStart.seconds.toInt(),
          greaterThanOrEqualTo(
            body1.transactionID.transactionValidStart.seconds.toInt(),
          ),
        );
      });
    });

    // ---- nodeAccountID ----

    group('nodeAccountID', () {
      test('defaults to a selected node if not set', () async {
        final tx = _TestTransaction();
        final body = await tx.buildBody(client);

        expect(body.nodeAccountID.shardNum.toInt(), equals(0));
        expect(body.nodeAccountID.realmNum.toInt(), equals(0));
        expect(body.nodeAccountID.accountNum.toInt(), greaterThan(0));
      });

      test('uses setNodeAccountId value when set', () async {
        final tx = _TestTransaction()
          ..setNodeAccountId(AccountId.fromString('0.0.5'));
        final body = await tx.buildBody(client);

        expect(body.nodeAccountID.accountNum.toInt(), equals(5));
      });
    });

    // ---- transactionFee ----

    group('transactionFee', () {
      test('encodes maxTransactionFee in tinybars', () async {
        final tx = _TestTransaction();
        final body = await tx.buildBody(client);

        expect(
          body.transactionFee.toInt(),
          equals(tx.maxTransactionFee.toTinybars()),
        );
      });

      test('reflects custom maxTransactionFee when set', () async {
        final tx = _TestTransaction()..setMaxTransactionFee(Hbar(5));
        final body = await tx.buildBody(client);

        expect(
          body.transactionFee.toInt(),
          equals(Hbar(5).toTinybars()),
        );
      });
    });

    // ---- transactionValidDuration ----

    group('transactionValidDuration', () {
      test('encodes default validDuration in seconds', () async {
        final tx = _TestTransaction();
        final body = await tx.buildBody(client);

        expect(
          body.transactionValidDuration.seconds.toInt(),
          equals(tx.validDuration),
        );
      });

      test('reflects custom validDuration when set', () async {
        final tx = _TestTransaction()..setValidDuration(60);
        final body = await tx.buildBody(client);

        expect(
          body.transactionValidDuration.seconds.toInt(),
          equals(60),
        );
      });
    });

    // ---- memo ----

    group('memo', () {
      test('encodes empty memo by default', () async {
        final tx = _TestTransaction();
        final body = await tx.buildBody(client);

        expect(body.memo, equals(''));
      });

      test('encodes memo when set', () async {
        final tx = _TestTransaction()..setMemo('NemorixPay transfer');
        final body = await tx.buildBody(client);

        expect(body.memo, equals('NemorixPay transfer'));
      });
    });

    // ---- applyToBody ----

    group('applyToBody', () {
      test('calls applyToBody on the subclass', () async {
        final tx = _TestTransaction();
        await tx.buildBody(client);
        expect(tx.applyToBodyCalled, isTrue);
      });
    });
  });
}
