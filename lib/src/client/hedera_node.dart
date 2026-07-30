import 'package:hedera_flutter_sdk/src/models/account_id.dart';

/// Represents a single consensus node in the Hedera network.
///
/// Used by HederaClient to distribute transactions across multiple
/// nodes instead of relying on a single fixed node.
class HederaNode {
  /// Creates a [HederaNode] with the given account ID and gRPC endpoint.
  const HederaNode({required this.accountId, required this.endpoint});

  /// The node's account ID (e.g. `0.0.3`), used as `nodeAccountID`
  /// in transaction bodies.
  final AccountId accountId;

  /// The node's gRPC endpoint in `host:port` form.
  final String endpoint;

  @override
  String toString() => 'HederaNode($accountId @ $endpoint)';
}
