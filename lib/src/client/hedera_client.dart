import 'package:hedera_flutter_sdk/src/client/hedera_network.dart';
import 'package:hedera_flutter_sdk/src/crypto/private_key.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';

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
  Hbar _maxTransactionFee = Hbar(2);

  /// Maximum payment for a single query.
  /// Defaults to 1 HBAR.
  Hbar _maxQueryPayment = Hbar(1);

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
        return '0.mainnet.hedera.com:50211';
      case HederaNetwork.testnet:
        return '0.testnet.hedera.com:50211';
      case HederaNetwork.previewnet:
        return '0.previewnet.hedera.com:50211';
    }
  }
}
