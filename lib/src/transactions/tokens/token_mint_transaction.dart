import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_mint.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Mints new fungible tokens, crediting them to the token's treasury
/// account.
///
/// The token MUST have a supply key set; without one, this
/// transaction resolves to `TOKEN_HAS_NO_SUPPLY_KEY`. The supply key
/// MUST sign this transaction. Total supply cannot exceed 2^63-1.
///
/// [amount] is expressed in the token's smallest denomination (see
/// `TokenCreateTransaction.setDecimals`).
///
/// NFT minting (via metadata) is not yet supported; see v0.2.4-dev.
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/mint-a-token
///
/// Example:
/// ```dart
/// final response = await TokenMintTransaction()
///     .setTokenId(tokenId)
///     .setAmount(1000)
///     .signWith(supplyKey, client)
///     .then((tx) => tx.execute(client));
/// ```
class TokenMintTransaction extends Transaction<TokenMintTransaction> {
  /// Creates a new [TokenMintTransaction] with no fields set.
  TokenMintTransaction();

  TokenId? _tokenId;
  int? _amount;

  // ---- Setters (fluent API) ----

  /// Sets the token to mint. This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenId(tokenId);
  /// ```
  TokenMintTransaction setTokenId(TokenId tokenId) {
    _tokenId = tokenId;
    return this;
  }

  /// Sets the amount to mint, in the token's smallest denomination.
  ///
  /// Required for fungible tokens.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAmount(1000); // 10.00 tokens at 2 decimals
  /// ```
  TokenMintTransaction setAmount(int amount) {
    _amount = amount;
    return this;
  }

  // ---- Getters ----

  /// The token to mint, or null if not set.
  TokenId? get tokenId => _tokenId;

  /// The amount to mint, or null if not set.
  int? get amount => _amount;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenMintBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenMintTransaction-specific body fields to [body].
  ///
  /// Throws [ArgumentError] if [tokenId] or [amount] have not been set.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenMint = _buildTokenMintBody();
  }

  /// Builds the [TokenMintTransactionBody], validating required fields.
  TokenMintTransactionBody _buildTokenMintBody() {
    if (_tokenId == null) {
      throw ArgumentError(
        'TokenMintTransaction requires a tokenId. '
        'Call setTokenId() first.',
      );
    }
    if (_amount == null) {
      throw ArgumentError(
        'TokenMintTransaction requires an amount for fungible tokens. '
        'Call setAmount() first.',
      );
    }

    return TokenMintTransactionBody(
      token: _tokenId!.toProto(),
      amount: Int64(_amount!),
    );
  }

  /// Executes this transaction via the mintToken gRPC method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).mintToken(tx);
  }
}
