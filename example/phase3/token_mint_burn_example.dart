import 'dart:io';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// Token Mint/Burn Example - hedera_flutter_sdk
///
/// This example demonstrates minting and burning a fungible token on
/// the Hedera Token Service (HTS):
///
/// 1. Connect to Hedera testnet using an operator account
/// 2. Create a treasury account and a supply key
/// 3. Create a fungible token with an initial supply, using the
///    supply key (required to mint/burn later)
/// 4. Mint additional tokens, increasing the total supply
/// 5. Burn some tokens, decreasing the total supply
///
/// See:
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/mint-a-token
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/burn-a-token
///
/// NOTE: final supply below is tracked locally as a running total
/// from each mint/burn, not queried from the network. Querying live
/// token info (including total supply) is planned for a future
/// version (token queries, v0.2.6-dev).
///
/// Required environment variables:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase3/token_mint_burn_example.dart
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
  print('  hedera_flutter_sdk - Token Mint / Burn');
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
    // ---- Step 2: Create a treasury account and a supply key ----

    print('-------- Creating treasury account and supply key --------');

    final treasuryPrivateKey = await PrivateKey.generateED25519();
    final treasuryPublicKey = await treasuryPrivateKey.derivePublicKey();

    final treasuryCreateResponse = await AccountCreateTransaction()
        .setKey(treasuryPublicKey)
        .setInitialBalance(Hbar(10))
        .setMemo('hedera_flutter_sdk - mint/burn demo treasury')
        .execute(client);

    final treasuryReceipt = await treasuryCreateResponse.getReceipt(client);
    final treasuryAccountId = AccountId.fromString(treasuryReceipt.accountId!);
    print('Treasury Account ID: $treasuryAccountId');

    // A supply key is REQUIRED for mint/burn. Without it, both
    // transactions resolve to TOKEN_HAS_NO_SUPPLY_KEY.
    final supplyPrivateKey = await PrivateKey.generateED25519();
    final supplyPublicKey = await supplyPrivateKey.derivePublicKey();
    print('Supply key generated.');
    print('');

    // ---- Step 3: Create the fungible token ----

    print('-------- Creating fungible token --------');
    print('Name:           Demo Coin');
    print('Symbol:         DEMO');
    print('Decimals:       2');
    print('Initial Supply: 100.00 DEMO');
    print('');

    final tokenCreateTx = TokenCreateTransaction()
        .setTokenName('Demo Coin')
        .setTokenSymbol('DEMO')
        .setDecimals(2)
        .setInitialSupply(10000)
        .setTreasuryAccountId(treasuryAccountId)
        .setSupplyKey(supplyPublicKey)
        .setTokenMemo('hedera_flutter_sdk - mint/burn demo token')
        .setMaxTransactionFee(Hbar(30));

    // The treasury key must sign, since it receives the initial
    // supply. The operator (fee payer) must also sign explicitly.
    await tokenCreateTx.signWith(treasuryPrivateKey, client);
    await tokenCreateTx.signWith(operatorKey, client);

    final tokenCreateResponse = await tokenCreateTx.execute(client);
    final tokenCreateReceipt = await tokenCreateResponse.getReceipt(client);
    final tokenId = TokenId.fromString(tokenCreateReceipt.tokenId!);

    print('Token ID: $tokenId');
    print('');

    // Track total supply locally, starting from the initial supply.
    var totalSupply = 100.0;

    // ---- Step 4: Mint additional tokens ----

    print('-------- Minting 50.00 DEMO --------');

    // Only the supply key needs to sign here; the operator still
    // pays the fee automatically since this transaction is not
    // otherwise pre-signed.
    final mintTx = TokenMintTransaction().setTokenId(tokenId).setAmount(5000);

    await mintTx.signWith(supplyPrivateKey, client);
    await mintTx.signWith(operatorKey, client);

    final mintResponse = await mintTx.execute(client);
    final mintReceipt = await mintResponse.getReceipt(client);

    totalSupply += 50.0;

    print('Mint status:   ${mintReceipt.status}');
    print('Total supply:  ${totalSupply.toStringAsFixed(2)} DEMO');
    print('');

    // ---- Step 5: Burn some tokens ----

    print('-------- Burning 30.00 DEMO --------');

    final burnTx = TokenBurnTransaction().setTokenId(tokenId).setAmount(3000);

    await burnTx.signWith(supplyPrivateKey, client);
    await burnTx.signWith(operatorKey, client);

    final burnResponse = await burnTx.execute(client);
    final burnReceipt = await burnResponse.getReceipt(client);

    totalSupply -= 30.0;

    print('Burn status:   ${burnReceipt.status}');
    print('Total supply:  ${totalSupply.toStringAsFixed(2)} DEMO');
    print('');

    // ---- Step 6: Print final summary ----

    print('========================================');
    print('  Summary');
    print('========================================');
    print('');
    print('Operator: $operatorIdStr');
    print('');
    print('Treasury Account ID: $treasuryAccountId');
    print('Token ID:            $tokenId (Demo Coin / DEMO)');
    print('');
    print('Supply changes:');
    print('  Initial: 100.00 DEMO');
    print('  Minted:  +50.00 DEMO');
    print('  Burned:  -30.00 DEMO');
    print('  Final:   ${totalSupply.toStringAsFixed(2)} DEMO');
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
