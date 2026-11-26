import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart'
    as hedera_types;
import 'package:hedera_flutter_sdk/src/proto/custom_fees.pb.dart'
    as hedera_fees;

/// Who pays a [CustomFractionalFee] when a token is transferred.
///
/// Example:
/// ```dart
/// final fee = CustomFractionalFee()
///     .setAssessmentMethod(FeeAssessmentMethod.senderPays);
/// ```
enum FeeAssessmentMethod {
  /// The fee is deducted from the amount the receiver gets. This is the
  /// network default (`net_of_transfers = false`).
  receiverPays,

  /// The fee is charged on top of the transferred amount, so the sender
  /// pays it (`net_of_transfers = true`).
  senderPays,
}

/// A custom fee charged by the network every time a token is transferred.
///
/// Custom fees are attached to a token with
/// `TokenCreateTransaction.setCustomFees` or
/// `TokenCreateTransaction.addCustomFee`. A token can have up to 10 of
/// them. There are three kinds:
///
/// - [CustomFixedFee]: a fixed amount of HBAR or of a fungible token.
/// - [CustomFractionalFee]: a fraction of the transferred amount
///   (fungible tokens only).
/// - [CustomRoyaltyFee]: a fraction of the value a receiver exchanges for
///   an NFT (non-fungible tokens only).
///
/// Example:
/// ```dart
/// final CustomFee fee = CustomFixedFee()
///     .setFeeCollectorAccountId(collectorId)
///     .setHbarAmount(Hbar(1));
/// ```
sealed class CustomFee {
  CustomFee._();

  AccountId? _feeCollectorAccountId;
  bool _allCollectorsAreExempt = false;

  /// The account that receives this fee, or null if not set.
  AccountId? get feeCollectorAccountId => _feeCollectorAccountId;

  /// Whether every fee collector of the token is exempt from this fee
  /// (HIP-573). Defaults to `false`.
  bool get allCollectorsAreExempt => _allCollectorsAreExempt;

  /// Converts this fee to its protobuf representation.
  ///
  /// Throws [ArgumentError] if the fee is not fully specified.
  hedera_fees.CustomFee toProto();

  /// Returns the collector as protobuf, or throws if it was not set.
  hedera_types.AccountID _requireCollector(String feeName) {
    final collector = _feeCollectorAccountId;
    if (collector == null) {
      throw ArgumentError(
        '$feeName requires a fee collector account. '
        'Call setFeeCollectorAccountId() first.',
      );
    }
    return collector.toProto();
  }
}

/// A fixed fee, paid by the sender, in HBAR or in a fungible token.
///
/// If no denominating token is set the fee is charged in HBAR. A fixed
/// fee can be applied to fungible and non-fungible tokens, but an NFT
/// cannot be used as its denomination.
///
/// Example:
/// ```dart
/// // 1 HBAR per transfer.
/// final hbarFee = CustomFixedFee()
///     .setFeeCollectorAccountId(collectorId)
///     .setHbarAmount(Hbar(1));
///
/// // 5 units of another fungible token per transfer.
/// final tokenFee = CustomFixedFee()
///     .setFeeCollectorAccountId(collectorId)
///     .setDenominatingTokenId(feeTokenId)
///     .setAmount(5);
/// ```
final class CustomFixedFee extends CustomFee {
  /// Creates an empty [CustomFixedFee].
  CustomFixedFee() : super._();

  int? _amount;
  TokenId? _denominatingTokenId;

  /// The fee amount (tinybars or token units), or null if not set.
  int? get amount => _amount;

  /// The token the fee is charged in, or null when it is charged in HBAR.
  TokenId? get denominatingTokenId => _denominatingTokenId;

  /// Sets the account that receives this fee. This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// fee.setFeeCollectorAccountId(collectorId);
  /// ```
  CustomFixedFee setFeeCollectorAccountId(AccountId accountId) {
    _feeCollectorAccountId = accountId;
    return this;
  }

  /// Sets the fee amount in the smallest unit of the denomination
  /// (tinybars for HBAR, token units otherwise). This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// fee.setAmount(5);
  /// ```
  CustomFixedFee setAmount(int amount) {
    _amount = amount;
    return this;
  }

  /// Sets the fee amount in HBAR and clears any denominating token.
  ///
  /// Example:
  /// ```dart
  /// fee.setHbarAmount(Hbar(1));
  /// ```
  CustomFixedFee setHbarAmount(Hbar amount) {
    _amount = amount.toTinybars();
    _denominatingTokenId = null;
    return this;
  }

  /// Sets the fungible token the fee is charged in.
  ///
  /// The token must be fungible and common. Omit it to charge in HBAR.
  ///
  /// Example:
  /// ```dart
  /// fee.setDenominatingTokenId(feeTokenId);
  /// ```
  CustomFixedFee setDenominatingTokenId(TokenId tokenId) {
    _denominatingTokenId = tokenId;
    return this;
  }

  /// Makes every fee collector of the token exempt from this fee.
  ///
  /// Example:
  /// ```dart
  /// fee.setAllCollectorsAreExempt(allCollectorsAreExempt: true);
  /// ```
  CustomFixedFee setAllCollectorsAreExempt({
    required bool allCollectorsAreExempt,
  }) {
    _allCollectorsAreExempt = allCollectorsAreExempt;
    return this;
  }

  /// Builds the protobuf `FixedFee`, validating only the amount.
  ///
  /// Used directly for the fallback fee of a [CustomRoyaltyFee], where
  /// the collector is not needed.
  hedera_fees.FixedFee toFixedFeeProto() {
    final value = _amount;
    if (value == null) {
      throw ArgumentError(
        'CustomFixedFee requires an amount. '
        'Call setAmount() or setHbarAmount() first.',
      );
    }
    if (value < 0) {
      throw ArgumentError.value(value, 'amount', 'must not be negative');
    }
    return hedera_fees.FixedFee(
      amount: Int64(value),
      denominatingTokenId: _denominatingTokenId?.toProto(),
    );
  }

  @override
  hedera_fees.CustomFee toProto() {
    final collector = _requireCollector('CustomFixedFee');
    return hedera_fees.CustomFee(
      fixedFee: toFixedFeeProto(),
      feeCollectorAccountId: collector,
      allCollectorsAreExempt: _allCollectorsAreExempt,
    );
  }
}

/// A fee that is a fraction of the amount of a fungible token transferred.
///
/// Only valid for fungible common tokens. By default the receiver pays
/// (the fee is deducted from what arrives); use
/// [setAssessmentMethod] to make the sender pay instead.
///
/// Example:
/// ```dart
/// // 1% of every transfer, at least 1 unit and at most 100 units.
/// final fee = CustomFractionalFee()
///     .setFeeCollectorAccountId(collectorId)
///     .setNumerator(1)
///     .setDenominator(100)
///     .setMin(1)
///     .setMax(100);
/// ```
final class CustomFractionalFee extends CustomFee {
  /// Creates an empty [CustomFractionalFee].
  CustomFractionalFee() : super._();

  int? _numerator;
  int? _denominator;
  int? _min;
  int? _max;
  FeeAssessmentMethod _assessmentMethod = FeeAssessmentMethod.receiverPays;

  /// The numerator of the fraction, or null if not set.
  int? get numerator => _numerator;

  /// The denominator of the fraction, or null if not set.
  int? get denominator => _denominator;

  /// The minimum fee, or null if not set.
  int? get min => _min;

  /// The maximum fee, or null if not set (a value of `0` also means no
  /// maximum on the network).
  int? get max => _max;

  /// Who pays the fee. Defaults to [FeeAssessmentMethod.receiverPays].
  FeeAssessmentMethod get assessmentMethod => _assessmentMethod;

  /// Sets the account that receives this fee. This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// fee.setFeeCollectorAccountId(collectorId);
  /// ```
  CustomFractionalFee setFeeCollectorAccountId(AccountId accountId) {
    _feeCollectorAccountId = accountId;
    return this;
  }

  /// Sets the numerator of the fraction. This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// fee.setNumerator(1); // with denominator 100 this is 1%
  /// ```
  CustomFractionalFee setNumerator(int numerator) {
    _numerator = numerator;
    return this;
  }

  /// Sets the denominator of the fraction. This field is REQUIRED and
  /// must not be zero.
  ///
  /// Example:
  /// ```dart
  /// fee.setDenominator(100);
  /// ```
  CustomFractionalFee setDenominator(int denominator) {
    _denominator = denominator;
    return this;
  }

  /// Sets the minimum fee, in token units. Optional.
  ///
  /// Example:
  /// ```dart
  /// fee.setMin(1);
  /// ```
  CustomFractionalFee setMin(int min) {
    _min = min;
    return this;
  }

  /// Sets the maximum fee, in token units. Optional; `0` means no
  /// maximum.
  ///
  /// Example:
  /// ```dart
  /// fee.setMax(100);
  /// ```
  CustomFractionalFee setMax(int max) {
    _max = max;
    return this;
  }

  /// Sets who pays the fee. Defaults to
  /// [FeeAssessmentMethod.receiverPays].
  ///
  /// Example:
  /// ```dart
  /// fee.setAssessmentMethod(FeeAssessmentMethod.senderPays);
  /// ```
  CustomFractionalFee setAssessmentMethod(FeeAssessmentMethod method) {
    _assessmentMethod = method;
    return this;
  }

  /// Makes every fee collector of the token exempt from this fee.
  ///
  /// Example:
  /// ```dart
  /// fee.setAllCollectorsAreExempt(allCollectorsAreExempt: true);
  /// ```
  CustomFractionalFee setAllCollectorsAreExempt({
    required bool allCollectorsAreExempt,
  }) {
    _allCollectorsAreExempt = allCollectorsAreExempt;
    return this;
  }

  @override
  hedera_fees.CustomFee toProto() {
    final collector = _requireCollector('CustomFractionalFee');
    final fraction = _buildFraction(
      'CustomFractionalFee',
      _numerator,
      _denominator,
    );
    final min = _min;
    final max = _max;
    if (min != null && min < 0) {
      throw ArgumentError.value(min, 'min', 'must not be negative');
    }
    if (max != null && max < 0) {
      throw ArgumentError.value(max, 'max', 'must not be negative');
    }
    return hedera_fees.CustomFee(
      fractionalFee: hedera_fees.FractionalFee(
        fractionalAmount: fraction,
        minimumAmount: min == null ? null : Int64(min),
        maximumAmount: max == null ? null : Int64(max),
        netOfTransfers: _assessmentMethod == FeeAssessmentMethod.senderPays,
      ),
      feeCollectorAccountId: collector,
      allCollectorsAreExempt: _allCollectorsAreExempt,
    );
  }
}

/// A royalty fee, a fraction of the value received when an NFT changes
/// hands.
///
/// Only valid for non-fungible unique tokens. It applies when the
/// receiver of the NFT gives fungible value (HBAR or tokens) in the same
/// transfer. If there is no fungible value, the optional fallback fee is
/// charged instead. The transfer must be a single `CryptoTransfer`
/// signed by both parties.
///
/// Example:
/// ```dart
/// // 5% royalty, or 1 HBAR when the NFT is moved without payment.
/// final fee = CustomRoyaltyFee()
///     .setFeeCollectorAccountId(creatorId)
///     .setNumerator(5)
///     .setDenominator(100)
///     .setFallbackFee(CustomFixedFee().setHbarAmount(Hbar(1)));
/// ```
final class CustomRoyaltyFee extends CustomFee {
  /// Creates an empty [CustomRoyaltyFee].
  CustomRoyaltyFee() : super._();

  int? _numerator;
  int? _denominator;
  CustomFixedFee? _fallbackFee;

  /// The numerator of the fraction, or null if not set.
  int? get numerator => _numerator;

  /// The denominator of the fraction, or null if not set.
  int? get denominator => _denominator;

  /// The fallback fee, or null if not set.
  CustomFixedFee? get fallbackFee => _fallbackFee;

  /// Sets the account that receives this fee. This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// fee.setFeeCollectorAccountId(creatorId);
  /// ```
  CustomRoyaltyFee setFeeCollectorAccountId(AccountId accountId) {
    _feeCollectorAccountId = accountId;
    return this;
  }

  /// Sets the numerator of the royalty fraction. This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// fee.setNumerator(5); // with denominator 100 this is 5%
  /// ```
  CustomRoyaltyFee setNumerator(int numerator) {
    _numerator = numerator;
    return this;
  }

  /// Sets the denominator of the royalty fraction. This field is
  /// REQUIRED and must not be zero.
  ///
  /// Example:
  /// ```dart
  /// fee.setDenominator(100);
  /// ```
  CustomRoyaltyFee setDenominator(int denominator) {
    _denominator = denominator;
    return this;
  }

  /// Sets the fixed fee charged when the NFT is transferred without
  /// fungible value in exchange. Optional.
  ///
  /// The fallback fee does not need its own collector; the royalty
  /// collector receives it.
  ///
  /// Example:
  /// ```dart
  /// fee.setFallbackFee(CustomFixedFee().setHbarAmount(Hbar(1)));
  /// ```
  CustomRoyaltyFee setFallbackFee(CustomFixedFee fallbackFee) {
    _fallbackFee = fallbackFee;
    return this;
  }

  /// Makes every fee collector of the token exempt from this fee.
  ///
  /// Example:
  /// ```dart
  /// fee.setAllCollectorsAreExempt(allCollectorsAreExempt: true);
  /// ```
  CustomRoyaltyFee setAllCollectorsAreExempt({
    required bool allCollectorsAreExempt,
  }) {
    _allCollectorsAreExempt = allCollectorsAreExempt;
    return this;
  }

  @override
  hedera_fees.CustomFee toProto() {
    final collector = _requireCollector('CustomRoyaltyFee');
    final fraction = _buildFraction(
      'CustomRoyaltyFee',
      _numerator,
      _denominator,
    );
    return hedera_fees.CustomFee(
      royaltyFee: hedera_fees.RoyaltyFee(
        exchangeValueFraction: fraction,
        fallbackFee: _fallbackFee?.toFixedFeeProto(),
      ),
      feeCollectorAccountId: collector,
      allCollectorsAreExempt: _allCollectorsAreExempt,
    );
  }
}

// ---- Shared helpers ----

/// Validates a numerator and denominator and builds the protobuf fraction.
hedera_types.Fraction _buildFraction(
  String feeName,
  int? numerator,
  int? denominator,
) {
  if (numerator == null || denominator == null) {
    throw ArgumentError(
      '$feeName requires a numerator and a denominator. '
      'Call setNumerator() and setDenominator() first.',
    );
  }
  if (denominator == 0) {
    throw ArgumentError.value(denominator, 'denominator', 'must not be zero');
  }
  if (numerator < 0 || denominator < 0) {
    throw ArgumentError(
      '$feeName fraction must not be negative '
      '(numerator: $numerator, denominator: $denominator).',
    );
  }
  return hedera_types.Fraction(
    numerator: Int64(numerator),
    denominator: Int64(denominator),
  );
}
