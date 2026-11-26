import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

final _collector = AccountId.fromString('0.0.777');
final _feeToken = TokenId.fromString('0.0.888');

CustomFixedFee _validFixed() =>
    CustomFixedFee().setFeeCollectorAccountId(_collector).setAmount(5);

CustomFractionalFee _validFractional() => CustomFractionalFee()
    .setFeeCollectorAccountId(_collector)
    .setNumerator(1)
    .setDenominator(100);

CustomRoyaltyFee _validRoyalty() => CustomRoyaltyFee()
    .setFeeCollectorAccountId(_collector)
    .setNumerator(5)
    .setDenominator(100);

void main() {
  group('CustomFixedFee', () {
    // ---- default values ----

    group('default values', () {
      test('every field starts unset', () {
        final fee = CustomFixedFee();
        expect(fee.feeCollectorAccountId, isNull);
        expect(fee.amount, isNull);
        expect(fee.denominatingTokenId, isNull);
      });

      test('allCollectorsAreExempt defaults to false', () {
        expect(CustomFixedFee().allCollectorsAreExempt, isFalse);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('setFeeCollectorAccountId sets the collector and returns this', () {
        final fee = CustomFixedFee();
        final result = fee.setFeeCollectorAccountId(_collector);
        expect(result, same(fee));
        expect(fee.feeCollectorAccountId, equals(_collector));
      });

      test('setAmount sets the amount and returns this', () {
        final fee = CustomFixedFee();
        final result = fee.setAmount(5);
        expect(result, same(fee));
        expect(fee.amount, equals(5));
      });

      test('setHbarAmount stores the amount in tinybars', () {
        final fee = CustomFixedFee().setHbarAmount(Hbar(2));
        expect(fee.amount, equals(200000000));
      });

      test('setHbarAmount clears a previous denominating token', () {
        final fee = CustomFixedFee()
            .setDenominatingTokenId(_feeToken)
            .setHbarAmount(Hbar(1));
        expect(fee.denominatingTokenId, isNull);
      });

      test('setDenominatingTokenId sets the token and returns this', () {
        final fee = CustomFixedFee();
        final result = fee.setDenominatingTokenId(_feeToken);
        expect(result, same(fee));
        expect(fee.denominatingTokenId, equals(_feeToken));
      });

      test('setAllCollectorsAreExempt sets the flag and returns this', () {
        final fee = CustomFixedFee();
        final result = fee.setAllCollectorsAreExempt(
          allCollectorsAreExempt: true,
        );
        expect(result, same(fee));
        expect(fee.allCollectorsAreExempt, isTrue);
      });
    });

    // ---- toProto validation ----

    group('toProto validation', () {
      test('throws ArgumentError if the collector is not set', () {
        final fee = CustomFixedFee().setAmount(5);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the amount is not set', () {
        final fee = CustomFixedFee().setFeeCollectorAccountId(_collector);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the amount is negative', () {
        final fee = _validFixed().setAmount(-1);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('does not throw when collector and amount are set', () {
        expect(_validFixed().toProto, returnsNormally);
      });

      test('leaves a zero amount to the network', () {
        final fee = _validFixed().setAmount(0);
        expect(fee.toProto, returnsNormally);
      });
    });

    // ---- toProto serialization ----

    group('toProto serialization', () {
      test('encodes an HBAR fee without a denominating token', () {
        final proto = _validFixed().setHbarAmount(Hbar(1)).toProto();
        expect(proto.hasFixedFee(), isTrue);
        expect(proto.fixedFee.amount.toInt(), equals(100000000));
        expect(proto.fixedFee.hasDenominatingTokenId(), isFalse);
      });

      test('encodes a token fee with its denominating token', () {
        final proto = _validFixed().setDenominatingTokenId(_feeToken).toProto();
        expect(proto.fixedFee.amount.toInt(), equals(5));
        expect(
          proto.fixedFee.denominatingTokenId.tokenNum.toInt(),
          equals(888),
        );
      });

      test('encodes the fee collector', () {
        final proto = _validFixed().toProto();
        expect(proto.feeCollectorAccountId.accountNum.toInt(), equals(777));
      });

      test('encodes allCollectorsAreExempt as false by default', () {
        expect(_validFixed().toProto().allCollectorsAreExempt, isFalse);
      });

      test('encodes allCollectorsAreExempt when set', () {
        final proto = _validFixed()
            .setAllCollectorsAreExempt(allCollectorsAreExempt: true)
            .toProto();
        expect(proto.allCollectorsAreExempt, isTrue);
      });

      test('does not set the fractional or royalty variants', () {
        final proto = _validFixed().toProto();
        expect(proto.hasFractionalFee(), isFalse);
        expect(proto.hasRoyaltyFee(), isFalse);
      });
    });

    // ---- fallback usage ----

    group('toFixedFeeProto', () {
      test('does not require a collector', () {
        final fee = CustomFixedFee().setAmount(7);
        expect(fee.toFixedFeeProto().amount.toInt(), equals(7));
      });

      test('throws ArgumentError if the amount is not set', () {
        expect(
          CustomFixedFee().toFixedFeeProto,
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });

  group('CustomFractionalFee', () {
    // ---- default values ----

    group('default values', () {
      test('every field starts unset', () {
        final fee = CustomFractionalFee();
        expect(fee.feeCollectorAccountId, isNull);
        expect(fee.numerator, isNull);
        expect(fee.denominator, isNull);
        expect(fee.min, isNull);
        expect(fee.max, isNull);
      });

      test('assessmentMethod defaults to receiverPays', () {
        expect(
          CustomFractionalFee().assessmentMethod,
          equals(FeeAssessmentMethod.receiverPays),
        );
      });

      test('allCollectorsAreExempt defaults to false', () {
        expect(CustomFractionalFee().allCollectorsAreExempt, isFalse);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('every setter stores its value and returns this', () {
        final fee = CustomFractionalFee();
        final result = fee
            .setFeeCollectorAccountId(_collector)
            .setNumerator(1)
            .setDenominator(100)
            .setMin(2)
            .setMax(50)
            .setAssessmentMethod(FeeAssessmentMethod.senderPays)
            .setAllCollectorsAreExempt(allCollectorsAreExempt: true);

        expect(result, same(fee));
        expect(fee.feeCollectorAccountId, equals(_collector));
        expect(fee.numerator, equals(1));
        expect(fee.denominator, equals(100));
        expect(fee.min, equals(2));
        expect(fee.max, equals(50));
        expect(fee.assessmentMethod, equals(FeeAssessmentMethod.senderPays));
        expect(fee.allCollectorsAreExempt, isTrue);
      });
    });

    // ---- toProto validation ----

    group('toProto validation', () {
      test('throws ArgumentError if the collector is not set', () {
        final fee = CustomFractionalFee().setNumerator(1).setDenominator(100);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the numerator is not set', () {
        final fee = CustomFractionalFee()
            .setFeeCollectorAccountId(_collector)
            .setDenominator(100);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the denominator is not set', () {
        final fee = CustomFractionalFee()
            .setFeeCollectorAccountId(_collector)
            .setNumerator(1);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the denominator is zero', () {
        final fee = _validFractional().setDenominator(0);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the numerator is negative', () {
        final fee = _validFractional().setNumerator(-1);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the denominator is negative', () {
        final fee = _validFractional().setDenominator(-100);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if min is negative', () {
        final fee = _validFractional().setMin(-1);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if max is negative', () {
        final fee = _validFractional().setMax(-1);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('does not throw with collector, numerator and denominator', () {
        expect(_validFractional().toProto, returnsNormally);
      });

      test('leaves max below min to the network', () {
        final fee = _validFractional().setMin(10).setMax(5);
        expect(fee.toProto, returnsNormally);
      });
    });

    // ---- toProto serialization ----

    group('toProto serialization', () {
      test('encodes the fraction', () {
        final proto = _validFractional().setNumerator(3).toProto();
        expect(proto.hasFractionalFee(), isTrue);
        final fraction = proto.fractionalFee.fractionalAmount;
        expect(fraction.numerator.toInt(), equals(3));
        expect(fraction.denominator.toInt(), equals(100));
      });

      test('encodes min and max', () {
        final proto = _validFractional().setMin(2).setMax(50).toProto();
        expect(proto.fractionalFee.minimumAmount.toInt(), equals(2));
        expect(proto.fractionalFee.maximumAmount.toInt(), equals(50));
      });

      test('encodes min and max as 0 when not set', () {
        final proto = _validFractional().toProto();
        expect(proto.fractionalFee.minimumAmount.toInt(), equals(0));
        expect(proto.fractionalFee.maximumAmount.toInt(), equals(0));
      });

      test('receiverPays encodes netOfTransfers as false', () {
        final proto = _validFractional().toProto();
        expect(proto.fractionalFee.netOfTransfers, isFalse);
      });

      test('senderPays encodes netOfTransfers as true', () {
        final proto = _validFractional()
            .setAssessmentMethod(FeeAssessmentMethod.senderPays)
            .toProto();
        expect(proto.fractionalFee.netOfTransfers, isTrue);
      });

      test('encodes the fee collector and the exempt flag', () {
        final proto = _validFractional()
            .setAllCollectorsAreExempt(allCollectorsAreExempt: true)
            .toProto();
        expect(proto.feeCollectorAccountId.accountNum.toInt(), equals(777));
        expect(proto.allCollectorsAreExempt, isTrue);
      });

      test('does not set the fixed or royalty variants', () {
        final proto = _validFractional().toProto();
        expect(proto.hasFixedFee(), isFalse);
        expect(proto.hasRoyaltyFee(), isFalse);
      });
    });
  });

  group('CustomRoyaltyFee', () {
    // ---- default values ----

    group('default values', () {
      test('every field starts unset', () {
        final fee = CustomRoyaltyFee();
        expect(fee.feeCollectorAccountId, isNull);
        expect(fee.numerator, isNull);
        expect(fee.denominator, isNull);
        expect(fee.fallbackFee, isNull);
      });

      test('allCollectorsAreExempt defaults to false', () {
        expect(CustomRoyaltyFee().allCollectorsAreExempt, isFalse);
      });
    });

    // ---- setters (fluent API) ----

    group('setters', () {
      test('every setter stores its value and returns this', () {
        final fallback = CustomFixedFee().setAmount(3);
        final fee = CustomRoyaltyFee();
        final result = fee
            .setFeeCollectorAccountId(_collector)
            .setNumerator(5)
            .setDenominator(100)
            .setFallbackFee(fallback)
            .setAllCollectorsAreExempt(allCollectorsAreExempt: true);

        expect(result, same(fee));
        expect(fee.feeCollectorAccountId, equals(_collector));
        expect(fee.numerator, equals(5));
        expect(fee.denominator, equals(100));
        expect(fee.fallbackFee, same(fallback));
        expect(fee.allCollectorsAreExempt, isTrue);
      });
    });

    // ---- toProto validation ----

    group('toProto validation', () {
      test('throws ArgumentError if the collector is not set', () {
        final fee = CustomRoyaltyFee().setNumerator(5).setDenominator(100);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the numerator is not set', () {
        final fee = CustomRoyaltyFee()
            .setFeeCollectorAccountId(_collector)
            .setDenominator(100);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the denominator is not set', () {
        final fee = CustomRoyaltyFee()
            .setFeeCollectorAccountId(_collector)
            .setNumerator(5);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the denominator is zero', () {
        final fee = _validRoyalty().setDenominator(0);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the numerator is negative', () {
        final fee = _validRoyalty().setNumerator(-1);
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if the fallback fee has no amount', () {
        final fee = _validRoyalty().setFallbackFee(CustomFixedFee());
        expect(fee.toProto, throwsA(isA<ArgumentError>()));
      });

      test('does not throw without a fallback fee', () {
        expect(_validRoyalty().toProto, returnsNormally);
      });

      test('does not require a collector on the fallback fee', () {
        final fee = _validRoyalty().setFallbackFee(
          CustomFixedFee().setHbarAmount(Hbar(1)),
        );
        expect(fee.toProto, returnsNormally);
      });
    });

    // ---- toProto serialization ----

    group('toProto serialization', () {
      test('encodes the exchange value fraction', () {
        final proto = _validRoyalty().toProto();
        expect(proto.hasRoyaltyFee(), isTrue);
        final fraction = proto.royaltyFee.exchangeValueFraction;
        expect(fraction.numerator.toInt(), equals(5));
        expect(fraction.denominator.toInt(), equals(100));
      });

      test('does not set a fallback fee when none was given', () {
        expect(_validRoyalty().toProto().royaltyFee.hasFallbackFee(), isFalse);
      });

      test('encodes an HBAR fallback fee', () {
        final proto = _validRoyalty()
            .setFallbackFee(CustomFixedFee().setHbarAmount(Hbar(1)))
            .toProto();
        expect(proto.royaltyFee.hasFallbackFee(), isTrue);
        expect(proto.royaltyFee.fallbackFee.amount.toInt(), equals(100000000));
        expect(proto.royaltyFee.fallbackFee.hasDenominatingTokenId(), isFalse);
      });

      test('encodes a token fallback fee', () {
        final proto = _validRoyalty()
            .setFallbackFee(
              CustomFixedFee().setDenominatingTokenId(_feeToken).setAmount(4),
            )
            .toProto();
        final fallback = proto.royaltyFee.fallbackFee;
        expect(fallback.amount.toInt(), equals(4));
        expect(fallback.denominatingTokenId.tokenNum.toInt(), equals(888));
      });

      test('encodes the fee collector and the exempt flag', () {
        final proto = _validRoyalty()
            .setAllCollectorsAreExempt(allCollectorsAreExempt: true)
            .toProto();
        expect(proto.feeCollectorAccountId.accountNum.toInt(), equals(777));
        expect(proto.allCollectorsAreExempt, isTrue);
      });

      test('does not set the fixed or fractional variants', () {
        final proto = _validRoyalty().toProto();
        expect(proto.hasFixedFee(), isFalse);
        expect(proto.hasFractionalFee(), isFalse);
      });
    });
  });

  group('CustomFee (sealed)', () {
    String kind(CustomFee fee) => switch (fee) {
          CustomFixedFee() => 'fixed',
          CustomFractionalFee() => 'fractional',
          CustomRoyaltyFee() => 'royalty',
        };

    test('a switch over the sealed type covers every fee kind', () {
      expect(kind(_validFixed()), equals('fixed'));
      expect(kind(_validFractional()), equals('fractional'));
      expect(kind(_validRoyalty()), equals('royalty'));
    });

    test('FeeAssessmentMethod has the two documented values', () {
      expect(
        FeeAssessmentMethod.values,
        equals([
          FeeAssessmentMethod.receiverPays,
          FeeAssessmentMethod.senderPays,
        ]),
      );
    });
  });
}
