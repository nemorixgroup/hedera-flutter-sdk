import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Test transaction whose executeGrpc() fails a configurable number
/// of times before succeeding (or fails persistently), to exercise
/// Transaction.execute()'s retry/failover logic.
class _FlakyTestTransaction extends Transaction<_FlakyTestTransaction> {
  _FlakyTestTransaction({required this.failuresBeforeSuccess, this.error});

  /// How many calls to executeGrpc() should fail before succeeding.
  /// Use a very high number to simulate a persistent failure.
  final int failuresBeforeSuccess;

  /// The error to throw on failing attempts. Defaults to a retryable
  /// GrpcError.unavailable() if not set.
  final Exception? error;

  /// Number of times executeGrpc() has been called.
  int callCount = 0;

  @override
  Uint8List toBytes() => Uint8List.fromList([1, 2, 3]);

  @override
  void applyToBody(hedera_tx.TransactionBody body) {}

  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    callCount++;
    if (callCount <= failuresBeforeSuccess) {
      throw error ?? GrpcError.unavailable('simulated node failure');
    }
    return hedera_response.TransactionResponse();
  }
}

/// A RetryPolicy with near-zero backoff, so retry tests run fast
/// instead of waiting on real exponential delays.
const _fastRetryPolicy = RetryPolicy(
  initialBackoff: Duration(milliseconds: 1),
  maxBackoff: Duration(milliseconds: 5),
);

void main() {
  group('Transaction.execute retry/failover', () {
    late PrivateKey privateKey;

    setUp(() async {
      privateKey = await PrivateKey.generateED25519();
    });

    // ---- successful retry ----

    group('successful retry', () {
      test('succeeds after transient failures within maxAttempts', () async {
        final tx = _FlakyTestTransaction(failuresBeforeSuccess: 2);
        final client = HederaClient.forTestnet()
            .setOperator(AccountId.fromString('0.0.12345'), privateKey)
            .setRetryPolicy(_fastRetryPolicy);

        final response = await tx.execute(client);

        expect(tx.callCount, equals(3)); // 2 failures + 1 success
        expect(response, isA<TransactionResponse>());
      });

      test('does not retry when the first attempt succeeds', () async {
        final tx = _FlakyTestTransaction(failuresBeforeSuccess: 0);
        final client = HederaClient.forTestnet()
            .setOperator(AccountId.fromString('0.0.12345'), privateKey)
            .setRetryPolicy(_fastRetryPolicy);

        await tx.execute(client);

        expect(tx.callCount, equals(1));
      });
    });

    // ---- exhausted retries ----

    group('exhausted retries', () {
      test('throws after exhausting maxAttempts on persistent failure',
          () async {
        final tx = _FlakyTestTransaction(failuresBeforeSuccess: 999);
        final client = HederaClient.forTestnet()
            .setOperator(AccountId.fromString('0.0.12345'), privateKey)
            .setRetryPolicy(
              const RetryPolicy(
                maxAttempts: 3,
                initialBackoff: Duration(milliseconds: 1),
                maxBackoff: Duration(milliseconds: 5),
              ),
            );

        await expectLater(tx.execute(client), throwsA(anything));
        expect(tx.callCount, equals(3)); // never exceeds maxAttempts
      });
    });

    // ---- non-retryable errors ----

    group('non-retryable errors', () {
      test('does not retry on HederaStatusException (business error)',
          () async {
        final tx = _FlakyTestTransaction(
          failuresBeforeSuccess: 999,
          error: const HederaStatusException(HederaStatusCode.invalidSignature),
        );
        final client = HederaClient.forTestnet()
            .setOperator(AccountId.fromString('0.0.12345'), privateKey)
            .setRetryPolicy(_fastRetryPolicy);

        await expectLater(
          tx.execute(client),
          throwsA(isA<HederaStatusException>()),
        );
        expect(tx.callCount, equals(1)); // single attempt, no retry
      });

      test('does not retry on GrpcError.invalidArgument', () async {
        final tx = _FlakyTestTransaction(
          failuresBeforeSuccess: 999,
          error: GrpcError.invalidArgument('bad request'),
        );
        final client = HederaClient.forTestnet()
            .setOperator(AccountId.fromString('0.0.12345'), privateKey)
            .setRetryPolicy(_fastRetryPolicy);

        await expectLater(tx.execute(client), throwsA(anything));
        expect(tx.callCount, equals(1));
      });
    });

    // ---- pre-signed transactions ----

    group('pre-signed transactions', () {
      test('retries same node and does not re-sign when pre-signed', () async {
        final tx = _FlakyTestTransaction(failuresBeforeSuccess: 1);
        final client = HederaClient.forTestnet()
            .setOperator(AccountId.fromString('0.0.12345'), privateKey)
            .setRetryPolicy(_fastRetryPolicy);

        await tx.sign(privateKey); // pre-signed before execute()
        final signatureCountBefore = tx.signatureCount;

        await tx.execute(client);

        expect(tx.callCount, equals(2)); // 1 failure + 1 success
        expect(tx.signatureCount, equals(signatureCountBefore));
      });

      test('operator auto-sign path re-signs on each retry', () async {
        final tx = _FlakyTestTransaction(failuresBeforeSuccess: 1);
        final client = HederaClient.forTestnet()
            .setOperator(AccountId.fromString('0.0.12345'), privateKey)
            .setRetryPolicy(_fastRetryPolicy);

        // Not pre-signed: execute() auto-signs with the operator key.
        expect(tx.isSigned, isFalse);

        await tx.execute(client);

        expect(tx.callCount, equals(2));
        expect(tx.isSigned, isTrue);
        expect(tx.signatureCount, equals(1));
      });
    });
  });
}
