import 'dart:io';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/transactions/token_create_transaction.dart';

/// Token Associate Example - hedera_flutter_sdk
///
/// This example demonstrates associating and dissociating an account
/// with a fungible token on the Hedera Token Service (HTS):
///
/// 1. Connect to Hedera testnet using an operator account
/// 2. Create a treasury account and a fungible token (auto-associated
///    to the treasury, as covered in v0.2.0-dev)
/// 3. Create a second account (Bob), NOT associated with the token
/// 4. Associate Bob's account with the token
/// 5. Dissociate Bob's account from the token (balance is zero, so
///    this succeeds per the official docs)
///
/// See:
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/associate-tokens-to-an-account
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/dissociate-tokens-from-an-account
///
/// Required environment variables:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase3/token_associate_example.dart
/// ```
///
/// You can get a free testnet account and HBAR at:
/// https://portal.hedera.com
Future<void> tokenAssociateExample() async {
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
  print('  hedera_flutter_sdk - Token Associate');
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
        .setMemo('hedera_flutter_sdk - association demo treasury')
        .execute(client);

    final treasuryReceipt = await treasuryCreateResponse.getReceipt(client);
    final treasuryAccountId = treasuryReceipt.accountId!;
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
        .setTreasuryAccountId(AccountId.fromString(treasuryAccountId))
        .setTokenMemo('hedera_flutter_sdk - association demo token')
        .setMaxTransactionFee(Hbar(30));

    await tokenCreateTx.signWith(treasuryPrivateKey, client);
    await tokenCreateTx.signWith(operatorKey, client);

    final tokenCreateResponse = await tokenCreateTx.execute(client);
    final tokenCreateReceipt = await tokenCreateResponse.getReceipt(client);
    final tokenId = tokenCreateReceipt.tokenId;

    print('Token ID: $tokenId (Demo Coin / DEMO)');
    print('The treasury account is auto-associated with its own token.');
    print('');

    // ---- Step 3: Create Bob's account (not associated yet) ----

    print("-------- Creating Bob's account --------");

    final bobPrivateKey = await PrivateKey.generateED25519();
    final bobPublicKey = await bobPrivateKey.derivePublicKey();

    final bobCreateResponse = await AccountCreateTransaction()
        .setKey(bobPublicKey)
        .setInitialBalance(Hbar(5))
        .setMemo('hedera_flutter_sdk - association demo Bob')
        .execute(client);

    final bobReceipt = await bobCreateResponse.getReceipt(client);
    final bobAccountId = bobReceipt.accountId!;

    print('Bob Account ID: $bobAccountId');
    print('Bob is NOT yet associated with the token.');
    print(
      'HashScan: https://hashscan.io/testnet/account/$bobAccountId',
    );
    print('');

    // ---- Step 4: Associate Bob's account with the token ----

    print('-------- Associating Bob with the token --------');

    // Bob's own key must sign, since he is the account being
    // associated, and the operator pays the transaction fee.
    final associateTx = TokenAssociateTransaction()
        .setAccountId(AccountId.fromString(bobAccountId))
        .addTokenId(TokenId.fromString(tokenId!));

    await associateTx.signWith(bobPrivateKey, client);
    await associateTx.signWith(operatorKey, client);

    final associateResponse = await associateTx.execute(client);
    final associateReceipt = await associateResponse.getReceipt(client);

    print('Association status: ${associateReceipt.status}');
    print('Bob can now send and receive the $tokenId token.');
    print('');

    // ---- Step 5: Dissociate Bob's account from the token ----

    print('-------- Dissociating Bob from the token --------');
    print('Bob never received any of the token, so his balance is');
    print('still zero, which is required for dissociation to succeed.');
    print('');

    final dissociateTx = TokenDissociateTransaction()
        .setAccountId(AccountId.fromString(bobAccountId))
        .addTokenId(TokenId.fromString(tokenId));

    await dissociateTx.signWith(bobPrivateKey, client);
    await dissociateTx.signWith(operatorKey, client);

    final dissociateResponse = await dissociateTx.execute(client);
    final dissociateReceipt = await dissociateResponse.getReceipt(client);

    print('Dissociation status: ${dissociateReceipt.status}');
    print('');

    // ---- Step 6: Print final summary ----

    print('========================================');
    print('  Summary');
    print('========================================');
    print('');
    print('Operator:  $operatorIdStr');
    print('');
    print('Treasury Account ID: $treasuryAccountId');
    print('Token ID:            $tokenId (Demo Coin / DEMO)');
    print('');
    print('Bob Account ID: $bobAccountId');
    print('Bob Private Key: ${bobPrivateKey.toDerString()}');
    print('Association status:    ${associateReceipt.status}');
    print('Dissociation status:   ${dissociateReceipt.status}');
    print('');
    print('View on HashScan (testnet):');
    print(
      '  Token:   https://hashscan.io/testnet/token/$tokenId',
    );
    print(
      '  Bob:     https://hashscan.io/testnet/account/$bobAccountId',
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
/// dart run example/phase3/token_associate_example.dart
/// ```
Future<void> main() async => tokenAssociateExample();
