import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:meta/meta.dart';

/// Identifies a single non-fungible token (NFT) on Hedera.
///
/// On the Hedera Token Service (HTS) the token ID identifies the whole
/// NFT collection, and the serial number identifies one NFT inside it.
/// Serial numbers are assigned by the network, starting at 1, each
/// time an NFT is minted.
///
/// The string form is `tokenId/serialNumber`, for example
/// `0.0.5005/10`. [NftId.fromString] also accepts `@` as separator
/// (`0.0.5005@10`).
///
/// Models are based on the NftID type defined in the Hedera HAPI
/// Protobuf definitions: basic_types.proto
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/nft-id
///
/// Example:
/// ```dart
/// final nftId = NftId(TokenId.fromString('0.0.5005'), 10);
/// print(nftId); // 0.0.5005/10
/// ```
@immutable
class NftId {
  /// Creates an [NftId] from the collection's [tokenId] and the NFT's
  /// [serialNumber].
  const NftId(this.tokenId, this.serialNumber);

  /// Creates an [NftId] from a string in the format `tokenId/serial`
  /// or `tokenId@serial`.
  ///
  /// Example:
  /// ```dart
  /// final id = NftId.fromString('0.0.5005/10');
  /// ```
  ///
  /// Throws [FormatException] if the string is not a valid NFT ID.
  factory NftId.fromString(String value) {
    final parts = value.split(RegExp('[/@]'));
    if (parts.length != 2) {
      throw FormatException(
        'Invalid NftId format. Expected tokenId/serial '
        '(for example 0.0.5005/10), got: $value',
      );
    }
    final serial = int.tryParse(parts[1]);
    if (serial == null) {
      throw FormatException(
        'Invalid NftId serial number. Expected an integer, got: $value',
      );
    }
    return NftId(TokenId.fromString(parts[0]), serial);
  }

  /// The token ID of the NFT collection this NFT belongs to.
  final TokenId tokenId;

  /// The serial number of this NFT inside its collection.
  final int serialNumber;

  @override
  String toString() => '$tokenId/$serialNumber';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NftId &&
          tokenId == other.tokenId &&
          serialNumber == other.serialNumber;

  @override
  int get hashCode => Object.hash(tokenId, serialNumber);

  /// Converts this [NftId] to its Protobuf [NftID] representation.
  NftID toProto() {
    return NftID(
      tokenID: tokenId.toProto(),
      serialNumber: Int64(serialNumber),
    );
  }
}
