import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:hedera_flutter_sdk/src/proto/token_dissociate.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;
import 'package:hedera_flutter_sdk/src/transactions/transaction.dart';

/// Dissociates an account from one or more Hedera Token Service (HTS)
/// tokens.
///
/// The account MUST have a zero balance of each token being
/// dissociated, or this transaction resolves to
/// `TRANSACTION_REQUIRES_ZERO_TOKEN_BALANCES`. The identified account
/// MUST sign this transaction.
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/dissociate-tokens-from-an-account
///
/// Example:
/// ```dart
/// final response = await TokenDissociateTransaction()
///     .setAccountId(aliceId)
///     .addTokenId(tokenId)
///     .signWith(alicePrivateKey, client)
///     .then((tx) => tx.execute(client));
/// ```
class TokenDissociateTransaction
    extends Transaction<TokenDissociateTransaction> {
  /// Creates a new [TokenDissociateTransaction] with no tokens set.
  TokenDissociateTransaction();

  AccountId? _accountId;
  final List<TokenId> _tokenIds = [];

  // ---- Setters (fluent API) ----

  /// Sets the account to dissociate from the given tokens.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAccountId(aliceId);
  /// ```
  TokenDissociateTransaction setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  /// Adds a token to dissociate from the account.
  ///
  /// Can be called multiple times to dissociate several tokens in a
  /// single transaction. At least one token is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.addTokenId(tokenId);
  /// ```
  TokenDissociateTransaction addTokenId(TokenId tokenId) {
    _tokenIds.add(tokenId);
    return this;
  }

  // ---- Getters ----

  /// The account to be dissociated, or null if not set.
  AccountId? get accountId => _accountId;

  /// The tokens to dissociate from the account.
  List<TokenId> get tokenIds => List.unmodifiable(_tokenIds);

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenDissociateBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenDissociateTransaction-specific body fields to
  /// [body].
  ///
  /// Throws [ArgumentError] if [accountId] is not set or no token
  /// IDs have been added.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenDissociate = _buildTokenDissociateBody();
  }

  /// Builds the [TokenDissociateTransactionBody], validating required
  /// fields.
  TokenDissociateTransactionBody _buildTokenDissociateBody() {
    if (_accountId == null) {
      throw ArgumentError(
        'TokenDissociateTransaction requires an accountId. '
        'Call setAccountId() first.',
      );
    }
    if (_tokenIds.isEmpty) {
      throw ArgumentError(
        'TokenDissociateTransaction requires at least one token. '
        'Call addTokenId() first.',
      );
    }

    return TokenDissociateTransactionBody(
      account: _accountId!.toProto(),
      tokens: _tokenIds.map((id) => id.toProto()).toList(),
    );
  }

  /// Executes this transaction via the dissociateTokens gRPC method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).dissociateTokens(tx);
  }
}
