import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_get_account_balance.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/query_header.pb.dart';
import 'package:hedera_flutter_sdk/src/queries/query.dart';

/// Queries the HBAR balance of a Hedera account.
///
/// Example:
/// ```dart
/// final balance = await AccountBalanceQuery()
///     .setAccountId(AccountId.fromString('0.0.12345'))
///     .execute(client);
///
/// print(balance.toHbars()); // 10.0
/// ```
class AccountBalanceQuery extends Query<Hbar, AccountBalanceQuery> {
  /// Creates a new [AccountBalanceQuery] with default values.
  ///
  /// An [AccountId] must be set via [setAccountId] before calling
  /// [toBytes] or [execute].
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
      accountID: AccountID(
        shardNum: Int64(_accountId!.shardNum),
        realmNum: Int64(_accountId!.realmNum),
        accountNum: Int64(_accountId!.accountNum),
      ),
    );

    return Uint8List.fromList(query.writeToBuffer());
  }
}
