import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// NFT Example - hedera_flutter_sdk
///
/// This example demonstrates non-fungible tokens (NFTs) on the Hedera
/// Token Service (HTS), using the same transaction classes as
/// fungible tokens:
///
/// 1. Connect to Hedera testnet using an operator account
/// 2. Create a treasury account and an NFT collection
///    (TokenType.NON_FUNGIBLE_UNIQUE, with a supply key)
/// 3. Mint 3 NFTs with TokenMintTransaction.addMetadata(); the receipt
///    returns their serial numbers
/// 4. Create Alice's account and associate her with the collection
/// 5. Transfer NFT serial 1 from the treasury to Alice with
///    CryptoTransferTransaction.addNftTransfer()
/// 6. Burn the last NFT (still owned by the treasury) with
///    TokenBurnTransaction.addSerial()
/// 7. Demonstrate two local (no network call) validation errors
/// 8. Print final summary
///
/// Fungible vs NFT, with the same classes:
/// - TokenMintTransaction: setAmount() for fungible, addMetadata()
///   for NFT (one of the two, never both)
/// - TokenBurnTransaction: setAmount() for fungible, addSerial() for
///   NFT (one of the two, never both)
/// - CryptoTransferTransaction: addTokenTransfer() for fungible,
///   addNftTransfer() for NFT
///
/// The NFT counts printed below are tracked locally by this example;
/// they are not read back from the network.
///
/// See: https://docs.hedera.com/hedera/tutorials/token/create-and-transfer-your-first-nft
///
/// Required environment variables:
/// ```sh
/// export HEDERA_OPERATOR_ID=0.0.XXXXX
/// export HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase3/token_nft_example.dart
/// ```
///
/// You can get a free testnet account and HBAR at:
/// https://portal.hedera.com
Future<void> tokenNftExample() async {
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
  print('  hedera_flutter_sdk - NFT Support');
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
    // ---- Step 2: Create treasury account and NFT collection ----

    print('-------- Creating treasury account and NFT collection --------');

    final treasuryPrivateKey = await PrivateKey.generateED25519();
    final treasuryPublicKey = await treasuryPrivateKey.derivePublicKey();

    final treasuryCreateResponse = await AccountCreateTransaction()
        .setKey(treasuryPublicKey)
        .setInitialBalance(Hbar(20))
        .setMemo('hedera_flutter_sdk - NFT demo treasury')
        .execute(client);

    final treasuryReceipt = await treasuryCreateResponse.getReceipt(client);
    final treasuryAccountId = AccountId.fromString(treasuryReceipt.accountId!);
    print('Treasury Account ID: $treasuryAccountId');

    // The supply key is what allows minting and burning later. An NFT
    // collection must be created with decimals 0 and initial supply 0
    // (the defaults); NFTs only exist once they are minted.
    final supplyPrivateKey = await PrivateKey.generateED25519();
    final supplyPublicKey = await supplyPrivateKey.derivePublicKey();

    final collectionTx = TokenCreateTransaction()
        .setTokenName('Demo Art')
        .setTokenSymbol('DART')
        .setTokenType(TokenType.NON_FUNGIBLE_UNIQUE)
        .setTreasuryAccountId(treasuryAccountId)
        .setSupplyKey(supplyPublicKey)
        .setTokenMemo('hedera_flutter_sdk - NFT demo collection')
        .setMaxTransactionFee(Hbar(30));

    // The treasury key must sign (the treasury is auto-associated with
    // the token). The operator (fee payer) must also sign explicitly.
    await collectionTx.signWith(treasuryPrivateKey, client);
    await collectionTx.signWith(operatorKey, client);

    final collectionResponse = await collectionTx.execute(client);
    final collectionReceipt = await collectionResponse.getReceipt(client);
    final tokenId = TokenId.fromString(collectionReceipt.tokenId!);

    print('Collection Token ID: $tokenId (Demo Art / DART)');
    print('');

    // ---- Step 3: Mint 3 NFTs ----

    print('-------- Minting 3 NFTs --------');

    // Each metadata entry mints one NFT. Metadata is limited to 100
    // bytes and is usually a URI (for example IPFS, see HIP-412).
    // The network limits how many NFTs fit in one mint transaction;
    // this example stays well below that.
    final mintTx = TokenMintTransaction()
        .setTokenId(tokenId)
        .addMetadata(_metadata('ipfs://bafyDemoArt1'))
        .addMetadata(_metadata('ipfs://bafyDemoArt2'))
        .addMetadata(_metadata('ipfs://bafyDemoArt3'))
        .setMaxTransactionFee(Hbar(20));

    // The supply key must sign the mint. The operator also signs
    // explicitly as fee payer.
    await mintTx.signWith(supplyPrivateKey, client);
    await mintTx.signWith(operatorKey, client);

    final mintResponse = await mintTx.execute(client);
    final mintReceipt = await mintResponse.getReceipt(client);

    final serials = mintReceipt.serialNumbers;
    final nftIds = serials.map((serial) => NftId(tokenId, serial)).join(', ');

    print('Mint status: ${mintReceipt.status}');
    print('Serial numbers: $serials');
    print('NFT IDs: $nftIds');
    print('Treasury owns: ${serials.length} NFTs (local)');
    print('');

    final transferSerial = serials.first;
    final burnSerial = serials.last;

    // ---- Step 4: Create and associate Alice ----

    print("-------- Creating and associating Alice's account --------");

    final alicePrivateKey = await PrivateKey.generateED25519();
    final alicePublicKey = await alicePrivateKey.derivePublicKey();

    final aliceCreateResponse = await AccountCreateTransaction()
        .setKey(alicePublicKey)
        .setInitialBalance(Hbar(5))
        .setMemo('hedera_flutter_sdk - NFT demo Alice')
        .execute(client);

    final aliceReceipt = await aliceCreateResponse.getReceipt(client);
    final aliceAccountId = AccountId.fromString(aliceReceipt.accountId!);
    print('Alice Account ID: $aliceAccountId');

    // Association works the same as for fungible tokens. Alice's key
    // must sign, since she is the account being associated.
    final associateTx = TokenAssociateTransaction()
        .setAccountId(aliceAccountId)
        .addTokenId(tokenId);

    await associateTx.signWith(alicePrivateKey, client);
    await associateTx.signWith(operatorKey, client);

    final associateResponse = await associateTx.execute(client);
    final associateReceipt = await associateResponse.getReceipt(client);

    print('Association status: ${associateReceipt.status}');
    print('');

    // ---- Step 5: Transfer one NFT to Alice ----

    final transferNft = NftId(tokenId, transferSerial);
    print('-------- Transferring NFT $transferNft to Alice --------');

    // The current owner (the treasury) must sign the transfer.
    final transferTx = CryptoTransferTransaction()
        .addNftTransfer(transferNft, treasuryAccountId, aliceAccountId);

    await transferTx.signWith(treasuryPrivateKey, client);
    await transferTx.signWith(operatorKey, client);

    final transferResponse = await transferTx.execute(client);
    final transferReceipt = await transferResponse.getReceipt(client);

    print('Transfer status: ${transferReceipt.status}');
    print('Alice owns: 1 NFT (local)');
    print('Treasury owns: 2 NFTs (local)');
    print('');

    // ---- Step 6: Burn one NFT ----

    final burnNft = NftId(tokenId, burnSerial);
    print('-------- Burning NFT $burnNft --------');

    // NFTs can only be burned while they are in the treasury. The
    // supply key must sign the burn.
    final burnTx = TokenBurnTransaction()
        .setTokenId(tokenId)
        .addSerial(burnSerial)
        .setMaxTransactionFee(Hbar(20));

    await burnTx.signWith(supplyPrivateKey, client);
    await burnTx.signWith(operatorKey, client);

    final burnResponse = await burnTx.execute(client);
    final burnReceipt = await burnResponse.getReceipt(client);

    print('Burn status: ${burnReceipt.status}');
    print('Treasury owns: 1 NFT (local)');
    print('');

    // ---- Step 7: Local validation errors ----

    print('-------- Demonstrating local validation --------');

    // A mint takes either an amount (fungible) or metadata (NFT).
    print('Error case: amount and metadata in the same mint');
    try {
      TokenMintTransaction()
          .setTokenId(tokenId)
          .setAmount(10)
          .addMetadata(_metadata('ipfs://bafyDemoArt4'))
          .toBytes();
      print('Unexpected: no error was thrown.');
    }
    // This example deliberately catches ArgumentError to demonstrate
    // the validation, rather than letting it crash the program.
    // ignore: avoid_catching_errors
    on ArgumentError catch (e) {
      print('Caught (expected): ${e.message}');
    }
    print('');

    // An NFT collection requires decimals 0 and initial supply 0.
    print('Error case: NFT collection with decimals');
    try {
      TokenCreateTransaction()
          .setTokenName('Bad Art')
          .setTokenSymbol('BAD')
          .setTokenType(TokenType.NON_FUNGIBLE_UNIQUE)
          .setDecimals(2)
          .setTreasuryAccountId(treasuryAccountId)
          .toBytes();
      print('Unexpected: no error was thrown.');
    }
    // Same deliberate catch as above.
    // ignore: avoid_catching_errors
    on ArgumentError catch (e) {
      print('Caught (expected): ${e.message}');
    }
    print('');

    // ---- Step 8: Print final summary ----

    print('========================================');
    print('  Summary');
    print('========================================');
    print('');
    print('Operator: $operatorIdStr');
    print('');
    print('Collection:  $tokenId (Demo Art / DART)');
    print('Minted:      ${serials.join(', ')}');
    print('Alice owns:  $transferNft');
    print('Burned:      $burnNft');
    print('Treasury:    ${serials[1]} (kept)');
    print('');
    print('View on HashScan (testnet):');
    print(
      '  Collection: https://hashscan.io/testnet/token/$tokenId',
    );
    print(
      '  Treasury:   https://hashscan.io/testnet/account/$treasuryAccountId',
    );
    print(
      '  Alice:      https://hashscan.io/testnet/account/$aliceAccountId',
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

Uint8List _metadata(String value) => Uint8List.fromList(utf8.encode(value));

Future<void> main() async {
  await tokenNftExample();
}
