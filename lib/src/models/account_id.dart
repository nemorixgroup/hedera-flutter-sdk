import 'package:meta/meta.dart';

/// Represents a Hedera account identifier in the format shard.realm.num.
///
/// Example: 0.0.12345
///
/// Models are based on the AccountID type defined in the Hedera HAPI
/// Protobuf definitions: basic_types.proto
///
/// Example:
/// ```dart
/// final accountId = AccountId.fromString('0.0.12345');
/// print(accountId.toString()); // 0.0.12345
/// ```
@immutable
class AccountId {
  /// Creates an [AccountId] with the given shard, realm, and account numbers.
  const AccountId({
    required this.accountNum,
    this.realmNum = 0,
    this.shardNum = 0,
  });

  /// Creates an [AccountId] from a string in the format shard.realm.num.
  ///
  /// Example:
  /// ```dart
  /// final id = AccountId.fromString('0.0.12345');
  /// ```
  ///
  /// Throws [FormatException] if the string is not a valid account ID.
  factory AccountId.fromString(String value) {
    final parts = value.split('.');
    if (parts.length != 3) {
      throw FormatException(
        'Invalid AccountId format. Expected shard.realm.num, got: $value',
      );
    }
    return AccountId(
      accountNum: int.parse(parts[2]),
      realmNum: int.parse(parts[1]),
      shardNum: int.parse(parts[0]),
    );
  }

  /// The account number; the unique identifier within the shard and realm.
  final int accountNum;

  /// The realm number. Currently always 0 on Hedera mainnet.
  final int realmNum;

  /// The shard number. Currently always 0 on Hedera mainnet.
  final int shardNum;

  @override
  String toString() => '$shardNum.$realmNum.$accountNum';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountId &&
          shardNum == other.shardNum &&
          realmNum == other.realmNum &&
          accountNum == other.accountNum;

  @override
  int get hashCode => Object.hash(shardNum, realmNum, accountNum);
}
