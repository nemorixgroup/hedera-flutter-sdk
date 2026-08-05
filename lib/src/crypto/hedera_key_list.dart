import 'package:hedera_flutter_sdk/src/crypto/hedera_key.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart' as proto;

/// A list of keys that ALL must sign (N-of-N) to authorize a
/// transaction, unless used inside a [HederaThresholdKey].
///
/// Example:
/// ```dart
/// final key = HederaKeyList([publicKeyA, publicKeyB, publicKeyC]);
/// await AccountCreateTransaction().setKey(key).execute(client);
/// ```
class HederaKeyList implements HederaKey {
  /// Creates a [HederaKeyList] requiring all of [keys] to sign.
  ///
  /// Throws [ArgumentError] if [keys] is empty.
  HederaKeyList(this.keys) {
    if (keys.isEmpty) {
      throw ArgumentError('HederaKeyList requires at least one key.');
    }
  }

  /// The keys in this list. All must sign (N-of-N).
  final List<HederaKey> keys;

  @override
  proto.Key toProtoKey() {
    return proto.Key(
      keyList: proto.KeyList(
        keys: keys.map((k) => k.toProtoKey()).toList(),
      ),
    );
  }
}

/// A threshold key requiring at least [threshold] of [keys] to sign
/// (M-of-N) to authorize a transaction.
///
/// Example:
/// ```dart
/// // 2-of-3: any two of the three keys are sufficient.
/// final key = HederaThresholdKey(
///   threshold: 2,
///   keys: [publicKeyA, publicKeyB, publicKeyC],
/// );
/// await AccountCreateTransaction().setKey(key).execute(client);
/// ```
class HederaThresholdKey implements HederaKey {
  /// Creates a [HederaThresholdKey] requiring at least [threshold]
  /// of [keys] to sign.
  ///
  /// Throws [ArgumentError] if [keys] is empty, or if [threshold]
  /// is less than 1 or greater than `keys.length`.
  HederaThresholdKey({required this.threshold, required this.keys}) {
    if (keys.isEmpty) {
      throw ArgumentError('HederaThresholdKey requires at least one key.');
    }
    if (threshold < 1 || threshold > keys.length) {
      throw ArgumentError(
        'threshold must be between 1 and ${keys.length} '
        '(the number of keys). Got: $threshold',
      );
    }
  }

  /// The minimum number of [keys] that must sign.
  final int threshold;

  /// The full set of eligible keys.
  final List<HederaKey> keys;

  @override
  proto.Key toProtoKey() {
    return proto.Key(
      thresholdKey: proto.ThresholdKey(
        threshold: threshold,
        keys: proto.KeyList(
          keys: keys.map((k) => k.toProtoKey()).toList(),
        ),
      ),
    );
  }
}
