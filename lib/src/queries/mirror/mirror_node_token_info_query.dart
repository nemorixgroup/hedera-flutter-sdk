import 'package:hedera_flutter_sdk/src/client/hedera_client.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_code.dart';
import 'package:hedera_flutter_sdk/src/core/mirror_node_exception.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_node_token_info.dart';

/// Reads the definition and state of a token from the Mirror Node REST
/// API (`GET /api/v1/tokens/{tokenId}`).
///
/// It is free and does not need an operator account. The result
/// includes the token keys, supplies, pause status and custom fees.
///
/// The Mirror Node is eventually consistent: a token created or
/// changed a moment ago may not be visible yet.
///
/// Example:
/// ```dart
/// final info = await MirrorNodeTokenInfoQuery()
///     .setTokenId(TokenId.fromString('0.0.5005'))
///     .execute(client);
///
/// print(info.name);
/// print(info.customFees.isEmpty);
/// ```
class MirrorNodeTokenInfoQuery {
  /// Creates a new [MirrorNodeTokenInfoQuery].
  ///
  /// A [TokenId] must be set via [setTokenId] before [execute].
  MirrorNodeTokenInfoQuery();

  TokenId? _tokenId;

  /// Sets the token to query. This field is REQUIRED.
  MirrorNodeTokenInfoQuery setTokenId(TokenId tokenId) {
    _tokenId = tokenId;
    return this;
  }

  /// The token being queried.
  TokenId? get tokenId => _tokenId;

  /// Executes the query against the Mirror Node of [client].
  ///
  /// Throws [ArgumentError] if no token ID was set,
  /// `HederaStatusException` (`INVALID_TOKEN_ID`) if the Mirror Node
  /// does not know the token, and `MirrorNodeException` for HTTP or
  /// response errors.
  Future<MirrorNodeTokenInfo> execute(HederaClient client) async {
    final tokenId = _tokenId;
    if (tokenId == null) {
      throw ArgumentError(
        'MirrorNodeTokenInfoQuery requires a tokenId. '
        'Call setTokenId() first.',
      );
    }

    final path = '/api/v1/tokens/$tokenId';
    final json = await client.mirrorNode.getJson(
      path,
      notFoundStatus: HederaStatusCode.invalidTokenId,
    );

    try {
      return MirrorNodeTokenInfo.fromJson(json);
    } on FormatException catch (e) {
      throw MirrorNodeException(
        path: path,
        message: 'Unexpected response: ${e.message}',
      );
    }
  }
}
