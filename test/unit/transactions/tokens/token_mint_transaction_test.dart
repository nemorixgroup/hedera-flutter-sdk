import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_mint.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart';

void main() {
  group('TokenMintTransaction', () {
    // ---- default values ----

    group('default values', () {
      test('tokenId defaults to null', () {
        final tx = TokenMintTransaction();
        expect(tx.tokenId, isNull);
      });

      test('amount defaults to null', () {
        final tx = TokenMintTransaction();
        expect(tx.amount, isNull);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setTokenId sets tokenId and returns this', () {
        final tx = TokenMintTransaction();
        final tokenId = TokenId.fromString('0.0.999');
        final result = tx.setTokenId(tokenId);
        expect(result, same(tx));
        expect(tx.tokenId, equals(tokenId));
      });

      test('setAmount sets amount and returns this', () {
        final tx = TokenMintTransaction();
        final result = tx.setAmount(1000);
        expect(result, same(tx));
        expect(tx.amount, equals(1000));
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if tokenId is not set', () {
        final tx = TokenMintTransaction()..setAmount(1000);
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if amount is not set', () {
        final tx = TokenMintTransaction()
          ..setTokenId(TokenId.fromString('0.0.999'));
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('does not throw when tokenId and amount are set', () {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAmount(1000);
        expect(tx.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('encodes the token', () {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAmount(1000);

        final body = TokenMintTransactionBody.fromBuffer(tx.toBytes());

        expect(body.token.tokenNum.toInt(), equals(999));
      });

      test('encodes the amount', () {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAmount(1000);

        final body = TokenMintTransactionBody.fromBuffer(tx.toBytes());

        expect(body.amount.toInt(), equals(1000));
      });

      test('does not set metadata (NFT support deferred)', () {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAmount(1000);

        final body = TokenMintTransactionBody.fromBuffer(tx.toBytes());

        expect(body.metadata, isEmpty);
      });
    });

    // ---- applyToBody / buildBody integration ----

    group('applyToBody / buildBody', () {
      test('sets tokenMint on the TransactionBody', () async {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAmount(1000);

        final client = HederaClient.forTestnet().setOperator(
          AccountId.fromString('0.0.12345'),
          await PrivateKey.generateED25519(),
        );

        final body = await tx.buildBody(client);

        expect(body.whichData(), equals(TransactionBody_Data.tokenMint));
        expect(body.tokenMint.amount.toInt(), equals(1000));
      });

      test('throws ArgumentError from buildBody if required fields missing',
          () async {
        final tx = TokenMintTransaction();
        final client = HederaClient.forTestnet().setOperator(
          AccountId.fromString('0.0.12345'),
          await PrivateKey.generateED25519(),
        );

        await expectLater(
          tx.buildBody(client),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    // ---- integration with Transaction base class ----

    group('integration', () {
      test('can be signed after setting required fields', () async {
        final privateKey = await PrivateKey.generateED25519();
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAmount(1000);

        await tx.sign(privateKey);

        expect(tx.isSigned, isTrue);
        expect(tx.signatureCount, equals(1));
      });

      test('fluent API can chain Transaction and subclass setters', () {
        final tokenId = TokenId.fromString('0.0.999');

        final tx = TokenMintTransaction()
            .setTokenId(tokenId)
            .setAmount(1000)
            .setMemo('mint memo');

        expect(tx.tokenId, equals(tokenId));
        expect(tx.amount, equals(1000));
        expect(tx.memo, equals('mint memo'));
      });
    });
  });
}
