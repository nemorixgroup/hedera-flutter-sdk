import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:hedera_flutter_sdk/src/proto/token_associate.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;
import 'package:hedera_flutter_sdk/src/transactions/transaction.dart';

/// Associates an account with one or more Hedera Token Service (HTS)
/// tokens.
///
/// An account MUST be associated with a token before it can send or
/// receive that token. The identified account MUST sign this
/// transaction.
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/associate-tokens-to-an-account
///
/// Example:
/// ```dart
/// final response = await TokenAssociateTransaction()
///     .setAccountId(aliceId)
///     .addTokenId(tokenId)
///     .signWith(alicePrivateKey, client)
///     .then((tx) => tx.execute(client));
/// ```
class TokenAssociateTransaction extends Transaction<TokenAssociateTransaction> {
  /// Creates a new [TokenAssociateTransaction] with no tokens set.
  TokenAssociateTransaction();

  AccountId? _accountId;
  final List<TokenId> _tokenIds = [];

  // ---- Setters (fluent API) ----

  /// Sets the account to associate with the given tokens.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAccountId(aliceId);
  /// ```
  TokenAssociateTransaction setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  /// Adds a token to associate with the account.
  ///
  /// Can be called multiple times to associate several tokens in a
  /// single transaction. At least one token is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.addTokenId(tokenId);
  /// ```
  TokenAssociateTransaction addTokenId(TokenId tokenId) {
    _tokenIds.add(tokenId);
    return this;
  }

  // ---- Getters ----

  /// The account to be associated, or null if not set.
  AccountId? get accountId => _accountId;

  /// The tokens to associate with the account.
  List<TokenId> get tokenIds => List.unmodifiable(_tokenIds);

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenAssociateBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenAssociateTransaction-specific body fields to
  /// [body].
  ///
  /// Throws [ArgumentError] if [accountId] is not set or no token
  /// IDs have been added.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenAssociate = _buildTokenAssociateBody();
  }

  /// Builds the [TokenAssociateTransactionBody], validating required
  /// fields.
  TokenAssociateTransactionBody _buildTokenAssociateBody() {
    if (_accountId == null) {
      throw ArgumentError(
        'TokenAssociateTransaction requires an accountId. '
        'Call setAccountId() first.',
      );
    }
    if (_tokenIds.isEmpty) {
      throw ArgumentError(
        'TokenAssociateTransaction requires at least one token. '
        'Call addTokenId() first.',
      );
    }

    return TokenAssociateTransactionBody(
      account: _accountId!.toProto(),
      tokens: _tokenIds.map((id) => id.toProto()).toList(),
    );
  }

  /// Executes this transaction via the associateTokens gRPC method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).associateTokens(tx);
  }
}
