import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_grant_kyc.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Grants "Know Your Customer" (KYC) to an account for one Hedera
/// Token Service (HTS) token.
///
/// A token created with a KYC key requires that each holder be
/// approved by whoever controls that key before it can receive or send
/// the token. This lets an issuer, for example a regulated stablecoin
/// operator, restrict a token to verified customers.
///
/// The token MUST have a KYC key, and that key MUST sign this
/// transaction together with the transaction fee payer. The account
/// MUST already be associated with the token. On success the account
/// is marked as "KYC granted" for that token. To reverse it, use
/// `TokenRevokeKycTransaction`.
///
/// See:
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/enable-kyc-account-flag
///
/// Example:
/// ```dart
/// final response = await TokenGrantKycTransaction()
///     .setTokenId(tokenId)
///     .setAccountId(aliceId)
///     .signWith(kycPrivateKey, client)
///     .then((tx) => tx.execute(client));
/// ```
class TokenGrantKycTransaction extends Transaction<TokenGrantKycTransaction> {
  /// Creates a new [TokenGrantKycTransaction] with no token or account
  /// set.
  TokenGrantKycTransaction();

  TokenId? _tokenId;
  AccountId? _accountId;

  // ---- Setters (fluent API) ----

  /// Sets the token for which KYC will be granted.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenId(tokenId);
  /// ```
  TokenGrantKycTransaction setTokenId(TokenId tokenId) {
    _tokenId = tokenId;
    return this;
  }

  /// Sets the account that will be granted KYC for the token.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAccountId(aliceId);
  /// ```
  TokenGrantKycTransaction setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  // ---- Getters ----

  /// The token to grant KYC for, or null if not set.
  TokenId? get tokenId => _tokenId;

  /// The account to be granted KYC, or null if not set.
  AccountId? get accountId => _accountId;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenGrantKycBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenGrantKycTransaction-specific body fields to
  /// [body].
  ///
  /// Throws [ArgumentError] if [tokenId] or [accountId] is not set.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenGrantKyc = _buildTokenGrantKycBody();
  }

  /// Builds the [TokenGrantKycTransactionBody], validating required
  /// fields.
  TokenGrantKycTransactionBody _buildTokenGrantKycBody() {
    if (_tokenId == null) {
      throw ArgumentError(
        'TokenGrantKycTransaction requires a tokenId. '
        'Call setTokenId() first.',
      );
    }
    if (_accountId == null) {
      throw ArgumentError(
        'TokenGrantKycTransaction requires an accountId. '
        'Call setAccountId() first.',
      );
    }

    return TokenGrantKycTransactionBody(
      token: _tokenId!.toProto(),
      account: _accountId!.toProto(),
    );
  }

  /// Executes this transaction via the grantKycToTokenAccount gRPC
  /// method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).grantKycToTokenAccount(tx);
  }
}
