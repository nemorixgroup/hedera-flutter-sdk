import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_transfer.pb.dart';
import 'package:hedera_flutter_sdk/src/transactions/transaction.dart';

/// Transfers HBAR between Hedera accounts.
///
/// Each transfer is represented as an [AccountId] and an [Hbar] amount.
/// Negative amounts indicate a debit (sending) and positive amounts
/// indicate a credit (receiving).
///
/// The sum of all transfer amounts MUST equal zero — what leaves one
/// account must arrive at another.
///
/// Example:
/// ```dart
/// // Transfer 10 HBAR from accountA to accountB
/// final response = await CryptoTransferTransaction()
///     .addHbarTransfer(accountA, Hbar(10).negated())
///     .addHbarTransfer(accountB, Hbar(10))
///     .execute(client);
/// ```
class CryptoTransferTransaction extends Transaction<CryptoTransferTransaction> {
  /// Creates a new [CryptoTransferTransaction] with no transfers.
  CryptoTransferTransaction();

  final List<_HbarTransfer> _transfers = [];

  // ---- Setters (fluent API) ----

  /// Adds an HBAR transfer for the given account.
  ///
  /// Use a negative [amount] to send HBAR; use a positive [amount]
  /// to receive HBAR. The sum of all transfers MUST equal zero.
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

  // ---- Getters ----

  /// The list of HBAR transfers added to this transaction.
  //List<_HbarTransfer> get transfers => List.unmodifiable(_transfers);
  /// The number of HBAR transfers added to this transaction.
  int get transferCount => _transfers.length;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    if (_transfers.isEmpty) {
      throw ArgumentError(
        'CryptoTransferTransaction requires at least one transfer. '
        'Call addHbarTransfer() first.',
      );
    }

    final total = _transfers.fold<int>(
      0,
      (sum, transfer) => sum + transfer.amount.toTinybars(),
    );

    if (total != 0) {
      throw ArgumentError(
        'CryptoTransferTransaction transfer amounts must sum to zero. '
        'Got: $total tinybars.',
      );
    }

    // final accountAmounts = _transfers.map((transfer) {
    //   return AccountAmount(
    //     accountID: AccountID(
    //       shardNum: Int64(transfer.accountId.shardNum),
    //       realmNum: Int64(transfer.accountId.realmNum),
    //       accountNum: Int64(transfer.accountId.accountNum),
    //     ),
    //     amount: Int64(transfer.amount.toTinybars()),
    //   );
    // }).toList();

    final accountAmounts = _transfers.map((transfer) {
      return AccountAmount(
        accountID: transfer.accountId.toProto(),
        amount: Int64(transfer.amount.toTinybars()),
      );
    }).toList();

    final body = CryptoTransferTransactionBody(
      transfers: TransferList(accountAmounts: accountAmounts),
    );

    return Uint8List.fromList(body.writeToBuffer());
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
