import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_delete.pb.dart';
import 'package:hedera_flutter_sdk/src/transactions/transaction.dart';

/// Deletes an existing Hedera account.
///
/// Both the account to delete and a transfer account are REQUIRED.
/// Any remaining HBAR balance in the deleted account is transferred
/// to the transfer account; Hedera does not allow burning HBAR on
/// account deletion.
///
/// This operation is irreversible.
///
/// Example:
/// ```dart
/// final response = await AccountDeleteTransaction()
///     .setAccountId(accountToDelete)
///     .setTransferAccountId(beneficiaryAccount)
///     .execute(client);
/// ```
class AccountDeleteTransaction extends Transaction<AccountDeleteTransaction> {
  /// Creates a new [AccountDeleteTransaction] with default values.
  AccountDeleteTransaction();

  AccountId? _accountId;
  AccountId? _transferAccountId;

  // ---- Setters (fluent API) ----

  /// Sets the account ID to delete.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAccountId(AccountId.fromString('0.0.12345'));
  /// ```
  AccountDeleteTransaction setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  /// Sets the account that will receive any remaining HBAR balance.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTransferAccountId(AccountId.fromString('0.0.99'));
  /// ```
  AccountDeleteTransaction setTransferAccountId(AccountId accountId) {
    _transferAccountId = accountId;
    return this;
  }

  // ---- Getters ----

  /// The account ID to be deleted.
  AccountId? get accountId => _accountId;

  /// The account that will receive any remaining HBAR balance.
  AccountId? get transferAccountId => _transferAccountId;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    if (_accountId == null) {
      throw ArgumentError(
        'AccountDeleteTransaction requires an accountId. '
        'Call setAccountId() first.',
      );
    }
    if (_transferAccountId == null) {
      throw ArgumentError(
        'AccountDeleteTransaction requires a transferAccountId. '
        'Call setTransferAccountId() first.',
      );
    }

    final body = CryptoDeleteTransactionBody(
      deleteAccountID: AccountID(
        shardNum: Int64(_accountId!.shardNum),
        realmNum: Int64(_accountId!.realmNum),
        accountNum: Int64(_accountId!.accountNum),
      ),
      transferAccountID: AccountID(
        shardNum: Int64(_transferAccountId!.shardNum),
        realmNum: Int64(_transferAccountId!.realmNum),
        accountNum: Int64(_transferAccountId!.accountNum),
      ),
    );

    return Uint8List.fromList(body.writeToBuffer());
  }
}
