import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('TransactionGetReceiptQuery', () {
    late TransactionId txId;

    setUp(() {
      txId = TransactionId.fromString('0.0.12345@1706745600.000000000');
    });

    // ---- default values ----

    group('default values', () {
      test('transactionId is null by default', () {
        final query = TransactionGetReceiptQuery();
        expect(query.transactionId, isNull);
      });
    });

    // ---- setters ----

    group('setters', () {
      test('setTransactionId sets the transaction ID', () {
        final query = TransactionGetReceiptQuery()..setTransactionId(txId);
        expect(query.transactionId, equals(txId));
      });

      test('setTransactionId returns the same instance for chaining', () {
        final query = TransactionGetReceiptQuery();
        final result = query.setTransactionId(txId);
        expect(identical(result, query), isTrue);
      });

      test('setNodeAccountId returns the same instance for chaining', () {
        final query = TransactionGetReceiptQuery();
        final result = query.setNodeAccountId(
          AccountId.fromString('0.0.3'),
        );
        expect(identical(result, query), isTrue);
      });
    });

    // ---- toBytes ----

    group('toBytes', () {
      test('throws ArgumentError if transactionId is not set', () {
        final query = TransactionGetReceiptQuery();
        expect(query.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('returns non-empty Uint8List when transactionId is set', () {
        final query = TransactionGetReceiptQuery()..setTransactionId(txId);
        final bytes = query.toBytes();
        expect(bytes, isA<Uint8List>());
        expect(bytes, isNotEmpty);
      });

      test('produces consistent bytes for the same transactionId', () {
        final query1 = TransactionGetReceiptQuery()..setTransactionId(txId);
        final query2 = TransactionGetReceiptQuery()..setTransactionId(txId);
        expect(query1.toBytes(), equals(query2.toBytes()));
      });
    });

    // ---- execute ----

    group('execute', () {
      test('throws ArgumentError if transactionId is not set', () async {
        final query = TransactionGetReceiptQuery();
        final client = HederaClient.forTestnet();
        await expectLater(
          query.execute(client),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('returns a Future<TransactionReceipt>', () {
        final query = TransactionGetReceiptQuery()..setTransactionId(txId);
        final client = HederaClient.forTestnet();
        expect(
          query.execute(client),
          isA<Future<TransactionReceipt>>(),
        );
      });
    });
  });
}
