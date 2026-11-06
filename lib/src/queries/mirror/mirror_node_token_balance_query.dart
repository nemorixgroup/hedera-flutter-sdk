import 'package:hedera_flutter_sdk/src/client/hedera_client.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_code.dart';
import 'package:hedera_flutter_sdk/src/core/mirror_node_exception.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_node_token_balance.dart';

/// Reads the token balances of an account from the Mirror Node REST API
/// (`GET /api/v1/accounts/{id}/tokens`).
///
/// This is the replacement for the token balances that
/// `AccountBalanceQuery` used to return. It is free and does not need
/// an operator account. Fungible and non-fungible tokens are both
/// listed, together with the KYC and freeze status of the account.
///
/// - Without [setTokenId], every token the account is associated with
///   is returned; all pages are read.
/// - With [setTokenId], at most one entry is returned. An empty list
///   means the account is not associated with that token.
///
/// The Mirror Node is eventually consistent: a balance read right after
/// a transfer may still show the previous state.
///
/// Example:
/// ```dart
/// final balances = await MirrorNodeTokenBalanceQuery()
///     .setAccountId(AccountId.fromString('0.0.12345'))
///     .setTokenId(TokenId.fromString('0.0.5005'))
///     .execute(client);
///
/// print(balances.single.balance);
/// ```
class MirrorNodeTokenBalanceQuery {
  /// Creates a new [MirrorNodeTokenBalanceQuery].
  ///
  /// An [AccountId] must be set via [setAccountId] before [execute].
  MirrorNodeTokenBalanceQuery();

  AccountId? _accountId;
  TokenId? _tokenId;

  /// Sets the account to query. This field is REQUIRED.
  MirrorNodeTokenBalanceQuery setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  /// Limits the result to a single token. This field is OPTIONAL.
  MirrorNodeTokenBalanceQuery setTokenId(TokenId tokenId) {
    _tokenId = tokenId;
    return this;
  }

  /// The account being queried.
  AccountId? get accountId => _accountId;

  /// The token filter, or null to list every token.
  TokenId? get tokenId => _tokenId;

  /// Executes the query against the Mirror Node of [client].
  ///
  /// Throws [ArgumentError] if no account ID was set,
  /// `HederaStatusException` (`INVALID_ACCOUNT_ID`) if the Mirror Node
  /// does not know the account, and `MirrorNodeException` for HTTP or
  /// response errors.
  Future<List<MirrorNodeTokenBalance>> execute(HederaClient client) async {
    final accountId = _accountId;
    if (accountId == null) {
      throw ArgumentError(
        'MirrorNodeTokenBalanceQuery requires an accountId. '
        'Call setAccountId() first.',
      );
    }

    final tokenId = _tokenId;
    final path = '/api/v1/accounts/$accountId/tokens';
    final entries = await client.mirrorNode.getAll(
      path,
      listKey: 'tokens',
      queryParameters: {
        if (tokenId != null) 'token.id': tokenId.toString(),
      },
      notFoundStatus: HederaStatusCode.invalidAccountId,
    );

    try {
      return entries.map(MirrorNodeTokenBalance.fromJson).toList();
    } on FormatException catch (e) {
      throw MirrorNodeException(
        path: path,
        message: 'Unexpected response: ${e.message}',
      );
    }
  }
}
