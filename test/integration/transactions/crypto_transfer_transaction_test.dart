import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

import '../integration_test_helper.dart';

/// Integration tests for CryptoTransferTransaction.
///
/// These tests require a real Hedera testnet connection.
/// Set environment variables before running:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// flutter test test/integration/transactions/crypto_transfer_transaction_test.dart
/// ```
///
/// Transfer accounts used in these tests:
/// - Sender (operator): read from HEDERA_OPERATOR_ID
/// - Receiver:          0.0.9365895 (created via account_setup_test.dart)
void main() {
  late HederaClient client;
  late String senderAccountId;

  // Receiver: account created via account_setup_test.dart.
  const receiverAccountId = '0.0.9365895';

  setUpAll(() {
    if (!IntegrationTestHelper.hasCredentials) return;
    client = IntegrationTestHelper.buildClient();
    senderAccountId = IntegrationTestHelper.operatorId.toString();
  });

  tearDownAll(() async {
    if (!IntegrationTestHelper.hasCredentials) return;
    await client.close();
  });

  group('CryptoTransferTransaction integration', () {
    test('skip if no credentials', () {
      if (!IntegrationTestHelper.hasCredentials) {
        markTestSkipped(
          'Skipping: HEDERA_OPERATOR_ID and HEDERA_OPERATOR_KEY '
          'environment variables not set.',
        );
        return;
      }
    });

    test(
      'transfers HBAR from operator to receiver',
      () async {
        if (!IntegrationTestHelper.hasCredentials) return;

        // Step 1: Build and submit a CryptoTransferTransaction.
        // Transfer 1 HBAR from the operator account to the receiver.
        // Amounts must sum to zero: -1 HBAR (sender) + 1 HBAR (receiver) = 0.
        final response = await CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString(senderAccountId),
              Hbar(-1),
            )
            .addHbarTransfer(
              AccountId.fromString(receiverAccountId),
              Hbar(1),
            )
            .setMemo('hedera_flutter_sdk transfer integration test')
            .execute(client);

        // Step 2: Verify the transaction was accepted by the network.
        expect(response.transactionId, isNotNull);
        expect(response.transactionId.accountId, isNotEmpty);

        print('\nTransfer TX ID: ${response.transactionId}');
      },
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'getReceipt returns SUCCESS for HBAR transfer',
      () async {
        if (!IntegrationTestHelper.hasCredentials) return;

        // Step 1: Submit the transfer transaction.
        // Transfer 0.5 HBAR from operator to receiver.
        final response = await CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString(senderAccountId),
              Hbar.fromTinybars(-50000000), // -0.5 HBAR
            )
            .addHbarTransfer(
              AccountId.fromString(receiverAccountId),
              Hbar.fromTinybars(50000000), // +0.5 HBAR
            )
            .setMemo('hedera_flutter_sdk getReceipt transfer test')
            .execute(client);

        // Step 2: Wait for consensus and get the receipt.
        final receipt = await response.getReceipt(client);

        // Step 3: Verify the receipt.
        // Note: CryptoTransferTransaction receipt does not contain accountId
        // or tokenId - only the status confirming the transfer succeeded.
        print('\nTransfer receipt status: ${receipt.status}');
        print('Sender:   $senderAccountId');
        print('Receiver: $receiverAccountId');
        print('Amount:   0.5 HBAR');
        print(
          'HashScan: https://hashscan.io/testnet/account/$receiverAccountId',
        );

        expect(receipt.status, equals('SUCCESS'));
      },
      timeout: const Timeout(Duration(seconds: 60)),
    );
  });
}
