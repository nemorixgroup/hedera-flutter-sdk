import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_revoke_kyc.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Revokes "Know Your Customer" (KYC) from an account for one Hedera
/// Token Service (HTS) token.
///
/// This is the counterpart of [TokenGrantKycTransaction]. Once KYC is
/// revoked, the account is marked as "KYC revoked" and can no longer
/// transact with the token until KYC is granted again. Issuers use it
/// when a holder stops meeting their verification requirements.
///
/// The token MUST have a KYC key, and that key MUST sign this
/// transaction together with the transaction fee payer. The account
/// MUST already be associated with the token. If the token has no KYC
/// key, the network rejects the transaction with
/// `TOKEN_HAS_NO_KYC_KEY`.
///
/// See:
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/disable-kyc-account-flag
///
/// Example:
/// ```dart
/// final response = await TokenRevokeKycTransaction()
///     .setTokenId(tokenId)
///     .setAccountId(aliceId)
///     .signWith(kycPrivateKey, client)
///     .then((tx) => tx.execute(client));
/// ```
class TokenRevokeKycTransaction extends Transaction<TokenRevokeKycTransaction> {
  /// Creates a new [TokenRevokeKycTransaction] with no token or account
  /// set.
  TokenRevokeKycTransaction();

  TokenId? _tokenId;
  AccountId? _accountId;

  // ---- Setters (fluent API) ----

  /// Sets the token for which KYC will be revoked.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenId(tokenId);
  /// ```
  TokenRevokeKycTransaction setTokenId(TokenId tokenId) {
    _tokenId = tokenId;
    return this;
  }

  /// Sets the account that will have KYC revoked for the token.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAccountId(aliceId);
  /// ```
  TokenRevokeKycTransaction setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  // ---- Getters ----

  /// The token to revoke KYC for, or null if not set.
  TokenId? get tokenId => _tokenId;

  /// The account whose KYC will be revoked, or null if not set.
  AccountId? get accountId => _accountId;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenRevokeKycBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenRevokeKycTransaction-specific body fields to
  /// [body].
  ///
  /// Throws [ArgumentError] if [tokenId] or [accountId] is not set.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenRevokeKyc = _buildTokenRevokeKycBody();
  }

  /// Builds the [TokenRevokeKycTransactionBody], validating required
  /// fields.
  TokenRevokeKycTransactionBody _buildTokenRevokeKycBody() {
    if (_tokenId == null) {
      throw ArgumentError(
        'TokenRevokeKycTransaction requires a tokenId. '
        'Call setTokenId() first.',
      );
    }
    if (_accountId == null) {
      throw ArgumentError(
        'TokenRevokeKycTransaction requires an accountId. '
        'Call setAccountId() first.',
      );
    }

    return TokenRevokeKycTransactionBody(
      token: _tokenId!.toProto(),
      account: _accountId!.toProto(),
    );
  }

  /// Executes this transaction via the revokeKycFromTokenAccount gRPC
  /// method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).revokeKycFromTokenAccount(tx);
  }
}
