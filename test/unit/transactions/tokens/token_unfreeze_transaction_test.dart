import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_unfreeze_account.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart';

void main() {
  group('TokenUnfreezeTransaction', () {
    // ---- default values ----

    group('default values', () {
      test('tokenId defaults to null', () {
        final tx = TokenUnfreezeTransaction();
        expect(tx.tokenId, isNull);
      });

      test('accountId defaults to null', () {
        final tx = TokenUnfreezeTransaction();
        expect(tx.accountId, isNull);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setTokenId sets tokenId and returns this', () {
        final tx = TokenUnfreezeTransaction();
        final tokenId = TokenId.fromString('0.0.999');
        final result = tx.setTokenId(tokenId);
        expect(result, same(tx));
        expect(tx.tokenId, equals(tokenId));
      });

      test('setAccountId sets accountId and returns this', () {
        final tx = TokenUnfreezeTransaction();
        final accountId = AccountId.fromString('0.0.12345');
        final result = tx.setAccountId(accountId);
        expect(result, same(tx));
        expect(tx.accountId, equals(accountId));
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if tokenId is not set', () {
        final tx = TokenUnfreezeTransaction()
          ..setAccountId(AccountId.fromString('0.0.12345'));
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if accountId is not set', () {
        final tx = TokenUnfreezeTransaction()
          ..setTokenId(TokenId.fromString('0.0.999'));
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('does not throw when tokenId and accountId are set', () {
        final tx = TokenUnfreezeTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAccountId(AccountId.fromString('0.0.12345'));
        expect(tx.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('encodes the token', () {
        final tx = TokenUnfreezeTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAccountId(AccountId.fromString('0.0.12345'));

        final body =
            TokenUnfreezeAccountTransactionBody.fromBuffer(tx.toBytes());

        expect(body.token.tokenNum.toInt(), equals(999));
      });

      test('encodes the account', () {
        final tx = TokenUnfreezeTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAccountId(AccountId.fromString('0.0.12345'));

        final body =
            TokenUnfreezeAccountTransactionBody.fromBuffer(tx.toBytes());

        expect(body.account.accountNum.toInt(), equals(12345));
      });
    });

    // ---- applyToBody / buildBody integration ----

    group('applyToBody / buildBody', () {
      test('sets tokenUnfreeze on the TransactionBody', () async {
        final tx = TokenUnfreezeTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAccountId(AccountId.fromString('0.0.12345'));

        final client = HederaClient.forTestnet().setOperator(
          AccountId.fromString('0.0.12345'),
          await PrivateKey.generateED25519(),
        );

        final body = await tx.buildBody(client);

        expect(body.whichData(), equals(TransactionBody_Data.tokenUnfreeze));
        expect(body.tokenUnfreeze.token.tokenNum.toInt(), equals(999));
      });

      test('throws ArgumentError from buildBody if required fields missing',
          () async {
        final tx = TokenUnfreezeTransaction();
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
        final tx = TokenUnfreezeTransaction()
            .setTokenId(TokenId.fromString('0.0.999'))
            .setAccountId(AccountId.fromString('0.0.12345'));

        await tx.sign(privateKey);

        expect(tx.isSigned, isTrue);
        expect(tx.signatureCount, equals(1));
      });

      test('fluent API can chain Transaction and subclass setters', () {
        final tokenId = TokenId.fromString('0.0.999');
        final accountId = AccountId.fromString('0.0.12345');

        final tx = TokenUnfreezeTransaction()
            .setTokenId(tokenId)
            .setAccountId(accountId)
            .setMemo('unfreeze memo');

        expect(tx.tokenId, equals(tokenId));
        expect(tx.accountId, equals(accountId));
        expect(tx.memo, equals('unfreeze memo'));
      });
    });
  });
}
