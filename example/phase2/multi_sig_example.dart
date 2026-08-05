import 'dart:io';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// Demonstrates a 2-of-3 multi-signature account (v0.1.4-dev).
///
/// Creates a Hedera account controlled by a HederaThresholdKey
/// requiring 2 of 3 possible signers, then transfers HBAR out of
/// that account using signatures from exactly 2 of the 3 keys.
///
/// Requires a funded testnet operator account (used to pay fees and
/// fund the multi-sig account). Set credentials as environment
/// variables before running:
///
/// Windows (PowerShell):
/// ```powershell
/// $env:HEDERA_OPERATOR_ID = "0.0.XXXXX"
/// $env:HEDERA_OPERATOR_KEY = "302e..."
/// dart run example/phase2/multi_sig_example.dart
/// ```
///
/// macOS / Linux:
/// ```sh
/// export HEDERA_OPERATOR_ID="0.0.XXXXX"
/// export HEDERA_OPERATOR_KEY="302e..."
/// dart run example/phase2/multi_sig_example.dart
/// ```
Future<void> multiSigExample() async {
  final operatorId = Platform.environment['HEDERA_OPERATOR_ID'];
  final operatorKeyStr = Platform.environment['HEDERA_OPERATOR_KEY'];

  if (operatorId == null || operatorKeyStr == null) {
    print('=== Multi-Signature Account (v0.1.4-dev) ===\n');
    print('Skipped: set HEDERA_OPERATOR_ID and HEDERA_OPERATOR_KEY '
        'environment variables to run this example.');
    print('');
    return;
  }

  print('=== Multi-Signature Account (v0.1.4-dev) ===\n');

  final client = HederaClient.forTestnet().setOperator(
    AccountId.fromString(operatorId),
    PrivateKey.fromString(operatorKeyStr),
  );

  // Step 1: Generate 3 signers for a 2-of-3 threshold account.
  print('Step 1: Generate 3 signers (Alice, Bob, Carol)');
  final aliceKey = await PrivateKey.generateED25519();
  final bobKey = await PrivateKey.generateED25519();
  final carolKey = await PrivateKey.generateED25519();

  final alicePub = await aliceKey.derivePublicKey();
  final bobPub = await bobKey.derivePublicKey();
  final carolPub = await carolKey.derivePublicKey();
  print('Alice, Bob, and Carol public keys derived');
  print('');

  // Step 2: Build a 2-of-3 threshold key.
  // Any 2 of the 3 signatures below are sufficient to authorize a
  // transaction from the resulting account.
  print('Step 2: Build a 2-of-3 HederaThresholdKey');
  final multiSigKey = HederaThresholdKey(
    threshold: 2,
    keys: [alicePub, bobPub, carolPub],
  );
  print('Threshold: 2 of 3');
  print('');

  // Step 3: Create the multi-sig account.
  // The operator pays the creation fee and funds the initial balance;
  // it does not become a signer on the new account.
  print('Step 3: Create the multi-sig account (funded with 5 HBAR)');
  final createResponse = await AccountCreateTransaction()
      .setKey(multiSigKey)
      .setInitialBalance(Hbar(5))
      .setMemo('2-of-3 multi-sig demo account')
      .execute(client);

  final createReceipt = await createResponse.getReceipt(client);
  final multiSigAccountId = AccountId.fromString(createReceipt.accountId!);
  print('Multi-sig account created: $multiSigAccountId');
  print('');

  // Step 4: Build a transfer sending HBAR out of the multi-sig account.
  // The receiver here is the operator account, for simplicity.
  print('Step 4: Build a transfer from the multi-sig account');
  final transferTx = CryptoTransferTransaction()
      .addHbarTransfer(multiSigAccountId, Hbar(1).negated())
      .addHbarTransfer(
        AccountId.fromString(operatorId),
        Hbar(1),
      )
      .setMemo('2-of-3 multi-sig transfer');
  print('Transfer built: 1 HBAR from $multiSigAccountId '
      'to $operatorId');
  print('');

  // Step 5: Sign with exactly 2 of the 3 keys (Alice and Bob).
  // Each signature is collected individually; the network checks
  // them against the account's threshold key structure, not against
  // the HederaThresholdKey object itself.
  //
  // The operator is the fee payer here, so it must also sign,
  // in addition to the 2 multi-sig account signatures.
  print('Step 5: Sign with Alice, Bob, and the operator (fee payer)');
  await transferTx.signWith(aliceKey, client);
  await transferTx.signWith(bobKey, client);
  await transferTx.signWith(
    PrivateKey.fromString(operatorKeyStr),
    client,
  );
  print('Signature count: ${transferTx.signatureCount}');
  print('(Carol did NOT sign; 2 of 3 is sufficient)');
  print('');

  // Step 6: Execute. The network validates that at least 2 of the
  // 3 threshold key signatures are present before applying the
  // transfer.
  print('Step 6: Execute the transfer');
  final transferResponse = await transferTx.execute(client);
  final transferReceipt = await transferResponse.getReceipt(client);
  print('Transfer status: ${transferReceipt.status}');
  print('');

  print('=== Multi-Signature Account example complete ===\n');
}

/// Allows running this file standalone:
/// ```sh
/// dart run example/phase2/multi_sig_example.dart
/// ```
Future<void> main() async => multiSigExample();
