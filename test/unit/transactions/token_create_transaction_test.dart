import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart' as proto;
import 'package:hedera_flutter_sdk/src/proto/token_create.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart';
import 'package:hedera_flutter_sdk/src/transactions/token_create_transaction.dart';

void main() {
  group('TokenCreateTransaction', () {
    // ---- default values ----

    group('default values', () {
      test('tokenName defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.tokenName, isNull);
      });

      test('tokenSymbol defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.tokenSymbol, isNull);
      });

      test('decimals defaults to 0', () {
        final tx = TokenCreateTransaction();
        expect(tx.decimals, equals(0));
      });

      test('initialSupply defaults to 0', () {
        final tx = TokenCreateTransaction();
        expect(tx.initialSupply, equals(0));
      });

      test('treasuryAccountId defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.treasuryAccountId, isNull);
      });

      test('adminKey defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.adminKey, isNull);
      });

      test('kycKey defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.kycKey, isNull);
      });

      test('freezeKey defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.freezeKey, isNull);
      });

      test('wipeKey defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.wipeKey, isNull);
      });

      test('supplyKey defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.supplyKey, isNull);
      });

      test('pauseKey defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.pauseKey, isNull);
      });

      test('feeScheduleKey defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.feeScheduleKey, isNull);
      });

      test('metadataKey defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.metadataKey, isNull);
      });

      test('freezeDefault defaults to false', () {
        final tx = TokenCreateTransaction();
        expect(tx.freezeDefault, isFalse);
      });

      test('expirationTime defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.expirationTime, isNull);
      });

      test('autoRenewAccountId defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.autoRenewAccountId, isNull);
      });

      test('autoRenewPeriod defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.autoRenewPeriod, isNull);
      });

      test('tokenMemo defaults to empty string', () {
        final tx = TokenCreateTransaction();
        expect(tx.tokenMemo, equals(''));
      });

      test('tokenType defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.tokenType, isNull);
      });

      test('supplyType defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.supplyType, isNull);
      });

      test('maxSupply defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.maxSupply, isNull);
      });

      test('metadata defaults to null', () {
        final tx = TokenCreateTransaction();
        expect(tx.metadata, isNull);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setTokenName sets name and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setTokenName('USD Bar');
        expect(result, same(tx));
        expect(tx.tokenName, equals('USD Bar'));
      });

      test('setTokenSymbol sets symbol and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setTokenSymbol('USDB');
        expect(result, same(tx));
        expect(tx.tokenSymbol, equals('USDB'));
      });

      test('setDecimals sets decimals and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setDecimals(2);
        expect(result, same(tx));
        expect(tx.decimals, equals(2));
      });

      test('setInitialSupply sets supply and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setInitialSupply(10000);
        expect(result, same(tx));
        expect(tx.initialSupply, equals(10000));
      });

      test('setTreasuryAccountId sets id and returns this', () {
        final tx = TokenCreateTransaction();
        final treasuryId = AccountId.fromString('0.0.12345');
        final result = tx.setTreasuryAccountId(treasuryId);
        expect(result, same(tx));
        expect(tx.treasuryAccountId, equals(treasuryId));
      });

      test('setAdminKey sets key and returns this', () async {
        final tx = TokenCreateTransaction();
        final key =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final result = tx.setAdminKey(key);
        expect(result, same(tx));
        expect(tx.adminKey, equals(key));
      });

      test('setKycKey sets key and returns this', () async {
        final tx = TokenCreateTransaction();
        final key =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final result = tx.setKycKey(key);
        expect(result, same(tx));
        expect(tx.kycKey, equals(key));
      });

      test('setFreezeKey sets key and returns this', () async {
        final tx = TokenCreateTransaction();
        final key =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final result = tx.setFreezeKey(key);
        expect(result, same(tx));
        expect(tx.freezeKey, equals(key));
      });

      test('setWipeKey sets key and returns this', () async {
        final tx = TokenCreateTransaction();
        final key =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final result = tx.setWipeKey(key);
        expect(result, same(tx));
        expect(tx.wipeKey, equals(key));
      });

      test('setSupplyKey sets key and returns this', () async {
        final tx = TokenCreateTransaction();
        final key =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final result = tx.setSupplyKey(key);
        expect(result, same(tx));
        expect(tx.supplyKey, equals(key));
      });

      test('setPauseKey sets key and returns this', () async {
        final tx = TokenCreateTransaction();
        final key =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final result = tx.setPauseKey(key);
        expect(result, same(tx));
        expect(tx.pauseKey, equals(key));
      });

      test('setFeeScheduleKey sets key and returns this', () async {
        final tx = TokenCreateTransaction();
        final key =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final result = tx.setFeeScheduleKey(key);
        expect(result, same(tx));
        expect(tx.feeScheduleKey, equals(key));
      });

      test('setMetadataKey sets key and returns this', () async {
        final tx = TokenCreateTransaction();
        final key =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final result = tx.setMetadataKey(key);
        expect(result, same(tx));
        expect(tx.metadataKey, equals(key));
      });

      test('setFreezeDefault sets value and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setFreezeDefault(freezeDefault: true);
        expect(result, same(tx));
        expect(tx.freezeDefault, isTrue);
      });

      test('setExpirationTime sets value and returns this', () {
        final tx = TokenCreateTransaction();
        final expiry = DateTime.utc(2030);
        final result = tx.setExpirationTime(expiry);
        expect(result, same(tx));
        expect(tx.expirationTime, equals(expiry));
      });

      test('setAutoRenewAccountId sets id and returns this', () {
        final tx = TokenCreateTransaction();
        final accountId = AccountId.fromString('0.0.99');
        final result = tx.setAutoRenewAccountId(accountId);
        expect(result, same(tx));
        expect(tx.autoRenewAccountId, equals(accountId));
      });

      test('setAutoRenewPeriod sets duration and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setAutoRenewPeriod(const Duration(days: 90));
        expect(result, same(tx));
        expect(tx.autoRenewPeriod, equals(const Duration(days: 90)));
      });

      test('setTokenMemo sets memo and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setTokenMemo('NemorixPay stablecoin');
        expect(result, same(tx));
        expect(tx.tokenMemo, equals('NemorixPay stablecoin'));
      });

      test('setTokenType sets type and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setTokenType(proto.TokenType.NON_FUNGIBLE_UNIQUE);
        expect(result, same(tx));
        expect(tx.tokenType, equals(proto.TokenType.NON_FUNGIBLE_UNIQUE));
      });

      test('setSupplyType sets type and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setSupplyType(proto.TokenSupplyType.FINITE);
        expect(result, same(tx));
        expect(tx.supplyType, equals(proto.TokenSupplyType.FINITE));
      });

      test('setMaxSupply sets value and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setMaxSupply(1000000);
        expect(result, same(tx));
        expect(tx.maxSupply, equals(1000000));
      });

      test('setMetadata sets bytes and returns this', () {
        final tx = TokenCreateTransaction();
        final result = tx.setMetadata([1, 2, 3]);
        expect(result, same(tx));
        expect(tx.metadata, equals([1, 2, 3]));
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if tokenName is not set', () {
        final tx = TokenCreateTransaction()
            .setTokenSymbol('USDB')
            .setTreasuryAccountId(AccountId.fromString('0.0.1'));
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if tokenSymbol is not set', () {
        final tx = TokenCreateTransaction()
            .setTokenName('USD Bar')
            .setTreasuryAccountId(AccountId.fromString('0.0.1'));
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if treasuryAccountId is not set', () {
        final tx = TokenCreateTransaction()
            .setTokenName('USD Bar')
            .setTokenSymbol('USDB');
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('does not throw when all required fields are set', () {
        final tx = TokenCreateTransaction()
            .setTokenName('USD Bar')
            .setTokenSymbol('USDB')
            .setTreasuryAccountId(AccountId.fromString('0.0.1'));
        expect(tx.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      TokenCreateTransaction requiredOnly() => TokenCreateTransaction()
          .setTokenName('USD Bar')
          .setTokenSymbol('USDB')
          .setTreasuryAccountId(AccountId.fromString('0.0.12345'));

      test('encodes name and symbol', () {
        final tx = requiredOnly();
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.name, equals('USD Bar'));
        expect(body.symbol, equals('USDB'));
      });

      test('encodes the treasury account', () {
        final tx = requiredOnly();
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.treasury.accountNum.toInt(), equals(12345));
      });

      test('encodes decimals and initialSupply when set', () {
        final tx = requiredOnly()
          ..setDecimals(2)
          ..setInitialSupply(10000);
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.decimals, equals(2));
        expect(body.initialSupply.toInt(), equals(10000));
      });

      test('encodes an ED25519 admin key', () async {
        final key =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final tx = requiredOnly()..setAdminKey(key);
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.adminKey.ed25519, equals(key.bytes));
      });

      test('encodes a HederaThresholdKey as the supply key', () async {
        final keyA =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final keyB =
            await (await PrivateKey.generateED25519()).derivePublicKey();
        final thresholdKey =
            HederaThresholdKey(threshold: 1, keys: [keyA, keyB]);
        final tx = requiredOnly()..setSupplyKey(thresholdKey);

        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(
          body.supplyKey.whichKey(),
          equals(proto.Key_Key.thresholdKey),
        );
        expect(body.supplyKey.thresholdKey.threshold, equals(1));
      });

      test('does not set optional keys when not set', () {
        final tx = requiredOnly();
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.hasAdminKey(), isFalse);
        expect(body.hasKycKey(), isFalse);
        expect(body.hasFreezeKey(), isFalse);
        expect(body.hasWipeKey(), isFalse);
        expect(body.hasSupplyKey(), isFalse);
        expect(body.hasPauseKey(), isFalse);
        expect(body.hasFeeScheduleKey(), isFalse);
        expect(body.hasMetadataKey(), isFalse);
      });

      test('encodes freezeDefault', () {
        final tx = requiredOnly()..setFreezeDefault(freezeDefault: true);
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.freezeDefault, isTrue);
      });

      test('encodes tokenMemo (mapped to the memo proto field)', () {
        final tx = requiredOnly()..setTokenMemo('NemorixPay stablecoin');
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.memo, equals('NemorixPay stablecoin'));
      });

      test('encodes tokenType', () {
        final tx = requiredOnly()
          ..setTokenType(proto.TokenType.NON_FUNGIBLE_UNIQUE);
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.tokenType, equals(proto.TokenType.NON_FUNGIBLE_UNIQUE));
      });

      test('encodes supplyType and maxSupply', () {
        final tx = requiredOnly()
          ..setSupplyType(proto.TokenSupplyType.FINITE)
          ..setMaxSupply(1000000);
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.supplyType, equals(proto.TokenSupplyType.FINITE));
        expect(body.maxSupply.toInt(), equals(1000000));
      });

      test('encodes metadata bytes', () {
        final tx = requiredOnly()..setMetadata([1, 2, 3]);
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.metadata, equals([1, 2, 3]));
      });

      test(
        'encodes autoRenewAccountId (mapped to the autoRenewAccount '
        'proto field)',
        () {
          final tx = requiredOnly()
            ..setAutoRenewAccountId(AccountId.fromString('0.0.99'));
          final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
          expect(body.autoRenewAccount.accountNum.toInt(), equals(99));
        },
      );

      test(
        'encodes autoRenewPeriod in seconds',
        () {
          final tx = requiredOnly()
            ..setAutoRenewPeriod(const Duration(days: 90));
          final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
          expect(
            body.autoRenewPeriod.seconds.toInt(),
            equals(const Duration(days: 90).inSeconds),
          );
        },
      );

      test(
        'encodes expirationTime (mapped to the expiry proto field)',
        () {
          final expiry = DateTime.utc(2030);
          final tx = requiredOnly()..setExpirationTime(expiry);
          final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
          expect(
            body.expiry.seconds.toInt(),
            equals(expiry.millisecondsSinceEpoch ~/ 1000),
          );
        },
      );
    });

    // ---- integration with Transaction base class ----

    group('integration', () {
      test('can be signed after setting required fields', () async {
        final privateKey = await PrivateKey.generateED25519();
        final tx = TokenCreateTransaction()
            .setTokenName('USD Bar')
            .setTokenSymbol('USDB')
            .setTreasuryAccountId(AccountId.fromString('0.0.12345'));

        await tx.sign(privateKey);

        expect(tx.isSigned, isTrue);
        expect(tx.signatureCount, equals(1));
      });

      test('fluent API can chain Transaction and subclass setters', () {
        final treasuryId = AccountId.fromString('0.0.12345');

        final tx = TokenCreateTransaction()
            .setTokenName('USD Bar')
            .setTokenSymbol('USDB')
            .setTreasuryAccountId(treasuryId)
            .setDecimals(2)
            .setInitialSupply(10000)
            .setMemo('outer transaction memo');

        expect(tx.tokenName, equals('USD Bar'));
        expect(tx.tokenSymbol, equals('USDB'));
        expect(tx.treasuryAccountId, equals(treasuryId));
        expect(tx.decimals, equals(2));
        expect(tx.initialSupply, equals(10000));
        expect(tx.memo, equals('outer transaction memo'));
      });
    });
  });

  // ---- applyToBody / buildBody integration ----

  group('applyToBody / buildBody', () {
    test('sets tokenCreation on the TransactionBody', () async {
      final tx = TokenCreateTransaction()
          .setTokenName('USD Bar')
          .setTokenSymbol('USDB')
          .setTreasuryAccountId(AccountId.fromString('0.0.12345'));

      final client = HederaClient.forTestnet().setOperator(
        AccountId.fromString('0.0.12345'),
        await PrivateKey.generateED25519(),
      );

      final body = await tx.buildBody(client);

      expect(body.whichData(), equals(TransactionBody_Data.tokenCreation));
      expect(body.tokenCreation.name, equals('USD Bar'));
    });

    test('throws ArgumentError from buildBody if required fields missing',
        () async {
      final tx = TokenCreateTransaction();
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
}
