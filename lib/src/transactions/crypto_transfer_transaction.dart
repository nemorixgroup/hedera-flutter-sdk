import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_transfer.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;
import 'package:hedera_flutter_sdk/src/transactions/transaction.dart';
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart';

/// Transfers HBAR and/or Hedera Token Service (HTS) tokens between
/// accounts.
///
/// Each transfer is represented as an [AccountId] and an amount.
/// Negative amounts indicate a debit (sending) and positive amounts
/// indicate a credit (receiving).
///
/// HBAR transfers and each token's transfers are validated
/// independently: the sum of all HBAR amounts MUST equal zero, and
/// the sum of amounts for each individual token MUST also equal
/// zero.
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/transfer-tokens
///
/// Example:
/// ```dart
/// // Transfer 10 HBAR from accountA to accountB
/// final response = await CryptoTransferTransaction()
///     .addHbarTransfer(accountA, Hbar(10).negated())
///     .addHbarTransfer(accountB, Hbar(10))
///     .execute(client);
///
/// // Transfer 100 units of a fungible token from accountA to accountB
/// final response = await CryptoTransferTransaction()
///     .addTokenTransfer(tokenId, accountA, -100)
///     .addTokenTransfer(tokenId, accountB, 100)
///     .execute(client);
/// ```
class CryptoTransferTransaction extends Transaction<CryptoTransferTransaction> {
  /// Creates a new [CryptoTransferTransaction] with no transfers.
  CryptoTransferTransaction();

  final List<_HbarTransfer> _transfers = [];
  final Map<TokenId, List<_TokenAmount>> _tokenTransfers = {};

  // ---- Setters (fluent API) ----

  /// Adds an HBAR transfer for the given account.
  ///
  /// Use a negative [amount] to send HBAR; use a positive [amount]
  /// to receive HBAR. The sum of all HBAR transfers MUST equal zero.
  ///
  /// Can be called multiple times to add multiple transfers.
  ///
  /// Example:
  /// ```dart
  /// transaction
  ///     .addHbarTransfer(senderAccount, Hbar(10).negated())
  ///     .addHbarTransfer(receiverAccount, Hbar(10));
  /// ```
  CryptoTransferTransaction addHbarTransfer(
    AccountId accountId,
    Hbar amount,
  ) {
    _transfers.add(_HbarTransfer(accountId: accountId, amount: amount));
    return this;
  }

  /// Adds a fungible token transfer for the given account.
  ///
  /// [amount] is expressed in the token's smallest denomination (see
  /// `TokenCreateTransaction.setDecimals`). Use a negative [amount]
  /// to send tokens; use a positive [amount] to receive tokens. The
  /// sum of all transfers for a given [tokenId] MUST equal zero.
  ///
  /// [expectedDecimals] is OPTIONAL. When set, the network verifies
  /// that the token's actual decimals match this value before
  /// applying the transfer, failing with `UNEXPECTED_TOKEN_DECIMALS`
  /// otherwise. This guards against a token's decimals changing
  /// between when this transaction is built and when it executes.
  ///
  /// Can be called multiple times, including for different tokens,
  /// to add multiple transfers in a single transaction.
  ///
  /// Example:
  /// ```dart
  /// transaction
  ///     .addTokenTransfer(tokenId, senderAccount, -100)
  ///     .addTokenTransfer(tokenId, receiverAccount, 100);
  /// ```
  CryptoTransferTransaction addTokenTransfer(
    TokenId tokenId,
    AccountId accountId,
    int amount, {
    int? expectedDecimals,
  }) {
    _tokenTransfers.putIfAbsent(tokenId, () => []).add(
          _TokenAmount(
            accountId: accountId,
            amount: amount,
            expectedDecimals: expectedDecimals,
          ),
        );
    return this;
  }

  // ---- Getters ----

  /// The number of HBAR transfers added to this transaction.
  int get transferCount => _transfers.length;

  /// The number of distinct tokens with transfers added to this
  /// transaction.
  int get tokenTransferCount => _tokenTransfers.length;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildCryptoTransferBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the CryptoTransferTransaction-specific body fields to
  /// [body].
  ///
  /// Sets the cryptoTransfer field on [body] with the list of HBAR
  /// and token transfers. Validates that HBAR amounts, and each
  /// token's amounts independently, sum to zero before applying.
  ///
  /// Throws [ArgumentError] if no transfers have been added, or if
  /// any group of amounts does not sum to zero.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.cryptoTransfer = _buildCryptoTransferBody();
  }

  /// Builds the [CryptoTransferTransactionBody], validating that
  /// HBAR amounts and each token's amounts independently sum to
  /// zero.
  CryptoTransferTransactionBody _buildCryptoTransferBody() {
    if (_transfers.isEmpty && _tokenTransfers.isEmpty) {
      throw ArgumentError(
        'CryptoTransferTransaction requires at least one transfer. '
        'Call addHbarTransfer() or addTokenTransfer() first.',
      );
    }

    final body = CryptoTransferTransactionBody();

    // Validate and encode HBAR transfers, if any were added.
    if (_transfers.isNotEmpty) {
      final hbarTotal = _transfers.fold<int>(
        0,
        (sum, transfer) => sum + transfer.amount.toTinybars(),
      );
      if (hbarTotal != 0) {
        throw ArgumentError(
          'CryptoTransferTransaction HBAR transfer amounts must sum '
          'to zero. Got: $hbarTotal tinybars.',
        );
      }

      final accountAmounts = _transfers.map((transfer) {
        return AccountAmount(
          accountID: transfer.accountId.toProto(),
          amount: Int64(transfer.amount.toTinybars()),
        );
      }).toList();

      body.transfers = TransferList(accountAmounts: accountAmounts);
    }

    // Validate and encode token transfers, one TokenTransferList per
    // distinct token, each independently required to sum to zero.
    for (final entry in _tokenTransfers.entries) {
      final tokenId = entry.key;
      final amounts = entry.value;

      final tokenTotal = amounts.fold<int>(
        0,
        (sum, tokenAmount) => sum + tokenAmount.amount,
      );
      if (tokenTotal != 0) {
        throw ArgumentError(
          'CryptoTransferTransaction transfer amounts for token '
          '$tokenId must sum to zero. Got: $tokenTotal.',
        );
      }

      final tokenTransferList = TokenTransferList(
        token: tokenId.toProto(),
        transfers: amounts.map((tokenAmount) {
          return AccountAmount(
            accountID: tokenAmount.accountId.toProto(),
            amount: Int64(tokenAmount.amount),
          );
        }).toList(),
      );

      // expectedDecimals is tied to the TokenTransferList as a whole
      // (per token), not per individual transfer entry. If multiple
      // addTokenTransfer() calls for this token specify conflicting
      // non-null values, that is treated as a developer error rather
      // than silently picking one.
      final decimalsSpecified =
          amounts.map((t) => t.expectedDecimals).whereType<int>().toSet();
      if (decimalsSpecified.length > 1) {
        throw ArgumentError(
          'CryptoTransferTransaction received conflicting '
          'expectedDecimals values for token $tokenId: '
          '$decimalsSpecified. All addTokenTransfer() calls for the '
          'same token must use the same expectedDecimals value.',
        );
      }
      final expectedDecimals =
          decimalsSpecified.isEmpty ? null : decimalsSpecified.single;

      if (expectedDecimals != null) {
        tokenTransferList.expectedDecimals = UInt32Value(
          value: expectedDecimals,
        );
      }

      body.tokenTransfers.add(tokenTransferList);
    }

    return body;
  }

  /// Executes this transaction via the cryptoTransfer gRPC method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await CryptoServiceClient(channel).cryptoTransfer(tx);
  }
}

/// Internal representation of a single HBAR transfer.
class _HbarTransfer {
  const _HbarTransfer({
    required this.accountId,
    required this.amount,
  });

  final AccountId accountId;
  final Hbar amount;
}

/// Internal representation of a single token transfer amount.
class _TokenAmount {
  const _TokenAmount({
    required this.accountId,
    required this.amount,
    this.expectedDecimals,
  });

  final AccountId accountId;
  final int amount;
  final int? expectedDecimals;
}
