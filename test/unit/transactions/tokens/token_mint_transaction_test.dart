import 'dart:convert';
import 'dart:typed_data';

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

      test('metadata defaults to empty', () {
        final tx = TokenMintTransaction();
        expect(tx.metadata, isEmpty);
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

      test('error message mentions amount (fungible) or metadata (NFT)', () {
        final tx = TokenMintTransaction()
          ..setTokenId(TokenId.fromString('0.0.999'));
        expect(
          tx.toBytes,
          throwsA(
            isA<ArgumentError>().having(
              (e) => e.message.toString(),
              'message',
              allOf(contains('amount (fungible)'), contains('metadata (NFT)')),
            ),
          ),
        );
      });

      test('throws ArgumentError if both amount and metadata are set', () {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAmount(10)
            .addMetadata(_bytes('ipfs://cid'));
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('setAmount(0) is valid and distinct from not set', () {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAmount(0);
        expect(tx.toBytes, returnsNormally);
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

      test('does not set metadata for a fungible mint', () {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAmount(1000);

        final body = TokenMintTransactionBody.fromBuffer(tx.toBytes());

        expect(body.metadata, isEmpty);
      });
    });

    // ---- NFT metadata ----

    group('NFT metadata', () {
      test('addMetadata adds an entry and returns this', () {
        final tx = TokenMintTransaction();
        final result = tx.addMetadata(_bytes('ipfs://cid-1'));
        expect(result, same(tx));
        expect(tx.metadata.length, equals(1));
      });

      test('addMetadata can be called multiple times', () {
        final tx = TokenMintTransaction()
            .addMetadata(_bytes('ipfs://cid-1'))
            .addMetadata(_bytes('ipfs://cid-2'))
            .addMetadata(_bytes('ipfs://cid-3'));
        expect(tx.metadata.length, equals(3));
      });

      test('setMetadata replaces previous metadata and returns this', () {
        final tx = TokenMintTransaction().addMetadata(_bytes('old'));
        final result = tx.setMetadata([_bytes('a'), _bytes('b')]);
        expect(result, same(tx));
        expect(tx.metadata.length, equals(2));
        expect(utf8.decode(tx.metadata.first), equals('a'));
      });

      test('setMetadata with an empty list clears the metadata', () {
        final tx = TokenMintTransaction()
            .addMetadata(_bytes('x'))
            .setMetadata(const []);
        expect(tx.metadata, isEmpty);
      });

      test('metadata getter is unmodifiable', () {
        final tx = TokenMintTransaction().addMetadata(_bytes('x'));
        expect(() => tx.metadata.add(_bytes('y')), throwsUnsupportedError);
      });

      test('addMetadata copies the bytes', () {
        final source = _bytes('abc');
        final tx = TokenMintTransaction().addMetadata(source);
        source[0] = 0;
        expect(utf8.decode(tx.metadata.first), equals('abc'));
      });

      test('does not throw when tokenId and metadata are set', () {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .addMetadata(_bytes('ipfs://cid'));
        expect(tx.toBytes, returnsNormally);
      });

      test('encodes metadata in order and leaves amount at zero', () {
        final tx = TokenMintTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .addMetadata(_bytes('ipfs://cid-1'))
            .addMetadata(_bytes('ipfs://cid-2'));

        final body = TokenMintTransactionBody.fromBuffer(tx.toBytes());

        expect(body.token.tokenNum.toInt(), equals(999));
        expect(body.metadata.length, equals(2));
        expect(utf8.decode(body.metadata[0]), equals('ipfs://cid-1'));
        expect(utf8.decode(body.metadata[1]), equals('ipfs://cid-2'));
        expect(body.amount.toInt(), equals(0));
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

Uint8List _bytes(String value) => Uint8List.fromList(utf8.encode(value));
