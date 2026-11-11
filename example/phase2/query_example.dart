import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

// ---- Phase 2: Queries ----

/// Demonstrates the account queries.
///
/// - Balances: AccountBalanceQuery was removed from consensus nodes
///   (release v0.77), so the balance is read from the Mirror Node with
///   MirrorNodeAccountBalanceQuery. This part runs for real; it is
///   free and needs no operator account.
/// - AccountInfoQuery: built and serialized here. Executing it against
///   a consensus node is not implemented yet.
///
/// For token queries, see example/phase3/token_queries_example.dart.
Future<void> queryExamples() async {
  print('=== Queries (Phase 2) ===\n');

  final client = HederaClient.forTestnet();

  // ---- MirrorNodeAccountBalanceQuery ----

  print('--- MirrorNodeAccountBalanceQuery ---\n');

  // 1. Connect to testnet
  print('Step 1: Connect to Hedera testnet');
  print('Network:     ${client.network.name}');
  print('Mirror Node: ${client.mirrorNodeBaseUrl}');
  print('');

  // 2. Read the HBAR balance from the Mirror Node
  print('Step 2: Read the HBAR balance of account 0.0.2');
  try {
    final balance = await MirrorNodeAccountBalanceQuery()
        .setAccountId(AccountId.fromString('0.0.2'))
        .execute(client);
    print('Balance:     ${balance.hbars}');
    print('Timestamp:   ${balance.timestamp}');
  } on MirrorNodeException catch (e) {
    print('Mirror Node request failed: $e');
  } on HederaStatusException catch (e) {
    print('Mirror Node does not know the account: ${e.statusCode.name}');
  }
  print('');

  // ---- AccountInfoQuery ----

  print('--- AccountInfoQuery ---\n');

  // 3. Build AccountInfoQuery
  print('Step 3: Build AccountInfoQuery');
  final infoQuery =
      AccountInfoQuery().setAccountId(AccountId.fromString('0.0.12345'));

  print('Account ID: ${infoQuery.accountId}');
  print('');

  // 4. Serialize to Protobuf bytes
  print('Step 4: Serialize to Protobuf bytes');
  final infoBytes = infoQuery.toBytes();
  print('Serialized bytes: ${infoBytes.length} bytes');
  print('');

  // 5. Execute (pending)
  print('Step 5: Execute against a consensus node (pending)');
  print('Consensus-node query execution is not implemented yet.');
  print('');

  // 6. Show the full intended workflow
  print('Step 6: Typical workflow');
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
  print('  // Query the balance (Mirror Node can take a few seconds');
  print('  // to show a brand new account)');
  print('  final balance = await MirrorNodeAccountBalanceQuery()');
  print('      .setAccountId(AccountId.fromString(accountId!))');
  print('      .execute(client);');
  print('  print(balance.hbars.toHbars()); // 10.0');
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

  await client.close();

  print('=== Query examples complete ===\n');
}
