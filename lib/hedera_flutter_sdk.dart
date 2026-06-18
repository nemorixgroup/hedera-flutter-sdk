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
library;

// Client
export 'src/client/hedera_client.dart';
export 'src/client/hedera_network.dart';

// Core
export 'src/core/hedera_constants.dart';
export 'src/core/hedera_status_code.dart';
export 'src/core/hedera_status_exception.dart';

// Crypto
export 'src/crypto/mnemonic.dart';
export 'src/crypto/private_key.dart';
export 'src/crypto/public_key.dart';

// Models
export 'src/models/account_id.dart';
export 'src/models/hbar.dart';
export 'src/models/token_id.dart';
export 'src/models/transaction_id.dart';

// Queries
export 'src/queries/account_balance_query.dart';
export 'src/queries/account_info.dart';
export 'src/queries/account_info_query.dart';
export 'src/queries/query.dart';

// Transactions
export 'src/transactions/account_create_transaction.dart';
export 'src/transactions/account_update_transaction.dart';
export 'src/transactions/transaction.dart';
