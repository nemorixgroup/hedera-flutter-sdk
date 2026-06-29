import 'dart:io';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// Account Lifecycle Example - hedera_flutter_sdk
///
/// This example demonstrates the complete flow of working with
/// Hedera accounts using the hedera_flutter_sdk:
///
/// 1. Connect to Hedera testnet using an operator account
/// 2. Create Alice's account (funded with 10 HBAR by the operator)
/// 3. Create Bob's account (funded with 5 HBAR by the operator)
/// 4. Alice transfers 2 HBAR to Bob
///    - Alice signs with her own private key
///    - Alice pays her own transaction fees
/// 5. Print all generated keys, IDs, and transaction results
///
/// Required environment variables:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase2/account_lifecycle_example.dart
/// ```
///
/// You can get a free testnet account and HBAR at:
/// https://portal.hedera.com
void main() async {
  // ---- Step 0: Read operator credentials ----

  final operatorIdStr = Platform.environment['HEDERA_OPERATOR_ID'];
  final operatorKeyStr = Platform.environment['HEDERA_OPERATOR_KEY'];

  if (operatorIdStr == null || operatorKeyStr == null) {
    print(
      'Error: HEDERA_OPERATOR_ID and HEDERA_OPERATOR_KEY '
      'environment variables must be set.',
    );
    exit(1);
  }

  print('');
  print('========================================');
  print('  hedera_flutter_sdk - Account Lifecycle');
  print('========================================');
  print('');
  print('Operator: $operatorIdStr');
  print('Network:  Hedera Testnet');
  print('');

  // ---- Step 1: Connect to Hedera testnet ----

  final operatorId = AccountId.fromString(operatorIdStr);
  final operatorKey = PrivateKey.fromString(operatorKeyStr);

  final client = HederaClient.forTestnet().setOperator(
    operatorId,
    operatorKey,
  );

  print('Connected to Hedera testnet.');
  print('');

  try {
    // ---- Step 2: Create Alice's account ----

    print('-------- Creating Alice account --------');

    // Generate a new ED25519 key pair for Alice.
    final alicePrivateKey = await PrivateKey.generateED25519();
    final alicePublicKey = await alicePrivateKey.derivePublicKey();

    print('Alice Private Key: ${alicePrivateKey.toDerString()}');
    print('Alice Public Key:  ${alicePublicKey.toHex()}');

    // Create Alice's account on testnet with 10 HBAR initial balance.
    // The operator pays the creation fee and funds the account.
    final aliceCreateResponse = await AccountCreateTransaction()
        .setKey(alicePublicKey)
        .setInitialBalance(Hbar(10))
        .setMemo('hedera_flutter_sdk - Alice account')
        .execute(client);

    // Wait for consensus and get Alice's new account ID.
    final aliceReceipt = await aliceCreateResponse.getReceipt(client);
    final aliceAccountId = aliceReceipt.accountId!;

    print('Alice Account ID:  $aliceAccountId');
    print('Alice Balance:     10 HBAR (initial)');
    print(
      'HashScan: https://hashscan.io/testnet/account/$aliceAccountId',
    );
    print('');

    // ---- Step 3: Create Bob's account ----

    print('-------- Creating Bob account ----------');

    // Generate a new ED25519 key pair for Bob.
    final bobPrivateKey = await PrivateKey.generateED25519();
    final bobPublicKey = await bobPrivateKey.derivePublicKey();

    print('Bob Private Key: ${bobPrivateKey.toDerString()}');
    print('Bob Public Key:  ${bobPublicKey.toHex()}');

    // Create Bob's account on testnet with 5 HBAR initial balance.
    // The operator pays the creation fee and funds the account.
    final bobCreateResponse = await AccountCreateTransaction()
        .setKey(bobPublicKey)
        .setInitialBalance(Hbar(5))
        .setMemo('hedera_flutter_sdk - Bob account')
        .execute(client);

    // Wait for consensus and get Bob's new account ID.
    final bobReceipt = await bobCreateResponse.getReceipt(client);
    final bobAccountId = bobReceipt.accountId!;

    print('Bob Account ID:  $bobAccountId');
    print('Bob Balance:     5 HBAR (initial)');
    print(
      'HashScan: https://hashscan.io/testnet/account/$bobAccountId',
    );
    print('');

    // ---- Step 4: Alice transfers 2 HBAR to Bob ----

    print('-------- Alice transfers 2 HBAR to Bob ----');
    print('Sender:   $aliceAccountId (Alice)');
    print('Receiver: $bobAccountId (Bob)');
    print('Amount:   2 HBAR');
    print('');

    // Build the transfer transaction.
    // Alice is the sender and pays her own fees via setPayerAccountId().
    // Alice signs with her own private key via signWith().
    // Amounts must sum to zero: -2 HBAR (Alice) + 2 HBAR (Bob) = 0.
    final transferTx = await CryptoTransferTransaction()
        .addHbarTransfer(
          AccountId.fromString(aliceAccountId),
          Hbar(-2),
        )
        .addHbarTransfer(
          AccountId.fromString(bobAccountId),
          Hbar(2),
        )
        .setMemo('hedera_flutter_sdk - Alice to Bob transfer')
        .setPayerAccountId(AccountId.fromString(aliceAccountId))
        .signWith(alicePrivateKey, client);

    final transferResponse = await transferTx.execute(client);

    // Wait for consensus and verify SUCCESS.
    final transferReceipt = await transferResponse.getReceipt(client);

    print('Transfer TX ID: ${transferResponse.transactionId}');
    print('Status:         ${transferReceipt.status}');
    print('');

    // ---- Step 5: Print final summary ----

    print('========================================');
    print('  Summary');
    print('========================================');
    print('');
    print('Operator:  $operatorIdStr');
    print('');
    print('Alice Account ID:  $aliceAccountId');
    print('Alice Private Key: ${alicePrivateKey.toDerString()}');
    print('Alice Balance:     ~8 HBAR (10 - 2 sent - fees)');
    print('');
    print('Bob Account ID:  $bobAccountId');
    print('Bob Private Key: ${bobPrivateKey.toDerString()}');
    print('Bob Balance:     ~7 HBAR (5 + 2 received)');
    print('');
    print('Transfer Status: ${transferReceipt.status}');
    print('Transfer TX ID:  ${transferResponse.transactionId}');
    print('');
    print('View on HashScan (testnet):');
    print(
      '  Alice: https://hashscan.io/testnet/account/$aliceAccountId',
    );
    print(
      '  Bob:   https://hashscan.io/testnet/account/$bobAccountId',
    );
    print('');
    print('========================================');
    print('  Example completed successfully!');
    print('========================================');
  } on Exception catch (e) {
    print('Error: $e');
    exit(1);
  } finally {
    await client.close();
  }
}
