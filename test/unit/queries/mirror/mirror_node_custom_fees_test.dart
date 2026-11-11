import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('MirrorNodeFixedFee.fromJson', () {
    test('parses a fee paid in a token', () {
      final fee = MirrorNodeFixedFee.fromJson(const {
        'all_collectors_are_exempt': true,
        'amount': 100,
        'collector_account_id': '0.0.98',
        'denominating_token_id': '0.0.7',
      });

      expect(fee.amount, 100);
      expect(fee.collectorAccountId, AccountId.fromString('0.0.98'));
      expect(fee.denominatingTokenId, TokenId.fromString('0.0.7'));
      expect(fee.allCollectorsAreExempt, isTrue);
    });

    test('a fee without denominating token is paid in HBAR', () {
      final fee = MirrorNodeFixedFee.fromJson(const {
        'amount': 5,
        'denominating_token_id': null,
      });

      expect(fee.denominatingTokenId, isNull);
      expect(fee.collectorAccountId, isNull);
      expect(fee.allCollectorsAreExempt, isFalse);
    });

    test('a missing amount throws FormatException', () {
      expect(
        () => MirrorNodeFixedFee.fromJson(
          const {'collector_account_id': '0.0.98'},
        ),
        throwsFormatException,
      );
    });

    test('toString shows the amount', () {
      final fee = MirrorNodeFixedFee.fromJson(const {'amount': 5});

      expect(fee.toString(), contains('amount: 5'));
    });
  });

  group('MirrorNodeFractionalFee.fromJson', () {
    test('parses a complete fee', () {
      final fee = MirrorNodeFractionalFee.fromJson(const {
        'all_collectors_are_exempt': false,
        'amount': {'numerator': 12, 'denominator': 29},
        'collector_account_id': '0.0.98',
        'denominating_token_id': '0.0.7',
        'maximum': 120,
        'minimum': 30,
        'net_of_transfers': true,
      });

      expect(fee.numerator, 12);
      expect(fee.denominator, 29);
      expect(fee.minimum, 30);
      expect(fee.maximum, 120);
      expect(fee.netOfTransfers, isTrue);
      expect(fee.collectorAccountId, AccountId.fromString('0.0.98'));
      expect(fee.denominatingTokenId, TokenId.fromString('0.0.7'));
    });

    test('applies defaults for optional fields', () {
      final fee = MirrorNodeFractionalFee.fromJson(const {
        'amount': {'numerator': 1, 'denominator': 10},
        'maximum': null,
      });

      expect(fee.minimum, 0);
      expect(fee.maximum, isNull);
      expect(fee.netOfTransfers, isFalse);
      expect(fee.allCollectorsAreExempt, isFalse);
    });

    test('a missing amount object throws FormatException', () {
      expect(
        () => MirrorNodeFractionalFee.fromJson(const {'minimum': 1}),
        throwsFormatException,
      );
    });

    test('a missing numerator throws FormatException', () {
      expect(
        () => MirrorNodeFractionalFee.fromJson(const {
          'amount': {'denominator': 10},
        }),
        throwsFormatException,
      );
    });

    test('toString shows the fraction', () {
      final fee = MirrorNodeFractionalFee.fromJson(const {
        'amount': {'numerator': 1, 'denominator': 10},
      });

      expect(fee.toString(), 'MirrorNodeFractionalFee(1/10)');
    });
  });

  group('MirrorNodeRoyaltyFee.fromJson', () {
    test('parses a fee with a fallback', () {
      final fee = MirrorNodeRoyaltyFee.fromJson(const {
        'all_collectors_are_exempt': true,
        'amount': {'numerator': 15, 'denominator': 37},
        'collector_account_id': '0.0.98',
        'fallback_fee': {'amount': 100, 'denominating_token_id': '0.0.7'},
      });

      expect(fee.numerator, 15);
      expect(fee.denominator, 37);
      expect(fee.collectorAccountId, AccountId.fromString('0.0.98'));
      expect(fee.allCollectorsAreExempt, isTrue);
      expect(fee.fallbackFee, isNotNull);
      expect(fee.fallbackFee!.amount, 100);
      expect(fee.fallbackFee!.denominatingTokenId, TokenId.fromString('0.0.7'));
    });

    test('a null fallback is kept as null', () {
      final fee = MirrorNodeRoyaltyFee.fromJson(const {
        'amount': {'numerator': 15, 'denominator': 37},
        'fallback_fee': null,
      });

      expect(fee.fallbackFee, isNull);
    });

    test('a fallback without token is paid in HBAR', () {
      final fee = MirrorNodeRoyaltyFee.fromJson(const {
        'amount': {'numerator': 1, 'denominator': 100},
        'fallback_fee': {'amount': 50},
      });

      expect(fee.fallbackFee!.amount, 50);
      expect(fee.fallbackFee!.denominatingTokenId, isNull);
    });

    test('a missing amount object throws FormatException', () {
      expect(
        () => MirrorNodeRoyaltyFee.fromJson(const {'fallback_fee': null}),
        throwsFormatException,
      );
    });

    test('a fallback without amount throws FormatException', () {
      expect(
        () => MirrorNodeRoyaltyFee.fromJson(const {
          'amount': {'numerator': 1, 'denominator': 100},
          'fallback_fee': {'denominating_token_id': '0.0.7'},
        }),
        throwsFormatException,
      );
    });

    test('toString shows the fraction', () {
      final fee = MirrorNodeRoyaltyFee.fromJson(const {
        'amount': {'numerator': 5, 'denominator': 100},
      });

      expect(fee.toString(), 'MirrorNodeRoyaltyFee(5/100)');
    });
  });

  group('MirrorNodeCustomFees', () {
    test('the default schedule is empty', () {
      const fees = MirrorNodeCustomFees();

      expect(fees.isEmpty, isTrue);
      expect(fees.createdTimestamp, isNull);
    });

    test('fromJson parses the three kinds of fee', () {
      final fees = MirrorNodeCustomFees.fromJson(const {
        'created_timestamp': '1234567890.000000001',
        'fixed_fees': [
          {'amount': 100, 'denominating_token_id': null},
        ],
        'fractional_fees': [
          {
            'amount': {'numerator': 1, 'denominator': 10},
            'minimum': 1,
          },
        ],
        'royalty_fees': [
          {
            'amount': {'numerator': 5, 'denominator': 100},
            'fallback_fee': null,
          },
        ],
      });

      expect(fees.createdTimestamp, '1234567890.000000001');
      expect(fees.fixedFees, hasLength(1));
      expect(fees.fractionalFees, hasLength(1));
      expect(fees.royaltyFees, hasLength(1));
      expect(fees.isEmpty, isFalse);
    });

    test('an empty object gives an empty schedule', () {
      final fees = MirrorNodeCustomFees.fromJson(const {});

      expect(fees.isEmpty, isTrue);
    });

    test('empty arrays give an empty schedule', () {
      final fees = MirrorNodeCustomFees.fromJson(const {
        'fixed_fees': <dynamic>[],
        'fractional_fees': <dynamic>[],
        'royalty_fees': <dynamic>[],
      });

      expect(fees.isEmpty, isTrue);
    });

    test('isEmpty is false with only one kind of fee', () {
      final fees = MirrorNodeCustomFees.fromJson(const {
        'royalty_fees': [
          {
            'amount': {'numerator': 5, 'denominator': 100},
          },
        ],
      });

      expect(fees.isEmpty, isFalse);
    });

    test('a fee list that is not an array throws FormatException', () {
      expect(
        () => MirrorNodeCustomFees.fromJson(const {'fixed_fees': 'oops'}),
        throwsFormatException,
      );
    });

    test('a fee that is not an object throws FormatException', () {
      expect(
        () => MirrorNodeCustomFees.fromJson(const {
          'fixed_fees': [1],
        }),
        throwsFormatException,
      );
    });

    test('a malformed fee throws FormatException', () {
      expect(
        () => MirrorNodeCustomFees.fromJson(const {
          'fixed_fees': [
            {'collector_account_id': '0.0.98'},
          ],
        }),
        throwsFormatException,
      );
    });
  });
}
