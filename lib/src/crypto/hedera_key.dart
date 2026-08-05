import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart' as proto;

/// Anything that can serve as a Hedera account's authorization key.
///
/// A single `PublicKey`, a `HederaKeyList` (all keys required), or a
/// `HederaThresholdKey` (M-of-N keys required) all implement this.
///
/// This is a deliberate polymorphic interface (PublicKey, HederaKeyList,
/// and HederaThresholdKey all implement it), not a case where a
/// top-level function would work; the lint doesn't distinguish that.
// ignore: one_member_abstracts
abstract interface class HederaKey {
  /// Converts this key to its Protobuf [proto.Key] representation.
  proto.Key toProtoKey();
}
