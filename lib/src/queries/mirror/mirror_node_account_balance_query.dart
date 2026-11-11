import 'package:hedera_flutter_sdk/src/client/hedera_client.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_code.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_exception.dart';
import 'package:hedera_flutter_sdk/src/core/mirror_node_exception.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_node_account_balance.dart';

/// Reads the HBAR balance of an account from the Mirror Node REST API
/// (`GET /api/v1/balances?account.id={id}`).
///
/// This is the replacement for `AccountBalanceQuery`, which Hedera
/// removed from consensus nodes in release v0.77. It is free and does
/// not need an operator account.
///
/// The Mirror Node ingests data shortly after consensus, so an account
/// created a moment ago may not appear yet. In that case this query
/// throws `HederaStatusException` with `INVALID_ACCOUNT_ID`; retry
/// after a few seconds.
///
/// Example:
/// ```dart
/// final balance = await MirrorNodeAccountBalanceQuery()
///     .setAccountId(AccountId.fromString('0.0.12345'))
///     .execute(client);
///
/// print(balance.hbars.toHbars()); // 10.0
/// ```
class MirrorNodeAccountBalanceQuery {
  /// Creates a new [MirrorNodeAccountBalanceQuery].
  ///
  /// An [AccountId] must be set via [setAccountId] before [execute].
  MirrorNodeAccountBalanceQuery();

  AccountId? _accountId;

  /// Sets the account to query. This field is REQUIRED.
  MirrorNodeAccountBalanceQuery setAccountId(AccountId accountId) {
    _accountId = accountId;
    return this;
  }

  /// The account being queried.
  AccountId? get accountId => _accountId;

  /// Executes the query against the Mirror Node of [client].
  ///
  /// Throws [ArgumentError] if no account ID was set,
  /// `HederaStatusException` (`INVALID_ACCOUNT_ID`) if the Mirror Node
  /// does not know the account, and `MirrorNodeException` for HTTP or
  /// response errors.
  Future<MirrorNodeAccountBalance> execute(HederaClient client) async {
    final accountId = _accountId;
    if (accountId == null) {
      throw ArgumentError(
        'MirrorNodeAccountBalanceQuery requires an accountId. '
        'Call setAccountId() first.',
      );
    }

    const path = '/api/v1/balances';
    final json = await client.mirrorNode.getJson(
      path,
      queryParameters: {'account.id': accountId.toString()},
    );

    final balances = json['balances'];
    if (balances is! List<dynamic> || balances.isEmpty) {
      throw const HederaStatusException(HederaStatusCode.invalidAccountId);
    }

    final entry = balances.first;
    final tinybars = entry is Map<String, dynamic> ? entry['balance'] : null;
    if (tinybars is! int) {
      throw MirrorNodeException(
        path: path,
        message: 'Response has no balance for $accountId',
      );
    }

    final timestamp = json['timestamp'];
    return MirrorNodeAccountBalance(
      hbars: Hbar.fromTinybars(tinybars),
      timestamp: timestamp is String ? timestamp : null,
    );
  }
}
