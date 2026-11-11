import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_json.dart';
import 'package:meta/meta.dart';

/// A fixed custom fee of a token, as reported by the Mirror Node.
@immutable
class MirrorNodeFixedFee {
  /// Creates a [MirrorNodeFixedFee].
  const MirrorNodeFixedFee({
    required this.amount,
    this.collectorAccountId,
    this.denominatingTokenId,
    this.allCollectorsAreExempt = false,
  });

  /// Reads a fee from a JSON object of the `fixed_fees` array.
  ///
  /// Throws [FormatException] if the object is malformed.
  factory MirrorNodeFixedFee.fromJson(Map<String, dynamic> json) {
    return MirrorNodeFixedFee(
      amount: requireInt(json, 'amount'),
      collectorAccountId: jsonAccountId(json['collector_account_id']),
      denominatingTokenId: jsonTokenId(json['denominating_token_id']),
      allCollectorsAreExempt:
          jsonBool(json['all_collectors_are_exempt']) ?? false,
    );
  }

  /// The fee amount: tinybars when [denominatingTokenId] is null,
  /// otherwise units of that token.
  final int amount;

  /// The account that receives the fee.
  final AccountId? collectorAccountId;

  /// The token the fee is paid in, or null when it is paid in HBAR.
  final TokenId? denominatingTokenId;

  /// Whether every fee collector is exempt from this fee.
  final bool allCollectorsAreExempt;

  @override
  String toString() =>
      'MirrorNodeFixedFee(amount: $amount, token: $denominatingTokenId)';
}

/// A fractional custom fee of a token, as reported by the Mirror Node.
@immutable
class MirrorNodeFractionalFee {
  /// Creates a [MirrorNodeFractionalFee].
  const MirrorNodeFractionalFee({
    required this.numerator,
    required this.denominator,
    this.minimum = 0,
    this.maximum,
    this.netOfTransfers = false,
    this.collectorAccountId,
    this.denominatingTokenId,
    this.allCollectorsAreExempt = false,
  });

  /// Reads a fee from a JSON object of the `fractional_fees` array.
  ///
  /// Throws [FormatException] if the object is malformed.
  factory MirrorNodeFractionalFee.fromJson(Map<String, dynamic> json) {
    final ratio = jsonMap(json['amount']);
    if (ratio == null) {
      throw FormatException('Fractional fee without amount: $json');
    }
    return MirrorNodeFractionalFee(
      numerator: requireInt(ratio, 'numerator'),
      denominator: requireInt(ratio, 'denominator'),
      minimum: jsonInt(json['minimum']) ?? 0,
      maximum: jsonInt(json['maximum']),
      netOfTransfers: jsonBool(json['net_of_transfers']) ?? false,
      collectorAccountId: jsonAccountId(json['collector_account_id']),
      denominatingTokenId: jsonTokenId(json['denominating_token_id']),
      allCollectorsAreExempt:
          jsonBool(json['all_collectors_are_exempt']) ?? false,
    );
  }

  /// The numerator of the fraction charged.
  final int numerator;

  /// The denominator of the fraction charged.
  final int denominator;

  /// The minimum fee, in units of the token charged.
  final int minimum;

  /// The maximum fee, or null when there is no maximum.
  final int? maximum;

  /// Whether the fee is charged on top of the transferred amount
  /// instead of being deducted from it.
  final bool netOfTransfers;

  /// The account that receives the fee.
  final AccountId? collectorAccountId;

  /// The token the fee is paid in, or null for the token itself.
  final TokenId? denominatingTokenId;

  /// Whether every fee collector is exempt from this fee.
  final bool allCollectorsAreExempt;

  @override
  String toString() => 'MirrorNodeFractionalFee($numerator/$denominator)';
}

/// The fallback fee of a royalty fee.
@immutable
class MirrorNodeRoyaltyFallbackFee {
  /// Creates a [MirrorNodeRoyaltyFallbackFee].
  const MirrorNodeRoyaltyFallbackFee({
    required this.amount,
    this.denominatingTokenId,
  });

  /// Reads a fallback fee from its JSON object.
  ///
  /// Throws [FormatException] if the object is malformed.
  factory MirrorNodeRoyaltyFallbackFee.fromJson(Map<String, dynamic> json) {
    return MirrorNodeRoyaltyFallbackFee(
      amount: requireInt(json, 'amount'),
      denominatingTokenId: jsonTokenId(json['denominating_token_id']),
    );
  }

  /// The fallback amount: tinybars when [denominatingTokenId] is null,
  /// otherwise units of that token.
  final int amount;

  /// The token the fallback fee is paid in, or null for HBAR.
  final TokenId? denominatingTokenId;
}

/// A royalty custom fee of a non-fungible token, as reported by the
/// Mirror Node.
@immutable
class MirrorNodeRoyaltyFee {
  /// Creates a [MirrorNodeRoyaltyFee].
  const MirrorNodeRoyaltyFee({
    required this.numerator,
    required this.denominator,
    this.fallbackFee,
    this.collectorAccountId,
    this.allCollectorsAreExempt = false,
  });

  /// Reads a fee from a JSON object of the `royalty_fees` array.
  ///
  /// Throws [FormatException] if the object is malformed.
  factory MirrorNodeRoyaltyFee.fromJson(Map<String, dynamic> json) {
    final ratio = jsonMap(json['amount']);
    if (ratio == null) {
      throw FormatException('Royalty fee without amount: $json');
    }
    final fallback = jsonMap(json['fallback_fee']);
    return MirrorNodeRoyaltyFee(
      numerator: requireInt(ratio, 'numerator'),
      denominator: requireInt(ratio, 'denominator'),
      fallbackFee: fallback == null
          ? null
          : MirrorNodeRoyaltyFallbackFee.fromJson(fallback),
      collectorAccountId: jsonAccountId(json['collector_account_id']),
      allCollectorsAreExempt:
          jsonBool(json['all_collectors_are_exempt']) ?? false,
    );
  }

  /// The numerator of the fraction of the sale value charged.
  final int numerator;

  /// The denominator of the fraction of the sale value charged.
  final int denominator;

  /// The fee charged when the NFT is transferred without value, or
  /// null when there is none.
  final MirrorNodeRoyaltyFallbackFee? fallbackFee;

  /// The account that receives the royalty.
  final AccountId? collectorAccountId;

  /// Whether every fee collector is exempt from this fee.
  final bool allCollectorsAreExempt;

  @override
  String toString() => 'MirrorNodeRoyaltyFee($numerator/$denominator)';
}

/// The custom fee schedule of a token, as reported by the Mirror Node.
@immutable
class MirrorNodeCustomFees {
  /// Creates a [MirrorNodeCustomFees].
  const MirrorNodeCustomFees({
    this.createdTimestamp,
    this.fixedFees = const [],
    this.fractionalFees = const [],
    this.royaltyFees = const [],
  });

  /// Reads a fee schedule from the `custom_fees` JSON object.
  ///
  /// Throws [FormatException] if the object is malformed.
  factory MirrorNodeCustomFees.fromJson(Map<String, dynamic> json) {
    return MirrorNodeCustomFees(
      createdTimestamp: jsonString(json['created_timestamp']),
      fixedFees: jsonMapList(json['fixed_fees'], 'fixed_fees')
          .map(MirrorNodeFixedFee.fromJson)
          .toList(),
      fractionalFees: jsonMapList(json['fractional_fees'], 'fractional_fees')
          .map(MirrorNodeFractionalFee.fromJson)
          .toList(),
      royaltyFees: jsonMapList(json['royalty_fees'], 'royalty_fees')
          .map(MirrorNodeRoyaltyFee.fromJson)
          .toList(),
    );
  }

  /// When the fee schedule was set, in `seconds.nanoseconds` format.
  final String? createdTimestamp;

  /// The fixed fees.
  final List<MirrorNodeFixedFee> fixedFees;

  /// The fractional fees.
  final List<MirrorNodeFractionalFee> fractionalFees;

  /// The royalty fees.
  final List<MirrorNodeRoyaltyFee> royaltyFees;

  /// Whether the token has no custom fees at all.
  bool get isEmpty =>
      fixedFees.isEmpty && fractionalFees.isEmpty && royaltyFees.isEmpty;
}
