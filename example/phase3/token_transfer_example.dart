import 'dart:io';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/transactions/token_create_transaction.dart';

/// Token Transfer Example - hedera_flutter_sdk
///
/// This example demonstrates transferring a fungible token between
/// two accounts on the Hedera Token Service (HTS):
///
/// 1. Connect to Hedera testnet using an operator account
/// 2. Create a treasury account and a fungible token (auto-associated
///    to the treasury, as covered in v0.2.0-dev)
/// 3. Create Bob's account and associate it with the token (required
///    before Bob can receive it, as covered in v0.2.1-dev)
/// 4. Transfer 25 units of the token from the treasury to Bob
/// 5. Transfer part of it back from Bob to the treasury, demonstrating
///    a single transaction with multiple entries for the same token
/// 6. Demonstrate expectedDecimals: a correct transfer that matches
///    the token's decimals, and a local (no network call) error
///    when two addTokenTransfer() calls for the same token specify
///    conflicting values
/// 7. Print final summary
///
/// NOTE: final balances below are tracked locally as running totals
/// from each transfer, not queried from the network. AccountBalanceQuery
/// currently only exposes HBAR balance, not per-token balances; that
/// is planned for a future version (token queries, v0.2.6-dev).
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/transfer-tokens
///
/// Required environment variables:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase3/token_transfer_example.dart
/// ```
///
/// You can get a free testnet account and HBAR at:
/// https://portal.hedera.com
Future<void> tokenTransferExample() async {
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
  print('  hedera_flutter_sdk - Token Transfer');
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
    // ---- Step 2: Create a treasury account and a fungible token ----

    print('-------- Creating treasury account and token --------');

    final treasuryPrivateKey = await PrivateKey.generateED25519();
    final treasuryPublicKey = await treasuryPrivateKey.derivePublicKey();

    final treasuryCreateResponse = await AccountCreateTransaction()
        .setKey(treasuryPublicKey)
        .setInitialBalance(Hbar(10))
        .setMemo('hedera_flutter_sdk - transfer demo treasury')
        .execute(client);

    final treasuryReceipt = await treasuryCreateResponse.getReceipt(client);
    final treasuryAccountId = AccountId.fromString(treasuryReceipt.accountId!);
    print('Treasury Account ID: $treasuryAccountId');

    // Treasury key must sign, since it receives the initial supply
    // and is auto-associated with the token it creates. The
    // operator (fee payer) must also sign explicitly, since signing
    // with the treasury key already marks the transaction as signed.
    final tokenCreateTx = TokenCreateTransaction()
        .setTokenName('Demo Coin')
        .setTokenSymbol('DEMO')
        .setDecimals(2)
        .setInitialSupply(10000)
        .setTreasuryAccountId(treasuryAccountId)
        .setTokenMemo('hedera_flutter_sdk - transfer demo token')
        .setMaxTransactionFee(Hbar(30));

    await tokenCreateTx.signWith(treasuryPrivateKey, client);
    await tokenCreateTx.signWith(operatorKey, client);

    final tokenCreateResponse = await tokenCreateTx.execute(client);
    final tokenCreateReceipt = await tokenCreateResponse.getReceipt(client);
    final tokenId = TokenId.fromString(tokenCreateReceipt.tokenId!);

    print('Token ID: $tokenId (Demo Coin / DEMO)');
    print('Treasury balance: 100.00 DEMO (10000 units at 2 decimals)');
    print('');

    // Track balances locally, starting from the initial supply.
    var treasuryTokenBalance = 100.0;
    var bobTokenBalance = 0.0;

    // ---- Step 3: Create and associate Bob's account ----

    print("-------- Creating and associating Bob's account --------");

    final bobPrivateKey = await PrivateKey.generateED25519();
    final bobPublicKey = await bobPrivateKey.derivePublicKey();

    final bobCreateResponse = await AccountCreateTransaction()
        .setKey(bobPublicKey)
        .setInitialBalance(Hbar(5))
        .setMemo('hedera_flutter_sdk - transfer demo Bob')
        .execute(client);

    final bobReceipt = await bobCreateResponse.getReceipt(client);
    final bobAccountId = AccountId.fromString(bobReceipt.accountId!);

    print('Bob Account ID: $bobAccountId');

    // Bob's key must sign, since he is the account being associated.
    final associateTx = TokenAssociateTransaction()
        .setAccountId(bobAccountId)
        .addTokenId(tokenId);

    await associateTx.signWith(bobPrivateKey, client);
    await associateTx.signWith(operatorKey, client);

    final associateResponse = await associateTx.execute(client);
    final associateReceipt = await associateResponse.getReceipt(client);

    print('Association status: ${associateReceipt.status}');
    print('');

    // ---- Step 4: Transfer tokens from treasury to Bob ----

    print('-------- Transferring 25.00 DEMO: treasury -> Bob --------');

    // The sending account's key must sign; here that's the
    // treasury. The operator (fee payer) must also sign explicitly.
    final transferToBobTx = CryptoTransferTransaction()
        .addTokenTransfer(tokenId, treasuryAccountId, -2500)
        .addTokenTransfer(tokenId, bobAccountId, 2500);

    await transferToBobTx.signWith(treasuryPrivateKey, client);
    await transferToBobTx.signWith(operatorKey, client);

    final transferToBobResponse = await transferToBobTx.execute(client);
    final transferToBobReceipt = await transferToBobResponse.getReceipt(client);

    treasuryTokenBalance -= 25.0;
    bobTokenBalance += 25.0;

    print('Transfer status: ${transferToBobReceipt.status}');
    print('Bob balance:      ${bobTokenBalance.toStringAsFixed(2)} DEMO');
    print(
      'Treasury balance: ${treasuryTokenBalance.toStringAsFixed(2)} DEMO',
    );
    print('');

    // ---- Step 5: Transfer part of it back from Bob to treasury ----

    print('-------- Transferring 10.00 DEMO: Bob -> treasury --------');

    // Now Bob is the sender, so his key must sign instead.
    final transferToTreasuryTx = CryptoTransferTransaction()
        .addTokenTransfer(tokenId, bobAccountId, -1000)
        .addTokenTransfer(tokenId, treasuryAccountId, 1000);

    await transferToTreasuryTx.signWith(bobPrivateKey, client);
    await transferToTreasuryTx.signWith(operatorKey, client);

    final transferToTreasuryResponse =
        await transferToTreasuryTx.execute(client);
    final transferToTreasuryReceipt =
        await transferToTreasuryResponse.getReceipt(client);

    bobTokenBalance -= 10.0;
    treasuryTokenBalance += 10.0;

    print('Transfer status: ${transferToTreasuryReceipt.status}');
    print('Bob balance:      ${bobTokenBalance.toStringAsFixed(2)} DEMO');
    print(
      'Treasury balance: ${treasuryTokenBalance.toStringAsFixed(2)} DEMO',
    );
    print('');

    // ---- Step 6: Demonstrate expectedDecimals ----

    print('-------- Demonstrating expectedDecimals --------');

    // Correct usage: expectedDecimals matches the token's actual
    // decimals (2, set in Step 2). The network verifies this before
    // applying the transfer, protecting against a token's decimals
    // changing between when the transaction is built and executed.
    print('Correct usage: expectedDecimals matches the token (2)');

    final correctDecimalsTx = CryptoTransferTransaction()
        .addTokenTransfer(
          tokenId,
          treasuryAccountId,
          -100,
          expectedDecimals: 2,
        )
        .addTokenTransfer(
          tokenId,
          bobAccountId,
          100,
          expectedDecimals: 2,
        );

    await correctDecimalsTx.signWith(treasuryPrivateKey, client);
    await correctDecimalsTx.signWith(operatorKey, client);

    final correctDecimalsResponse = await correctDecimalsTx.execute(client);
    final correctDecimalsReceipt =
        await correctDecimalsResponse.getReceipt(client);

    treasuryTokenBalance -= 1.0;
    bobTokenBalance += 1.0;

    print('Transfer status: ${correctDecimalsReceipt.status}');
    print('');

    // Error case: two addTokenTransfer() calls for the SAME token
    // specify DIFFERENT expectedDecimals values (2 vs 3). Since
    // expectedDecimals is tied to the whole TokenTransferList (per
    // token), not per individual transfer entry, this is a
    // developer error the SDK catches locally, before any network
    // call, when toBytes()/buildBody() is invoked.
    print('Error case: conflicting expectedDecimals for the same token');

    try {
      CryptoTransferTransaction()
          .addTokenTransfer(
            tokenId,
            treasuryAccountId,
            -100,
            expectedDecimals: 2,
          )
          .addTokenTransfer(
            tokenId,
            bobAccountId,
            100,
            expectedDecimals: 3, // conflicts with the -100 entry above
          )
          .toBytes();
      print('Unexpected: no error was thrown.');
    }
    // This example deliberately catches ArgumentError to demonstrate
    // the validation, rather than letting it crash the program.
    // ignore: avoid_catching_errors
    on ArgumentError catch (e) {
      print('Caught expected ArgumentError:');
      print('  $e');
    }
    print('');

    // ---- Step 7: Print final summary ----

    print('========================================');
    print('  Summary');
    print('========================================');
    print('');
    print('Operator: $operatorIdStr');
    print('');
    print('Treasury Account ID: $treasuryAccountId');
    print('Bob Account ID:      $bobAccountId');
    print('Token ID:            $tokenId (Demo Coin / DEMO)');
    print('');
    print('Final balances:');
    print('  Treasury: ${treasuryTokenBalance.toStringAsFixed(2)} DEMO');
    print('  Bob:      ${bobTokenBalance.toStringAsFixed(2)} DEMO');
    print('');
    print('View on HashScan (testnet):');
    print(
      '  Token:     https://hashscan.io/testnet/token/$tokenId',
    );
    print(
      '  Treasury:  https://hashscan.io/testnet/account/$treasuryAccountId',
    );
    print(
      '  Bob:       https://hashscan.io/testnet/account/$bobAccountId',
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

/// Required environment variables:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase3/token_transfer_example.dart
/// ```
Future<void> main() async => tokenTransferExample();
