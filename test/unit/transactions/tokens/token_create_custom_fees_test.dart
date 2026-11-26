import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_create.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart';

final _collector = AccountId.fromString('0.0.777');

CustomFixedFee _hbarFee() => CustomFixedFee()
    .setFeeCollectorAccountId(_collector)
    .setHbarAmount(Hbar(1));

CustomFractionalFee _fractionalFee() => CustomFractionalFee()
    .setFeeCollectorAccountId(_collector)
    .setNumerator(1)
    .setDenominator(100);

CustomRoyaltyFee _royaltyFee() => CustomRoyaltyFee()
    .setFeeCollectorAccountId(_collector)
    .setNumerator(5)
    .setDenominator(100);

TokenCreateTransaction _fungibleTx() => TokenCreateTransaction()
    .setTokenName('Coin')
    .setTokenSymbol('COIN')
    .setTreasuryAccountId(AccountId.fromString('0.0.100'))
    .setInitialSupply(10000);

TokenCreateTransaction _nftTx() => TokenCreateTransaction()
    .setTokenName('Art Collection')
    .setTokenSymbol('ART')
    .setTreasuryAccountId(AccountId.fromString('0.0.100'))
    .setTokenType(TokenType.NON_FUNGIBLE_UNIQUE);

void main() {
  group('TokenCreateTransaction custom fees', () {
    // ---- default values ----

    group('default values', () {
      test('customFees defaults to an empty list', () {
        expect(TokenCreateTransaction().customFees, isEmpty);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('addCustomFee appends the fee and returns this', () {
        final tx = TokenCreateTransaction();
        final fee = _hbarFee();
        final result = tx.addCustomFee(fee);
        expect(result, same(tx));
        expect(tx.customFees, equals([fee]));
      });

      test('addCustomFee keeps the fees already added', () {
        final first = _hbarFee();
        final second = _fractionalFee();
        final tx =
            TokenCreateTransaction().addCustomFee(first).addCustomFee(second);
        expect(tx.customFees, equals([first, second]));
      });

      test('setCustomFees sets the list and returns this', () {
        final tx = TokenCreateTransaction();
        final fees = <CustomFee>[_hbarFee(), _fractionalFee()];
        final result = tx.setCustomFees(fees);
        expect(result, same(tx));
        expect(tx.customFees, equals(fees));
      });

      test('setCustomFees replaces the fees added before', () {
        final replacement = _fractionalFee();
        final tx = TokenCreateTransaction()
            .addCustomFee(_hbarFee())
            .setCustomFees([replacement]);
        expect(tx.customFees, equals([replacement]));
      });

      test('setCustomFees copies the list it receives', () {
        final fees = <CustomFee>[_hbarFee()];
        final tx = TokenCreateTransaction().setCustomFees(fees);
        fees.add(_fractionalFee());
        expect(tx.customFees, hasLength(1));
      });

      test('customFees returns an unmodifiable list', () {
        final tx = TokenCreateTransaction().addCustomFee(_hbarFee());
        expect(
          () => tx.customFees.add(_fractionalFee()),
          throwsA(isA<UnsupportedError>()),
        );
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('encodes no custom fees when none were set', () {
        final body = TokenCreateTransactionBody.fromBuffer(
          _fungibleTx().toBytes(),
        );
        expect(body.customFees, isEmpty);
      });

      test('encodes a fixed HBAR fee', () {
        final tx = _fungibleTx().addCustomFee(_hbarFee());
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.customFees, hasLength(1));
        final fee = body.customFees.first;
        expect(fee.hasFixedFee(), isTrue);
        expect(fee.fixedFee.amount.toInt(), equals(100000000));
        expect(fee.feeCollectorAccountId.accountNum.toInt(), equals(777));
      });

      test('encodes a fractional fee', () {
        final tx = _fungibleTx().addCustomFee(_fractionalFee());
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());

        final fee = body.customFees.first;
        expect(fee.hasFractionalFee(), isTrue);
        expect(fee.fractionalFee.fractionalAmount.numerator.toInt(), equals(1));
        expect(
          fee.fractionalFee.fractionalAmount.denominator.toInt(),
          equals(100),
        );
      });

      test('encodes a royalty fee on an NFT collection', () {
        final tx = _nftTx().addCustomFee(_royaltyFee());
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.tokenType, equals(TokenType.NON_FUNGIBLE_UNIQUE));
        expect(body.customFees.first.hasRoyaltyFee(), isTrue);
      });

      test('encodes several fees in the order they were added', () {
        final tx = _fungibleTx()
            .addCustomFee(_hbarFee())
            .addCustomFee(_fractionalFee());
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.customFees, hasLength(2));
        expect(body.customFees[0].hasFixedFee(), isTrue);
        expect(body.customFees[1].hasFractionalFee(), isTrue);
      });

      test('encodes the fee schedule key next to the fees', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final tx =
            _fungibleTx().setFeeScheduleKey(publicKey).addCustomFee(_hbarFee());
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());

        expect(body.hasFeeScheduleKey(), isTrue);
        expect(body.customFees, hasLength(1));
      });

      test('does not encode a fee schedule key unless it was set', () {
        final tx = _fungibleTx().addCustomFee(_hbarFee());
        final body = TokenCreateTransactionBody.fromBuffer(tx.toBytes());
        expect(body.hasFeeScheduleKey(), isFalse);
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if a fee has no collector', () {
        final tx = _fungibleTx().addCustomFee(
          CustomFixedFee().setHbarAmount(Hbar(1)),
        );
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if a fractional fee has a zero denominator',
          () {
        final tx = _fungibleTx().addCustomFee(
          _fractionalFee().setDenominator(0),
        );
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('one invalid fee fails the whole transaction', () {
        final tx = _fungibleTx()
            .addCustomFee(_hbarFee())
            .addCustomFee(CustomFixedFee());
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('leaves the limit of 10 fees to the network', () {
        final tx = _fungibleTx().setCustomFees(
          List.generate(11, (_) => _hbarFee()),
        );
        expect(tx.toBytes, returnsNormally);
      });

      test('leaves a royalty fee on a fungible token to the network', () {
        final tx = _fungibleTx().addCustomFee(_royaltyFee());
        expect(tx.toBytes, returnsNormally);
      });
    });

    // ---- applyToBody / buildBody integration ----

    group('applyToBody / buildBody', () {
      test('sets the custom fees on the tokenCreation body', () async {
        final tx = _fungibleTx().addCustomFee(_hbarFee());
        final client = HederaClient.forTestnet().setOperator(
          AccountId.fromString('0.0.12345'),
          await PrivateKey.generateED25519(),
        );

        final body = await tx.buildBody(client);

        expect(body.whichData(), equals(TransactionBody_Data.tokenCreation));
        expect(body.tokenCreation.customFees, hasLength(1));
      });

      test('throws ArgumentError from buildBody for an invalid fee', () async {
        final tx = _fungibleTx().addCustomFee(CustomFixedFee());
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
  });
}
