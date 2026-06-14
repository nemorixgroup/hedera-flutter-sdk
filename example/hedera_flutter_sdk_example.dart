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
/// Running this example:
/// ```sh
/// dart run example/hedera_flutter_sdk_example.dart
/// ```
Future<void> main() async {
  // -- Phase 2: Cryptography and Account Management --
  await walletExamples();
  await privateKeyExamples();
  await publicKeyExamples();
  await transactionExamples();
  await queryExamples();
}
