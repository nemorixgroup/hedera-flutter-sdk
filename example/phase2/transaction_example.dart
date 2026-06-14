import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

// ---- Phase 2: Transactions ----

/// Demonstrates AccountCreateTransaction construction and signing.
///
/// Note: execute() via gRPC is pending implementation.
/// This example shows the complete flow up to network submission.
Future<void> transactionExamples() async {
  print('=== Transactions (Phase 2) ===\n');

  // 1. Generate wallet from Spanish mnemonic (LATAM use case)
  print('Step 1: Generate wallet from Spanish mnemonic');
  final mnemonic = await Mnemonic.generate24(
    language: MnemonicLanguage.spanish,
  );
  print('Mnemonic (Spanish): ${mnemonic.phrase}');
  print('Valid: ${mnemonic.validate()}');
  print('');

  // 2. Derive private key from mnemonic
  print('Step 2: Derive private key from mnemonic');
  final privateKey = await mnemonic.toPrivateKey();
  print('Private key type: ${privateKey.type.name}');
  print('Private key (safe): $privateKey');
  print('');

  // 3. Derive public key from private key
  print('Step 3: Derive public key');
  final publicKey = await privateKey.derivePublicKey();
  print('Public key (DER): ${publicKey.toDerString()}');
  print('Public key bytes: ${publicKey.bytes.length} bytes');
  print('');

  // 4. Build AccountCreateTransaction
  print('Step 4: Build AccountCreateTransaction');
  final tx = AccountCreateTransaction()
      .setKey(publicKey)
      .setInitialBalance(Hbar(10))
      .setMemo('NemorixPay wallet - testnet')
      .setMaxAutomaticTokenAssociations(10);

  print('Key set: ${tx.key != null}');
  print('Initial balance: ${tx.initialBalance.toHbars()} HBAR');
  print('Memo: ${tx.memo}');
  print('Max token associations: ${tx.maxAutomaticTokenAssociations}');
  print('');

  // 5. Serialize to Protobuf bytes
  print('Step 5: Serialize to Protobuf bytes');
  final txBytes = tx.toBytes();
  print('Serialized bytes: ${txBytes.length} bytes');
  print('Ready for network submission: true');
  print('');

  // 6. Sign the transaction
  print('Step 6: Sign the transaction');
  await tx.sign(privateKey);
  print('Is signed: ${tx.isSigned}');
  print('Signature count: ${tx.signatureCount}');
  print('');

  // 7. Connect to testnet (operator setup)
  print('Step 7: Connect to Hedera testnet');
  final client = HederaClient.forTestnet();
  print('Network: ${client.network.name}');
  print('Endpoint: ${client.networkEndpoint}');
  print('');

  // 8. Execute (pending gRPC implementation)
  print('Step 8: Execute transaction (pending gRPC)');
  print('execute() via gRPC: coming in next release');
  print('When ready: final response = await tx.execute(client);');
  print('Then:       final receipt = await response.getReceipt(client);');
  print('Result:     receipt.accountId -> 0.0.XXXXXX');
  print('');

  print('=== Transaction examples complete ===\n');
}
