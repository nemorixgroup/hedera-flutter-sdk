import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:meta/meta.dart';

/// Represents a Hedera account identifier.
///
/// Can be represented either in the native shard.realm.num format,
/// or as an EVM-compatible address alias (20-byte address used by
/// Ethereum-compatible tooling such as MetaMask).
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
  }) : evmAddress = null;

  /// Creates an [AccountId] using an EVM-compatible address alias.
  ///
  /// [evmAddress] MUST be exactly 20 bytes.
  ///
  /// Example:
  /// ```dart
  /// final accountId = AccountId.evm(evmAddress: [0x00, ...]);
  /// ```
  const AccountId.evm({
    required this.evmAddress,
    this.realmNum = 0,
    this.shardNum = 0,
  }) : accountNum = 0;

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

  /// Creates an [AccountId] from a 20-byte EVM address hex string.
  ///
  /// Accepts addresses with or without the `0x` prefix.
  ///
  /// Example:
  /// ```dart
  /// final id = AccountId.fromEvmAddress(
  ///   '0x00000000000000000000000000000000000ed5',
  /// );
  /// ```
  ///
  /// Throws [FormatException] if the address is not exactly 20 bytes.
  factory AccountId.fromEvmAddress(String address) {
    final hex = address.startsWith('0x') ? address.substring(2) : address;
    if (hex.length != 40) {
      throw FormatException(
        'Invalid EVM address. Expected 20 bytes (40 hex characters), '
        'got: ${hex.length ~/ 2} bytes.',
      );
    }
    final bytes = List<int>.generate(
      20,
      (i) => int.parse(hex.substring(i * 2, i * 2 + 2), radix: 16),
    );
    return AccountId.evm(evmAddress: bytes);
  }

  /// The account number; the unique identifier within the shard and realm.
  ///
  /// Always `0` when [isEvmAddress] is true.
  final int accountNum;

  /// The realm number. Currently always 0 on Hedera mainnet.
  final int realmNum;

  /// The shard number. Currently always 0 on Hedera mainnet.
  final int shardNum;

  /// The 20-byte EVM address alias; or null if this [AccountId] uses
  /// the native shard.realm.num format.
  final List<int>? evmAddress;

  /// Whether this [AccountId] uses an EVM address alias instead of
  /// the native account number.
  bool get isEvmAddress => evmAddress != null;

  @override
  String toString() {
    if (isEvmAddress) {
      final hex = evmAddress!
          .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
          .join();
      return '0x$hex';
    }
    return '$shardNum.$realmNum.$accountNum';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! AccountId) {
      return false;
    }
    if (shardNum != other.shardNum || realmNum != other.realmNum) {
      return false;
    }
    if (isEvmAddress || other.isEvmAddress) {
      return isEvmAddress &&
          other.isEvmAddress &&
          _listEquals(evmAddress!, other.evmAddress!);
    }
    return accountNum == other.accountNum;
  }

  @override
  int get hashCode {
    if (isEvmAddress) {
      return Object.hash(shardNum, realmNum, Object.hashAll(evmAddress!));
    }
    return Object.hash(shardNum, realmNum, accountNum);
  }

  static bool _listEquals(List<int> a, List<int> b) {
    if (a.length != b.length) {
      return false;
    }
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) {
        return false;
      }
    }
    return true;
  }

  /// Converts this [AccountId] to its Protobuf [AccountID] representation.
  ///
  /// If [isEvmAddress] is true; the `alias` field is set instead of
  /// `accountNum`; matching the `oneof` semantics of the Hedera Protobuf
  /// definition.
  AccountID toProto() {
    if (isEvmAddress) {
      return AccountID(
        shardNum: Int64(shardNum),
        realmNum: Int64(realmNum),
        alias: evmAddress,
      );
    }
    return AccountID(
      shardNum: Int64(shardNum),
      realmNum: Int64(realmNum),
      accountNum: Int64(accountNum),
    );
  }
}
