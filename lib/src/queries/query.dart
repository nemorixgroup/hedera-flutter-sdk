import 'dart:typed_data';

import 'package:hedera_flutter_sdk/src/client/hedera_client.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';

/// Base class for the consensus-node queries.
///
/// Unlike Transaction, a Query only reads data from the network
/// and does not modify state.
///
/// The generic parameters are:
/// - [R]: the response type returned by [execute]
/// - [T]: the concrete subclass; enables fluent setters to return
///   the subclass type (Generic Self-Type pattern)
///
/// ## Status
///
/// Executing queries against consensus nodes is not implemented yet:
/// [execute] throws [UnimplementedError]. Subclasses can already build
/// and serialize their request with [toBytes].
///
/// To read data from the network today, use the Mirror Node queries,
/// which are free and need no operator account:
/// - `MirrorNodeAccountBalanceQuery`
/// - `MirrorNodeTokenBalanceQuery`
/// - `MirrorNodeTokenInfoQuery`
/// - `MirrorNodeTokenNftInfoQuery`
///
/// Example:
/// ```dart
/// final balance = await MirrorNodeAccountBalanceQuery()
///     .setAccountId(AccountId.fromString('0.0.12345'))
///     .execute(client);
///
/// print(balance.hbars.toHbars()); // 10.0
/// ```
///
/// ## Payment (pending implementation)
///
/// Most consensus-node queries require a small payment to the node,
/// attached as a signed CryptoTransferTransaction in the query header.
/// This is not implemented yet; toBytes currently sends an empty
/// QueryHeader (no payment attached).
///
/// Planned approach once query execution is implemented:
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

  /// Executes this query against a consensus node.
  ///
  /// Not implemented yet; always throws [UnimplementedError]. See the
  /// class documentation for the Mirror Node alternatives.
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
