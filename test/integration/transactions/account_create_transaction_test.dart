import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

import '../integration_test_helper.dart';

/// Integration tests for AccountCreateTransaction.
///
/// These tests require a real Hedera testnet connection.
/// Set environment variables before running:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.XXXXX
/// set HEDERA_OPERATOR_KEY=302e...
/// flutter test test/integration/account_create_transaction_test.dart
/// ```
void main() {
  late HederaClient client;
  late PrivateKey newAccountKey;

  setUpAll(() async {
    if (!IntegrationTestHelper.hasCredentials) return;
    client = IntegrationTestHelper.buildClient();
    newAccountKey = await PrivateKey.generateED25519();
  });

  tearDownAll(() async {
    if (!IntegrationTestHelper.hasCredentials) return;
    await client.close();
  });

  group('AccountCreateTransaction integration', () {
    // Tests the complete flow of creating a Hedera account on testnet:
    //
    // 1. Generate a new ED25519 key pair
    // 2. Build AccountCreateTransaction with key and initial balance
    // 3. Sign automatically with the operator key via execute()
    // 4. Submit to Hedera testnet via gRPC (CryptoService.createAccount)
    // 5. Verify the transaction was accepted (precheck OK)
    //
    // Prerequisites:
    // - HEDERA_OPERATOR_ID: an existing testnet account (e.g. 0.0.9186292)
    // - HEDERA_OPERATOR_KEY: the ED25519 private key for that account
    // - The operator account must have sufficient HBAR to pay fees
    //    and fund the initial balance of the new account
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
      'creates a new account on testnet',
      () async {
        if (!IntegrationTestHelper.hasCredentials) return;

        // Step 1: Generate a new ED25519 key pair for the new account.
        // This key will control the newly created account — whoever holds
        // this private key can sign transactions on behalf of the account.
        final publicKey = await newAccountKey.derivePublicKey();

        // Step 2: Build and submit an AccountCreateTransaction.
        // The operator account (HEDERA_OPERATOR_ID) pays the transaction
        // fee and funds the initial balance of the new account.
        // The transaction is automatically signed with the operator key.
        final response = await AccountCreateTransaction()
            // The key that will control the new account (required).
            .setKey(publicKey)
            // Transfer 1 HBAR from the operator to the new account
            // as its initial balance.
            .setInitialBalance(Hbar(1))
            // Optional memo to identify this account on the network.
            .setMemo('hedera_flutter_sdk integration test')
            // Sign and submit to Hedera testnet via gRPC.
            // This deducts 1 HBAR + transaction fees from the operator.
            .execute(client);

        // Step 3: Verify the transaction was accepted by the network.
        // At this point the node has accepted the transaction (precheck OK)
        // and it is pending consensus. Call getReceipt() to wait for
        // consensus and retrieve the new account ID.
        expect(response.transactionId, isNotNull);
        expect(response.transactionId.accountId, isNotEmpty);
      },
      timeout: const Timeout(Duration(seconds: 30)),
    );
  });
}
