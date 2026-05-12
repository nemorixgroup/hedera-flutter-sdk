import 'package:meta/meta.dart';

/// Represents a Hedera token identifier in the format shard.realm.num.
///
/// Example: 0.0.55555
///
/// Models are based on the TokenID type defined in the Hedera HAPI
/// Protobuf definitions: basic_types.proto
///
/// Example:
/// ```dart
/// final tokenId = TokenId.fromString('0.0.55555');
/// print(tokenId.toString()); // 0.0.55555
/// ```
@immutable
class TokenId {
  /// Creates a [TokenId] with the given shard, realm, and token numbers.
  const TokenId({
    required this.tokenNum,
    this.realmNum = 0,
    this.shardNum = 0,
  });

  /// Creates a [TokenId] from a string in the format shard.realm.num.
  ///
  /// Example:
  /// ```dart
  /// final id = TokenId.fromString('0.0.55555');
  /// ```
  ///
  /// Throws [FormatException] if the string is not a valid token ID.
  factory TokenId.fromString(String value) {
    final parts = value.split('.');
    if (parts.length != 3) {
      throw FormatException(
        'Invalid TokenId format. Expected shard.realm.num, got: $value',
      );
    }
    return TokenId(
      realmNum: int.parse(parts[1]),
      shardNum: int.parse(parts[0]),
      tokenNum: int.parse(parts[2]),
    );
  }

  /// The realm number. Currently always 0 on Hedera mainnet.
  final int realmNum;

  /// The shard number. Currently always 0 on Hedera mainnet.
  final int shardNum;

  /// The token number; the unique identifier within the shard and realm.
  final int tokenNum;

  @override
  String toString() => '$shardNum.$realmNum.$tokenNum';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenId &&
          shardNum == other.shardNum &&
          realmNum == other.realmNum &&
          tokenNum == other.tokenNum;

  @override
  int get hashCode => Object.hash(shardNum, realmNum, tokenNum);
}
