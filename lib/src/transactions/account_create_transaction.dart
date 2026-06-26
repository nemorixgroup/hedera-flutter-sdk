import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/crypto/public_key.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_create.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/transactions/transaction.dart';

/// Creates a new Hedera account.
///
/// At minimum a [PublicKey] must be set via [setKey]. The new
/// account is controlled by the corresponding private key.
///
/// Example:
/// ```dart
/// final response = await AccountCreateTransaction()
///     .setKey(publicKey)
///     .setInitialBalance(Hbar(10))
///     .setMemo('NemorixPay wallet')
///     .execute(client);
///
/// final receipt = await response.getReceipt(client);
/// print(receipt.accountId); // 0.0.123456
/// ```
class AccountCreateTransaction extends Transaction<AccountCreateTransaction> {
  /// Creates a new [AccountCreateTransaction] with default values.
  ///
  /// A [PublicKey] must be set via [setKey] before calling [toBytes]
  /// or [execute].
  AccountCreateTransaction();

  PublicKey? _key;
  Hbar _initialBalance = Hbar.zero;
  int? _maxAutomaticTokenAssociations;
  bool _receiverSigRequired = false;

  // ---- Setters (fluent API) ----

  /// Sets the key that will control the new account.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setKey(publicKey);
  /// ```
  AccountCreateTransaction setKey(PublicKey key) {
    _key = key;
    return this;
  }

  /// Sets the initial HBAR balance for the new account.
  ///
  /// Defaults to [Hbar.zero] if not set.
  /// The deposited amount is debited from the payer account.
  ///
  /// Example:
  /// ```dart
  /// transaction.setInitialBalance(Hbar(10));
  /// ```
  AccountCreateTransaction setInitialBalance(Hbar balance) {
    _initialBalance = balance;
    return this;
  }

  /// Sets the maximum number of automatic token associations.
  ///
  /// Use `-1` for unlimited associations.
  ///
  /// Example:
  /// ```dart
  /// transaction.setMaxAutomaticTokenAssociations(10);
  /// ```
  AccountCreateTransaction setMaxAutomaticTokenAssociations(int max) {
    _maxAutomaticTokenAssociations = max;
    return this;
  }

  /// Sets whether incoming token transfers require this account's
  /// signature.
  ///
  /// If true; the account key MUST sign this create transaction
  /// in addition to the payer.
  ///
  /// Example:
  /// ```dart
  /// transaction.setReceiverSignatureRequired(true);
  /// ```
  AccountCreateTransaction setReceiverSignatureRequired({
    required bool value,
  }) {
    _receiverSigRequired = value;
    return this;
  }

  // ---- Getters ----

  /// The key that will control the new account.
  PublicKey? get key => _key;

  /// The initial HBAR balance for the new account.
  Hbar get initialBalance => _initialBalance;

  /// The maximum number of automatic token associations, or null
  /// if not set.
  int? get maxAutomaticTokenAssociations => _maxAutomaticTokenAssociations;

  /// Whether incoming token transfers require this account's signature.
  bool get receiverSignatureRequired => _receiverSigRequired;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    if (_key == null) {
      throw ArgumentError(
        'AccountCreateTransaction requires a key. Call setKey() first.',
      );
    }

    final body = CryptoCreateTransactionBody(
      key: Key(ed25519: _key!.bytes),
      initialBalance: Int64(_initialBalance.toTinybars()),
      memo: memo,
      receiverSigRequired: _receiverSigRequired,
    );

    if (_maxAutomaticTokenAssociations != null) {
      body.maxAutomaticTokenAssociations = _maxAutomaticTokenAssociations!;
    }

    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the AccountCreateTransaction-specific body fields to [body].
  ///
  /// Sets the cryptoCreateAccount field on [body] with the key, initial
  /// balance, memo, receiver signature requirement, and optional maximum
  /// automatic token associations configured on this transaction.
  ///
  /// Throws [ArgumentError] if [key] has not been set.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    if (_key == null) {
      throw ArgumentError(
        'AccountCreateTransaction requires a key. Call setKey() first.',
      );
    }

    final cryptoBody = CryptoCreateTransactionBody(
      key: Key(ed25519: _key!.bytes),
      initialBalance: Int64(_initialBalance.toTinybars()),
      memo: memo,
      receiverSigRequired: _receiverSigRequired,
    );

    if (_maxAutomaticTokenAssociations != null) {
      cryptoBody.maxAutomaticTokenAssociations =
          _maxAutomaticTokenAssociations!;
    }

    body.cryptoCreateAccount = cryptoBody;
  }
}
