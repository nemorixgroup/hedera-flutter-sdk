import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Manual verification script for retry/failover behavior (v0.1.3-dev).
///
/// Simulates transient node failures and prints each attempt, the
/// backoff delay applied, and the final outcome, so you can visually
/// confirm RetryPolicy's behavior without waiting for a real node to
/// fail at the right moment.
///
/// This is not an automated test - it uses a fake, controllable
/// executeGrpc() to simulate failures locally, with no live network
/// calls. Run it manually when you want to see retry/failover
/// behavior in detail, for example after touching RetryPolicy or
/// Transaction.execute().
///
/// Run with:
/// ```dart
/// dart run example/phase2/retry_behavior_check.dart
/// ```
//Future<void> main() async {
Future<void> retryBehaviorCheck() async {
  print('=== Retry/Failover Behavior Check (v0.1.3-dev) ===\n');

  await _scenario1RecoversAfterTransientFailures();
  await _scenario2ExhaustsRetriesOnPersistentFailure();
  await _scenario3DoesNotRetryBusinessError();
  await _scenario4PreSignedRetriesSameNode();

  print('=== Check complete ===\n');
}

/// Allows running this file standalone:
/// ```sh
/// dart run example/phase2/retry_behavior_check_example.dart
/// ```
Future<void> main() async => retryBehaviorCheck();

// ---- Scenario 1: transient failures, then success ----

Future<void> _scenario1RecoversAfterTransientFailures() async {
  print('--- Scenario 1: 2 transient failures, then success ---\n');

  final privateKey = await PrivateKey.generateED25519();
  final tx = _VerboseFlakyTransaction(failuresBeforeSuccess: 2);
  final client = HederaClient.forTestnet()
      .setOperator(AccountId.fromString('0.0.12345'), privateKey)
      .setRetryPolicy(
        const RetryPolicy(
          initialBackoff: Duration(milliseconds: 200),
          maxBackoff: Duration(seconds: 2),
        ),
      );

  final stopwatch = Stopwatch()..start();
  final response = await tx.execute(client);
  stopwatch.stop();

  print('');
  print('Result: SUCCESS after ${tx.callCount} attempt(s) '
      'in ${stopwatch.elapsedMilliseconds}ms');
  print('Transaction ID: ${response.transactionId}');
  print('');
  print('WHAT TO EXPECT:');
  print('  - Attempts 1 and 2 fail (simulated UNAVAILABLE).');
  print('  - Backoff grows: ~200ms, then ~400ms (doubling).');
  print('  - Attempt 3 succeeds, execute() returns normally.');
  print('');
}

// ---- Scenario 2: persistent failure exhausts all attempts ----

Future<void> _scenario2ExhaustsRetriesOnPersistentFailure() async {
  print('--- Scenario 2: persistent failure, exhausts maxAttempts ---\n');

  final privateKey = await PrivateKey.generateED25519();
  final tx = _VerboseFlakyTransaction(failuresBeforeSuccess: 999);
  final client = HederaClient.forTestnet()
      .setOperator(AccountId.fromString('0.0.12345'), privateKey)
      .setRetryPolicy(
        const RetryPolicy(
          maxAttempts: 3,
          initialBackoff: Duration(milliseconds: 100),
          maxBackoff: Duration(milliseconds: 500),
        ),
      );

  try {
    await tx.execute(client);
    print('UNEXPECTED: execute() succeeded (should have thrown)');
  } on Object catch (e) {
    print('');
    print('Result: FAILED as expected after ${tx.callCount} attempt(s)');
    print('Error: $e');
  }
  print('');
  print('WHAT TO EXPECT:');
  print('  - All 3 attempts fail (maxAttempts: 3).');
  print('  - execute() throws instead of retrying forever.');
  print('  - callCount should equal exactly 3, never more.');
  print('');
}

// ---- Scenario 3: business error is never retried ----

Future<void> _scenario3DoesNotRetryBusinessError() async {
  print('--- Scenario 3: business error (INVALID_SIGNATURE) ---\n');

  final privateKey = await PrivateKey.generateED25519();
  final tx = _VerboseFlakyTransaction(
    failuresBeforeSuccess: 999,
    error: const HederaStatusException(HederaStatusCode.invalidSignature),
  );
  final client = HederaClient.forTestnet()
      .setOperator(AccountId.fromString('0.0.12345'), privateKey)
      .setRetryPolicy(
        const RetryPolicy(initialBackoff: Duration(milliseconds: 100)),
      );

  try {
    await tx.execute(client);
    print('UNEXPECTED: execute() succeeded (should have thrown)');
  } on Object catch (e) {
    print('');
    print('Result: FAILED immediately after ${tx.callCount} attempt(s)');
    print('Error: $e');
  }
  print('');
  print('WHAT TO EXPECT:');
  print('  - callCount should equal exactly 1.');
  print('  - No retry happened, since INVALID_SIGNATURE is a business');
  print('    error — retrying against another node would fail the');
  print('    same way, so RetryPolicy.isRetryable() correctly skips it.');
  print('');
}

// ---- Scenario 4: pre-signed transaction retries same node ----

Future<void> _scenario4PreSignedRetriesSameNode() async {
  print('--- Scenario 4: pre-signed transaction, 1 transient failure ---\n');

  final privateKey = await PrivateKey.generateED25519();
  final tx = _VerboseFlakyTransaction(failuresBeforeSuccess: 1);
  final client = HederaClient.forTestnet()
      .setOperator(AccountId.fromString('0.0.12345'), privateKey)
      .setRetryPolicy(
        const RetryPolicy(initialBackoff: Duration(milliseconds: 100)),
      );

  await tx.sign(privateKey);
  final signatureCountBefore = tx.signatureCount;
  print('Pre-signed with $signatureCountBefore signature(s) '
      'before execute()\n');

  await tx.execute(client);

  print('');
  print('Result: SUCCESS after ${tx.callCount} attempt(s)');
  print('Signature count before: $signatureCountBefore, '
      'after: ${tx.signatureCount}');
  print('');
  print('WHAT TO EXPECT:');
  print('  - signatureCount is unchanged (no re-signing happened).');
  print('  - This is intentional: the SDK no longer holds the private');
  print('    key at this point, so it cannot re-sign for a different');
  print('    node. It retries against the SAME node instead.');
  print('');
}

// ---- Verbose flaky transaction ----

/// Test transaction whose executeGrpc() fails a configurable number
/// of times before succeeding, printing details of each attempt.
class _VerboseFlakyTransaction extends Transaction<_VerboseFlakyTransaction> {
  _VerboseFlakyTransaction({required this.failuresBeforeSuccess, this.error});

  final int failuresBeforeSuccess;
  final Exception? error;
  int callCount = 0;

  @override
  Uint8List toBytes() => Uint8List.fromList([1, 2, 3]);

  @override
  void applyToBody(hedera_tx.TransactionBody body) {}

  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    CryptoServiceClient cryptoClient,
    hedera_tx.Transaction tx,
  ) async {
    callCount++;
    if (callCount <= failuresBeforeSuccess) {
      final e = error ?? GrpcError.unavailable('simulated node failure');
      print('  Attempt $callCount: FAILED ($e)');
      throw e;
    }
    print('  Attempt $callCount: SUCCEEDED');
    return hedera_response.TransactionResponse();
  }
}
