import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_fee_schedule_update.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart';

final _tokenId = TokenId.fromString('0.0.999');
final _collector = AccountId.fromString('0.0.777');

CustomFixedFee _hbarFee() => CustomFixedFee()
    .setFeeCollectorAccountId(_collector)
    .setHbarAmount(Hbar(2));

CustomFractionalFee _fractionalFee() => CustomFractionalFee()
    .setFeeCollectorAccountId(_collector)
    .setNumerator(2)
    .setDenominator(100);

void main() {
  group('TokenFeeScheduleUpdateTransaction', () {
    // ---- default values ----

    group('default values', () {
      test('tokenId defaults to null', () {
        expect(TokenFeeScheduleUpdateTransaction().tokenId, isNull);
      });

      test('customFees defaults to an empty list', () {
        expect(TokenFeeScheduleUpdateTransaction().customFees, isEmpty);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setTokenId sets tokenId and returns this', () {
        final tx = TokenFeeScheduleUpdateTransaction();
        final result = tx.setTokenId(_tokenId);
        expect(result, same(tx));
        expect(tx.tokenId, equals(_tokenId));
      });

      test('addCustomFee appends the fee and returns this', () {
        final tx = TokenFeeScheduleUpdateTransaction();
        final fee = _hbarFee();
        final result = tx.addCustomFee(fee);
        expect(result, same(tx));
        expect(tx.customFees, equals([fee]));
      });

      test('addCustomFee keeps the fees already added', () {
        final first = _hbarFee();
        final second = _fractionalFee();
        final tx = TokenFeeScheduleUpdateTransaction()
            .addCustomFee(first)
            .addCustomFee(second);
        expect(tx.customFees, equals([first, second]));
      });

      test('setCustomFees replaces the fees added before', () {
        final replacement = _fractionalFee();
        final tx = TokenFeeScheduleUpdateTransaction()
            .addCustomFee(_hbarFee())
            .setCustomFees([replacement]);
        expect(tx.customFees, equals([replacement]));
      });

      test('setCustomFees copies the list it receives', () {
        final fees = <CustomFee>[_hbarFee()];
        final tx = TokenFeeScheduleUpdateTransaction().setCustomFees(fees);
        fees.add(_fractionalFee());
        expect(tx.customFees, hasLength(1));
      });

      test('customFees returns an unmodifiable list', () {
        final tx = TokenFeeScheduleUpdateTransaction().addCustomFee(_hbarFee());
        expect(
          () => tx.customFees.add(_fractionalFee()),
          throwsA(isA<UnsupportedError>()),
        );
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if tokenId is not set', () {
        final tx = TokenFeeScheduleUpdateTransaction().addCustomFee(_hbarFee());
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('does not throw when tokenId and a fee are set', () {
        final tx = TokenFeeScheduleUpdateTransaction()
            .setTokenId(_tokenId)
            .addCustomFee(_hbarFee());
        expect(tx.toBytes, returnsNormally);
      });

      test('accepts an empty fee list to clear the schedule', () {
        final tx = TokenFeeScheduleUpdateTransaction().setTokenId(_tokenId);
        expect(tx.toBytes, returnsNormally);
      });

      test('throws ArgumentError if a fee has no collector', () {
        final tx = TokenFeeScheduleUpdateTransaction()
            .setTokenId(_tokenId)
            .addCustomFee(CustomFixedFee().setHbarAmount(Hbar(1)));
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('encodes the token', () {
        final tx = TokenFeeScheduleUpdateTransaction()
            .setTokenId(_tokenId)
            .addCustomFee(_hbarFee());

        final body = TokenFeeScheduleUpdateTransactionBody.fromBuffer(
          tx.toBytes(),
        );

        expect(body.tokenId.tokenNum.toInt(), equals(999));
      });

      test('encodes the fees in the order they were added', () {
        final tx = TokenFeeScheduleUpdateTransaction()
            .setTokenId(_tokenId)
            .addCustomFee(_hbarFee())
            .addCustomFee(_fractionalFee());

        final body = TokenFeeScheduleUpdateTransactionBody.fromBuffer(
          tx.toBytes(),
        );

        expect(body.customFees, hasLength(2));
        expect(body.customFees[0].hasFixedFee(), isTrue);
        expect(body.customFees[0].fixedFee.amount.toInt(), equals(200000000));
        expect(body.customFees[1].hasFractionalFee(), isTrue);
      });

      test('encodes no fees for an empty list', () {
        final tx = TokenFeeScheduleUpdateTransaction().setTokenId(_tokenId);

        final body = TokenFeeScheduleUpdateTransactionBody.fromBuffer(
          tx.toBytes(),
        );

        expect(body.tokenId.tokenNum.toInt(), equals(999));
        expect(body.customFees, isEmpty);
      });
    });

    // ---- applyToBody / buildBody integration ----

    group('applyToBody / buildBody', () {
      test('sets tokenFeeScheduleUpdate on the TransactionBody', () async {
        final tx = TokenFeeScheduleUpdateTransaction()
            .setTokenId(_tokenId)
            .addCustomFee(_hbarFee());

        final client = HederaClient.forTestnet().setOperator(
          AccountId.fromString('0.0.12345'),
          await PrivateKey.generateED25519(),
        );

        final body = await tx.buildBody(client);

        expect(
          body.whichData(),
          equals(TransactionBody_Data.tokenFeeScheduleUpdate),
        );
        expect(body.tokenFeeScheduleUpdate.tokenId.tokenNum.toInt(), 999);
        expect(body.tokenFeeScheduleUpdate.customFees, hasLength(1));
      });

      test('throws ArgumentError from buildBody if tokenId is missing',
          () async {
        final tx = TokenFeeScheduleUpdateTransaction();
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
        final tx = TokenFeeScheduleUpdateTransaction()
            .setTokenId(_tokenId)
            .addCustomFee(_hbarFee());

        await tx.sign(privateKey);

        expect(tx.isSigned, isTrue);
        expect(tx.signatureCount, equals(1));
      });

      test('fluent API can chain Transaction and subclass setters', () {
        final tx = TokenFeeScheduleUpdateTransaction()
            .setTokenId(_tokenId)
            .addCustomFee(_hbarFee())
            .setMemo('fee schedule memo');

        expect(tx.tokenId, equals(_tokenId));
        expect(tx.customFees, hasLength(1));
        expect(tx.memo, equals('fee schedule memo'));
      });
    });
  });
}
