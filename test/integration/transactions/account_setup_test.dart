import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

import '../integration_test_helper.dart';

/// Setup test to create a new testnet account and print its credentials.
///
/// Run this test once to generate a funded account for transfer tests.
/// Copy the printed credentials into the transfer integration test.
///
/// Set environment variables before running:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.9186292
/// set HEDERA_OPERATOR_KEY=302e...
/// flutter test test/integration/transactions/account_setup_test.dart
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

  group('Account Setup', () {
    test(
      'create new account and print credentials',
      () async {
        if (!IntegrationTestHelper.hasCredentials) {
          markTestSkipped(
            'Skipping: HEDERA_OPERATOR_ID and HEDERA_OPERATOR_KEY '
            'environment variables not set.',
          );
          return;
        }

        // Step 1: Generate a new ED25519 key pair.
        final newPrivateKey = await PrivateKey.generateED25519();
        final newPublicKey = await newPrivateKey.derivePublicKey();

        // Step 2: Print the private and public key BEFORE creating
        // the account, so we have them even if the test fails.
        print('\n========== NEW ACCOUNT CREDENTIALS ==========');
        print('Private Key (DER): ${newPrivateKey.toDerString()}');
        print('Public Key  (HEX): ${newPublicKey.toHex()}');
        print('==============================================\n');

        // Step 3: Create the account on testnet with 5 HBAR initial balance.
        // The operator (0.0.9186292) pays the creation fee and funds
        // the account.
        final response = await AccountCreateTransaction()
            .setKey(newPublicKey)
            .setInitialBalance(Hbar(5))
            .setMemo('hedera_flutter_sdk transfer test account')
            .execute(client);

        // Step 4: Wait for consensus and get the new account ID.
        final receipt = await response.getReceipt(client);

        // Step 5: Print the complete credentials for the new account.
        print('\n========== ACCOUNT CREATED SUCCESSFULLY ==========');
        print('Account ID:        ${receipt.accountId}');
        print('Initial Balance:   5 HBAR');
        print('Private Key (DER): ${newPrivateKey.toDerString()}');
        print('Public Key  (HEX): ${newPublicKey.toHex()}');
        print('HashScan: https://hashscan.io/testnet/account/'
            '${receipt.accountId}');
        print('==================================================\n');

        expect(receipt.status, equals('SUCCESS'));
        expect(receipt.accountId, isNotNull);
        expect(receipt.accountId, isNotEmpty);
      },
      timeout: const Timeout(Duration(seconds: 60)),
    );
  });
}
