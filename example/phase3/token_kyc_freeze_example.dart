import 'dart:io';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// KYC and Freeze Example - hedera_flutter_sdk
///
/// This example demonstrates the two compliance controls an issuer
/// can apply to a token holder on the Hedera Token Service (HTS):
///
/// - KYC ("Know Your Customer"): while a token has a KYC key, an
///   account cannot receive the token until KYC is granted to it.
///   Controlled with TokenGrantKycTransaction and
///   TokenRevokeKycTransaction, signed by the token's KYC key.
/// - Freeze: a frozen account can neither send nor receive the token.
///   Controlled with TokenFreezeTransaction and
///   TokenUnfreezeTransaction, signed by the token's freeze key.
///
/// Steps:
///
/// 1. Connect to Hedera testnet using an operator account
/// 2. Create a treasury account and a fungible token with a KYC key
///    and a freeze key
/// 3. Create Alice's account and associate her with the token
/// 4. Transfer to Alice before KYC is granted (rejected)
/// 5. Grant KYC to Alice and transfer again (accepted)
/// 6. Freeze Alice and transfer again (rejected)
/// 7. Unfreeze Alice and transfer again (accepted)
/// 8. Revoke KYC from Alice and transfer again (rejected)
/// 9. Print final summary
///
/// Rejected transfers are expected in this example. They show up as
/// a HederaStatusException carrying the status code returned by the
/// network, which the example catches and prints.
///
/// The token balances printed below are tracked locally by this
/// example; they are not read back from the network.
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/enable-kyc-account-flag
///
/// Required environment variables:
/// ```sh
/// export HEDERA_OPERATOR_ID=0.0.XXXXX
/// export HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase3/token_kyc_freeze_example.dart
/// ```
///
/// You can get a free testnet account and HBAR at:
/// https://portal.hedera.com
Future<void> tokenKycFreezeExample() async {
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
  print('  hedera_flutter_sdk - KYC and Freeze');
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

  // Every transfer in this example moves 10.00 DKYC (2 decimals).
  const transferUnits = 1000;
  var aliceUnits = 0;

  try {
    // ---- Step 2: Create treasury account and token ----

    print('-------- Creating treasury account and token --------');

    final treasuryPrivateKey = await PrivateKey.generateED25519();
    final treasuryPublicKey = await treasuryPrivateKey.derivePublicKey();

    final treasuryCreateResponse = await AccountCreateTransaction()
        .setKey(treasuryPublicKey)
        .setInitialBalance(Hbar(20))
        .setMemo('hedera_flutter_sdk - KYC demo treasury')
        .execute(client);

    final treasuryReceipt = await treasuryCreateResponse.getReceipt(client);
    final treasuryAccountId = AccountId.fromString(treasuryReceipt.accountId!);
    print('Treasury Account ID: $treasuryAccountId');

    // The KYC key and the freeze key are separate keys, so each
    // control can be held by a different party. They can only be set
    // when the token is created.
    final kycPrivateKey = await PrivateKey.generateED25519();
    final kycPublicKey = await kycPrivateKey.derivePublicKey();
    final freezePrivateKey = await PrivateKey.generateED25519();
    final freezePublicKey = await freezePrivateKey.derivePublicKey();

    final tokenTx = TokenCreateTransaction()
        .setTokenName('Demo KYC Coin')
        .setTokenSymbol('DKYC')
        .setDecimals(2)
        .setInitialSupply(10000) // 100.00 DKYC
        .setTreasuryAccountId(treasuryAccountId)
        .setKycKey(kycPublicKey)
        .setFreezeKey(freezePublicKey)
        .setTokenMemo('hedera_flutter_sdk - KYC and freeze demo token')
        .setMaxTransactionFee(Hbar(30));

    // The treasury key must sign (the treasury receives the initial
    // supply). The operator (fee payer) must also sign explicitly.
    await tokenTx.signWith(treasuryPrivateKey, client);
    await tokenTx.signWith(operatorKey, client);

    final tokenResponse = await tokenTx.execute(client);
    final tokenReceipt = await tokenResponse.getReceipt(client);
    final tokenId = TokenId.fromString(tokenReceipt.tokenId!);

    print('Token ID: $tokenId (Demo KYC Coin / DKYC)');
    print('');

    // ---- Step 3: Create and associate Alice ----

    print("-------- Creating and associating Alice's account --------");

    final alicePrivateKey = await PrivateKey.generateED25519();
    final alicePublicKey = await alicePrivateKey.derivePublicKey();

    final aliceCreateResponse = await AccountCreateTransaction()
        .setKey(alicePublicKey)
        .setInitialBalance(Hbar(5))
        .setMemo('hedera_flutter_sdk - KYC demo Alice')
        .execute(client);

    final aliceReceipt = await aliceCreateResponse.getReceipt(client);
    final aliceAccountId = AccountId.fromString(aliceReceipt.accountId!);
    print('Alice Account ID: $aliceAccountId');

    // Association does not require KYC; KYC is checked on transfers.
    final associateTx = TokenAssociateTransaction()
        .setAccountId(aliceAccountId)
        .addTokenId(tokenId);

    await associateTx.signWith(alicePrivateKey, client);
    await associateTx.signWith(operatorKey, client);

    final associateResponse = await associateTx.execute(client);
    final associateReceipt = await associateResponse.getReceipt(client);

    print('Association status: ${associateReceipt.status}');
    print('');

    // ---- Step 4: Transfer before KYC (expected to be rejected) ----

    print('-------- Transfer before KYC is granted --------');

    final beforeKyc = await _transferToAlice(
      client: client,
      tokenId: tokenId,
      treasuryAccountId: treasuryAccountId,
      aliceAccountId: aliceAccountId,
      treasuryPrivateKey: treasuryPrivateKey,
      operatorKey: operatorKey,
      units: transferUnits,
    );
    _report(beforeKyc, 'ACCOUNT_KYC_NOT_GRANTED_FOR_TOKEN');
    if (beforeKyc == 'SUCCESS') {
      aliceUnits += transferUnits;
    }
    print('');

    // ---- Step 5: Grant KYC, then transfer (expected to succeed) ----

    print('-------- Granting KYC to Alice --------');

    // The token's KYC key must sign. The operator signs as fee payer.
    final grantTx = TokenGrantKycTransaction()
        .setTokenId(tokenId)
        .setAccountId(aliceAccountId);

    await grantTx.signWith(kycPrivateKey, client);
    await grantTx.signWith(operatorKey, client);

    final grantResponse = await grantTx.execute(client);
    final grantReceipt = await grantResponse.getReceipt(client);
    print('Grant KYC status: ${grantReceipt.status}');

    final afterKyc = await _transferToAlice(
      client: client,
      tokenId: tokenId,
      treasuryAccountId: treasuryAccountId,
      aliceAccountId: aliceAccountId,
      treasuryPrivateKey: treasuryPrivateKey,
      operatorKey: operatorKey,
      units: transferUnits,
    );
    _report(afterKyc, 'SUCCESS');
    if (afterKyc == 'SUCCESS') {
      aliceUnits += transferUnits;
    }
    print('');

    // ---- Step 6: Freeze Alice, then transfer (rejected) ----

    print('-------- Freezing Alice --------');

    // The token's freeze key must sign. The operator signs as fee payer.
    final freezeTx = TokenFreezeTransaction()
        .setTokenId(tokenId)
        .setAccountId(aliceAccountId);

    await freezeTx.signWith(freezePrivateKey, client);
    await freezeTx.signWith(operatorKey, client);

    final freezeResponse = await freezeTx.execute(client);
    final freezeReceipt = await freezeResponse.getReceipt(client);
    print('Freeze status: ${freezeReceipt.status}');

    final whileFrozen = await _transferToAlice(
      client: client,
      tokenId: tokenId,
      treasuryAccountId: treasuryAccountId,
      aliceAccountId: aliceAccountId,
      treasuryPrivateKey: treasuryPrivateKey,
      operatorKey: operatorKey,
      units: transferUnits,
    );
    _report(whileFrozen, 'ACCOUNT_FROZEN_FOR_TOKEN');
    if (whileFrozen == 'SUCCESS') {
      aliceUnits += transferUnits;
    }
    print('');

    // ---- Step 7: Unfreeze Alice, then transfer (accepted) ----

    print('-------- Unfreezing Alice --------');

    final unfreezeTx = TokenUnfreezeTransaction()
        .setTokenId(tokenId)
        .setAccountId(aliceAccountId);

    await unfreezeTx.signWith(freezePrivateKey, client);
    await unfreezeTx.signWith(operatorKey, client);

    final unfreezeResponse = await unfreezeTx.execute(client);
    final unfreezeReceipt = await unfreezeResponse.getReceipt(client);
    print('Unfreeze status: ${unfreezeReceipt.status}');

    final afterUnfreeze = await _transferToAlice(
      client: client,
      tokenId: tokenId,
      treasuryAccountId: treasuryAccountId,
      aliceAccountId: aliceAccountId,
      treasuryPrivateKey: treasuryPrivateKey,
      operatorKey: operatorKey,
      units: transferUnits,
    );
    _report(afterUnfreeze, 'SUCCESS');
    if (afterUnfreeze == 'SUCCESS') {
      aliceUnits += transferUnits;
    }
    print('');

    // ---- Step 8: Revoke KYC, then transfer (rejected) ----

    print('-------- Revoking KYC from Alice --------');

    final revokeTx = TokenRevokeKycTransaction()
        .setTokenId(tokenId)
        .setAccountId(aliceAccountId);

    await revokeTx.signWith(kycPrivateKey, client);
    await revokeTx.signWith(operatorKey, client);

    final revokeResponse = await revokeTx.execute(client);
    final revokeReceipt = await revokeResponse.getReceipt(client);
    print('Revoke KYC status: ${revokeReceipt.status}');

    final afterRevoke = await _transferToAlice(
      client: client,
      tokenId: tokenId,
      treasuryAccountId: treasuryAccountId,
      aliceAccountId: aliceAccountId,
      treasuryPrivateKey: treasuryPrivateKey,
      operatorKey: operatorKey,
      units: transferUnits,
    );
    _report(afterRevoke, 'ACCOUNT_KYC_NOT_GRANTED_FOR_TOKEN');
    if (afterRevoke == 'SUCCESS') {
      aliceUnits += transferUnits;
    }
    print('');

    // ---- Step 9: Print final summary ----

    print('========================================');
    print('  Summary');
    print('========================================');
    print('');
    print('Operator: $operatorIdStr');
    print('');
    print('Token:     $tokenId (Demo KYC Coin / DKYC)');
    print('');
    print('Transfer results:');
    print('  Before KYC:      $beforeKyc');
    print('  After KYC:       $afterKyc');
    print('  While frozen:    $whileFrozen');
    print('  After unfreeze:  $afterUnfreeze');
    print('  After revoke:    $afterRevoke');
    print('');
    print('Alice holds: ${(aliceUnits / 100).toStringAsFixed(2)} DKYC (local)');
    print('');
    print('View on HashScan (testnet):');
    print(
      '  Token:    https://hashscan.io/testnet/token/$tokenId',
    );
    print(
      '  Treasury: https://hashscan.io/testnet/account/$treasuryAccountId',
    );
    print(
      '  Alice:    https://hashscan.io/testnet/account/$aliceAccountId',
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

/// Transfers [units] of [tokenId] from the treasury to Alice and returns
/// the resulting status name.
///
/// A rejection by the network (at submission or in the receipt) is
/// returned as the name of its status code instead of being thrown,
/// because several steps in this example expect to be rejected.
Future<String> _transferToAlice({
  required HederaClient client,
  required TokenId tokenId,
  required AccountId treasuryAccountId,
  required AccountId aliceAccountId,
  required PrivateKey treasuryPrivateKey,
  required PrivateKey operatorKey,
  required int units,
}) async {
  try {
    final transferTx = CryptoTransferTransaction()
        .addTokenTransfer(tokenId, treasuryAccountId, -units)
        .addTokenTransfer(tokenId, aliceAccountId, units);

    // The treasury (sender) must sign; the operator signs as fee payer.
    await transferTx.signWith(treasuryPrivateKey, client);
    await transferTx.signWith(operatorKey, client);

    final response = await transferTx.execute(client);
    final receipt = await response.getReceipt(client);
    return receipt.status.toString();
  } on HederaStatusException catch (e) {
    return e.statusCode.name;
  }
}

/// Prints the outcome of a transfer and whether it matches [expected].
void _report(String outcome, String expected) {
  final verdict = outcome == expected ? 'as expected' : 'UNEXPECTED';
  print('Transfer result: $outcome ($verdict, expected $expected)');
}

Future<void> main() async {
  await tokenKycFreezeExample();
}
