// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from custom_fees.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A descriptor for a fee based on a portion of the tokens transferred.
///
///  This fee option describes fees as a fraction of the amount of
///  fungible/common token(s) transferred.  The fee also describes a minimum
///  and maximum amount, both of which are OPTIONAL.
///
///  This type of fee SHALL be assessed only for fungible/common tokens.<br/>
///  This type of fee MUST NOT be defined for a non-fungible/unique
///  token type.<br/>
///  This fee SHALL be paid with the same type of tokens as those
///  transferred.<br/>
///  The fee MAY be subtracted from the transferred tokens, or MAY be assessed
///  to the sender in addition to the tokens actually transferred, based on
///  the `net_of_transfers` field.
///
///  When a single transaction sends tokens from one sender to multiple
///  recipients, and the `net_of_transfers` flag is false, the network
///  SHALL attempt to evenly assess the total fee across all recipients
///  proportionally. This may be inexact and, particularly when there are
///  large differences between recipients, MAY result in small deviations
///  from an ideal "fair" distribution.<br/>
///  If the sender lacks sufficient tokens to pay fees, or the assessment
///  of custom fees reduces the net amount transferred to or below zero,
///  the transaction MAY fail due to insufficient funds to pay all fees.
class FractionalFee extends $pb.GeneratedMessage {
  factory FractionalFee({
    $0.Fraction? fractionalAmount,
    $fixnum.Int64? minimumAmount,
    $fixnum.Int64? maximumAmount,
    $core.bool? netOfTransfers,
  }) {
    final result = create();
    if (fractionalAmount != null) result.fractionalAmount = fractionalAmount;
    if (minimumAmount != null) result.minimumAmount = minimumAmount;
    if (maximumAmount != null) result.maximumAmount = maximumAmount;
    if (netOfTransfers != null) result.netOfTransfers = netOfTransfers;
    return result;
  }

  FractionalFee._();

  factory FractionalFee.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FractionalFee.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FractionalFee',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.Fraction>(1, _omitFieldNames ? '' : 'fractionalAmount',
        subBuilder: $0.Fraction.create)
    ..aInt64(2, _omitFieldNames ? '' : 'minimumAmount')
    ..aInt64(3, _omitFieldNames ? '' : 'maximumAmount')
    ..aOB(4, _omitFieldNames ? '' : 'netOfTransfers')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FractionalFee clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FractionalFee copyWith(void Function(FractionalFee) updates) =>
      super.copyWith((message) => updates(message as FractionalFee))
          as FractionalFee;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FractionalFee create() => FractionalFee._();
  @$core.override
  FractionalFee createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FractionalFee getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FractionalFee>(create);
  static FractionalFee? _defaultInstance;

  /// *
  ///  A Fraction of the transferred tokens to assess as a fee.<br/>
  ///  This value MUST be less than or equal to one.<br/>
  ///  This value MUST be greater than zero.
  @$pb.TagNumber(1)
  $0.Fraction get fractionalAmount => $_getN(0);
  @$pb.TagNumber(1)
  set fractionalAmount($0.Fraction value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFractionalAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearFractionalAmount() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Fraction ensureFractionalAmount() => $_ensure(0);

  /// *
  ///  A minimum fee to charge, in units of 10<sup>-decimals</sup> tokens.
  ///  <p>
  ///  This value is OPTIONAL, with a default of `0` indicating no minimum.<br/>
  ///  If set, this value MUST be greater than zero.<br/>
  ///  If set, all transfers SHALL pay at least this amount.
  @$pb.TagNumber(2)
  $fixnum.Int64 get minimumAmount => $_getI64(1);
  @$pb.TagNumber(2)
  set minimumAmount($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinimumAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinimumAmount() => $_clearField(2);

  /// *
  ///  A maximum fee to charge, in units of 10<sup>-decimals</sup> tokens.
  ///  <p>
  ///  This value is OPTIONAL, with a default of `0` indicating no maximum.<br/>
  ///  If set, this value MUST be greater than zero.<br/>
  ///  If set, any fee charged SHALL NOT exceed this value.<br/>
  ///  This value SHOULD be strictly greater than `minimum_amount`.
  ///  If this amount is less than or equal to `minimum_amount`, then
  ///  the fee charged SHALL always be equal to this value and
  ///  `fractional_amount` SHALL NOT have any effect.
  @$pb.TagNumber(3)
  $fixnum.Int64 get maximumAmount => $_getI64(2);
  @$pb.TagNumber(3)
  set maximumAmount($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaximumAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaximumAmount() => $_clearField(3);

  /// *
  ///  Flag requesting to assess the calculated fee against the sender,
  ///  without reducing the amount transferred.<br/>
  ///  #### Effects of this flag
  ///  <ol>
  ///    <li>If this value is true
  ///      <ul>
  ///        <li>The receiver of a transfer SHALL receive the entire
  ///            amount sent.</li>
  ///        <li>The fee SHALL be charged to the sender as an additional
  ///            amount, increasing the token transfer debit.</li>
  ///      </ul>
  ///    </li>
  ///    <li>If this value is false
  ///      <ul>
  ///        <li>The receiver of a transfer SHALL receive the amount sent
  ///            _after_ deduction of the calculated fee.</li>
  ///      </ul>
  ///    </li>
  ///  </ol>
  @$pb.TagNumber(4)
  $core.bool get netOfTransfers => $_getBF(3);
  @$pb.TagNumber(4)
  set netOfTransfers($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNetOfTransfers() => $_has(3);
  @$pb.TagNumber(4)
  void clearNetOfTransfers() => $_clearField(4);
}

/// *
///  A fixed fee to assess for each token transfer, regardless of the
///  amount transferred.<br/>
///  This fee type describes a fixed fee for each transfer of a token type.
///
///  The fee SHALL be charged to the `sender` for the token transfer
///  transaction.<br/>
///  This fee MAY be assessed in HBAR, the token type transferred, or any
///  other token type, as determined by the `denominating_token_id` field.
class FixedFee extends $pb.GeneratedMessage {
  factory FixedFee({
    $fixnum.Int64? amount,
    $0.TokenID? denominatingTokenId,
  }) {
    final result = create();
    if (amount != null) result.amount = amount;
    if (denominatingTokenId != null)
      result.denominatingTokenId = denominatingTokenId;
    return result;
  }

  FixedFee._();

  factory FixedFee.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FixedFee.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FixedFee',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'amount')
    ..aOM<$0.TokenID>(2, _omitFieldNames ? '' : 'denominatingTokenId',
        subBuilder: $0.TokenID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FixedFee clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FixedFee copyWith(void Function(FixedFee) updates) =>
      super.copyWith((message) => updates(message as FixedFee)) as FixedFee;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FixedFee create() => FixedFee._();
  @$core.override
  FixedFee createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FixedFee getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FixedFee>(create);
  static FixedFee? _defaultInstance;

  /// *
  ///  The amount to assess for each transfer.
  ///  <p>
  ///  This value MUST be greater than `0`.<br/>
  ///  This amount is expressed in units of 10<sup>-decimals</sup> tokens.
  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => $_clearField(1);

  /// *
  ///  The token type used to pay the assessed fee.
  ///  <p>
  ///  If this is unset, the fee SHALL be assessed in HBAR.<br/>
  ///  If this is set, the fee SHALL be assessed in the token identified.
  ///  This MAY be any token type. Custom fees assessed in other token types
  ///  are more likely to fail, however, and it is RECOMMENDED that token
  ///  creators denominate custom fees in the transferred token, HBAR, or
  ///  well documented and closely related token types.<br/>
  ///  If this value is set to `0.0.0` in the `tokenCreate` transaction, it
  ///  SHALL be replaced with the `TokenID` of the newly created token.
  @$pb.TagNumber(2)
  $0.TokenID get denominatingTokenId => $_getN(1);
  @$pb.TagNumber(2)
  set denominatingTokenId($0.TokenID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDenominatingTokenId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDenominatingTokenId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.TokenID ensureDenominatingTokenId() => $_ensure(1);
}

/// *
///  A fee to assess during a CryptoTransfer that changes ownership of a
///  non-fungible/unique (NFT) token.<br/>
///  This message defines the fraction of the fungible value exchanged for an
///  NFT that the ledger should collect as a royalty.
///  "Fungible value" includes both HBAR (ℏ) and units of fungible HTS tokens.
///  When the NFT sender does not receive any fungible value, the ledger will
///  assess the fallback fee, if present, to the new NFT owner. Royalty fees
///  can only be added to non-fungible/unique tokens.
///
///  #### Important Note
///  > Users should be aware that native royalty fees are _strictly_ a
///  > convenience feature, SHALL NOT be guaranteed, and the network SHALL NOT
///  > enforce _inescapable_ royalties on the exchange of a unique NFT.<br/>
///  > For _one_ example, if the counterparties agree to split their value
///  > transfer and NFT exchange into separate transactions, the network cannot
///  > possibly determine the value exchanged. Even trustless transactions,
///  > using a smart contract or other form of escrow, can arrange such split
///  > transactions as a single _logical_ transfer.
///
///  Counterparties that wish to _respect_ creator royalties MUST follow the
///  pattern the network recognizes.
///  <div style="margin-left: 2em; margin-top: -0.8em">
///  A single transaction MUST contain all three elements, transfer of the NFT,
///  debit of fungible value from the receiver, and credit of fungible value to
///  the sender, in order for the network to accurately assess royalty fees.
///  </div>
///  <div style="margin-left: 1em; margin-top: -0.8em">
///  Two examples are presented here.
///  <div style="margin-left: 1em">
///  The NFT sender and receiver MUST both sign a single `cryptoTransfer` that
///  transfers the NFT from sender to receiver, debits the fungible value from
///  the receiver, and credits the sender with the fungible value the receiver
///  is exchanging for the NFT.<br/>
///  A marketplace using an approved spender account for an escrow transaction
///  MUST credit the account selling the NFT in the same `cryptoTransfer`
///  transaction that transfers the NFT to, and deducts fungible value from,
///  the buying account.
///  </div></div>
///  This type of fee MAY NOT produce accurate results if multiple transfers
///  are executed in a single transaction. It is RECOMMENDED that each
///  NFT subject to royalty fees be transferred separately and without
///  unrelated fungible token transfers.
///
///  The network SHALL NOT consider third-party transfers, including
///  "approved spender" accounts, in collecting royalty fees. An honest
///  broker MUST ensure that transfer of an NFT and payment delivered to
///  the sender are present in the same transaction.
///  There is an
///  [open suggestion](https://github.com/hashgraph/hedera-improvement-proposal/discussions/578)
///  that proposes to broaden the scope of transfers from which the network
///  automatically collects royalties to cover related third parties. If this
///  interests or concerns you, please add your voice to that discussion.
class RoyaltyFee extends $pb.GeneratedMessage {
  factory RoyaltyFee({
    $0.Fraction? exchangeValueFraction,
    FixedFee? fallbackFee,
  }) {
    final result = create();
    if (exchangeValueFraction != null)
      result.exchangeValueFraction = exchangeValueFraction;
    if (fallbackFee != null) result.fallbackFee = fallbackFee;
    return result;
  }

  RoyaltyFee._();

  factory RoyaltyFee.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RoyaltyFee.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RoyaltyFee',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.Fraction>(1, _omitFieldNames ? '' : 'exchangeValueFraction',
        subBuilder: $0.Fraction.create)
    ..aOM<FixedFee>(2, _omitFieldNames ? '' : 'fallbackFee',
        subBuilder: FixedFee.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoyaltyFee clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoyaltyFee copyWith(void Function(RoyaltyFee) updates) =>
      super.copyWith((message) => updates(message as RoyaltyFee)) as RoyaltyFee;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoyaltyFee create() => RoyaltyFee._();
  @$core.override
  RoyaltyFee createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RoyaltyFee getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RoyaltyFee>(create);
  static RoyaltyFee? _defaultInstance;

  /// *
  ///  The fraction of fungible value exchanged for an NFT to collect
  ///  as royalty.
  ///  <p>
  ///  This SHALL be applied once to the total fungible value transferred
  ///  for the transaction.<br/>
  ///  There SHALL NOT be any adjustment based on multiple transfers
  ///  involving the NFT sender as part of a single transaction.
  @$pb.TagNumber(1)
  $0.Fraction get exchangeValueFraction => $_getN(0);
  @$pb.TagNumber(1)
  set exchangeValueFraction($0.Fraction value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasExchangeValueFraction() => $_has(0);
  @$pb.TagNumber(1)
  void clearExchangeValueFraction() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Fraction ensureExchangeValueFraction() => $_ensure(0);

  /// *
  ///  A fixed fee to assess if no fungible value is known to be traded
  ///  for the NFT.
  ///  <p>
  ///  If an NFT is transferred without a corresponding transfer of
  ///  _fungible_ value returned in the same transaction, the network
  ///  SHALL charge this fee as a fallback.<br/>
  ///  Fallback fees MAY have unexpected effects when interacting with
  ///  escrow, market transfers, and smart contracts.
  ///  It is RECOMMENDED that developers carefully consider possible
  ///  effects from fallback fees when designing systems that facilitate
  ///  the transfer of NFTs.
  @$pb.TagNumber(2)
  FixedFee get fallbackFee => $_getN(1);
  @$pb.TagNumber(2)
  set fallbackFee(FixedFee value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFallbackFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearFallbackFee() => $_clearField(2);
  @$pb.TagNumber(2)
  FixedFee ensureFallbackFee() => $_ensure(1);
}

enum CustomFee_Fee { fixedFee, fractionalFee, royaltyFee, notSet }

/// *
///  A transfer fee to assess during a CryptoTransfer.<br/>
///  This fee applies to transactions that transfer units of the token to
///  which the fee is attached. A custom fee may be either fixed or fractional,
///  and must specify a fee collector account to receive the assessed fees.
///
///  Custom fees MUST be greater than zero (0).
class CustomFee extends $pb.GeneratedMessage {
  factory CustomFee({
    FixedFee? fixedFee,
    FractionalFee? fractionalFee,
    $0.AccountID? feeCollectorAccountId,
    RoyaltyFee? royaltyFee,
    $core.bool? allCollectorsAreExempt,
  }) {
    final result = create();
    if (fixedFee != null) result.fixedFee = fixedFee;
    if (fractionalFee != null) result.fractionalFee = fractionalFee;
    if (feeCollectorAccountId != null)
      result.feeCollectorAccountId = feeCollectorAccountId;
    if (royaltyFee != null) result.royaltyFee = royaltyFee;
    if (allCollectorsAreExempt != null)
      result.allCollectorsAreExempt = allCollectorsAreExempt;
    return result;
  }

  CustomFee._();

  factory CustomFee.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CustomFee.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CustomFee_Fee> _CustomFee_FeeByTag = {
    1: CustomFee_Fee.fixedFee,
    2: CustomFee_Fee.fractionalFee,
    4: CustomFee_Fee.royaltyFee,
    0: CustomFee_Fee.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CustomFee',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 4])
    ..aOM<FixedFee>(1, _omitFieldNames ? '' : 'fixedFee',
        subBuilder: FixedFee.create)
    ..aOM<FractionalFee>(2, _omitFieldNames ? '' : 'fractionalFee',
        subBuilder: FractionalFee.create)
    ..aOM<$0.AccountID>(3, _omitFieldNames ? '' : 'feeCollectorAccountId',
        subBuilder: $0.AccountID.create)
    ..aOM<RoyaltyFee>(4, _omitFieldNames ? '' : 'royaltyFee',
        subBuilder: RoyaltyFee.create)
    ..aOB(5, _omitFieldNames ? '' : 'allCollectorsAreExempt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CustomFee clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CustomFee copyWith(void Function(CustomFee) updates) =>
      super.copyWith((message) => updates(message as CustomFee)) as CustomFee;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomFee create() => CustomFee._();
  @$core.override
  CustomFee createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CustomFee getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomFee>(create);
  static CustomFee? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(4)
  CustomFee_Fee whichFee() => _CustomFee_FeeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(4)
  void clearFee() => $_clearField($_whichOneof(0));

  /// *
  ///  A fixed fee to be charged to the `sender` for every token transfer.
  ///  <p>
  ///  This type of fee MAY be defined for any token type.<br/>
  ///  This type of fee MAY be more consistent and reliable than
  ///  other types.
  @$pb.TagNumber(1)
  FixedFee get fixedFee => $_getN(0);
  @$pb.TagNumber(1)
  set fixedFee(FixedFee value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFixedFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearFixedFee() => $_clearField(1);
  @$pb.TagNumber(1)
  FixedFee ensureFixedFee() => $_ensure(0);

  /// *
  ///  A fee defined as a fraction of the tokens transferred.
  ///  <p>
  ///  This type of fee MUST NOT be defined for a non-fungible/unique
  ///  token type.<br/>
  ///  This fee MAY be charged to either sender, as an increase to the
  ///  amount sent, or receiver, as a reduction to the amount received.
  @$pb.TagNumber(2)
  FractionalFee get fractionalFee => $_getN(1);
  @$pb.TagNumber(2)
  set fractionalFee(FractionalFee value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFractionalFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearFractionalFee() => $_clearField(2);
  @$pb.TagNumber(2)
  FractionalFee ensureFractionalFee() => $_ensure(1);

  /// *
  ///  The account to receive the custom fee.
  @$pb.TagNumber(3)
  $0.AccountID get feeCollectorAccountId => $_getN(2);
  @$pb.TagNumber(3)
  set feeCollectorAccountId($0.AccountID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFeeCollectorAccountId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeeCollectorAccountId() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.AccountID ensureFeeCollectorAccountId() => $_ensure(2);

  /// *
  ///  A fee charged as royalty for any transfer of a
  ///  non-fungible/unique token.
  ///  <p>
  ///  This type of fee MUST NOT be defined for a
  ///  fungible/common token type.
  @$pb.TagNumber(4)
  RoyaltyFee get royaltyFee => $_getN(3);
  @$pb.TagNumber(4)
  set royaltyFee(RoyaltyFee value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRoyaltyFee() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoyaltyFee() => $_clearField(4);
  @$pb.TagNumber(4)
  RoyaltyFee ensureRoyaltyFee() => $_ensure(3);

  /// *
  ///  Flag indicating to exempt all custom fee collector accounts for this
  ///  token type from paying this custom fee when sending tokens.
  ///  <p>
  ///  The treasury account for a token, and the account identified by the
  ///  `fee_collector_account_id` field of this `CustomFee` are always exempt
  ///  from this custom fee to avoid redundant and unnecessary transfers.
  ///  If this value is `true` then the account(s) identified in
  ///  `fee_collector_account_id` for _all_ custom fee definitions for this
  ///  token type SHALL also be exempt from this custom fee.
  ///  This behavior is specified in HIP-573.
  @$pb.TagNumber(5)
  $core.bool get allCollectorsAreExempt => $_getBF(4);
  @$pb.TagNumber(5)
  set allCollectorsAreExempt($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAllCollectorsAreExempt() => $_has(4);
  @$pb.TagNumber(5)
  void clearAllCollectorsAreExempt() => $_clearField(5);
}

/// *
///  Description of a transfer added to a `cryptoTransfer` transaction that
///  satisfies custom fee requirements.
///
///  It is important to note that this is not the actual transfer. The transfer
///  of value SHALL be merged into the original transaction to minimize the
///  number of actual transfers. This descriptor presents the fee assessed
///  separately in the record stream so that the details of the fee assessed
///  are not hidden in this process.
class AssessedCustomFee extends $pb.GeneratedMessage {
  factory AssessedCustomFee({
    $fixnum.Int64? amount,
    $0.TokenID? tokenId,
    $0.AccountID? feeCollectorAccountId,
    $core.Iterable<$0.AccountID>? effectivePayerAccountId,
  }) {
    final result = create();
    if (amount != null) result.amount = amount;
    if (tokenId != null) result.tokenId = tokenId;
    if (feeCollectorAccountId != null)
      result.feeCollectorAccountId = feeCollectorAccountId;
    if (effectivePayerAccountId != null)
      result.effectivePayerAccountId.addAll(effectivePayerAccountId);
    return result;
  }

  AssessedCustomFee._();

  factory AssessedCustomFee.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AssessedCustomFee.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AssessedCustomFee',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'amount')
    ..aOM<$0.TokenID>(2, _omitFieldNames ? '' : 'tokenId',
        subBuilder: $0.TokenID.create)
    ..aOM<$0.AccountID>(3, _omitFieldNames ? '' : 'feeCollectorAccountId',
        subBuilder: $0.AccountID.create)
    ..pPM<$0.AccountID>(4, _omitFieldNames ? '' : 'effectivePayerAccountId',
        subBuilder: $0.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AssessedCustomFee clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AssessedCustomFee copyWith(void Function(AssessedCustomFee) updates) =>
      super.copyWith((message) => updates(message as AssessedCustomFee))
          as AssessedCustomFee;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssessedCustomFee create() => AssessedCustomFee._();
  @$core.override
  AssessedCustomFee createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AssessedCustomFee getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AssessedCustomFee>(create);
  static AssessedCustomFee? _defaultInstance;

  /// *
  ///  An amount of tokens assessed for this custom fee.
  ///  <p>
  ///  This shall be expressed in units of 10<sup>-decimals</sup> tokens.
  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => $_clearField(1);

  /// *
  ///  The token transferred to satisfy this fee.
  ///  <p>
  ///  If the token transferred is HBAR, this field SHALL NOT be set.
  @$pb.TagNumber(2)
  $0.TokenID get tokenId => $_getN(1);
  @$pb.TagNumber(2)
  set tokenId($0.TokenID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTokenId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.TokenID ensureTokenId() => $_ensure(1);

  /// *
  ///  An account that received the fee assessed.
  ///  <p>
  ///  This SHALL NOT be the sender or receiver of the original
  ///  cryptoTransfer transaction.
  @$pb.TagNumber(3)
  $0.AccountID get feeCollectorAccountId => $_getN(2);
  @$pb.TagNumber(3)
  set feeCollectorAccountId($0.AccountID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFeeCollectorAccountId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeeCollectorAccountId() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.AccountID ensureFeeCollectorAccountId() => $_ensure(2);

  /// *
  ///  An account that provided the tokens assessed as a fee.
  ///  <p>
  ///  This SHALL be the account that _would have_ had a higher balance
  ///  absent the fee. In most cases this SHALL be the `sender`, but
  ///  some _fractional_ fees reduce the amount transferred, and in those
  ///  cases the `receiver` SHALL be the effective payer for the fee.<br/>
  ///  There are currently no situations where a third party pays a custom
  ///  fee. This MAY change in a future release.
  @$pb.TagNumber(4)
  $pb.PbList<$0.AccountID> get effectivePayerAccountId => $_getList(3);
}

/// *
///  A custom fee definition for a consensus topic.
///  <p>
///  This fee definition is specific to an Hedera Consensus Service (HCS) topic
///  and SHOULD NOT be used in any other context.<br/>
///  All fields for this message are REQUIRED.<br/>
///  Only "fixed" fee definitions are supported because there is no basis for
///  a fractional fee on a consensus submit transaction.
class FixedCustomFee extends $pb.GeneratedMessage {
  factory FixedCustomFee({
    FixedFee? fixedFee,
    $0.AccountID? feeCollectorAccountId,
  }) {
    final result = create();
    if (fixedFee != null) result.fixedFee = fixedFee;
    if (feeCollectorAccountId != null)
      result.feeCollectorAccountId = feeCollectorAccountId;
    return result;
  }

  FixedCustomFee._();

  factory FixedCustomFee.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FixedCustomFee.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FixedCustomFee',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<FixedFee>(1, _omitFieldNames ? '' : 'fixedFee',
        subBuilder: FixedFee.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'feeCollectorAccountId',
        subBuilder: $0.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FixedCustomFee clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FixedCustomFee copyWith(void Function(FixedCustomFee) updates) =>
      super.copyWith((message) => updates(message as FixedCustomFee))
          as FixedCustomFee;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FixedCustomFee create() => FixedCustomFee._();
  @$core.override
  FixedCustomFee createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FixedCustomFee getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FixedCustomFee>(create);
  static FixedCustomFee? _defaultInstance;

  /// *
  ///  A fixed custom fee.
  ///  <p>
  ///  The amount of HBAR or other token described by this `FixedFee` SHALL
  ///  be charged to the transction payer for each message submitted to a
  ///  topic that assigns this consensus custom fee.
  @$pb.TagNumber(1)
  FixedFee get fixedFee => $_getN(0);
  @$pb.TagNumber(1)
  set fixedFee(FixedFee value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFixedFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearFixedFee() => $_clearField(1);
  @$pb.TagNumber(1)
  FixedFee ensureFixedFee() => $_ensure(0);

  /// *
  ///  A collection account identifier.
  ///  <p>
  ///  All amounts collected for this consensus custom fee SHALL be transferred
  ///  to the account identified by this field.
  @$pb.TagNumber(2)
  $0.AccountID get feeCollectorAccountId => $_getN(1);
  @$pb.TagNumber(2)
  set feeCollectorAccountId($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFeeCollectorAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeeCollectorAccountId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureFeeCollectorAccountId() => $_ensure(1);
}

/// *
///  A wrapper around a consensus custom fee list.<br/>
///  This wrapper exists to enable an update transaction to differentiate between
///   a field that is not set and an empty list of custom fees.
///  <p>
///  An _unset_ field of this type SHALL NOT modify existing values.<br/>
///  A _set_ field of this type with an empty `fees` list SHALL remove any
///   existing values.
class FixedCustomFeeList extends $pb.GeneratedMessage {
  factory FixedCustomFeeList({
    $core.Iterable<FixedCustomFee>? fees,
  }) {
    final result = create();
    if (fees != null) result.fees.addAll(fees);
    return result;
  }

  FixedCustomFeeList._();

  factory FixedCustomFeeList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FixedCustomFeeList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FixedCustomFeeList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<FixedCustomFee>(1, _omitFieldNames ? '' : 'fees',
        subBuilder: FixedCustomFee.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FixedCustomFeeList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FixedCustomFeeList copyWith(void Function(FixedCustomFeeList) updates) =>
      super.copyWith((message) => updates(message as FixedCustomFeeList))
          as FixedCustomFeeList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FixedCustomFeeList create() => FixedCustomFeeList._();
  @$core.override
  FixedCustomFeeList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FixedCustomFeeList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FixedCustomFeeList>(create);
  static FixedCustomFeeList? _defaultInstance;

  /// *
  ///  A set of custom fee definitions.<br/>
  ///  These are fees to be assessed for each submit to a topic.
  @$pb.TagNumber(1)
  $pb.PbList<FixedCustomFee> get fees => $_getList(0);
}

/// *
///  A wrapper for fee exempt key list.<br/>
///  This wrapper exists to enable an update transaction to differentiate between
///  a field that is not set and an empty list of keys.
///  <p>
///  An _unset_ field of this type SHALL NOT modify existing values.<br/>
///  A _set_ field of this type with an empty `keys` list SHALL remove any
///  existing values.
class FeeExemptKeyList extends $pb.GeneratedMessage {
  factory FeeExemptKeyList({
    $core.Iterable<$0.Key>? keys,
  }) {
    final result = create();
    if (keys != null) result.keys.addAll(keys);
    return result;
  }

  FeeExemptKeyList._();

  factory FeeExemptKeyList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeeExemptKeyList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeeExemptKeyList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<$0.Key>(1, _omitFieldNames ? '' : 'keys', subBuilder: $0.Key.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeeExemptKeyList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeeExemptKeyList copyWith(void Function(FeeExemptKeyList) updates) =>
      super.copyWith((message) => updates(message as FeeExemptKeyList))
          as FeeExemptKeyList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeeExemptKeyList create() => FeeExemptKeyList._();
  @$core.override
  FeeExemptKeyList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeeExemptKeyList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeeExemptKeyList>(create);
  static FeeExemptKeyList? _defaultInstance;

  /// *
  ///  A set of keys.<br/>
  ///  The keys in this list are permitted to submit messages to the
  ///  topic without paying the topic's custom fees.
  ///  <p>
  ///  If a submit transaction is signed by _any_ key included in this set,
  ///  custom fees SHALL NOT be charged for that transaction.
  @$pb.TagNumber(1)
  $pb.PbList<$0.Key> get keys => $_getList(0);
}

/// *
///  A maximum custom fee that the user is willing to pay.
///  <p>
///  This message is used to specify the maximum custom fee that given user is
///  willing to pay.
class CustomFeeLimit extends $pb.GeneratedMessage {
  factory CustomFeeLimit({
    $0.AccountID? accountId,
    $core.Iterable<FixedFee>? fees,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (fees != null) result.fees.addAll(fees);
    return result;
  }

  CustomFeeLimit._();

  factory CustomFeeLimit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CustomFeeLimit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CustomFeeLimit',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.AccountID>(1, _omitFieldNames ? '' : 'accountId',
        subBuilder: $0.AccountID.create)
    ..pPM<FixedFee>(2, _omitFieldNames ? '' : 'fees',
        subBuilder: FixedFee.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CustomFeeLimit clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CustomFeeLimit copyWith(void Function(CustomFeeLimit) updates) =>
      super.copyWith((message) => updates(message as CustomFeeLimit))
          as CustomFeeLimit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomFeeLimit create() => CustomFeeLimit._();
  @$core.override
  CustomFeeLimit createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CustomFeeLimit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomFeeLimit>(create);
  static CustomFeeLimit? _defaultInstance;

  /// *
  ///  A payer account identifier.
  @$pb.TagNumber(1)
  $0.AccountID get accountId => $_getN(0);
  @$pb.TagNumber(1)
  set accountId($0.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.AccountID ensureAccountId() => $_ensure(0);

  /// *
  ///  The maximum fees that the user is willing to pay for the message.
  @$pb.TagNumber(2)
  $pb.PbList<FixedFee> get fees => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
