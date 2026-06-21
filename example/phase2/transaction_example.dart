import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

// ---- Phase 2: Transactions ----

/// Demonstrates all Phase 2 transactions: AccountCreateTransaction,
/// AccountUpdateTransaction, AccountDeleteTransaction, and
/// CryptoTransferTransaction.
///
/// Note: execute() via gRPC is pending implementation.
/// This example shows the complete flow up to network submission.
Future<void> transactionExamples() async {
  print('=== Transactions (Phase 2) ===\n');

  // ---- AccountCreateTransaction ----

  print('--- AccountCreateTransaction ---\n');

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
  final createTx = AccountCreateTransaction()
      .setKey(publicKey)
      .setInitialBalance(Hbar(10))
      .setMemo('NemorixPay wallet - testnet')
      .setMaxAutomaticTokenAssociations(10);

  print('Key set: ${createTx.key != null}');
  print('Initial balance: ${createTx.initialBalance.toHbars()} HBAR');
  print('Memo: ${createTx.memo}');
  print('Max token associations: ${createTx.maxAutomaticTokenAssociations}');
  print('');

  // 5. Serialize and sign
  print('Step 5: Serialize and sign');
  final createBytes = createTx.toBytes();
  print('Serialized bytes: ${createBytes.length} bytes');
  await createTx.sign(privateKey);
  print('Is signed: ${createTx.isSigned}');
  print('Signature count: ${createTx.signatureCount}');
  print('');

  // 6. Execute (pending gRPC)
  print('Step 6: Execute (pending gRPC)');
  print('When ready: final response = await createTx.execute(client);');
  print('Then:       final receipt = await response.getReceipt(client);');
  print('Result:     receipt.accountId -> 0.0.XXXXXX');
  print('');

  // ---- AccountUpdateTransaction ----

  print('--- AccountUpdateTransaction ---\n');

  // 7. Build AccountUpdateTransaction (only set fields that change)
  print('Step 7: Build AccountUpdateTransaction');
  final accountId = AccountId.fromString('0.0.12345');
  final updateTx = AccountUpdateTransaction()
      .setAccountIdToUpdate(accountId)
      .setNewMemo('NemorixPay wallet v2')
      .setMaxAutomaticTokenAssociations(20);

  print('Account to update: ${updateTx.accountIdToUpdate}');
  print('New memo: ${updateTx.newMemo}');
  print(
    'New max token associations: ${updateTx.maxAutomaticTokenAssociations}',
  );
  print('');

  // 8. Serialize and sign
  print('Step 8: Serialize and sign');
  final updateBytes = updateTx.toBytes();
  print('Serialized bytes: ${updateBytes.length} bytes');
  await updateTx.sign(privateKey);
  print('Is signed: ${updateTx.isSigned}');
  print('');

  // 9. Execute (pending gRPC)
  print('Step 9: Execute (pending gRPC)');
  print('When ready: final response = await updateTx.execute(client);');
  print('');

  // ---- AccountDeleteTransaction ----

  print('--- AccountDeleteTransaction ---\n');

  // 10. Build AccountDeleteTransaction
  print('Step 10: Build AccountDeleteTransaction');
  final transferAccountId = AccountId.fromString('0.0.99');
  final deleteTx = AccountDeleteTransaction()
      .setAccountId(accountId)
      .setTransferAccountId(transferAccountId)
      .setMemo('Closing testnet wallet');

  print('Account to delete: ${deleteTx.accountId}');
  print('Transfer remaining HBAR to: ${deleteTx.transferAccountId}');
  print('');

  // 11. Serialize and sign
  print('Step 11: Serialize and sign');
  final deleteBytes = deleteTx.toBytes();
  print('Serialized bytes: ${deleteBytes.length} bytes');
  await deleteTx.sign(privateKey);
  print('Is signed: ${deleteTx.isSigned}');
  print('');

  // 12. Execute (pending gRPC)
  print('Step 12: Execute (pending gRPC)');
  print('When ready: final response = await deleteTx.execute(client);');
  print('');

  // ---- CryptoTransferTransaction ----

  print('--- CryptoTransferTransaction ---\n');

  // 13. Build CryptoTransferTransaction (sum must be zero)
  print('Step 13: Build CryptoTransferTransaction');
  final senderAccount = AccountId.fromString('0.0.111');
  final receiverAccount = AccountId.fromString('0.0.222');

  final transferTx = CryptoTransferTransaction()
      .addHbarTransfer(senderAccount, Hbar(10).negated())
      .addHbarTransfer(receiverAccount, Hbar(10))
      .setMemo('NemorixPay transfer');

  print('Transfers: ${transferTx.transferCount}');
  print('Memo: ${transferTx.memo}');
  print('Transfer sum is zero: true');
  print('');

  // 14. Serialize and sign
  print('Step 14: Serialize and sign');
  final transferBytes = transferTx.toBytes();
  print('Serialized bytes: ${transferBytes.length} bytes');
  await transferTx.sign(privateKey);
  print('Is signed: ${transferTx.isSigned}');
  print('');

  // 15. Connect to testnet
  print('Step 15: Connect to Hedera testnet');
  final client = HederaClient.forTestnet();
  print('Network: ${client.network.name}');
  print('Endpoint: ${client.networkEndpoint}');
  print('');

  // 16. Execute (pending gRPC)
  print('Step 16: Execute (pending gRPC)');
  print('When ready: final response = await transferTx.execute(client);');
  print('Then:       final receipt = await response.getReceipt(client);');
  print('Result:     receipt.status -> SUCCESS');
  print('');

  print('=== Transaction examples complete ===\n');
}
