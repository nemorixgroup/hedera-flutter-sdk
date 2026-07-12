import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

// ---- Phase 2: Transactions ----

/// Demonstrates all Phase 2 transactions: AccountCreateTransaction,
/// AccountUpdateTransaction, AccountDeleteTransaction,
/// CryptoTransferTransaction, and TransactionGetReceiptQuery.
///
/// Note: Steps that require a funded testnet account (execute via gRPC)
/// are shown as code previews. Run account_lifecycle_example.dart for
/// a fully executable end-to-end example.
Future<void> transactionExamples() async {
  print('=== Transactions (Phase 2) ===\n');

  // ---- AccountCreateTransaction ----

  print('--- AccountCreateTransaction ---\n');

  // Step 1: Generate wallet from Spanish mnemonic (LATAM use case)
  print('Step 1: Generate wallet from Spanish mnemonic');
  final mnemonic = await Mnemonic.generate24(
    language: MnemonicLanguage.spanish,
  );
  print('Mnemonic (Spanish): ${mnemonic.phrase}');
  print('Valid: ${mnemonic.validate()}');
  print('');

  // Step 2: Derive private key from mnemonic
  print('Step 2: Derive private key from mnemonic');
  final privateKey = await mnemonic.toPrivateKey();
  print('Private key type: ${privateKey.type.name}');
  print('Private key (safe): $privateKey');
  print('');

  // Step 3: Derive public key from private key
  print('Step 3: Derive public key');
  final publicKey = await privateKey.derivePublicKey();
  print('Public key (DER): ${publicKey.toDerString()}');
  print('Public key bytes: ${publicKey.bytes.length} bytes');
  print('');

  // Step 4: Build AccountCreateTransaction
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

  // Step 5: Serialize and sign
  print('Step 5: Serialize and sign');
  final createBytes = createTx.toBytes();
  print('Serialized bytes: ${createBytes.length} bytes');
  await createTx.sign(privateKey);
  print('Is signed: ${createTx.isSigned}');
  print('Signature count: ${createTx.signatureCount}');
  print('');

  // Step 6: Execute via gRPC (requires funded testnet operator)
  print('Step 6: Execute via gRPC');
  print('  final client = HederaClient.forTestnet()');
  print('      .setOperator(operatorId, operatorKey);');
  print('  final response = await createTx.execute(client);');
  print('  final receipt = await response.getReceipt(client);');
  print('  print(receipt.accountId); // 0.0.XXXXXX');
  print('  See: example/phase2/account_lifecycle_example.dart');
  print('');

  // ---- AccountUpdateTransaction ----

  print('--- AccountUpdateTransaction ---\n');

  // Step 7: Build AccountUpdateTransaction (only set fields that change)
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

  // Step 8: Serialize and sign
  print('Step 8: Serialize and sign');
  final updateBytes = updateTx.toBytes();
  print('Serialized bytes: ${updateBytes.length} bytes');
  await updateTx.sign(privateKey);
  print('Is signed: ${updateTx.isSigned}');
  print('');

  // Step 9: Execute via gRPC (requires funded testnet operator)
  print('Step 9: Execute via gRPC');
  print('  final response = await updateTx.execute(client);');
  print('  final receipt = await response.getReceipt(client);');
  print('  print(receipt.status); // SUCCESS');
  print('');

  // ---- AccountDeleteTransaction ----

  print('--- AccountDeleteTransaction ---\n');

  // Step 10: Build AccountDeleteTransaction
  print('Step 10: Build AccountDeleteTransaction');
  final transferAccountId = AccountId.fromString('0.0.99');
  final deleteTx = AccountDeleteTransaction()
      .setAccountId(accountId)
      .setTransferAccountId(transferAccountId)
      .setMemo('Closing testnet wallet');

  print('Account to delete: ${deleteTx.accountId}');
  print('Transfer remaining HBAR to: ${deleteTx.transferAccountId}');
  print('');

  // Step 11: Serialize and sign
  print('Step 11: Serialize and sign');
  final deleteBytes = deleteTx.toBytes();
  print('Serialized bytes: ${deleteBytes.length} bytes');
  await deleteTx.sign(privateKey);
  print('Is signed: ${deleteTx.isSigned}');
  print('');

  // Step 12: Execute via gRPC (requires funded testnet operator)
  print('Step 12: Execute via gRPC');
  print('  final response = await deleteTx.execute(client);');
  print('  final receipt = await response.getReceipt(client);');
  print('  print(receipt.status); // SUCCESS');
  print('');

  // ---- CryptoTransferTransaction ----

  print('--- CryptoTransferTransaction ---\n');

  // Step 13: Build CryptoTransferTransaction (sum must be zero)
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

  // Step 14: Serialize and sign
  print('Step 14: Serialize and sign');
  final transferBytes = transferTx.toBytes();
  print('Serialized bytes: ${transferBytes.length} bytes');
  await transferTx.sign(privateKey);
  print('Is signed: ${transferTx.isSigned}');
  print('');

  // Step 15: Connect to testnet
  print('Step 15: Connect to Hedera testnet');
  final client = HederaClient.forTestnet();
  print('Network: ${client.network.name}');
  print('Endpoint: ${client.networkEndpoint}');
  print('');

  // Step 16: Execute via gRPC (requires funded testnet operator)
  // Scenario 1: Operator is the sender (auto-signs with operator key)
  print('Step 16: Execute via gRPC - Scenario 1 (operator as sender)');
  print('  final response = await CryptoTransferTransaction()');
  print('      .addHbarTransfer(operatorId, Hbar(-1))');
  print('      .addHbarTransfer(receiverId, Hbar(1))');
  print('      .execute(client); // operator signs automatically');
  print('  final receipt = await response.getReceipt(client);');
  print('  print(receipt.status); // SUCCESS');
  print('');

  // Scenario 2: Non-operator sender (signs with own key, pays own fees)
  print('Step 17: Execute via gRPC - Scenario 2 (non-operator sender)');
  print('  final tx = await CryptoTransferTransaction()');
  print('      .addHbarTransfer(aliceId, Hbar(-1))');
  print('      .addHbarTransfer(bobId, Hbar(1))');
  print('      .setPayerAccountId(aliceId) // Alice pays fees');
  print('      .signWith(alicePrivateKey, client); // Alice signs');
  print('  final response = await tx.execute(client);');
  print('  final receipt = await response.getReceipt(client);');
  print('  print(receipt.status); // SUCCESS');
  print('  See: example/phase2/account_lifecycle_example.dart');
  print('');

  // ---- TransactionGetReceiptQuery ----

  print('--- TransactionGetReceiptQuery ---\n');

  // Step 18: Query receipt by transaction ID directly
  // Use this when you have a transactionId from an external source
  // (e.g. stored in a database or received from another service)
  // and want to poll for its status without calling execute() yourself.
  print('Step 18: Query receipt by transaction ID');
  final txId = TransactionId.fromString(
    '0.0.9186292@1782678851.459000000',
  );

  final receiptQuery = TransactionReceiptQuery().setTransactionId(txId);

  print('Transaction ID: ${receiptQuery.transactionId}');
  print('Query bytes: ${receiptQuery.toBytes().length} bytes');
  print('');

  // Step 19: Execute the receipt query
  // Polls every 2 seconds up to 30 seconds until SUCCESS or error.
  print('Step 19: Execute receipt query (requires testnet connection)');
  print('  final receipt = await TransactionGetReceiptQuery()');
  print('      .setTransactionId(response.transactionId)');
  print('      .execute(client);');
  print('  print(receipt.status);    // SUCCESS');
  print('  print(receipt.accountId); // 0.0.XXXXXX (if AccountCreateTx)');
  print('  print(receipt.tokenId);   // 0.0.XXXXXX (if TokenCreateTx)');
  print('');

  // Step 20: Difference between getReceipt() and TransactionGetReceiptQuery
  print('Step 20: getReceipt() vs TransactionGetReceiptQuery');
  print('  // Option A - via TransactionResponse (most common):');
  print('  final response = await tx.execute(client);');
  print('  final receipt = await response.getReceipt(client);');
  print('');
  print('  // Option B - via TransactionGetReceiptQuery (external TX):');
  print('  final receipt = await TransactionGetReceiptQuery()');
  print('      .setTransactionId(knownTxId)');
  print('      .execute(client);');
  print('');

  await client.close();

  print('=== Transaction examples complete ===\n');

  // ---- TransactionGetRecordQuery ----

  print('--- TransactionGetRecordQuery ---\n');

  // Step 21: Query record by transaction ID directly
  // A record contains more information than a receipt:
  // - exact fee charged in tinybars
  // - consensus timestamp in UTC
  // - full HBAR transfer list
  // - receipt status
  // Available for up to 180 seconds after consensus.
  print('Step 21: Build TransactionGetRecordQuery');
  final recordQuery = TransactionRecordQuery().setTransactionId(txId);

  print('Transaction ID: ${recordQuery.transactionId}');
  print('Query bytes: ${recordQuery.toBytes().length} bytes');
  print('');

  // Step 22: Execute the record query
  print('Step 22: Execute record query (requires testnet connection)');
  print('  final record = await TransactionGetRecordQuery()');
  print('      .setTransactionId(response.transactionId)');
  print('      .execute(client);');
  print('  print(record.status);             // SUCCESS');
  print('  print(record.transactionFee);     // fee in tinybars');
  print('  print(record.consensusTimestamp); // DateTime in UTC');
  print('  print(record.transfers);          // HBAR transfer list');
  print(
    '  print(record.accountId);    // 0.0.XXXXXX (if AccountCreateTx)',
  );
  print('');

  // Step 23: Difference between receipt and record
  print('Step 23: Receipt vs Record');
  print('  // Receipt - fast, available immediately after consensus:');
  print('  final receipt = await response.getReceipt(client);');
  print('  print(receipt.status);    // SUCCESS');
  print('  print(receipt.accountId); // 0.0.XXXXXX');
  print('');
  print('  // Record - more data, available up to 180s after consensus:');
  print('  final record = await response.getRecord(client);');
  print('  print(record.transactionFee);     // exact fee in tinybars');
  print('  print(record.consensusTimestamp); // exact consensus time');
  print('  print(record.transfers);          // full transfer list');
  print('');
}
