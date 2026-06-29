import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

import '../integration_test_helper.dart';

/// Integration test for Scenario 2: non-operator account signs a transfer.
///
/// Alice sends HBAR to the operator. Alice's private key signs the
/// transaction and pays the fees - NOT the operator key.
///
/// Set environment variables before running:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// set HEDERA_ALICE_ID=0.0.XXXXX
/// set HEDERA_ALICE_KEY=302e...
/// flutter test test/integration/transactions/crypto_transfer_sign_test.dart
/// ```
void main() {
  late HederaClient client;

  setUpAll(() {
    if (!IntegrationTestHelper.hasCredentials) return;
    client = IntegrationTestHelper.buildClient();
  });

  tearDownAll(() async {
    if (!IntegrationTestHelper.hasCredentials) return;
    await client.close();
  });

  group('CryptoTransferTransaction sign() integration', () {
    test('skip if no credentials', () {
      if (!IntegrationTestHelper.hasCredentials ||
          Platform.environment['HEDERA_ALICE_ID'] == null ||
          Platform.environment['HEDERA_ALICE_KEY'] == null) {
        markTestSkipped(
          'Skipping: HEDERA_OPERATOR_ID, HEDERA_OPERATOR_KEY, '
          'HEDERA_ALICE_ID and HEDERA_ALICE_KEY must be set.',
        );
        return;
      }
    });

    test(
      'Alice signs and transfers HBAR to operator',
      () async {
        if (!IntegrationTestHelper.hasCredentials) return;

        final aliceIdStr = Platform.environment['HEDERA_ALICE_ID'];
        final aliceKeyStr = Platform.environment['HEDERA_ALICE_KEY'];

        if (aliceIdStr == null || aliceKeyStr == null) {
          markTestSkipped(
            'Skipping: HEDERA_ALICE_ID and HEDERA_ALICE_KEY not set.',
          );
          return;
        }

        final operatorAccountId = IntegrationTestHelper.operatorId.toString();
        final aliceAccountId = aliceIdStr;
        final alicePrivateKey = PrivateKey.fromString(aliceKeyStr);

        // Step 1: Build the transfer transaction.
        // Alice sends 2 HBAR to the operator.
        // Alice signs with her own key and pays her own fees.
        final tx = await CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString(aliceAccountId),
              Hbar(-2),
            )
            .addHbarTransfer(
              AccountId.fromString(operatorAccountId),
              Hbar(2),
            )
            .setMemo('hedera_flutter_sdk Alice signs transfer test')
            .setPayerAccountId(AccountId.fromString(aliceAccountId))
            .signWith(alicePrivateKey, client);

        final response = await tx.execute(client);

        expect(response.transactionId, isNotNull);
        print('\nAlice sign TX ID: ${response.transactionId}');

        // Step 2: Wait for consensus and verify SUCCESS.
        final receipt = await response.getReceipt(client);

        print('Transfer receipt status: ${receipt.status}');
        print('Sender:   $aliceAccountId (signed with Alice key)');
        print('Receiver: $operatorAccountId');
        print('Amount:   2 HBAR');
        print(
          'HashScan: https://hashscan.io/testnet/account/$aliceAccountId',
        );

        expect(receipt.status, equals('SUCCESS'));
      },
      timeout: const Timeout(Duration(seconds: 60)),
    );
  });
}
