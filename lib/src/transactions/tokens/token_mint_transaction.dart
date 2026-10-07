import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_mint.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Mints new tokens, crediting them to the token's treasury account.
///
/// One class covers both token types, as in the Hedera protobufs and
/// the official SDKs. Provide EXACTLY ONE of the following:
///
/// - Fungible (`FUNGIBLE_COMMON`): call [setAmount]; it increases the
///   supply by that amount.
/// - NFT (`NON_FUNGIBLE_UNIQUE`): call [addMetadata] or [setMetadata];
///   it mints one NFT per metadata entry.
///
/// Setting neither, or both, throws [ArgumentError].
///
/// The token MUST have a supply key set; without one, this
/// transaction resolves to `TOKEN_HAS_NO_SUPPLY_KEY`. The supply key
/// MUST sign this transaction. Fungible total supply cannot exceed
/// 2^63-1.
///
/// Fungible: [amount] is expressed in the token's smallest
/// denomination (see `TokenCreateTransaction.setDecimals`).
///
/// NFT: each metadata entry creates one NFT with the next serial
/// number. Metadata is limited to 100 bytes per entry and is usually
/// a URI (for example `ipfs://...`) pointing to a JSON file that
/// follows HIP-412. The network limits how many NFTs can be minted in
/// one transaction (`tokens.nfts.maxBatchSizeMint`, documented as 10);
/// this class does not enforce that limit, the network does. Large
/// batches may answer `BUSY`, in which case the application should
/// retry. The serial numbers of the new NFTs are returned in
/// `TransactionReceipt.serialNumbers`.
///
/// See:
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/mint-a-token
///
/// Example (fungible):
/// ```dart
/// final response = await TokenMintTransaction()
///     .setTokenId(tokenId)
///     .setAmount(1000)
///     .signWith(supplyKey, client)
///     .then((tx) => tx.execute(client));
/// ```
///
/// Example (NFT):
/// ```dart
/// final tx = TokenMintTransaction()
///     .setTokenId(tokenId)
///     .addMetadata(Uint8List.fromList(utf8.encode('ipfs://cid-1')))
///     .addMetadata(Uint8List.fromList(utf8.encode('ipfs://cid-2')));
/// await tx.signWith(supplyKey, client);
/// final receipt = await (await tx.execute(client)).getReceipt(client);
/// print(receipt.serialNumbers); // [1, 2]
/// ```
class TokenMintTransaction extends Transaction<TokenMintTransaction> {
  /// Creates a new [TokenMintTransaction] with no fields set.
  TokenMintTransaction();

  TokenId? _tokenId;
  int? _amount;
  final List<Uint8List> _metadata = [];

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
  /// Fungible tokens only. Cannot be combined with [addMetadata] or
  /// [setMetadata]. Calling `setAmount(0)` is valid and is sent to the
  /// network as an amount of 0.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAmount(1000); // 10.00 tokens at 2 decimals
  /// ```
  TokenMintTransaction setAmount(int amount) {
    _amount = amount;
    return this;
  }

  /// Adds the metadata of one NFT to mint.
  ///
  /// NFT tokens only. Each call mints one more NFT. Cannot be combined
  /// with [setAmount]. Metadata is limited to 100 bytes per entry.
  ///
  /// Example:
  /// ```dart
  /// transaction.addMetadata(
  ///   Uint8List.fromList(utf8.encode('ipfs://cid')),
  /// );
  /// ```
  TokenMintTransaction addMetadata(Uint8List metadata) {
    _metadata.add(Uint8List.fromList(metadata));
    return this;
  }

  /// Replaces the whole list of NFT metadata to mint.
  ///
  /// Each entry mints one NFT. Passing an empty list clears the
  /// metadata. Cannot be combined with [setAmount].
  ///
  /// Example:
  /// ```dart
  /// transaction.setMetadata([
  ///   Uint8List.fromList(utf8.encode('ipfs://cid-1')),
  ///   Uint8List.fromList(utf8.encode('ipfs://cid-2')),
  /// ]);
  /// ```
  TokenMintTransaction setMetadata(List<Uint8List> metadata) {
    _metadata
      ..clear()
      ..addAll(metadata.map(Uint8List.fromList));
    return this;
  }

  // ---- Getters ----

  /// The token to mint, or null if not set.
  TokenId? get tokenId => _tokenId;

  /// The amount to mint, or null if not set.
  int? get amount => _amount;

  /// The NFT metadata entries to mint (empty if none were added).
  List<Uint8List> get metadata => List.unmodifiable(_metadata);

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenMintBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenMintTransaction-specific body fields to [body].
  ///
  /// Throws [ArgumentError] if [tokenId] is not set, or if neither or
  /// both of amount and metadata have been set.
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
    final hasAmount = _amount != null;
    final hasMetadata = _metadata.isNotEmpty;
    if (!hasAmount && !hasMetadata) {
      throw ArgumentError(
        'TokenMintTransaction requires either amount (fungible) or '
        'metadata (NFT). Call setAmount() for a fungible token, or '
        'addMetadata() for an NFT token.',
      );
    }
    if (hasAmount && hasMetadata) {
      throw ArgumentError(
        'TokenMintTransaction accepts either amount (fungible) or '
        'metadata (NFT), not both. Use setAmount() for a fungible '
        'token, or addMetadata() for an NFT token.',
      );
    }

    final body = TokenMintTransactionBody(token: _tokenId!.toProto());
    if (hasAmount) {
      body.amount = Int64(_amount!);
    } else {
      body.metadata.addAll(_metadata);
    }
    return body;
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
