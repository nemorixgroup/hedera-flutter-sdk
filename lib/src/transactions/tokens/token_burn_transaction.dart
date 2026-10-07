import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_burn.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Burns tokens held by the token's treasury account.
///
/// One class covers both token types, as in the Hedera protobufs and
/// the official SDKs. Provide EXACTLY ONE of the following:
///
/// - Fungible (`FUNGIBLE_COMMON`): call [setAmount]; it decreases the
///   supply by that amount.
/// - NFT (`NON_FUNGIBLE_UNIQUE`): call [addSerial] or [setSerials]; it
///   burns the NFTs with those serial numbers.
///
/// Setting neither, or both, throws [ArgumentError].
///
/// The token MUST have a supply key set; without one, this
/// transaction resolves to `TOKEN_HAS_NO_SUPPLY_KEY`. The supply key
/// MUST sign this transaction. Total supply cannot go below zero.
///
/// Fungible: [amount] is expressed in the token's smallest
/// denomination (see `TokenCreateTransaction.setDecimals`).
///
/// NFT: the NFTs to burn MUST be owned by the treasury account. To
/// burn an NFT held by another account, transfer it back to the
/// treasury first. The network limits how many NFTs can be burned in
/// one transaction (`tokens.nfts.maxBatchSizeBurn`); this class does
/// not enforce that limit, the network does.
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/burn-a-token
///
/// Example (fungible):
/// ```dart
/// final response = await TokenBurnTransaction()
///     .setTokenId(tokenId)
///     .setAmount(1000)
///     .signWith(supplyKey, client)
///     .then((tx) => tx.execute(client));
/// ```
///
/// Example (NFT):
/// ```dart
/// final tx = TokenBurnTransaction()
///     .setTokenId(tokenId)
///     .addSerial(1)
///     .addSerial(2);
/// await tx.signWith(supplyKey, client);
/// await tx.execute(client);
/// ```
class TokenBurnTransaction extends Transaction<TokenBurnTransaction> {
  /// Creates a new [TokenBurnTransaction] with no fields set.
  TokenBurnTransaction();

  TokenId? _tokenId;
  int? _amount;
  final List<int> _serials = [];

  // ---- Setters (fluent API) ----

  /// Sets the token to burn. This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenId(tokenId);
  /// ```
  TokenBurnTransaction setTokenId(TokenId tokenId) {
    _tokenId = tokenId;
    return this;
  }

  /// Sets the amount to burn, in the token's smallest denomination.
  ///
  /// Fungible tokens only. Cannot be combined with [addSerial] or
  /// [setSerials]. Calling `setAmount(0)` is valid and is sent to the
  /// network as an amount of 0.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAmount(1000); // 10.00 tokens at 2 decimals
  /// ```
  TokenBurnTransaction setAmount(int amount) {
    _amount = amount;
    return this;
  }

  /// Adds the serial number of one NFT to burn.
  ///
  /// NFT tokens only. Cannot be combined with [setAmount].
  ///
  /// Example:
  /// ```dart
  /// transaction.addSerial(3);
  /// ```
  TokenBurnTransaction addSerial(int serialNumber) {
    _serials.add(serialNumber);
    return this;
  }

  /// Replaces the whole list of NFT serial numbers to burn.
  ///
  /// Passing an empty list clears the serials. Cannot be combined with
  /// [setAmount].
  ///
  /// Example:
  /// ```dart
  /// transaction.setSerials([1, 2, 3]);
  /// ```
  TokenBurnTransaction setSerials(List<int> serialNumbers) {
    _serials
      ..clear()
      ..addAll(serialNumbers);
    return this;
  }

  // ---- Getters ----

  /// The token to burn, or null if not set.
  TokenId? get tokenId => _tokenId;

  /// The amount to burn, or null if not set.
  int? get amount => _amount;

  /// The NFT serial numbers to burn (empty if none were added).
  List<int> get serials => List.unmodifiable(_serials);

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenBurnBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenBurnTransaction-specific body fields to [body].
  ///
  /// Throws [ArgumentError] if [tokenId] is not set, or if neither or
  /// both of amount and serial numbers have been set.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenBurn = _buildTokenBurnBody();
  }

  /// Builds the [TokenBurnTransactionBody], validating required fields.
  TokenBurnTransactionBody _buildTokenBurnBody() {
    if (_tokenId == null) {
      throw ArgumentError(
        'TokenBurnTransaction requires a tokenId. '
        'Call setTokenId() first.',
      );
    }
    final hasAmount = _amount != null;
    final hasSerials = _serials.isNotEmpty;
    if (!hasAmount && !hasSerials) {
      throw ArgumentError(
        'TokenBurnTransaction requires either amount (fungible) or '
        'serials (NFT). Call setAmount() for a fungible token, or '
        'addSerial() for an NFT token.',
      );
    }
    if (hasAmount && hasSerials) {
      throw ArgumentError(
        'TokenBurnTransaction accepts either amount (fungible) or '
        'serials (NFT), not both. Use setAmount() for a fungible '
        'token, or addSerial() for an NFT token.',
      );
    }

    final body = TokenBurnTransactionBody(token: _tokenId!.toProto());
    if (hasAmount) {
      body.amount = Int64(_amount!);
    } else {
      body.serialNumbers.addAll(_serials.map(Int64.new));
    }
    return body;
  }

  /// Executes this transaction via the burnToken gRPC method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).burnToken(tx);
  }
}
