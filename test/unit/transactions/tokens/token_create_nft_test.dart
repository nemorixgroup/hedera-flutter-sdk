import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_create.pb.dart';

TokenCreateTransaction _nftTx() => TokenCreateTransaction()
    .setTokenName('Art Collection')
    .setTokenSymbol('ART')
    .setTreasuryAccountId(AccountId.fromString('0.0.100'))
    .setTokenType(TokenType.NON_FUNGIBLE_UNIQUE);

void main() {
  group('TokenCreateTransaction NFT validation', () {
    test('accepts NON_FUNGIBLE_UNIQUE with default decimals and supply', () {
      expect(_nftTx().toBytes, returnsNormally);
    });

    test('encodes the NON_FUNGIBLE_UNIQUE token type', () {
      final body = TokenCreateTransactionBody.fromBuffer(_nftTx().toBytes());
      expect(body.tokenType, equals(TokenType.NON_FUNGIBLE_UNIQUE));
      expect(body.decimals, equals(0));
      expect(body.initialSupply.toInt(), equals(0));
    });

    test('accepts explicit decimals 0 and initialSupply 0', () {
      final tx = _nftTx().setDecimals(0).setInitialSupply(0);
      expect(tx.toBytes, returnsNormally);
    });

    test('throws ArgumentError if decimals is not 0', () {
      final tx = _nftTx().setDecimals(2);
      expect(tx.toBytes, throwsA(isA<ArgumentError>()));
    });

    test('throws ArgumentError if initialSupply is not 0', () {
      final tx = _nftTx().setInitialSupply(10);
      expect(tx.toBytes, throwsA(isA<ArgumentError>()));
    });

    test('does not require a supply key, supply type or max supply', () {
      final tx = _nftTx();
      expect(tx.toBytes, returnsNormally);
    });

    test('fungible tokens keep accepting decimals and initialSupply', () {
      final tx = TokenCreateTransaction()
          .setTokenName('Coin')
          .setTokenSymbol('COIN')
          .setTreasuryAccountId(AccountId.fromString('0.0.100'))
          .setDecimals(2)
          .setInitialSupply(10000);
      expect(tx.toBytes, returnsNormally);
    });

    test('is also enforced when building the TransactionBody', () async {
      final client = HederaClient.forTestnet().setOperator(
        AccountId.fromString('0.0.12345'),
        await PrivateKey.generateED25519(),
      );
      await expectLater(
        _nftTx().setDecimals(1).buildBody(client),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
