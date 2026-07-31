import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';

void main() {
  group('RetryPolicy', () {
    // ---- defaults ----

    group('defaults', () {
      test('maxAttempts defaults to HederaConstants.defaultMaxRetryAttempts',
          () {
        const policy = RetryPolicy();
        expect(
          policy.maxAttempts,
          equals(HederaConstants.defaultMaxRetryAttempts),
        );
      });

      test('initialBackoff defaults to 250ms', () {
        const policy = RetryPolicy();
        expect(
          policy.initialBackoff,
          equals(const Duration(milliseconds: 250)),
        );
      });

      test('maxBackoff defaults to 8s', () {
        const policy = RetryPolicy();
        expect(policy.maxBackoff, equals(const Duration(seconds: 8)));
      });

      test('backoffMultiplier defaults to 2', () {
        const policy = RetryPolicy();
        expect(policy.backoffMultiplier, equals(2));
      });

      test('accepts custom values', () {
        const policy = RetryPolicy(
          maxAttempts: 3,
          initialBackoff: Duration(milliseconds: 100),
          maxBackoff: Duration(seconds: 2),
          backoffMultiplier: 1.5,
        );
        expect(policy.maxAttempts, equals(3));
        expect(
          policy.initialBackoff,
          equals(const Duration(milliseconds: 100)),
        );
        expect(policy.maxBackoff, equals(const Duration(seconds: 2)));
        expect(policy.backoffMultiplier, equals(1.5));
      });
    });

    // ---- isRetryable ----

    group('isRetryable', () {
      const policy = RetryPolicy();

      test('returns true for GrpcError.unavailable', () {
        expect(policy.isRetryable(GrpcError.unavailable()), isTrue);
      });

      test('returns true for GrpcError.deadlineExceeded', () {
        expect(policy.isRetryable(GrpcError.deadlineExceeded()), isTrue);
      });

      test('returns true for GrpcError.internal', () {
        expect(policy.isRetryable(GrpcError.internal()), isTrue);
      });

      test('returns false for GrpcError.invalidArgument', () {
        expect(policy.isRetryable(GrpcError.invalidArgument()), isFalse);
      });

      test('returns false for GrpcError.unauthenticated', () {
        expect(policy.isRetryable(GrpcError.unauthenticated()), isFalse);
      });

      test('returns false for HederaStatusException', () {
        expect(
          policy.isRetryable(
            const HederaStatusException(HederaStatusCode.invalidSignature),
          ),
          isFalse,
        );
      });

      test('returns false for a generic ArgumentError', () {
        expect(policy.isRetryable(ArgumentError('bad input')), isFalse);
      });

      test('returns false for a generic StateError', () {
        expect(policy.isRetryable(StateError('unexpected')), isFalse);
      });
    });

    // ---- backoffFor ----

    group('backoffFor', () {
      const policy = RetryPolicy(
        initialBackoff: Duration(milliseconds: 100),
        maxBackoff: Duration(seconds: 1),
      );

      test('attempt 1 returns initialBackoff', () {
        expect(policy.backoffFor(1), equals(const Duration(milliseconds: 100)));
      });

      test('attempt 2 doubles the delay', () {
        expect(policy.backoffFor(2), equals(const Duration(milliseconds: 200)));
      });

      test('attempt 3 doubles again', () {
        expect(policy.backoffFor(3), equals(const Duration(milliseconds: 400)));
      });

      test('delay is capped at maxBackoff for large attempt numbers', () {
        expect(policy.backoffFor(10), equals(const Duration(seconds: 1)));
      });

      test('never exceeds maxBackoff even with a high multiplier', () {
        const aggressivePolicy = RetryPolicy(
          initialBackoff: Duration(milliseconds: 500),
          maxBackoff: Duration(seconds: 2),
          backoffMultiplier: 10,
        );
        expect(aggressivePolicy.backoffFor(5).inSeconds, equals(2));
      });
    });
  });
}
