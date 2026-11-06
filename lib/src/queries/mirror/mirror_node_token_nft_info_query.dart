import 'package:hedera_flutter_sdk/src/client/hedera_client.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_code.dart';
import 'package:hedera_flutter_sdk/src/core/mirror_node_exception.dart';
import 'package:hedera_flutter_sdk/src/models/nft_id.dart';
import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_node_nft_info.dart';

/// Reads the information of one NFT from the Mirror Node REST API
/// (`GET /api/v1/tokens/{tokenId}/nfts/{serialNumber}`).
///
/// It is free and does not need an operator account. The result
/// includes the current owner, the metadata and the spender, if any.
///
/// The Mirror Node is eventually consistent: an NFT minted or
/// transferred a moment ago may not be visible yet.
///
/// Example:
/// ```dart
/// final nft = await MirrorNodeTokenNftInfoQuery()
///     .setNftId(NftId.fromString('0.0.5005/1'))
///     .execute(client);
///
/// print(nft.accountId);
/// ```
class MirrorNodeTokenNftInfoQuery {
  /// Creates a new [MirrorNodeTokenNftInfoQuery].
  ///
  /// An [NftId] must be set via [setNftId] before [execute].
  MirrorNodeTokenNftInfoQuery();

  NftId? _nftId;

  /// Sets the NFT to query. This field is REQUIRED.
  MirrorNodeTokenNftInfoQuery setNftId(NftId nftId) {
    _nftId = nftId;
    return this;
  }

  /// The NFT being queried.
  NftId? get nftId => _nftId;

  /// Executes the query against the Mirror Node of [client].
  ///
  /// Throws [ArgumentError] if no NFT ID was set,
  /// `HederaStatusException` (`INVALID_NFT_ID`) if the Mirror Node does
  /// not know the NFT, and `MirrorNodeException` for HTTP or response
  /// errors.
  Future<MirrorNodeNftInfo> execute(HederaClient client) async {
    final nftId = _nftId;
    if (nftId == null) {
      throw ArgumentError(
        'MirrorNodeTokenNftInfoQuery requires an nftId. '
        'Call setNftId() first.',
      );
    }

    final path = '/api/v1/tokens/${nftId.tokenId}'
        '/nfts/${nftId.serialNumber}';
    final json = await client.mirrorNode.getJson(
      path,
      notFoundStatus: HederaStatusCode.fromCode(226),
    );

    try {
      return MirrorNodeNftInfo.fromJson(json);
    } on FormatException catch (e) {
      throw MirrorNodeException(
        path: path,
        message: 'Unexpected response: ${e.message}',
      );
    }
  }
}
