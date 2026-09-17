import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_associate.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart';

void main() {
  group('TokenAssociateTransaction', () {
    // ---- default values ----

    group('default values', () {
      test('accountId defaults to null', () {
        final tx = TokenAssociateTransaction();
        expect(tx.accountId, isNull);
      });

      test('tokenIds defaults to empty', () {
        final tx = TokenAssociateTransaction();
        expect(tx.tokenIds, isEmpty);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setAccountId sets accountId and returns this', () {
        final tx = TokenAssociateTransaction();
        final accountId = AccountId.fromString('0.0.12345');
        final result = tx.setAccountId(accountId);
        expect(result, same(tx));
        expect(tx.accountId, equals(accountId));
      });

      test('addTokenId adds a token and returns this', () {
        final tx = TokenAssociateTransaction();
        final tokenId = TokenId.fromString('0.0.999');
        final result = tx.addTokenId(tokenId);
        expect(result, same(tx));
        expect(tx.tokenIds, equals([tokenId]));
      });

      test('addTokenId can be called multiple times', () {
        final tokenA = TokenId.fromString('0.0.100');
        final tokenB = TokenId.fromString('0.0.200');
        final tx = TokenAssociateTransaction()
          ..addTokenId(tokenA)
          ..addTokenId(tokenB);
        expect(tx.tokenIds, equals([tokenA, tokenB]));
      });

      test('tokenIds is unmodifiable', () {
        final tx = TokenAssociateTransaction()
          ..addTokenId(TokenId.fromString('0.0.100'));
        expect(
          () => tx.tokenIds.add(TokenId.fromString('0.0.200')),
          throwsA(isA<UnsupportedError>()),
        );
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if accountId is not set', () {
        final tx = TokenAssociateTransaction()
          ..addTokenId(TokenId.fromString('0.0.999'));
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if no tokens have been added', () {
        final tx = TokenAssociateTransaction()
          ..setAccountId(AccountId.fromString('0.0.12345'));
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('does not throw when accountId and a token are set', () {
        final tx = TokenAssociateTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .addTokenId(TokenId.fromString('0.0.999'));
        expect(tx.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('encodes the account', () {
        final tx = TokenAssociateTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .addTokenId(TokenId.fromString('0.0.999'));

        final body = TokenAssociateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.account.accountNum.toInt(), equals(12345));
      });

      test('encodes a single token', () {
        final tx = TokenAssociateTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .addTokenId(TokenId.fromString('0.0.999'));

        final body = TokenAssociateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.tokens.length, equals(1));
        expect(body.tokens.first.tokenNum.toInt(), equals(999));
      });

      test('encodes multiple tokens in order', () {
        final tx = TokenAssociateTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .addTokenId(TokenId.fromString('0.0.100'))
            .addTokenId(TokenId.fromString('0.0.200'));

        final body = TokenAssociateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.tokens.length, equals(2));
        expect(body.tokens[0].tokenNum.toInt(), equals(100));
        expect(body.tokens[1].tokenNum.toInt(), equals(200));
      });
    });

    // ---- applyToBody / buildBody integration ----

    group('applyToBody / buildBody', () {
      test('sets tokenAssociate on the TransactionBody', () async {
        final tx = TokenAssociateTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .addTokenId(TokenId.fromString('0.0.999'));

        final client = HederaClient.forTestnet().setOperator(
          AccountId.fromString('0.0.12345'),
          await PrivateKey.generateED25519(),
        );

        final body = await tx.buildBody(client);

        expect(body.whichData(), equals(TransactionBody_Data.tokenAssociate));
        expect(body.tokenAssociate.tokens.length, equals(1));
      });

      test('throws ArgumentError from buildBody if required fields missing',
          () async {
        final tx = TokenAssociateTransaction();
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
        final tx = TokenAssociateTransaction()
            .setAccountId(AccountId.fromString('0.0.12345'))
            .addTokenId(TokenId.fromString('0.0.999'));

        await tx.sign(privateKey);

        expect(tx.isSigned, isTrue);
        expect(tx.signatureCount, equals(1));
      });

      test('fluent API can chain Transaction and subclass setters', () {
        final accountId = AccountId.fromString('0.0.12345');
        final tokenId = TokenId.fromString('0.0.999');

        final tx = TokenAssociateTransaction()
            .setAccountId(accountId)
            .addTokenId(tokenId)
            .setMemo('associate memo');

        expect(tx.accountId, equals(accountId));
        expect(tx.tokenIds, equals([tokenId]));
        expect(tx.memo, equals('associate memo'));
      });
    });
  });
}
