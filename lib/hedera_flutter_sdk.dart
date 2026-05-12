/// The first native Flutter/Dart SDK for the Hedera network.
///
/// Provides account management, HBAR transfers, Hedera Token
/// Service (HTS), Hedera Consensus Service (HCS), Mirror Node
/// REST client, and real-time WebSocket subscriptions.
///
/// Pure Dart; no platform channels required.
///
/// Example:
/// ```dart
/// final client = HederaClient.forTestnet()
///     .setOperator(
///       AccountId.fromString('0.0.12345'),
///       PrivateKey.fromString('your-private-key'),
///     );
/// ```
library hedera_flutter_sdk;

// Client
export 'src/client/hedera_client.dart';
export 'src/client/hedera_network.dart';

// Crypto
export 'src/crypto/mnemonic.dart';
export 'src/crypto/private_key.dart';
export 'src/crypto/public_key.dart';

// Models
export 'src/models/account_id.dart';
export 'src/models/hbar.dart';
export 'src/models/token_id.dart';
export 'src/models/transaction_id.dart';
