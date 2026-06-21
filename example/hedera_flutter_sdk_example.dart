import 'phase2/private_key_example.dart';
import 'phase2/public_key_example.dart';
import 'phase2/query_example.dart';
import 'phase2/transaction_example.dart';
import 'phase2/wallet_example.dart';

/// hedera_flutter_sdk - Quick Start Examples
///
/// This file is the entry point for all SDK examples.
/// Each section corresponds to a phase of development.
///
/// Implementation details can be found in:
/// https://github.com/nemorixgroup/hedera-flutter-sdk/tree/main/example/
///
/// Running this example:
/// ```sh
/// dart run example/hedera_flutter_sdk_example.dart
/// ```
Future<void> main() async {
  // -- Phase 2: Cryptography and Account Management --
  // See: example/phase2/

  // Mnemonic generation/recovery, HD key derivation, EVM address alias
  await walletExamples();

  // PrivateKey generation, import, and signing (ED25519/ECDSA)
  await privateKeyExamples();

  // PublicKey derivation, import, and signature verification
  await publicKeyExamples();

  // AccountCreateTransaction, AccountUpdateTransaction,
  // AccountDeleteTransaction, CryptoTransferTransaction
  await transactionExamples();

  // AccountBalanceQuery, AccountInfoQuery
  await queryExamples();
}
