import 'dart:convert';
import 'dart:typed_data';

import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/nft_id.dart';
import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_json.dart';
import 'package:meta/meta.dart';

/// Information about a single NFT, as reported by the Mirror Node
/// (`GET /api/v1/tokens/{tokenId}/nfts/{serialNumber}`).
///
/// An NFT that was burned, or whose token was deleted, is still
/// returned, with [deleted] set to true.
///
/// Example:
/// ```dart
/// final nft = await MirrorNodeTokenNftInfoQuery()
///     .setNftId(NftId.fromString('0.0.5005/1'))
///     .execute(client);
/// print(nft.accountId); // current owner
/// ```
@immutable
class MirrorNodeNftInfo {
  /// Creates a [MirrorNodeNftInfo].
  const MirrorNodeNftInfo({
    required this.nftId,
    this.accountId,
    this.createdTimestamp,
    this.modifiedTimestamp,
    this.deleted = false,
    this.metadata,
    this.spender,
    this.delegatingSpender,
  });

  /// Reads an NFT from the JSON object returned by the Mirror Node.
  ///
  /// The spender is read from `spender`, or from `spender_id`, because
  /// the official API specification uses both names.
  ///
  /// Throws [FormatException] if `token_id` or `serial_number` is
  /// missing or any field is malformed.
  factory MirrorNodeNftInfo.fromJson(Map<String, dynamic> json) {
    final tokenId = jsonTokenId(json['token_id']);
    final serial = jsonInt(json['serial_number']);
    if (tokenId == null || serial == null) {
      throw FormatException('NFT info without token_id or serial: $json');
    }

    final metadata = jsonString(json['metadata']);
    final spender = json['spender'] ?? json['spender_id'];

    return MirrorNodeNftInfo(
      nftId: NftId(tokenId, serial),
      accountId: jsonAccountId(json['account_id']),
      createdTimestamp: jsonString(json['created_timestamp']),
      modifiedTimestamp: jsonString(json['modified_timestamp']),
      deleted: jsonBool(json['deleted']) ?? false,
      metadata: metadata == null ? null : base64Decode(metadata),
      spender: jsonAccountId(spender),
      delegatingSpender: jsonAccountId(json['delegating_spender']),
    );
  }

  /// The NFT: collection token ID and serial number.
  final NftId nftId;

  /// The current owner.
  final AccountId? accountId;

  /// When the NFT was minted, in `seconds.nanoseconds` format.
  final String? createdTimestamp;

  /// When the NFT was last modified, in `seconds.nanoseconds` format.
  final String? modifiedTimestamp;

  /// Whether the NFT, or the token it belongs to, has been deleted.
  final bool deleted;

  /// The NFT metadata bytes, when set.
  final Uint8List? metadata;

  /// The account approved to transfer this NFT, if any.
  final AccountId? spender;

  /// The account that delegated the spender approval, if any.
  final AccountId? delegatingSpender;

  @override
  String toString() => 'MirrorNodeNftInfo($nftId, owner: $accountId)';
}
