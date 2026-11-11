import 'dart:typed_data';

import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_get_account_balance.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/query_header.pb.dart';
import 'package:hedera_flutter_sdk/src/queries/query.dart';

/// Builds the consensus-node query for the HBAR balance of an account.
///
/// **Deprecated.** Hedera removed this query from consensus nodes in
/// release v0.77 (testnet on September 15, 2026; mainnet on September
/// 29, 2026), so it can no longer be answered by the network. This
/// class only serializes the request with [toBytes]; its `execute()`
/// was never implemented in this SDK.
///
/// Use instead:
/// - `MirrorNodeAccountBalanceQuery` for the HBAR balance.
/// - `MirrorNodeTokenBalanceQuery` for token balances.
///
/// Example of the replacement:
/// ```dart
/// final balance = await MirrorNodeAccountBalanceQuery()
///     .setAccountId(AccountId.fromString('0.0.12345'))
///     .execute(client);
///
/// print(balance.hbars.toHbars()); // 10.0
/// ```
@Deprecated(
  'AccountBalanceQuery was removed from consensus nodes in release '
  'v0.77. Use MirrorNodeAccountBalanceQuery for HBAR balances and '
  'MirrorNodeTokenBalanceQuery for token balances.',
)
class AccountBalanceQuery extends Query<Hbar, AccountBalanceQuery> {
  /// Creates a new [AccountBalanceQuery] with default values.
  ///
  /// An [AccountId] must be set via [setAccountId] before calling
  /// [toBytes].

  @Deprecated('Use MirrorNodeAccountBalanceQuery instead.')
  AccountBalanceQuery();

  AccountId? _accountId;

  // ---- Setters (fluent API) ----

  /// Sets the account ID to query the balance for.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// query.setAccountId(AccountId.fromString('0.0.12345'));
  /// ```
  AccountBalanceQuery setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  // ---- Getters ----

  /// The account ID being queried.
  AccountId? get accountId => _accountId;

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    if (_accountId == null) {
      throw ArgumentError(
        'AccountBalanceQuery requires an accountId. '
        'Call setAccountId() first.',
      );
    }

    final query = CryptoGetAccountBalanceQuery(
      header: QueryHeader(),
      accountID: _accountId!.toProto(),
    );

    return Uint8List.fromList(query.writeToBuffer());
  }
}
