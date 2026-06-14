import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

// ---- Phase 2: Queries ----

/// Demonstrates AccountBalanceQuery construction and serialization.
///
/// Note: execute() via gRPC is pending implementation.
/// This example shows the complete flow up to network submission.
Future<void> queryExamples() async {
  print('=== Queries (Phase 2) ===\n');

  // 1. Build AccountBalanceQuery
  print('Step 1: Build AccountBalanceQuery');
  final query =
      AccountBalanceQuery().setAccountId(AccountId.fromString('0.0.2'));

  print('Account ID: ${query.accountId}');
  print('');

  // 2. Serialize to Protobuf bytes
  print('Step 2: Serialize to Protobuf bytes');
  final queryBytes = query.toBytes();
  print('Serialized bytes: ${queryBytes.length} bytes');
  print('Ready for network submission: true');
  print('');

  // 3. Connect to testnet
  print('Step 3: Connect to Hedera testnet');
  final client = HederaClient.forTestnet();
  print('Network: ${client.network.name}');
  print('Endpoint: ${client.networkEndpoint}');
  print('');

  // 4. Execute (pending gRPC implementation)
  print('Step 4: Execute query (pending gRPC)');
  print('execute() via gRPC: coming in next release');
  print('When ready: final balance = await query.execute(client);');
  print('Result:     balance.toHbars() -> 10.0');
  print('');

  // 5. Show the full intended workflow
  print('Step 5: Full workflow (once gRPC is implemented)');
  print('');
  print('  // Create wallet');
  print('  final mnemonic = await Mnemonic.generate24(');
  print('    language: MnemonicLanguage.spanish,');
  print('  );');
  print('  final privateKey = await mnemonic.toPrivateKey();');
  print('  final publicKey = await privateKey.derivePublicKey();');
  print('');
  print('  // Create account on testnet');
  print('  final response = await AccountCreateTransaction()');
  print('      .setKey(publicKey)');
  print('      .setInitialBalance(Hbar(10))');
  print('      .execute(client);');
  print('');
  print('  final receipt = await response.getReceipt(client);');
  print('  final accountId = receipt.accountId; // 0.0.XXXXXX');
  print('');
  print('  // Query the balance');
  print('  final balance = await AccountBalanceQuery()');
  print('      .setAccountId(AccountId.fromString(accountId!))');
  print('      .execute(client);');
  print('');
  print('  print(balance.toHbars()); // 10.0');
  print('');

  print('=== Query examples complete ===\n');
}
