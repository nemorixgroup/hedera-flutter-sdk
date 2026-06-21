import 'dart:typed_data';

// import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/crypto/public_key.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_update.pb.dart';
import 'package:hedera_flutter_sdk/src/transactions/transaction.dart';
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart';

/// Updates an existing Hedera account.
///
/// Unlike AccountCreateTransaction, only [accountIdToUpdate] is
/// required. All other fields are optional; only the fields you
/// set are changed, everything else stays as-is.
///
/// Example:
/// ```dart
/// final response = await AccountUpdateTransaction()
///     .setAccountIdToUpdate(accountId)
///     .setMemo('Updated wallet name')
///     .execute(client);
/// ```
class AccountUpdateTransaction extends Transaction<AccountUpdateTransaction> {
  /// Creates a new [AccountUpdateTransaction] with default values.
  AccountUpdateTransaction();

  AccountId? _accountIdToUpdate;
  PublicKey? _key;
  String? _newMemo;
  bool? _receiverSigRequired;
  int? _maxAutomaticTokenAssociations;

  // ---- Setters (fluent API) ----

  /// Sets the account ID to update.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAccountIdToUpdate(AccountId.fromString('0.0.12345'));
  /// ```
  AccountUpdateTransaction setAccountIdToUpdate(AccountId accountId) {
    _accountIdToUpdate = accountId;
    return this;
  }

  /// Sets a new key to control this account.
  ///
  /// If not set; the existing key is unchanged.
  ///
  /// Example:
  /// ```dart
  /// transaction.setKey(newPublicKey);
  /// ```
  AccountUpdateTransaction setKey(PublicKey key) {
    _key = key;
    return this;
  }

  /// Sets a new memo for this account.
  ///
  /// If not set; the existing memo is unchanged.
  ///
  /// Example:
  /// ```dart
  /// transaction.setNewMemo('NemorixPay wallet v2');
  /// ```
  AccountUpdateTransaction setNewMemo(String memo) {
    _newMemo = memo;
    return this;
  }

  /// Sets whether incoming token transfers require this account's
  /// signature.
  ///
  /// If not set; the existing setting is unchanged.
  ///
  /// Example:
  /// ```dart
  /// transaction.setReceiverSignatureRequired(value: true);
  /// ```
  AccountUpdateTransaction setReceiverSignatureRequired({
    required bool value,
  }) {
    _receiverSigRequired = value;
    return this;
  }

  /// Sets the maximum number of automatic token associations.
  ///
  /// If not set; the existing setting is unchanged.
  /// Use `-1` for unlimited associations.
  ///
  /// Example:
  /// ```dart
  /// transaction.setMaxAutomaticTokenAssociations(10);
  /// ```
  AccountUpdateTransaction setMaxAutomaticTokenAssociations(int max) {
    _maxAutomaticTokenAssociations = max;
    return this;
  }

  // ---- Getters ----

  /// The account ID being updated.
  AccountId? get accountIdToUpdate => _accountIdToUpdate;

  /// The new key to set; or null if unchanged.
  PublicKey? get key => _key;

  /// The new memo to set; or null if unchanged.
  String? get newMemo => _newMemo;

  /// The new receiver signature required setting; or null if unchanged.
  bool? get receiverSignatureRequired => _receiverSigRequired;

  /// The new max automatic token associations; or null if unchanged.
  int? get maxAutomaticTokenAssociations => _maxAutomaticTokenAssociations;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    if (_accountIdToUpdate == null) {
      throw ArgumentError(
        'AccountUpdateTransaction requires an accountIdToUpdate. '
        'Call setAccountIdToUpdate() first.',
      );
    }

    // final body = CryptoUpdateTransactionBody(
    //   accountIDToUpdate: AccountID(
    //     shardNum: Int64(_accountIdToUpdate!.shardNum),
    //     realmNum: Int64(_accountIdToUpdate!.realmNum),
    //     accountNum: Int64(_accountIdToUpdate!.accountNum),
    //   ),
    // );

    final body = CryptoUpdateTransactionBody(
      accountIDToUpdate: _accountIdToUpdate!.toProto(),
    );

    if (_key != null) {
      body.key = Key(ed25519: _key!.bytes);
    }

    if (_newMemo != null) {
      body.memo = StringValue(value: _newMemo);
    }

    if (_receiverSigRequired != null) {
      body.receiverSigRequiredWrapper = BoolValue(
        value: _receiverSigRequired,
      );
    }

    if (_maxAutomaticTokenAssociations != null) {
      body.maxAutomaticTokenAssociations = Int32Value(
        value: _maxAutomaticTokenAssociations,
      );
    }

    return Uint8List.fromList(body.writeToBuffer());
  }
}
