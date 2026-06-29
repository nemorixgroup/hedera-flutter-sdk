import 'phase2/private_key_example.dart';
import 'phase2/public_key_example.dart';
import 'phase2/query_example.dart';
import 'phase2/transaction_example.dart';
import 'phase2/wallet_example.dart';

/// hedera_flutter_sdk - Examples Entry Point
///
/// This file is the main entry point for all SDK examples.
/// Each section corresponds to a phase of SDK development.
///
/// Implementation details can be found in:
/// https://github.com/nemorixgroup/hedera-flutter-sdk/tree/main/example/
///
/// Running this example:
/// ```sh
/// dart run example/hedera_flutter_sdk_example.dart
/// ```
/// ---------------------------------------------------------------------------
/// GETTING STARTED
/// ---------------------------------------------------------------------------
///
/// Before running any example, you need a Hedera testnet account.
/// Get one for free at: https://portal.hedera.com
///
/// Set your operator credentials as environment variables:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// ```
///
/// ---------------------------------------------------------------------------
/// QUICK START (recommended for new developers)
/// ---------------------------------------------------------------------------
///
/// If you are new to hedera_flutter_sdk, start with these two examples
/// before running the full suite below:
///
/// 1. Quick Start - The simplest possible flow (create account, get receipt):
///    ```sh
///    dart run example/phase2/quick_start_example.dart
///    ```
///
/// 2. Account Lifecycle - Complete flow (create Alice, create Bob,
///    Alice transfers HBAR to Bob using her own key and paying her own fees):
///    ```sh
///    dart run example/phase2/account_lifecycle_example.dart
///    ```
///
/// ---------------------------------------------------------------------------
/// FULL EXAMPLE SUITE
/// ---------------------------------------------------------------------------
///
/// Run all examples in sequence:
/// ```sh
/// dart run example/hedera_flutter_sdk_example.dart
/// ```
///
/// Implementation details and source code:
/// https://github.com/nemorixgroup/hedera-flutter-sdk/tree/main/example/
///
/// ---------------------------------------------------------------------------
/// PHASE OVERVIEW
/// ---------------------------------------------------------------------------
///
/// Phase 1 (v0.0.x): Core infrastructure
///   - Protobuf generation, gRPC setup, project scaffolding
///
/// Phase 2 (v0.1.x): Cryptography, accounts, and HBAR transfers
///   - ED25519/ECDSA key generation and signing
///   - BIP-39 mnemonics and HD key derivation
///   - AccountCreateTransaction, AccountUpdateTransaction,
///     AccountDeleteTransaction, CryptoTransferTransaction
///   - getReceipt() with consensus polling
///   - signWith() for non-operator signing
///   - setPayerAccountId() for custom fee payers
///   - AccountBalanceQuery, AccountInfoQuery
///
/// Phase 3 (planned): Hedera Token Service (HTS)
///   - TokenCreateTransaction, TokenMintTransaction
///   - TokenAssociateTransaction, TokenTransferTransaction
///
/// Phase 4 (planned): Hedera Consensus Service (HCS)
///   - TopicCreateTransaction, TopicSubmitMessageTransaction
///   - TopicMessageQuery (mirror node)
Future<void> main() async {
  // ---- Phase 2: Cryptography and Account Management ----
  // See: example/phase2/

  // Mnemonic generation/recovery, HD key derivation, EVM address alias.
  await walletExamples();

  // PrivateKey generation, import, and signing (ED25519/ECDSA).
  await privateKeyExamples();

  // PublicKey derivation, import, and signature verification.
  await publicKeyExamples();

  // AccountCreateTransaction, AccountUpdateTransaction,
  // AccountDeleteTransaction, CryptoTransferTransaction.
  // Includes getReceipt(), signWith(), and setPayerAccountId().
  await transactionExamples();

  // AccountBalanceQuery, AccountInfoQuery.
  await queryExamples();

  // NOTE: quick_start_example.dart and account_lifecycle_example.dart
  // require HEDERA_OPERATOR_ID and HEDERA_OPERATOR_KEY env vars.
  // Run them separately:
  //   dart run example/phase2/quick_start_example.dart
  //   dart run example/phase2/account_lifecycle_example.dart
  //
  // Windows (PowerShell):
  //   $env:HEDERA_OPERATOR_ID = "0.0.XXXXX"
  //   $env:HEDERA_OPERATOR_KEY = "302e..."
  //   dart run example/phase2/account_lifecycle_example.dart
  //
  // macOS / Linux:
  //   export HEDERA_OPERATOR_ID="0.0.XXXXX"
  //   export HEDERA_OPERATOR_KEY="302e..."
  //   dart run example/phase2/account_lifecycle_example.dart
}
