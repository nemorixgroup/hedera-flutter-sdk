import 'dart:io';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/transactions/token_create_transaction.dart';

/// Token Create Example - hedera_flutter_sdk
///
/// This example demonstrates creating a fungible token on the Hedera
/// Token Service (HTS) using the hedera_flutter_sdk:
///
/// 1. Connect to Hedera testnet using an operator account
/// 2. Create a treasury account to hold the token's initial supply
/// 3. Generate a supply key, so the token can be minted/burned later
/// 4. Create a fungible token ("USD Bar" / USDB) with 2 decimals and
///    an initial supply of 100 whole tokens
/// 5. Print the new token ID and its key configuration
///
/// Token keys (admin, supply, etc.) are set once at creation and
/// cannot be added later if omitted here — see setSupplyKey() below
/// for why this example sets one even though minting/burning is not
/// covered until a future version of this SDK.
///
/// Required environment variables:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase3/token_create_example.dart
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
  print('  hedera_flutter_sdk - Token Create');
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
    // ---- Step 2: Create a treasury account ----

    print('-------- Creating treasury account --------');

    // The treasury account receives the token's entire initial
    // supply on creation, and remains the account that mints/burns
    // deliver to or draw from.
    final treasuryPrivateKey = await PrivateKey.generateED25519();
    final treasuryPublicKey = await treasuryPrivateKey.derivePublicKey();

    print('Treasury Private Key: ${treasuryPrivateKey.toDerString()}');
    print('Treasury Public Key:  ${treasuryPublicKey.toHex()}');

    final treasuryCreateResponse = await AccountCreateTransaction()
        .setKey(treasuryPublicKey)
        .setInitialBalance(Hbar(10))
        .setMemo('hedera_flutter_sdk - token treasury')
        .execute(client);

    final treasuryReceipt = await treasuryCreateResponse.getReceipt(client);
    final treasuryAccountId = treasuryReceipt.accountId!;

    print('Treasury Account ID: $treasuryAccountId');
    print(
      'HashScan: https://hashscan.io/testnet/account/$treasuryAccountId',
    );
    print('');

    // ---- Step 3: Generate a supply key ----

    print('-------- Generating supply key --------');

    // A supply key is REQUIRED for the token to ever mint or burn
    // tokens after creation. Without it, the initial supply set here
    // is permanently fixed. Minting/burning is not yet implemented
    // in this SDK, but the key is set now since it cannot be added
    // to the token later if omitted at creation.
    final supplyPrivateKey = await PrivateKey.generateED25519();
    final supplyPublicKey = await supplyPrivateKey.derivePublicKey();

    print('Supply Private Key: ${supplyPrivateKey.toDerString()}');
    print('Supply Public Key:  ${supplyPublicKey.toHex()}');
    print('');

    // ---- Step 4: Create the fungible token ----

    print('-------- Creating fungible token --------');
    print('Name:           USD Bar');
    print('Symbol:         USDB');
    print('Decimals:       2');
    print('Initial Supply: 100 (whole tokens)');
    print('Treasury:       $treasuryAccountId');
    print('');

    // Initial supply is expressed in the token's smallest
    // denomination: 100 whole tokens at 2 decimals is 10000.
    // ----
    // Token creation costs more than account creation: per Hedera's
    // official docs, a CryptoTransfer fee is included to move the
    // initial supply to the treasury account, on top of the base
    // TokenCreate fee. The inherited default of 2 HBAR
    // (HederaConstants.defaultMaxTransactionFeeTinybars) is too low
    // for this transaction and causes INSUFFICIENT_TX_FEE.
    // 30 HBAR comfortably covers it, matching the fee override shown
    // in Hedera's own TokenCreateTransaction examples.
    // See:
    // https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/define-a-token
    final tokenCreateTx = TokenCreateTransaction()
        .setTokenName('USD Bar')
        .setTokenSymbol('USDB')
        .setDecimals(2)
        .setInitialSupply(10000)
        .setTreasuryAccountId(AccountId.fromString(treasuryAccountId))
        .setSupplyKey(supplyPublicKey)
        .setTokenMemo('hedera_flutter_sdk - USD Bar stablecoin')
        .setMaxTransactionFee(Hbar(30));

    // The treasury account's key must sign, since it receives the
    // initial supply and is being associated to the new token.
    // The operator (fee payer) must also sign explicitly, since
    // signing with the treasury key already marks this transaction
    // as signed, skipping execute()'s automatic operator signature.
    await tokenCreateTx.signWith(treasuryPrivateKey, client);
    await tokenCreateTx.signWith(operatorKey, client);

    final tokenCreateResponse = await tokenCreateTx.execute(client);

    final tokenCreateReceipt = await tokenCreateResponse.getReceipt(client);
    final tokenId = tokenCreateReceipt.tokenId!;

    print('Token ID: $tokenId');
    print('Status:   ${tokenCreateReceipt.status}');
    print('HashScan: https://hashscan.io/testnet/token/$tokenId');
    print('');

    // ---- Step 5: Print final summary ----

    print('========================================');
    print('  Summary');
    print('========================================');
    print('');
    print('Operator:  $operatorIdStr');
    print('');
    print('Treasury Account ID:  $treasuryAccountId');
    print('Treasury Private Key: ${treasuryPrivateKey.toDerString()}');
    print('');
    print('Supply Private Key: ${supplyPrivateKey.toDerString()}');
    print('');
    print('Token ID:     $tokenId');
    print('Token Name:   USD Bar (USDB)');
    print('Token Supply: 100.00 USDB (10000 units at 2 decimals)');
    print('');
    print('View on HashScan (testnet):');
    print(
      '  Token:     https://hashscan.io/testnet/token/$tokenId',
    );
    print(
      '  Treasury:  https://hashscan.io/testnet/account/$treasuryAccountId',
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
