import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

// ---- Phase 2: Queries ----

/// Demonstrates all Phase 2 queries: AccountBalanceQuery and
/// AccountInfoQuery.
///
/// Note: execute() via gRPC is pending implementation.
/// This example shows the complete flow up to network submission.
Future<void> queryExamples() async {
  print('=== Queries (Phase 2) ===\n');

  // ---- AccountBalanceQuery ----

  print('--- AccountBalanceQuery ---\n');

  // 1. Build AccountBalanceQuery
  print('Step 1: Build AccountBalanceQuery');
  final balanceQuery =
      AccountBalanceQuery().setAccountId(AccountId.fromString('0.0.2'));

  print('Account ID: ${balanceQuery.accountId}');
  print('');

  // 2. Serialize to Protobuf bytes
  print('Step 2: Serialize to Protobuf bytes');
  final balanceBytes = balanceQuery.toBytes();
  print('Serialized bytes: ${balanceBytes.length} bytes');
  print('Ready for network submission: true');
  print('');

  // 3. Execute (pending gRPC)
  print('Step 3: Execute (pending gRPC)');
  print('When ready: final balance = await balanceQuery.execute(client);');
  print('Result:     balance.toHbars() -> 10.0');
  print('');

  // ---- AccountInfoQuery ----

  print('--- AccountInfoQuery ---\n');

  // 4. Build AccountInfoQuery
  print('Step 4: Build AccountInfoQuery');
  final infoQuery =
      AccountInfoQuery().setAccountId(AccountId.fromString('0.0.12345'));

  print('Account ID: ${infoQuery.accountId}');
  print('');

  // 5. Serialize to Protobuf bytes
  print('Step 5: Serialize to Protobuf bytes');
  final infoBytes = infoQuery.toBytes();
  print('Serialized bytes: ${infoBytes.length} bytes');
  print('Ready for network submission: true');
  print('');

  // 6. Connect to testnet
  print('Step 6: Connect to Hedera testnet');
  final client = HederaClient.forTestnet();
  print('Network: ${client.network.name}');
  print('Endpoint: ${client.networkEndpoint}');
  print('');

  // 7. Execute (pending gRPC)
  print('Step 7: Execute (pending gRPC)');
  print('When ready: final info = await infoQuery.execute(client);');
  print('Result:     info.balance.toHbars() -> 10.0');
  print('            info.memo -> NemorixPay wallet');
  print('            info.deleted -> false');
  print('');

  // 8. Show full intended workflow
  print('Step 8: Full workflow (once gRPC is implemented)');
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
  print('  print(balance.toHbars()); // 10.0');
  print('');
  print('  // Query full account info');
  print('  final info = await AccountInfoQuery()');
  print('      .setAccountId(AccountId.fromString(accountId!))');
  print('      .execute(client);');
  print('  print(info.memo);    // NemorixPay wallet');
  print('  print(info.deleted); // false');
  print('');
  print('  // Transfer HBAR');
  print('  await CryptoTransferTransaction()');
  print('      .addHbarTransfer(');
  print('        AccountId.fromString(accountId!),');
  print('        Hbar(5).negated(),');
  print('      )');
  print('      .addHbarTransfer(');
  print('        AccountId.fromString("0.0.222"),');
  print('        Hbar(5),');
  print('      )');
  print('      .execute(client);');
  print('');

  print('=== Query examples complete ===\n');
}
