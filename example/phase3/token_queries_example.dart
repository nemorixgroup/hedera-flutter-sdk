import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// Token Queries Example - hedera_flutter_sdk
///
/// This example reads token data back from the network with the Mirror
/// Node queries. They are free, need no operator account to be paid
/// and replace the consensus queries that Hedera removed or deprecated.
///
/// Setup (consensus transactions, paid by the operator):
///
/// 1. Connect to Hedera testnet using an operator account
/// 2. Create a treasury account and a fungible token with a KYC key
/// 3. Create Alice, associate her, grant KYC and send her 10.00 DQRY
/// 4. Create an NFT collection, mint 2 NFTs, associate Alice with it
///    and transfer serial 1 to her
///
/// Reads (Mirror Node REST):
///
/// 5. MirrorNodeAccountBalanceQuery: HBAR balance of Alice
/// 6. MirrorNodeTokenBalanceQuery: all of Alice's token balances, then
///    only one token (balance, KYC status and freeze status)
/// 7. MirrorNodeTokenInfoQuery: the fungible token and the collection
/// 8. MirrorNodeTokenNftInfoQuery: owner and metadata of each NFT
/// 9. Expected errors: unknown token and unknown NFT serial
/// 10. Print final summary
///
/// The Mirror Node needs a few seconds to reflect what just happened
/// on the network, so every read below is retried for a short time.
///
/// See: https://docs.hedera.com/hedera/sdks-and-apis/rest-api
///
/// Required environment variables:
/// ```sh
/// export HEDERA_OPERATOR_ID=0.0.XXXXX
/// export HEDERA_OPERATOR_KEY=302e...
/// dart run example/phase3/token_queries_example.dart
/// ```
///
/// You can get a free testnet account and HBAR at:
/// https://portal.hedera.com
Future<void> tokenQueriesExample() async {
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
  print('  hedera_flutter_sdk - Token Queries');
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

  // 10.00 DQRY (2 decimals) go to Alice.
  const aliceUnits = 1000;

  try {
    // ---- Step 2: Treasury account and fungible token ----

    print('-------- Creating treasury account and fungible token --------');

    final treasuryPrivateKey = await PrivateKey.generateED25519();
    final treasuryPublicKey = await treasuryPrivateKey.derivePublicKey();

    final treasuryCreateResponse = await AccountCreateTransaction()
        .setKey(treasuryPublicKey)
        .setInitialBalance(Hbar(20))
        .setMemo('hedera_flutter_sdk - queries demo treasury')
        .execute(client);

    final treasuryReceipt = await treasuryCreateResponse.getReceipt(client);
    final treasuryAccountId = AccountId.fromString(treasuryReceipt.accountId!);
    print('Treasury Account ID: $treasuryAccountId');

    // The KYC key makes the KYC status visible in the token balances.
    final kycPrivateKey = await PrivateKey.generateED25519();
    final kycPublicKey = await kycPrivateKey.derivePublicKey();
    final freezePrivateKey = await PrivateKey.generateED25519();
    final freezePublicKey = await freezePrivateKey.derivePublicKey();

    final tokenTx = TokenCreateTransaction()
        .setTokenName('Demo Query Coin')
        .setTokenSymbol('DQRY')
        .setDecimals(2)
        .setInitialSupply(10000) // 100.00 DQRY
        .setTreasuryAccountId(treasuryAccountId)
        .setKycKey(kycPublicKey)
        .setFreezeKey(freezePublicKey)
        .setTokenMemo('hedera_flutter_sdk - token queries demo')
        .setMaxTransactionFee(Hbar(30));

    await tokenTx.signWith(treasuryPrivateKey, client);
    await tokenTx.signWith(operatorKey, client);

    final tokenResponse = await tokenTx.execute(client);
    final tokenReceipt = await tokenResponse.getReceipt(client);
    final tokenId = TokenId.fromString(tokenReceipt.tokenId!);

    print('Token ID: $tokenId (Demo Query Coin / DQRY)');
    print('');

    // ---- Step 3: Alice, association, KYC and transfer ----

    print("-------- Creating Alice's account and funding her --------");

    final alicePrivateKey = await PrivateKey.generateED25519();
    final alicePublicKey = await alicePrivateKey.derivePublicKey();

    final aliceCreateResponse = await AccountCreateTransaction()
        .setKey(alicePublicKey)
        .setInitialBalance(Hbar(5))
        .setMemo('hedera_flutter_sdk - queries demo Alice')
        .execute(client);

    final aliceReceipt = await aliceCreateResponse.getReceipt(client);
    final aliceAccountId = AccountId.fromString(aliceReceipt.accountId!);
    print('Alice Account ID: $aliceAccountId');

    final associateTx = TokenAssociateTransaction()
        .setAccountId(aliceAccountId)
        .addTokenId(tokenId);

    await associateTx.signWith(alicePrivateKey, client);
    await associateTx.signWith(operatorKey, client);

    final associateResponse = await associateTx.execute(client);
    final associateReceipt = await associateResponse.getReceipt(client);
    print('Association status: ${associateReceipt.status}');

    final grantTx = TokenGrantKycTransaction()
        .setTokenId(tokenId)
        .setAccountId(aliceAccountId);

    await grantTx.signWith(kycPrivateKey, client);
    await grantTx.signWith(operatorKey, client);

    final grantResponse = await grantTx.execute(client);
    final grantReceipt = await grantResponse.getReceipt(client);
    print('Grant KYC status: ${grantReceipt.status}');

    final transferTx = CryptoTransferTransaction()
        .addTokenTransfer(tokenId, treasuryAccountId, -aliceUnits)
        .addTokenTransfer(tokenId, aliceAccountId, aliceUnits);

    await transferTx.signWith(treasuryPrivateKey, client);
    await transferTx.signWith(operatorKey, client);

    final transferResponse = await transferTx.execute(client);
    final transferReceipt = await transferResponse.getReceipt(client);
    print('Transfer status: ${transferReceipt.status}');
    print('');

    // ---- Step 4: NFT collection, mint and transfer ----

    print('-------- Creating an NFT collection and minting --------');

    final supplyPrivateKey = await PrivateKey.generateED25519();
    final supplyPublicKey = await supplyPrivateKey.derivePublicKey();

    final collectionTx = TokenCreateTransaction()
        .setTokenName('Demo Query Art')
        .setTokenSymbol('DQART')
        .setTokenType(TokenType.NON_FUNGIBLE_UNIQUE)
        .setTreasuryAccountId(treasuryAccountId)
        .setSupplyKey(supplyPublicKey)
        .setTokenMemo('hedera_flutter_sdk - token queries demo NFT')
        .setMaxTransactionFee(Hbar(30));

    await collectionTx.signWith(treasuryPrivateKey, client);
    await collectionTx.signWith(operatorKey, client);

    final collectionResponse = await collectionTx.execute(client);
    final collectionReceipt = await collectionResponse.getReceipt(client);
    final nftTokenId = TokenId.fromString(collectionReceipt.tokenId!);
    print('Collection Token ID: $nftTokenId (Demo Query Art / DQART)');

    final mintTx = TokenMintTransaction()
        .setTokenId(nftTokenId)
        .addMetadata(_metadata('ipfs://bafyQueryArt1'))
        .addMetadata(_metadata('ipfs://bafyQueryArt2'))
        .setMaxTransactionFee(Hbar(20));

    await mintTx.signWith(supplyPrivateKey, client);
    await mintTx.signWith(operatorKey, client);

    final mintResponse = await mintTx.execute(client);
    final mintReceipt = await mintResponse.getReceipt(client);
    final serials = mintReceipt.serialNumbers;
    print('Mint status: ${mintReceipt.status}; serials: $serials');

    final nftAssociateTx = TokenAssociateTransaction()
        .setAccountId(aliceAccountId)
        .addTokenId(nftTokenId);

    await nftAssociateTx.signWith(alicePrivateKey, client);
    await nftAssociateTx.signWith(operatorKey, client);

    final nftAssociateResponse = await nftAssociateTx.execute(client);
    final nftAssociateReceipt = await nftAssociateResponse.getReceipt(client);
    print('NFT association status: ${nftAssociateReceipt.status}');

    final aliceSerial = serials.first;
    final treasurySerial = serials.last;

    final nftTransferTx = CryptoTransferTransaction().addNftTransfer(
      NftId(nftTokenId, aliceSerial),
      treasuryAccountId,
      aliceAccountId,
    );

    await nftTransferTx.signWith(treasuryPrivateKey, client);
    await nftTransferTx.signWith(operatorKey, client);

    final nftTransferResponse = await nftTransferTx.execute(client);
    final nftTransferReceipt = await nftTransferResponse.getReceipt(client);
    print('NFT transfer status: ${nftTransferReceipt.status}');
    print('');

    // ---- Step 5: HBAR balance ----

    print('-------- MirrorNodeAccountBalanceQuery --------');

    final hbarBalance = await _untilReady(
      'HBAR balance',
      () => MirrorNodeAccountBalanceQuery()
          .setAccountId(aliceAccountId)
          .execute(client),
    );
    print('Alice HBAR balance: ${hbarBalance.hbars}');
    print('Balance timestamp:  ${hbarBalance.timestamp}');
    print('');

    // ---- Step 6: Token balances ----

    print('-------- MirrorNodeTokenBalanceQuery --------');

    // Wait until Mirror shows the transfer (balance 1000 units).
    final dqryBalances = await _untilReady(
      'DQRY balance',
      () => MirrorNodeTokenBalanceQuery()
          .setAccountId(aliceAccountId)
          .setTokenId(tokenId)
          .execute(client),
      isReady: (list) =>
          list.isNotEmpty && '${list.first.balance}' == '$aliceUnits',
    );

    print('Alice, filtered by token $tokenId:');
    dqryBalances.forEach(_printTokenBalance);

    final allBalances = await _untilReady(
      'all token balances',
      () => MirrorNodeTokenBalanceQuery()
          .setAccountId(aliceAccountId)
          .execute(client),
      isReady: (list) => list.length >= 2,
    );

    print('Alice, all tokens (${allBalances.length}):');
    allBalances.forEach(_printTokenBalance);

    // The query returns an empty list when the account is not
    // associated with the token.
    final notAssociated = await MirrorNodeTokenBalanceQuery()
        .setAccountId(operatorId)
        .setTokenId(tokenId)
        .execute(client);
    print(
      'Operator ($operatorId) is not associated with $tokenId: '
      '${notAssociated.length} entries',
    );
    print('');

    // ---- Step 7: Token info ----

    print('-------- MirrorNodeTokenInfoQuery --------');

    final tokenInfo = await _untilReady(
      'token info',
      () => MirrorNodeTokenInfoQuery().setTokenId(tokenId).execute(client),
    );
    print('Fungible token $tokenId:');
    print('  Name:           ${tokenInfo.name}');
    print('  Symbol:         ${tokenInfo.symbol}');
    print('  Type:           ${tokenInfo.type}');
    print('  Decimals:       ${tokenInfo.decimals}');
    print('  Total supply:   ${tokenInfo.totalSupply}');
    print('  Treasury:       ${tokenInfo.treasuryAccountId}');
    print('  Memo:           ${tokenInfo.memo}');
    print('  Pause status:   ${tokenInfo.pauseStatus.apiValue}');
    print('  Deleted:        ${tokenInfo.deleted}');
    print('  Has KYC key:    ${tokenInfo.kycKey != null}');
    print('  Has freeze key: ${tokenInfo.freezeKey != null}');
    print('  Has supply key: ${tokenInfo.supplyKey != null}');
    print('');

    final collectionInfo = await _untilReady(
      'collection info',
      () => MirrorNodeTokenInfoQuery().setTokenId(nftTokenId).execute(client),
    );
    print('NFT collection $nftTokenId:');
    print('  Name:           ${collectionInfo.name}');
    print('  Symbol:         ${collectionInfo.symbol}');
    print('  Type:           ${collectionInfo.type}');
    print('  Total supply:   ${collectionInfo.totalSupply}');
    print('  Has supply key: ${collectionInfo.supplyKey != null}');
    print('');

    // ---- Step 8: NFT info ----

    print('-------- MirrorNodeTokenNftInfoQuery --------');

    final aliceNft = await _untilReady(
      'NFT $aliceSerial',
      () => MirrorNodeTokenNftInfoQuery()
          .setNftId(NftId(nftTokenId, aliceSerial))
          .execute(client),
      isReady: (nft) => '${nft.accountId}' == '$aliceAccountId',
    );
    _printNft(aliceNft, expectedOwner: aliceAccountId);

    final treasuryNft = await _untilReady(
      'NFT $treasurySerial',
      () => MirrorNodeTokenNftInfoQuery()
          .setNftId(NftId(nftTokenId, treasurySerial))
          .execute(client),
    );
    _printNft(treasuryNft, expectedOwner: treasuryAccountId);

    // ---- Step 9: Expected errors ----

    print('-------- Expected errors --------');

    // The number is far above any real entity, so this token does not
    // exist.
    final missingToken = TokenId.fromString('0.0.999999999');
    try {
      await MirrorNodeTokenInfoQuery().setTokenId(missingToken).execute(client);
      print('Unexpected: no error for $missingToken.');
    } on HederaStatusException catch (e) {
      print('Unknown token $missingToken -> ${e.statusCode.name} (expected)');
    }

    try {
      await MirrorNodeTokenNftInfoQuery()
          .setNftId(NftId(nftTokenId, 999))
          .execute(client);
      print('Unexpected: no error for serial 999.');
    } on HederaStatusException catch (e) {
      print('Unknown serial 999 -> ${e.statusCode.name} (expected)');
    }
    print('');

    // ---- Step 10: Print final summary ----

    print('========================================');
    print('  Summary');
    print('========================================');
    print('');
    print('Operator:     $operatorIdStr');
    print('Treasury:     $treasuryAccountId');
    print('Alice:        $aliceAccountId');
    print('Fungible:     $tokenId (DQRY)');
    print('Collection:   $nftTokenId (DQART)');
    print('Alice NFT:    ${NftId(nftTokenId, aliceSerial)}');
    print('Treasury NFT: ${NftId(nftTokenId, treasurySerial)}');
    print('');
    print('View on HashScan (testnet):');
    print('  Token:      https://hashscan.io/testnet/token/$tokenId');
    print('  Collection: https://hashscan.io/testnet/token/$nftTokenId');
    print('  Alice:      https://hashscan.io/testnet/account/$aliceAccountId');
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

void _printTokenBalance(MirrorNodeTokenBalance balance) {
  print('  Token:      ${balance.tokenId}');
  print('  Balance:    ${balance.balance} (decimals: ${balance.decimals})');
  print('  KYC:        ${balance.kycStatus.apiValue}');
  print('  Freeze:     ${balance.freezeStatus.apiValue}');
  print('  Auto-assoc: ${balance.automaticAssociation}');
  print('');
}

void _printNft(MirrorNodeNftInfo nft, {required AccountId expectedOwner}) {
  final verdict =
      '${nft.accountId}' == '$expectedOwner' ? 'as expected' : 'UNEXPECTED';
  print('NFT ${nft.nftId}:');
  print('  Owner:    ${nft.accountId} ($verdict, expected $expectedOwner)');
  print('  Metadata: ${_text(nft.metadata)}');
  print('  Created:  ${nft.createdTimestamp}');
  print('  Modified: ${nft.modifiedTimestamp}');
  print('  Deleted:  ${nft.deleted}');
  print('  Spender:  ${nft.spender}');
  print('');
}

String _text(List<int>? bytes) => bytes == null ? '(none)' : utf8.decode(bytes);

Uint8List _metadata(String value) => Uint8List.fromList(utf8.encode(value));

Future<void> main() async {
  await tokenQueriesExample();
}
