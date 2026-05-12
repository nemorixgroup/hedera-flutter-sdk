import 'package:meta/meta.dart';

/// Represents a unique Hedera transaction identifier.
///
/// A transaction ID is composed of the account ID of the payer
/// and the valid start timestamp of the transaction.
///
/// Example: 0.0.12345@1706745600.000000000
@immutable
class TransactionId {
  /// Creates a [TransactionId] with the given account ID and timestamp.
  const TransactionId({
    required this.accountId,
    required this.validStartNanos,
    required this.validStartSeconds,
  });

  /// Creates a [TransactionId] from a string.
  ///
  /// Expected format: shard.realm.num@seconds.nanos
  ///
  /// Throws [FormatException] if the format is invalid.
  factory TransactionId.fromString(String value) {
    final parts = value.split('@');
    if (parts.length != 2) {
      throw FormatException(
        'Invalid TransactionId format. Expected accountId@seconds.nanos',
      );
    }
    final timeParts = parts[1].split('.');
    if (timeParts.length != 2) {
      throw FormatException(
        'Invalid TransactionId timestamp format.',
      );
    }
    return TransactionId(
      accountId: parts[0],
      validStartNanos: int.parse(timeParts[1]),
      validStartSeconds: int.parse(timeParts[0]),
    );
  }

  /// The account ID of the transaction payer.
  final String accountId;

  /// The valid start timestamp nanoseconds component.
  final int validStartNanos;

  /// The valid start timestamp in seconds since epoch.
  final int validStartSeconds;

  @override
  String toString() => '$accountId@$validStartSeconds.$validStartNanos';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionId &&
          accountId == other.accountId &&
          validStartSeconds == other.validStartSeconds &&
          validStartNanos == other.validStartNanos;

  @override
  int get hashCode =>
      Object.hash(accountId, validStartSeconds, validStartNanos);
}
