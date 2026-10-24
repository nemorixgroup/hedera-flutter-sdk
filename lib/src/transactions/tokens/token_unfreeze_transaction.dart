import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/token_unfreeze_account.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Unfreezes an account with respect to one Hedera Token Service (HTS)
/// token.
///
/// This restores the account's ability to send and receive the token
/// after a [TokenFreezeTransaction]. It also applies to accounts that
/// were associated while the token's `freezeDefault` was enabled, since
/// those start out frozen.
///
/// The token MUST have a freeze key, and that key MUST sign this
/// transaction together with the transaction fee payer. The account
/// MUST already be associated with the token. If the account is not
/// frozen, the transaction succeeds and no change is made.
///
/// See:
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/unfreeze-an-account
///
/// Example:
/// ```dart
/// final response = await TokenUnfreezeTransaction()
///     .setTokenId(tokenId)
///     .setAccountId(aliceId)
///     .signWith(freezePrivateKey, client)
///     .then((tx) => tx.execute(client));
/// ```
class TokenUnfreezeTransaction extends Transaction<TokenUnfreezeTransaction> {
  /// Creates a new [TokenUnfreezeTransaction] with no token or account
  /// set.
  TokenUnfreezeTransaction();

  TokenId? _tokenId;
  AccountId? _accountId;

  // ---- Setters (fluent API) ----

  /// Sets the token for which the account will be unfrozen.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenId(tokenId);
  /// ```
  TokenUnfreezeTransaction setTokenId(TokenId tokenId) {
    _tokenId = tokenId;
    return this;
  }

  /// Sets the account to unfreeze for the token.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAccountId(aliceId);
  /// ```
  TokenUnfreezeTransaction setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  // ---- Getters ----

  /// The token to unfreeze the account for, or null if not set.
  TokenId? get tokenId => _tokenId;

  /// The account to be unfrozen, or null if not set.
  AccountId? get accountId => _accountId;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenUnfreezeBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenUnfreezeTransaction-specific body fields to
  /// [body].
  ///
  /// Throws [ArgumentError] if [tokenId] or [accountId] is not set.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenUnfreeze = _buildTokenUnfreezeBody();
  }

  /// Builds the [TokenUnfreezeAccountTransactionBody], validating
  /// required fields.
  TokenUnfreezeAccountTransactionBody _buildTokenUnfreezeBody() {
    if (_tokenId == null) {
      throw ArgumentError(
        'TokenUnfreezeTransaction requires a tokenId. '
        'Call setTokenId() first.',
      );
    }
    if (_accountId == null) {
      throw ArgumentError(
        'TokenUnfreezeTransaction requires an accountId. '
        'Call setAccountId() first.',
      );
    }

    return TokenUnfreezeAccountTransactionBody(
      token: _tokenId!.toProto(),
      account: _accountId!.toProto(),
    );
  }

  /// Executes this transaction via the unfreezeTokenAccount gRPC
  /// method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).unfreezeTokenAccount(tx);
  }
}
