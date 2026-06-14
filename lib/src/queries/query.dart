import 'dart:typed_data';

import 'package:hedera_flutter_sdk/src/client/hedera_client.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';

/// Base class for all Hedera queries.
///
/// Unlike Transaction, a Query only reads data from the network
/// and does not modify state.
///
/// The generic parameters are:
/// - [R]: the response type returned by [execute]
/// - [T]: the concrete subclass; enables fluent setters to return
///   the subclass type (Generic Self-Type pattern)
///
/// Example:
/// ```dart
/// final balance = await AccountBalanceQuery()
///     .setAccountId(AccountId.fromString('0.0.12345'))
///     .execute(client);
///
/// print(balance.toHbars()); // 10.0
/// ```
///
/// ## Payment (pending implementation, June 2026)
///
/// Most Hedera queries require a small payment to the node, attached
/// as a signed CryptoTransferTransaction in the query header.
/// This is not yet implemented; toBytes currently sends an empty
/// QueryHeader (no payment attached).
///
/// Planned approach once CryptoTransferTransaction is available:
/// 1. Add a `setPayment(Transaction payment)` or
///    `generatePayment(HederaClient client)` method that builds a
///    small CryptoTransferTransaction from the operator to the
///    target node.
/// 2. Sign that transaction with the operator key.
/// 3. Serialize it via `.toBytes()` and set it on
///    `QueryHeader.payment` (a Protobuf `Transaction` message).
/// 4. Some queries (e.g. cost estimation via `COST_ANSWER`
///    ResponseType) can be performed without payment first to
///    determine the required fee.
abstract class Query<R, T extends Query<R, T>> {
  /// Creates a new [Query] with default values.
  Query();

  AccountId? _nodeAccountId;

  // ---- Setters (fluent API) ----

  /// Sets the account ID of the node that will process this query.
  ///
  /// Example:
  /// ```dart
  /// query.setNodeAccountId(AccountId.fromString('0.0.3'));
  /// ```
  T setNodeAccountId(AccountId nodeAccountId) {
    _nodeAccountId = nodeAccountId;
    return this as T;
  }

  // ---- Getters ----

  /// The node account ID for this query.
  AccountId? get nodeAccountId => _nodeAccountId;

  // ---- Execution ----

  /// Executes this query against the Hedera network.
  ///
  /// Example:
  /// ```dart
  /// final result = await query.execute(client);
  /// ```
  // TODO(Phase2): Implement gRPC execution via HederaClient
  Future<R> execute(HederaClient client) async {
    throw UnimplementedError('Query.execute; Phase 2');
  }

  // ---- Serialization ----

  /// Serializes this query to bytes for submission.
  ///
  /// Each query subclass must implement this method.
  Uint8List toBytes();
}
