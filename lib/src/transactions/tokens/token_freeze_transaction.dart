import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_freeze_account.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Freezes an account with respect to one Hedera Token Service (HTS)
/// token.
///
/// While frozen, the account cannot send or receive that token. Token
/// issuers use this to stop activity on a single account (for example,
/// during a compliance review) without affecting any other holder of
/// the token.
///
/// The token MUST have a freeze key, and that key MUST sign this
/// transaction together with the transaction fee payer. The account
/// MUST already be associated with the token. If the account is
/// already frozen for the token, the transaction succeeds and no
/// change is made. To reverse it, use `TokenUnfreezeTransaction`.
///
/// See:
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/freeze-an-account
///
/// Example:
/// ```dart
/// final response = await TokenFreezeTransaction()
///     .setTokenId(tokenId)
///     .setAccountId(aliceId)
///     .signWith(freezePrivateKey, client)
///     .then((tx) => tx.execute(client));
/// ```
class TokenFreezeTransaction extends Transaction<TokenFreezeTransaction> {
  /// Creates a new [TokenFreezeTransaction] with no token or account
  /// set.
  TokenFreezeTransaction();

  TokenId? _tokenId;
  AccountId? _accountId;

  // ---- Setters (fluent API) ----

  /// Sets the token for which the account will be frozen.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenId(tokenId);
  /// ```
  TokenFreezeTransaction setTokenId(TokenId tokenId) {
    _tokenId = tokenId;
    return this;
  }

  /// Sets the account to freeze for the token.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAccountId(aliceId);
  /// ```
  TokenFreezeTransaction setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  // ---- Getters ----

  /// The token to freeze the account for, or null if not set.
  TokenId? get tokenId => _tokenId;

  /// The account to be frozen, or null if not set.
  AccountId? get accountId => _accountId;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenFreezeBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenFreezeTransaction-specific body fields to [body].
  ///
  /// Throws [ArgumentError] if [tokenId] or [accountId] is not set.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenFreeze = _buildTokenFreezeBody();
  }

  /// Builds the [TokenFreezeAccountTransactionBody], validating
  /// required fields.
  TokenFreezeAccountTransactionBody _buildTokenFreezeBody() {
    if (_tokenId == null) {
      throw ArgumentError(
        'TokenFreezeTransaction requires a tokenId. '
        'Call setTokenId() first.',
      );
    }
    if (_accountId == null) {
      throw ArgumentError(
        'TokenFreezeTransaction requires an accountId. '
        'Call setAccountId() first.',
      );
    }

    return TokenFreezeAccountTransactionBody(
      token: _tokenId!.toProto(),
      account: _accountId!.toProto(),
    );
  }

  /// Executes this transaction via the freezeTokenAccount gRPC method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).freezeTokenAccount(tx);
  }
}
