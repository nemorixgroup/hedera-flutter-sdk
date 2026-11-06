import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_json.dart';
import 'package:meta/meta.dart';

/// The encoding of a key reported by the Mirror Node.
enum MirrorNodeKeyType {
  /// An ECDSA secp256k1 public key.
  ecdsaSecp256k1('ECDSA_SECP256K1'),

  /// An ED25519 public key.
  ed25519('ED25519'),

  /// A complex key (key list, threshold key) or any other key, as the
  /// protobuf-encoded `Key` message.
  protobufEncoded('ProtobufEncoded'),

  /// A value this SDK version does not recognize.
  unknown('');

  const MirrorNodeKeyType(this.apiValue);

  /// The value used by the Mirror Node REST API.
  final String apiValue;

  /// Converts a Mirror Node value to a [MirrorNodeKeyType].
  ///
  /// Null and unrecognized values give [unknown].
  static MirrorNodeKeyType fromApiValue(String? value) {
    for (final type in values) {
      if (type != unknown && type.apiValue == value) {
        return type;
      }
    }
    return unknown;
  }
}

/// A key as reported by the Mirror Node: its encoding and its value.
///
/// This is a read-only description. To use a key in a transaction,
/// build a `PublicKey` or `HederaKey` from its value.
///
/// Example:
/// ```dart
/// final info = await MirrorNodeTokenInfoQuery()
///     .setTokenId(TokenId.fromString('0.0.5005'))
///     .execute(client);
/// print(info.supplyKey?.type); // MirrorNodeKeyType.ed25519
/// ```
@immutable
class MirrorNodeKey {
  /// Creates a [MirrorNodeKey].
  const MirrorNodeKey({required this.type, required this.key});

  /// Reads a key from the JSON object the Mirror Node sends
  /// (`{"_type": "...", "key": "..."}`).
  ///
  /// Returns null when [json] is null or is not an object, which is
  /// how the Mirror Node reports a key that is not set.
  static MirrorNodeKey? fromJsonOrNull(Object? json) {
    final map = jsonMap(json);
    if (map == null) {
      return null;
    }
    return MirrorNodeKey(
      type: MirrorNodeKeyType.fromApiValue(jsonString(map['_type'])),
      key: jsonString(map['key']) ?? '',
    );
  }

  /// The encoding of the key.
  final MirrorNodeKeyType type;

  /// The key value, as sent by the Mirror Node.
  final String key;

  @override
  String toString() => 'MirrorNodeKey(${type.apiValue}: $key)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MirrorNodeKey && type == other.type && key == other.key;

  @override
  int get hashCode => Object.hash(type, key);
}
