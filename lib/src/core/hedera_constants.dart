/// Core constants for the Hedera Flutter SDK.
///
/// Contains protocol-level constants used across multiple
/// SDK components including network configuration, transaction
/// limits, and unit conversions.
///
/// Source: Hedera API documentation and HAPI Protobuf definitions.
class HederaConstants {
  HederaConstants._();

  // - Network ports ------------------------------------

  /// The gRPC port used by all Hedera consensus nodes.
  static const int grpcPort = 50211;

  /// The TLS gRPC port used by all Hedera consensus nodes.
  static const int grpcTlsPort = 50212;

  // - HBAR units ------------------------------------

  /// The number of tinybars in one HBAR.
  /// 1 HBAR = 100,000,000 tinybars.
  static const int tinybarsPerHbar = 100000000;

  /// The number of tinybars in one microbar (1/1,000,000 HBAR).
  static const int tinybarsPerMicrobar = 100;

  /// The number of tinybars in one millibar (1/1,000 HBAR).
  static const int tinybarsPerMillibar = 100000;

  // - Transaction limits ------------------------------------

  /// Maximum number of characters allowed in a transaction memo.
  static const int maxMemoLength = 100;

  /// Maximum valid duration for a transaction in seconds.
  /// Transactions older than this are rejected by the network.
  static const int maxTransactionValidDurationSeconds = 180;

  /// Default valid duration for a transaction in seconds.
  static const int defaultTransactionValidDurationSeconds = 120;

  /// Maximum number of automatic token associations per account.
  static const int maxAutomaticTokenAssociations = 5000;

  // - Query limits ------------------------------------

  /// Maximum number of results per Mirror Node REST query.
  static const int mirrorNodeMaxPageSize = 100;

  /// Default number of results per Mirror Node REST query.
  static const int mirrorNodeDefaultPageSize = 25;

  // - Default fees ------------------------------------

  /// Default maximum transaction fee in tinybars (2 HBAR).
  static const int defaultMaxTransactionFeeTinybars = 2 * tinybarsPerHbar;

  /// Default maximum query payment in tinybars (1 HBAR).
  static const int defaultMaxQueryPaymentTinybars = 1 * tinybarsPerHbar;

  // - Mirror Node endpoints ------------------------------------

  /// Mirror Node REST API base URL for mainnet.
  static const String mainnetMirrorNodeUrl =
      'https://mainnet-public.mirrornode.hedera.com';

  /// Mirror Node REST API base URL for testnet.
  static const String testnetMirrorNodeUrl =
      'https://testnet.mirrornode.hedera.com';

  /// Mirror Node REST API base URL for previewnet.
  static const String previewnetMirrorNodeUrl =
      'https://previewnet.mirrornode.hedera.com';

  // - Consensus node endpoints ------------------------------------

  /// gRPC endpoint for Hedera mainnet node 0.
  static const String mainnetNodeEndpoint = '0.mainnet.hedera.com';

  /// gRPC endpoint for Hedera testnet node 0.
  static const String testnetNodeEndpoint = '0.testnet.hedera.com';

  /// gRPC endpoint for Hedera previewnet node 0.
  static const String previewnetNodeEndpoint = '0.previewnet.hedera.com';

  /// DER prefix for ED25519 private keys (ASN.1 encoding).
  /// OID 1.3.101.112 - RFC 8410
  static const String ed25519PrivateKeyPrefix =
      '302e020100300506032b657004220420';

  /// DER prefix for ECDSA secp256k1 private keys (ASN.1 encoding).
  /// OID 1.3.132.0.10
  static const String ecdsaPrivateKeyPrefix =
      '3030020100300706052b8104000a042204';

  /// DER prefix for ED25519 public keys (ASN.1 encoding).
  /// OID 1.3.101.112 - RFC 8410
  static const String ed25519PublicKeyPrefix = '302a300506032b6570032100';
}
