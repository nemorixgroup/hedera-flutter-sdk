import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/src/client/hedera_network.dart';
import 'package:hedera_flutter_sdk/src/client/hedera_node.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_constants.dart';
import 'package:hedera_flutter_sdk/src/crypto/private_key.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_service.pbgrpc.dart';
import 'package:http/http.dart' as http;

/// The main entry point for interacting with the Hedera network.
///
/// [HederaClient] manages the network configuration, operator
/// credentials, and connection settings for all SDK operations.
///
/// Example:
/// ```dart
/// final client = HederaClient.forTestnet()
///     .setOperator(
///       AccountId.fromString('0.0.12345'),
///       PrivateKey.fromString('302e...'),
///     );
/// ```
class HederaClient {
  /// Creates a [HederaClient] for the given network.
  HederaClient._(this.network);

  /// Creates a client configured for Hedera mainnet.
  ///
  /// Use this for production applications.
  factory HederaClient.forMainnet() => HederaClient._(HederaNetwork.mainnet);

  /// Creates a client configured for Hedera testnet.
  ///
  /// Use this for development and testing.
  /// Free HBAR available at: https://portal.hedera.com
  factory HederaClient.forTestnet() => HederaClient._(HederaNetwork.testnet);

  /// Creates a client configured for Hedera previewnet.
  factory HederaClient.forPreviewnet() =>
      HederaClient._(HederaNetwork.previewnet);

  /// The active network environment.
  final HederaNetwork network;

  /// The operator account ID; pays transaction fees.
  AccountId? _operatorAccountId;

  /// The operator private key; signs transactions.
  PrivateKey? _operatorPrivateKey;

  /// Maximum fee the client will pay for a single transaction.
  /// Defaults to 2 HBAR.
  Hbar _maxTransactionFee = Hbar.fromTinybars(
    HederaConstants.defaultMaxTransactionFeeTinybars,
  );

  /// Maximum payment for a single query.
  /// Defaults to 1 HBAR.
  Hbar _maxQueryPayment = Hbar.fromTinybars(
    HederaConstants.defaultMaxQueryPaymentTinybars,
  );

  /// Sets the operator account and key for this client.
  ///
  /// The operator account pays the fees for all transactions
  /// executed by this client.
  ///
  /// Example:
  /// ```dart
  /// client.setOperator(
  ///   AccountId.fromString('0.0.12345'),
  ///   PrivateKey.fromString('302e...'),
  /// );
  /// ```
  HederaClient setOperator(AccountId accountId, PrivateKey privateKey) {
    _operatorAccountId = accountId;
    _operatorPrivateKey = privateKey;
    return this;
  }

  /// Sets the maximum transaction fee this client will pay.
  ///
  /// Defaults to 2 HBAR if not set.
  HederaClient setMaxTransactionFee(Hbar fee) {
    _maxTransactionFee = fee;
    return this;
  }

  /// Sets the maximum payment for queries.
  ///
  /// Defaults to 1 HBAR if not set.
  HederaClient setMaxQueryPayment(Hbar payment) {
    _maxQueryPayment = payment;
    return this;
  }

  /// The operator account ID, or null if not set.
  AccountId? get operatorAccountId => _operatorAccountId;

  /// The operator private key, or null if not set.
  PrivateKey? get operatorPrivateKey => _operatorPrivateKey;

  /// The maximum transaction fee.
  Hbar get maxTransactionFee => _maxTransactionFee;

  /// The maximum query payment.
  Hbar get maxQueryPayment => _maxQueryPayment;

  /// The gRPC endpoint for the active network.
  String get networkEndpoint {
    switch (network) {
      case HederaNetwork.mainnet:
        return '${HederaConstants.mainnetNodeEndpoint}'
            ':${HederaConstants.grpcPort}';
      case HederaNetwork.testnet:
        return '${HederaConstants.testnetNodeEndpoint}'
            ':${HederaConstants.grpcPort}';
      case HederaNetwork.previewnet:
        return '${HederaConstants.previewnetNodeEndpoint}'
            ':${HederaConstants.grpcPort}';
    }
  }

  // ---- gRPC ----

  ClientChannel? _channel;

  /// Returns a [ClientChannel] connected to the active network node.
  ///
  /// The channel is created lazily on first access and reused
  /// for subsequent calls.
  ///
  /// Uses insecure connection (port 50211) for testnet and previewnet,
  /// and TLS (port 50212) for mainnet to ensure production security.
  ClientChannel get channel {
    _channel ??= ClientChannel(
      _nodeEndpoint,
      port: network == HederaNetwork.mainnet
          ? HederaConstants.grpcTlsPort
          : HederaConstants.grpcPort,
      options: ChannelOptions(
        credentials: network == HederaNetwork.mainnet
            ? const ChannelCredentials.secure()
            : const ChannelCredentials.insecure(),
      ),
    );
    return _channel!;
  }

  /// Returns a [CryptoServiceClient] for account and transfer operations.
  ///
  /// Example:
  /// ```dart
  /// final response = await client.cryptoClient.createAccount(tx);
  /// ```
  CryptoServiceClient get cryptoClient => CryptoServiceClient(channel);

  /// The hostname for the active network node.
  String get _nodeEndpoint {
    switch (network) {
      case HederaNetwork.mainnet:
        return HederaConstants.mainnetNodeEndpoint;
      case HederaNetwork.testnet:
        return HederaConstants.testnetNodeEndpoint;
      case HederaNetwork.previewnet:
        return HederaConstants.previewnetNodeEndpoint;
    }
  }

  /// Closes the gRPC channel and releases resources.
  ///
  /// Call this when the client is no longer needed.
  ///
  /// Example:
  /// ```dart
  /// await client.close();
  /// ```
  Future<void> close() async {
    await _channel?.shutdown();
    _channel = null;
  }

  // ---- Dynamic node list (Mirror Node) ----

  List<HederaNode>? _nodeList;
  DateTime? _nodeListFetchedAt;
  int _nodeIndex = 0;

  /// How long a fetched node list is cached before being refreshed.
  static const nodeListCacheDuration = Duration(hours: 24);

  /// The Mirror Node REST API base URL for the active network.
  String get _mirrorNodeBaseUrl {
    switch (network) {
      case HederaNetwork.mainnet:
        return 'https://mainnet-public.mirrornode.hedera.com';
      case HederaNetwork.testnet:
        return 'https://testnet.mirrornode.hedera.com';
      case HederaNetwork.previewnet:
        return 'https://previewnet.mirrornode.hedera.com';
    }
  }

  /// Fetches the current list of consensus nodes from the Mirror Node
  /// REST API (`/api/v1/network/nodes`), caching the result for
  /// [nodeListCacheDuration] to avoid refetching on every call.
  ///
  /// Each node exposes multiple `service_endpoints` (insecure port
  /// 50211 and TLS port 50212); this selects the endpoint matching
  /// the port used by this network (TLS for mainnet, insecure
  /// otherwise), consistent with [channel].
  ///
  /// Falls back to a single static node (`0.0.3` at [networkEndpoint])
  /// if the fetch fails, so existing behavior is preserved when the
  /// Mirror Node is unreachable.
  Future<List<HederaNode>> _getNodeList() async {
    final cached = _nodeList;
    final fetchedAt = _nodeListFetchedAt;
    if (cached != null &&
        fetchedAt != null &&
        DateTime.now().difference(fetchedAt) < nodeListCacheDuration) {
      return cached;
    }

    try {
      final uri = Uri.parse(
        '$_mirrorNodeBaseUrl/api/v1/network/nodes?limit=100',
      );
      final response = await http.get(uri);
      if (response.statusCode != 200) {
        throw StateError('Mirror Node returned ${response.statusCode}');
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final nodesJson = json['nodes'] as List<dynamic>;

      final targetPort = network == HederaNetwork.mainnet
          ? HederaConstants.grpcTlsPort
          : HederaConstants.grpcPort;

      final parsed = <HederaNode>[];
      for (final entry in nodesJson) {
        final node = entry as Map<String, dynamic>;
        final accountIdStr = node['node_account_id'] as String?;
        final endpoints = node['service_endpoints'] as List<dynamic>?;
        if (accountIdStr == null || endpoints == null || endpoints.isEmpty) {
          continue;
        }

        Map<String, dynamic>? matched;
        for (final e in endpoints) {
          final endpoint = e as Map<String, dynamic>;
          if (endpoint['port'] == targetPort) {
            matched = endpoint;
            break;
          }
        }
        if (matched == null) continue;

        final ip = matched['ip_address_v4'] as String?;
        final port = matched['port'] as int?;
        if (ip == null || port == null || ip.isEmpty) continue;

        parsed.add(
          HederaNode(
            accountId: AccountId.fromString(accountIdStr),
            endpoint: '$ip:$port',
          ),
        );
      }

      if (parsed.isEmpty) {
        throw StateError('No usable nodes found for this network');
      }

      _nodeList = parsed;
      _nodeListFetchedAt = DateTime.now();
      return parsed;
    } on Object catch (_) {
      return [
        HederaNode(
          accountId: AccountId.fromString('0.0.3'),
          endpoint: networkEndpoint,
        ),
      ];
    }
  }

  /// Selects the next node using round-robin rotation over the
  /// dynamically fetched (and cached) node list.
  ///
  /// Example:
  /// ```dart
  /// final node = await client.selectNode();
  /// print(node.accountId); // e.g. 0.0.5
  /// ```
  Future<HederaNode> selectNode() async {
    final nodes = await _getNodeList();
    final node = nodes[_nodeIndex % nodes.length];
    _nodeIndex++;
    return node;
  }
}
