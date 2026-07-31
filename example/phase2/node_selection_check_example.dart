import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// Manual verification script for multi-node load balancing
/// (v0.1.3-dev).
///
/// Calls `HederaClient.selectNode()` multiple times in a row and
/// prints the result of each call, so you can visually confirm that
/// the dynamic node list (fetched from the Mirror Node REST API) and
/// the round-robin selection are both working correctly.
///
/// This is not an automated test - it depends on live network access
/// to the Hedera testnet Mirror Node. Run it manually when you want
/// to double check node selection behavior, for example after
/// touching `HederaClient._getNodeList()` or `selectNode()`.
///
/// Run with:
/// ```dart
/// dart run example/phase2/node_selection_check.dart
/// ```
Future<void> nodeSelectionCheck() async {
  final client = HederaClient.forTestnet();

  print('=== Node Selection Check (v0.1.3-dev) ===\n');
  print('Calling selectNode() 8 times...\n');

  for (var i = 0; i < 8; i++) {
    final node = await client.selectNode();
    print('Call $i: ${node.accountId} @ ${node.endpoint}');
  }

  print('');
  print('=== How to read this ===\n');

  print('GOOD — real Mirror Node fetch + round-robin working:');
  print('  - Account IDs rotate through several nodes (0.0.3, 0.0.4,');
  print('    0.0.5, ...), not always the same one.');
  print('  - Endpoints show real IP addresses (e.g. 34.94.106.61),');
  print('    not the generic "0.testnet.hedera.com" hostname.');
  print('  - After the last node in the list, the rotation wraps');
  print('    back around to the first one (0.0.3) and repeats.');
  print('');

  print('FALLBACK — Mirror Node fetch failed, using the static node:');
  print('  - Every call returns the same node: 0.0.3 at the generic');
  print('    "0.testnet.hedera.com:50211" endpoint (no real IP).');
  print('  - This is not a bug — it is the intended safety fallback');
  print('    when the Mirror Node is unreachable (e.g. no internet');
  print('    connection). But if you expected the real node list and');
  print('    see this instead, check your network connection or');
  print('    whether the Mirror Node API is reachable manually:');
  print('    https://testnet.mirrornode.hedera.com/api/v1/network/nodes');
  print('');

  print('CACHING — expected timing behavior:');
  print('  - The first call may take noticeably longer (network');
  print('    round-trip to fetch the node list).');
  print('  - The remaining 7 calls should feel instant, since the');
  print('    node list is cached for 24 hours after the first fetch.');
  print('');

  await client.close();

  print('=== Check complete ===\n');
}

/// Allows running this file standalone:
/// ```sh
/// dart run example/phase2/node_selection_check_example.dart
/// ```
Future<void> main() async => nodeSelectionCheck();
