import 'dart:io';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// Custom Fees Example - hedera_flutter_sdk
///
/// This example shows how a token can charge a fee on every transfer
/// (Hedera Token Service custom fees) and how the issuer can change
/// that fee schedule later.
///
/// Two kinds of fee are used:
///
/// - CustomFractionalFee: a fraction of the amount transferred, paid
///   by the receiver by default (1% here, at least 1 unit and at most
///   100 units).
/// - CustomFixedFee: a fixed amount of HBAR (1 HBAR here), paid by the
///   sender.
///
/// The fees go to a fee collector account. The treasury of the token is
/// exempt, so the fees only apply when Alice sends tokens to Bob.
///
/// Steps:
///
/// 1. Connect to Hedera testnet using an operator account
/// 2. Create the treasury, the fee collector, Alice and Bob
/// 3. Create a token with a fee schedule key and two custom fees
/// 4. Associate Alice and Bob with the token (the fee collector was
///    already associated by the network when the token was created)
/// 5. Send 20.00 DFEE from the treasury to Alice (no fees, the treasury
///    is exempt)
/// 6. Send 10.00 DFEE from Alice to Bob and check who received what
/// 7. Read the fee schedule back from the Mirror Node
/// 8. Replace the schedule with one fixed fee of 2 HBAR
/// 9. Update the schedule without the fee schedule key (rejected)
/// 10. Clear the schedule, then clear it again (rejected)
/// 11. Print final summary
///
/// Rejected transactions are expected in this example. They show up as
/// a HederaStatusException carrying the status code returned by the
/// network, which the example catches and prints.
///
/// Token balances and the fee schedule are read from the Mirror Node,
/// which needs a few seconds to reflect what just happened, so every
/// read below is retried for a short time.
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/define-a-custom-fee
///
/// Required environment variables:
/// ```sh
/// export HEDERA_OPERATOR_ID=0.0.XXXXX
/// export HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase3/token_custom_fees_example.dart
/// ```
///
/// You can get a free testnet account and HBAR at:
/// https://portal.hedera.com
Future<void> tokenCustomFeesExample() async {
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
  print('  hedera_flutter_sdk - Custom Fees');
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
  print('Mirror Node: ${client.mirrorNodeBaseUrl}');
  print('');

  // Amounts in the smallest unit of DFEE (2 decimals).
  const aliceFunding = 2000; // 20.00 DFEE
  const transferUnits = 1000; // 10.00 DFEE
  const expectedFee = 10; // 1% of 1000 units, between the min and the max

  try {
    // ---- Step 2: Create the accounts ----

    print('-------- Creating accounts --------');

    final treasury = await _createAccount(client, 'treasury', Hbar(5));
    final collector = await _createAccount(client, 'fee collector', Hbar(2));
    final alice = await _createAccount(client, 'Alice', Hbar(5));
    final bob = await _createAccount(client, 'Bob', Hbar(2));
    print('');

    // ---- Step 3: Create the token with custom fees ----

    print('-------- Creating the token with custom fees --------');

    // Without a fee schedule key the fees could never be changed.
    final feeSchedulePrivateKey = await PrivateKey.generateED25519();
    final feeSchedulePublicKey = await feeSchedulePrivateKey.derivePublicKey();

    // 1% of every transfer, at least 1 unit and at most 100 units. The
    // receiver pays it (the default), so it is deducted from the amount
    // that arrives.
    final fractionalFee = CustomFractionalFee()
        .setFeeCollectorAccountId(collector.id)
        .setNumerator(1)
        .setDenominator(100)
        .setMin(1)
        .setMax(100);

    // 1 HBAR per transfer, paid by the sender on top of the amount.
    final hbarFee = CustomFixedFee()
        .setFeeCollectorAccountId(collector.id)
        .setHbarAmount(Hbar(1));

    final tokenTx = TokenCreateTransaction()
        .setTokenName('Demo Fee Coin')
        .setTokenSymbol('DFEE')
        .setDecimals(2)
        .setInitialSupply(10000) // 100.00 DFEE
        .setTreasuryAccountId(treasury.id)
        .setFeeScheduleKey(feeSchedulePublicKey)
        .setCustomFees([fractionalFee, hbarFee])
        .setTokenMemo('hedera_flutter_sdk - custom fees demo token')
        .setMaxTransactionFee(Hbar(60));

    // The treasury key must sign (the treasury receives the initial
    // supply). The operator (fee payer) must also sign explicitly.
    await tokenTx.signWith(treasury.key, client);
    await tokenTx.signWith(collector.key, client);
    await tokenTx.signWith(operatorKey, client);

    final tokenResponse = await tokenTx.execute(client);
    final tokenReceipt = await tokenResponse.getReceipt(client);
    final tokenId = TokenId.fromString(tokenReceipt.tokenId!);

    print('Token ID: $tokenId (Demo Fee Coin / DFEE)');
    print('');

    // ---- Step 4: Associate the collector, Alice and Bob ----

    print('-------- Associating accounts with the token --------');

    // The network associated the fee collector with the token when it
    // was created, because the fractional fee is charged in this same
    // token. Asking again is harmless: the status below shows it.
    final collectorStatus =
        await _associate(client, tokenId, collector, operatorKey);
    print('Fee collector association: $collectorStatus');

    final aliceStatus = await _associate(client, tokenId, alice, operatorKey);
    print('Alice association:         $aliceStatus');

    final bobStatus = await _associate(client, tokenId, bob, operatorKey);
    print('Bob association:           $bobStatus');
    print('');

    // ---- Step 5: Treasury to Alice (exempt from fees) ----

    print('-------- Treasury sends 20.00 DFEE to Alice --------');

    final fundingStatus = await _transfer(
      client: client,
      tokenId: tokenId,
      from: treasury,
      to: alice,
      units: aliceFunding,
      operatorKey: operatorKey,
    );
    print('Transfer status: $fundingStatus');

    final aliceAfterFunding = await _balanceOf(
      client,
      alice.id,
      tokenId,
      expected: aliceFunding,
    );
    final collectorAfterFunding = await _balanceOf(
      client,
      collector.id,
      tokenId,
      expected: 0,
    );
    print('Alice holds:         ${_units(aliceAfterFunding)} DFEE');
    print(
      'Fee collector holds: ${_units(collectorAfterFunding)} DFEE '
      '(the treasury is exempt)',
    );
    print('');

    // ---- Step 6: Alice to Bob (fees apply) ----

    print('-------- Alice sends 10.00 DFEE to Bob --------');

    final collectorHbarBefore = await _hbarOf(client, collector.id);

    final feeTransferStatus = await _transfer(
      client: client,
      tokenId: tokenId,
      from: alice,
      to: bob,
      units: transferUnits,
      operatorKey: operatorKey,
    );
    print('Transfer status: $feeTransferStatus');

    // The receiver pays the fractional fee: Bob gets 10.00 minus 0.10.
    final bobBalance = await _balanceOf(
      client,
      bob.id,
      tokenId,
      expected: transferUnits - expectedFee,
    );
    final collectorBalance = await _balanceOf(
      client,
      collector.id,
      tokenId,
      expected: expectedFee,
    );
    final aliceBalance = await _balanceOf(
      client,
      alice.id,
      tokenId,
      expected: aliceFunding - transferUnits,
    );

    _check(
      'Bob received',
      bobBalance,
      transferUnits - expectedFee,
    );
    _check('Fee collector earned (DFEE)', collectorBalance, expectedFee);
    _check('Alice keeps', aliceBalance, aliceFunding - transferUnits);

    final collectorHbarAfter = await _hbarOf(client, collector.id);
    print('Fee collector HBAR before: $collectorHbarBefore');
    print('Fee collector HBAR after:  $collectorHbarAfter');
    print('  (the fixed fee adds 1 HBAR to the fee collector)');
    print('');

    // ---- Step 7: Read the fee schedule back ----

    print('-------- Fee schedule seen by the Mirror Node --------');

    final firstInfo = await _untilReady(
      'fee schedule',
      () => MirrorNodeTokenInfoQuery().setTokenId(tokenId).execute(client),
      isReady: (info) =>
          info.customFees.fixedFees.isNotEmpty &&
          info.customFees.fractionalFees.isNotEmpty,
    );
    print('Has fee schedule key: ${firstInfo.feeScheduleKey != null}');
    _printFees(firstInfo.customFees);
    print('');

    // ---- Step 8: Replace the schedule ----

    print(
      '-------- Replacing the schedule with a fixed fee of 2 HBAR --------',
    );

    // The new list REPLACES the old one: the fractional fee disappears.
    final replaceStatus = await _updateSchedule(
      client: client,
      tokenId: tokenId,
      fees: [
        CustomFixedFee()
            .setFeeCollectorAccountId(collector.id)
            .setHbarAmount(Hbar(2)),
      ],
      signers: [feeSchedulePrivateKey, operatorKey],
    );
    print('Update status: $replaceStatus');

    final secondInfo = await _untilReady(
      'new fee schedule',
      () => MirrorNodeTokenInfoQuery().setTokenId(tokenId).execute(client),
      isReady: (info) =>
          info.customFees.fixedFees.length == 1 &&
          info.customFees.fractionalFees.isEmpty,
    );
    _printFees(secondInfo.customFees);
    print('');

    // ---- Step 9: Update without the fee schedule key ----

    print('-------- Update signed without the fee schedule key --------');

    // Only the operator signs, so the network rejects the update.
    final wrongKeyStatus = await _updateSchedule(
      client: client,
      tokenId: tokenId,
      fees: [
        CustomFixedFee()
            .setFeeCollectorAccountId(collector.id)
            .setHbarAmount(Hbar(5)),
      ],
      signers: [operatorKey],
    );
    _report(wrongKeyStatus, 'INVALID_SIGNATURE');
    print('');

    // ---- Step 10: Clear the schedule twice ----

    print('-------- Clearing the schedule --------');

    // An empty list removes every custom fee.
    final clearStatus = await _updateSchedule(
      client: client,
      tokenId: tokenId,
      fees: const [],
      signers: [feeSchedulePrivateKey, operatorKey],
    );
    _report(clearStatus, 'SUCCESS');

    final clearedInfo = await _untilReady(
      'cleared fee schedule',
      () => MirrorNodeTokenInfoQuery().setTokenId(tokenId).execute(client),
      isReady: (info) =>
          info.customFees.fixedFees.isEmpty &&
          info.customFees.fractionalFees.isEmpty,
    );
    _printFees(clearedInfo.customFees);

    // Clearing a schedule that is already empty is rejected.
    final clearAgainStatus = await _updateSchedule(
      client: client,
      tokenId: tokenId,
      fees: const [],
      signers: [feeSchedulePrivateKey, operatorKey],
    );
    _report(clearAgainStatus, 'CUSTOM_SCHEDULE_ALREADY_HAS_NO_FEES');
    print('');

    // ---- Step 11: Print final summary ----

    print('========================================');
    print('  Summary');
    print('========================================');
    print('');
    print('Operator:      $operatorIdStr');
    print('Treasury:      ${treasury.id}');
    print('Fee collector: ${collector.id}');
    print('Alice:         ${alice.id}');
    print('Bob:           ${bob.id}');
    print('');
    print('Token:         $tokenId (Demo Fee Coin / DFEE)');
    print('');
    print('Alice to Bob, 10.00 DFEE:');
    print('  Bob received:     ${_units(bobBalance)} DFEE');
    print('  Collector earned: ${_units(collectorBalance)} DFEE + 1 HBAR');
    print('');
    print('Schedule changes:');
    print('  Replace with fixed 2 HBAR: $replaceStatus');
    print('  Without fee schedule key:  $wrongKeyStatus');
    print('  Clear:                     $clearStatus');
    print('  Clear again:               $clearAgainStatus');
    print('');
    print('View on HashScan (testnet):');
    print('  Token:     https://hashscan.io/testnet/token/$tokenId');
    print(
      '  Collector: https://hashscan.io/testnet/account/${collector.id}',
    );
    print('  Alice:     https://hashscan.io/testnet/account/${alice.id}');
    print('  Bob:       https://hashscan.io/testnet/account/${bob.id}');
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

/// Creates an account funded with [balance] and returns its ID and key.
Future<({AccountId id, PrivateKey key})> _createAccount(
  HederaClient client,
  String label,
  Hbar balance,
) async {
  final privateKey = await PrivateKey.generateED25519();
  final publicKey = await privateKey.derivePublicKey();

  final response = await AccountCreateTransaction()
      .setKey(publicKey)
      .setInitialBalance(balance)
      .setMemo('hedera_flutter_sdk - custom fees demo $label')
      .execute(client);

  final receipt = await response.getReceipt(client);
  final accountId = AccountId.fromString(receipt.accountId!);
  print('${label[0].toUpperCase()}${label.substring(1)} account: $accountId');
  return (id: accountId, key: privateKey);
}

/// Associates [account] with [tokenId] and returns the resulting status
/// name.
///
/// A rejection by the network is returned as the name of its status
/// code instead of being thrown, because the fee collector may already
/// be associated by the network.
Future<String> _associate(
  HederaClient client,
  TokenId tokenId,
  ({AccountId id, PrivateKey key}) account,
  PrivateKey operatorKey,
) async {
  try {
    final tx = TokenAssociateTransaction()
        .setAccountId(account.id)
        .addTokenId(tokenId);

    // The account must sign its own association; the operator pays.
    await tx.signWith(account.key, client);
    await tx.signWith(operatorKey, client);

    final response = await tx.execute(client);
    final receipt = await response.getReceipt(client);
    return receipt.status;
  } on HederaStatusException catch (e) {
    return e.statusCode.name;
  }
}

/// Transfers [units] of [tokenId] from [from] to [to] and returns the
/// resulting status name.
Future<String> _transfer({
  required HederaClient client,
  required TokenId tokenId,
  required ({AccountId id, PrivateKey key}) from,
  required ({AccountId id, PrivateKey key}) to,
  required int units,
  required PrivateKey operatorKey,
}) async {
  try {
    final tx = CryptoTransferTransaction()
        .addTokenTransfer(tokenId, from.id, -units)
        .addTokenTransfer(tokenId, to.id, units);

    // The sender must sign; the operator signs as fee payer.
    await tx.signWith(from.key, client);
    await tx.signWith(operatorKey, client);

    final response = await tx.execute(client);
    final receipt = await response.getReceipt(client);
    return receipt.status;
  } on HederaStatusException catch (e) {
    return e.statusCode.name;
  }
}

/// Replaces the fee schedule of [tokenId] with [fees], signed by
/// [signers], and returns the resulting status name.
///
/// A rejection by the network (at submission or in the receipt) is
/// returned as the name of its status code instead of being thrown,
/// because several steps in this example expect to be rejected.
Future<String> _updateSchedule({
  required HederaClient client,
  required TokenId tokenId,
  required List<CustomFee> fees,
  required List<PrivateKey> signers,
}) async {
  try {
    final tx = TokenFeeScheduleUpdateTransaction()
        .setTokenId(tokenId)
        .setCustomFees(fees);

    for (final signer in signers) {
      await tx.signWith(signer, client);
    }

    final response = await tx.execute(client);
    final receipt = await response.getReceipt(client);
    return receipt.status;
  } on HederaStatusException catch (e) {
    return e.statusCode.name;
  }
}

/// Reads the balance of [accountId] for [tokenId] from the Mirror Node,
/// waiting until it equals [expected] (or the attempts run out).
Future<int> _balanceOf(
  HederaClient client,
  AccountId accountId,
  TokenId tokenId, {
  required int expected,
}) async {
  final balances = await _untilReady(
    'token balance of $accountId',
    () => MirrorNodeTokenBalanceQuery()
        .setAccountId(accountId)
        .setTokenId(tokenId)
        .execute(client),
    isReady: (list) => list.isNotEmpty && list.first.balance == expected,
  );
  return balances.isEmpty ? 0 : balances.first.balance;
}

/// Reads the HBAR balance of [accountId] from the Mirror Node.
Future<Object> _hbarOf(HederaClient client, AccountId accountId) async {
  final balance = await _untilReady(
    'HBAR balance of $accountId',
    () =>
        MirrorNodeAccountBalanceQuery().setAccountId(accountId).execute(client),
  );
  return balance.hbars;
}

/// Prints every fee of [fees] in a readable form.
void _printFees(MirrorNodeCustomFees fees) {
  print('Fixed fees:      ${fees.fixedFees.length}');
  for (final fee in fees.fixedFees) {
    final denomination = fee.denominatingTokenId ?? 'HBAR (tinybars)';
    print(
      '  ${fee.amount} in $denomination, '
      'collector ${fee.collectorAccountId}',
    );
  }
  print('Fractional fees: ${fees.fractionalFees.length}');
  for (final fee in fees.fractionalFees) {
    final payer = fee.netOfTransfers ? 'sender pays' : 'receiver pays';
    print(
      '  ${fee.numerator}/${fee.denominator}, min ${fee.minimum}, '
      'max ${fee.maximum ?? 'none'}, $payer, '
      'collector ${fee.collectorAccountId}',
    );
  }
  print('Royalty fees:    ${fees.royaltyFees.length}');
}

/// Formats [units] of DFEE (2 decimals) for display.
String _units(int units) => (units / 100).toStringAsFixed(2);

/// Prints [label] with its [actual] value and whether it matches
/// [expected] units.
void _check(String label, int actual, int expected) {
  final verdict = actual == expected ? 'as expected' : 'UNEXPECTED';
  print('$label: ${_units(actual)} DFEE ($verdict, expected '
      '${_units(expected)})');
}

/// Prints the outcome of an update and whether it matches [expected].
void _report(String outcome, String expected) {
  final verdict = outcome == expected ? 'as expected' : 'UNEXPECTED';
  print('Update result: $outcome ($verdict, expected $expected)');
}

/// Runs [action] until it succeeds and, when given, [isReady] accepts
/// the value.
///
/// The Mirror Node ingests the network records a few seconds after
/// consensus, so a read right after a transaction can fail or return
/// stale data. After [attempts] tries the last value is returned as it
/// is, or the last error is rethrown.
Future<T> _untilReady<T>(
  String label,
  Future<T> Function() action, {
  bool Function(T value)? isReady,
  int attempts = 10,
  Duration wait = const Duration(seconds: 2),
}) async {
  for (var attempt = 1;; attempt++) {
    try {
      final value = await action();
      if (isReady == null || isReady(value) || attempt >= attempts) {
        return value;
      }
    } on HederaStatusException {
      if (attempt >= attempts) rethrow;
    } on MirrorNodeException {
      if (attempt >= attempts) rethrow;
    }
    print('  ($label not visible in Mirror yet, attempt $attempt/$attempts)');
    await Future<void>.delayed(wait);
  }
}

Future<void> main() async {
  await tokenCustomFeesExample();
}
