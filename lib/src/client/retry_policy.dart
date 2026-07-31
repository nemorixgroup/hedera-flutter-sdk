import 'dart:math';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_constants.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_exception.dart';

/// Configures retry behavior for transient node/network failures.
///
/// Business errors (e.g. [HederaStatusException] from a bad precheck
/// code like `INVALID_SIGNATURE`) are never retried, since they would
/// fail identically against any node.
///
/// Example:
/// ```dart
/// final client = HederaClient.forTestnet()
///     .setRetryPolicy(const RetryPolicy(maxAttempts: 3));
/// ```
class RetryPolicy {
  /// Creates a [RetryPolicy] with the given attempt and backoff config.
  const RetryPolicy({
    this.maxAttempts = HederaConstants.defaultMaxRetryAttempts,
    this.initialBackoff = const Duration(milliseconds: 250),
    this.maxBackoff = const Duration(seconds: 8),
    this.backoffMultiplier = 2,
  });

  /// Maximum number of attempts, including the first (non-retry) try.
  final int maxAttempts;

  /// Delay before the first retry.
  final Duration initialBackoff;

  /// Delay never exceeds this, regardless of attempt count.
  final Duration maxBackoff;

  /// Delay multiplier applied on each subsequent retry.
  final double backoffMultiplier;

  /// Returns true if [error] represents a transient node/network
  /// failure safe to retry, as opposed to a business-logic error
  /// that would fail identically on any node.
  bool isRetryable(Object error) {
    if (error is GrpcError) {
      switch (error.code) {
        case StatusCode.unavailable:
        case StatusCode.deadlineExceeded:
        case StatusCode.internal:
          return true;
        default:
          return false;
      }
    }
    // HederaStatusException (precheck/business errors like
    // INVALID_SIGNATURE) and any other unrecognized error type are
    // never retried by default.
    return false;
  }

  /// The delay before attempt number [attempt] (1-indexed retry count,
  /// so [attempt] = 1 is the delay before the *first* retry).
  Duration backoffFor(int attempt) {
    final rawMs =
        initialBackoff.inMilliseconds * pow(backoffMultiplier, attempt - 1);
    final cappedMs = rawMs.clamp(0, maxBackoff.inMilliseconds).toDouble();
    return Duration(milliseconds: cappedMs.round());
  }
}
