import 'dart:typed_data';

// import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
// import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_get_info.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/query_header.pb.dart';
import 'package:hedera_flutter_sdk/src/queries/account_info.dart';
import 'package:hedera_flutter_sdk/src/queries/query.dart';

/// Queries the full information of a Hedera account.
///
/// Returns an [AccountInfo] with the account's identity, key,
/// balance, and configuration settings.
///
/// Example:
/// ```dart
/// final info = await AccountInfoQuery()
///     .setAccountId(AccountId.fromString('0.0.12345'))
///     .execute(client);
///
/// print(info.balance.toHbars());
/// ```
class AccountInfoQuery extends Query<AccountInfo, AccountInfoQuery> {
  /// Creates a new [AccountInfoQuery] with default values.
  ///
  /// An [AccountId] must be set via [setAccountId] before calling
  /// [toBytes] or [execute].
  AccountInfoQuery();

  AccountId? _accountId;

  // ---- Setters (fluent API) ----

  /// Sets the account ID to query information for.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// query.setAccountId(AccountId.fromString('0.0.12345'));
  /// ```
  AccountInfoQuery setAccountId(AccountId accountId) {
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
        'AccountInfoQuery requires an accountId. '
        'Call setAccountId() first.',
      );
    }

    // final query = CryptoGetInfoQuery(
    //   header: QueryHeader(),
    //   accountID: AccountID(
    //     shardNum: Int64(_accountId!.shardNum),
    //     realmNum: Int64(_accountId!.realmNum),
    //     accountNum: Int64(_accountId!.accountNum),
    //   ),
    // );

    final query = CryptoGetInfoQuery(
      header: QueryHeader(),
      accountID: _accountId!.toProto(),
    );

    return Uint8List.fromList(query.writeToBuffer());
  }
}
