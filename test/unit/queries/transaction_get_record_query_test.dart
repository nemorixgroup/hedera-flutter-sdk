import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('TransactionGetRecordQuery', () {
    late TransactionId txId;

    setUp(() {
      txId = TransactionId.fromString('0.0.12345@1706745600.000000000');
    });

    // ---- default values ----

    group('default values', () {
      test('transactionId is null by default', () {
        final query = TransactionGetRecordQuery();
        expect(query.transactionId, isNull);
      });
    });

    // ---- setters ----

    group('setters', () {
      test('setTransactionId sets the transaction ID', () {
        final query = TransactionGetRecordQuery()..setTransactionId(txId);
        expect(query.transactionId, equals(txId));
      });

      test('setTransactionId returns the same instance for chaining', () {
        final query = TransactionGetRecordQuery();
        final result = query.setTransactionId(txId);
        expect(identical(result, query), isTrue);
      });

      test('setNodeAccountId returns the same instance for chaining', () {
        final query = TransactionGetRecordQuery();
        final result = query.setNodeAccountId(
          AccountId.fromString('0.0.3'),
        );
        expect(identical(result, query), isTrue);
      });
    });

    // ---- toBytes ----

    group('toBytes', () {
      test('throws ArgumentError if transactionId is not set', () {
        final query = TransactionGetRecordQuery();
        expect(query.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('returns non-empty Uint8List when transactionId is set', () {
        final query = TransactionGetRecordQuery()..setTransactionId(txId);
        final bytes = query.toBytes();
        expect(bytes, isA<Uint8List>());
        expect(bytes, isNotEmpty);
      });

      test('produces consistent bytes for the same transactionId', () {
        final query1 = TransactionGetRecordQuery()..setTransactionId(txId);
        final query2 = TransactionGetRecordQuery()..setTransactionId(txId);
        expect(query1.toBytes(), equals(query2.toBytes()));
      });

      test('produces different bytes than TransactionGetReceiptQuery', () {
        final receiptQuery = TransactionGetReceiptQuery()
          ..setTransactionId(txId);
        final recordQuery = TransactionGetRecordQuery()..setTransactionId(txId);
        expect(receiptQuery.toBytes(), isNot(equals(recordQuery.toBytes())));
      });
    });

    // ---- execute ----

    group('execute', () {
      test('throws ArgumentError if transactionId is not set', () async {
        final query = TransactionGetRecordQuery();
        final client = HederaClient.forTestnet();
        await expectLater(
          query.execute(client),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('returns a Future<TransactionRecord>', () {
        final query = TransactionGetRecordQuery()..setTransactionId(txId);
        final client = HederaClient.forTestnet();
        expect(
          query.execute(client),
          isA<Future<TransactionRecord>>(),
        );
      });
    });

    // ---- TransactionRecord model ----

    group('TransactionRecord', () {
      test('stores all required fields', () {
        final recordTxId = TransactionId.fromString('0.0.12345@1706745600.0');
        final timestamp = DateTime.utc(2024);
        final record = TransactionRecord(
          transactionId: recordTxId,
          transactionFee: 500000,
          memo: 'test record',
          consensusTimestamp: timestamp,
          status: 'SUCCESS',
        );
        expect(record.transactionId, equals(recordTxId));
        expect(record.transactionFee, equals(500000));
        expect(record.memo, equals('test record'));
        expect(record.consensusTimestamp, equals(timestamp));
        expect(record.status, equals('SUCCESS'));
      });

      test('accountId and tokenId are null by default', () {
        final record = TransactionRecord(
          transactionId: txId,
          transactionFee: 100000,
          memo: '',
          consensusTimestamp: DateTime.utc(2024),
          status: 'SUCCESS',
        );
        expect(record.accountId, isNull);
        expect(record.tokenId, isNull);
      });

      test('transfers is empty by default', () {
        final record = TransactionRecord(
          transactionId: txId,
          transactionFee: 100000,
          memo: '',
          consensusTimestamp: DateTime.utc(2024),
          status: 'SUCCESS',
        );
        expect(record.transfers, isEmpty);
      });

      test('stores transfers list', () {
        final record = TransactionRecord(
          transactionId: txId,
          transactionFee: 100000,
          memo: '',
          consensusTimestamp: DateTime.utc(2024),
          status: 'SUCCESS',
          transfers: [
            {'accountId': '0.0.111', 'amount': -100000000},
            {'accountId': '0.0.222', 'amount': 100000000},
          ],
        );
        expect(record.transfers.length, equals(2));
        expect(record.transfers[0]['accountId'], equals('0.0.111'));
        expect(record.transfers[1]['amount'], equals(100000000));
      });

      test('toString contains transactionId, fee and status', () {
        final record = TransactionRecord(
          transactionId: txId,
          transactionFee: 500000,
          memo: '',
          consensusTimestamp: DateTime.utc(2024),
          status: 'SUCCESS',
        );
        expect(record.toString(), contains('0.0.12345'));
        expect(record.toString(), contains('500000'));
        expect(record.toString(), contains('SUCCESS'));
      });
    });
  });
}
