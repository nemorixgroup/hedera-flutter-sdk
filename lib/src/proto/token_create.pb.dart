// This is a generated file - do not edit.
//
// Generated from token_create.proto.

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
import 'custom_fees.pb.dart' as $3;
import 'duration.pb.dart' as $2;
import 'timestamp.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Create an HTS token.
///
///  #### Keys
///  Each token has several keys that, separately, control different functions
///  for that token. It is *_strongly_* recommended that each key assigned to
///  a token be unique, or disabled by assigning an empty `KeyList`.
///  Keys and purpose
///  - `adminKey` is a general access and may authorize a token update
///    transaction as well as _update the other keys_. Even the admin key
///    cannot authorize _adding_ a key that is not present, however.<br/>
///    The admin key may also delete the token entirely.
///  - `fee_schedule` may authorize updating the token custom fees. If this
///    key is not present, the custom fees for the token are fixed and immutable.
///  - `freeze` may authorize a token freeze or unfreeze transaction.
///    If this key is not present, accounts holding this token cannot have
///    their tokens frozen or unfrozen.
///  - `kyc` may authorize a token grant KYC or revoke KYC transaction.
///    If this key is not present, accounts holding this token cannot have
///    KYC status granted or revoked.
///  - `metadata` may authorize token update nfts transactions.
///    If this key is not present, the token metadata values for that
///    non-fungible/unique token _type_ will be immutable.
///  - `pause` may authorize a token pause or token unpause transaction.
///    If this key is not present, the token cannot be paused (preventing any
///    account from transacting in that token) or resumed.
///  - `supply` may authorize a token mint or burn transaction.
///    If this key is not present, the token cannot mint additional supply and
///    existing tokens cannot be "burned" from the treasury (but _might_ still be
///    "burned" from individual accounts, c.f. `wipeKey` and `tokenWipe`).
///  - `wipe` may authorize a token wipe account transaction.
///    If this key is not present, accounts holding this token cannot have
///    their balance or NFTs wiped (effectively burned).
///
///  #### Requirements
///  If `tokenType` is fungible/common, the `initialSupply` MUST be strictly
///  greater than zero(`0`).<br/>
///  If `tokenType` is non-fungible/unique, the `initialSupply` MUST
///  be zero(`0`).<br/>
///  If `tokenSupplyType` is "infinite", the `maxSupply` MUST be zero(`0`).<br/>
///  If `tokenSupplyType` is "finite", the `maxSupply` MUST be strictly
///  greater than zero(`0`).<br/>
///
///  ### Block Stream Effects
///  If the token is created, the Token Identifier SHALL be in the receipt.<br/>
class TokenCreateTransactionBody extends $pb.GeneratedMessage {
  factory TokenCreateTransactionBody({
    $core.String? name,
    $core.String? symbol,
    $core.int? decimals,
    $fixnum.Int64? initialSupply,
    $0.AccountID? treasury,
    $0.Key? adminKey,
    $0.Key? kycKey,
    $0.Key? freezeKey,
    $0.Key? wipeKey,
    $0.Key? supplyKey,
    $core.bool? freezeDefault,
    $1.Timestamp? expiry,
    $0.AccountID? autoRenewAccount,
    $2.Duration? autoRenewPeriod,
    $core.String? memo,
    $0.TokenType? tokenType,
    $0.TokenSupplyType? supplyType,
    $fixnum.Int64? maxSupply,
    $0.Key? feeScheduleKey,
    $core.Iterable<$3.CustomFee>? customFees,
    $0.Key? pauseKey,
    $core.List<$core.int>? metadata,
    $0.Key? metadataKey,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (symbol != null) result.symbol = symbol;
    if (decimals != null) result.decimals = decimals;
    if (initialSupply != null) result.initialSupply = initialSupply;
    if (treasury != null) result.treasury = treasury;
    if (adminKey != null) result.adminKey = adminKey;
    if (kycKey != null) result.kycKey = kycKey;
    if (freezeKey != null) result.freezeKey = freezeKey;
    if (wipeKey != null) result.wipeKey = wipeKey;
    if (supplyKey != null) result.supplyKey = supplyKey;
    if (freezeDefault != null) result.freezeDefault = freezeDefault;
    if (expiry != null) result.expiry = expiry;
    if (autoRenewAccount != null) result.autoRenewAccount = autoRenewAccount;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (memo != null) result.memo = memo;
    if (tokenType != null) result.tokenType = tokenType;
    if (supplyType != null) result.supplyType = supplyType;
    if (maxSupply != null) result.maxSupply = maxSupply;
    if (feeScheduleKey != null) result.feeScheduleKey = feeScheduleKey;
    if (customFees != null) result.customFees.addAll(customFees);
    if (pauseKey != null) result.pauseKey = pauseKey;
    if (metadata != null) result.metadata = metadata;
    if (metadataKey != null) result.metadataKey = metadataKey;
    return result;
  }

  TokenCreateTransactionBody._();

  factory TokenCreateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenCreateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenCreateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'symbol')
    ..aI(3, _omitFieldNames ? '' : 'decimals', fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'initialSupply', $pb.PbFieldType.OU6,
        protoName: 'initialSupply', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.AccountID>(5, _omitFieldNames ? '' : 'treasury',
        subBuilder: $0.AccountID.create)
    ..aOM<$0.Key>(6, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(7, _omitFieldNames ? '' : 'kycKey',
        protoName: 'kycKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(8, _omitFieldNames ? '' : 'freezeKey',
        protoName: 'freezeKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(9, _omitFieldNames ? '' : 'wipeKey',
        protoName: 'wipeKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(10, _omitFieldNames ? '' : 'supplyKey',
        protoName: 'supplyKey', subBuilder: $0.Key.create)
    ..aOB(11, _omitFieldNames ? '' : 'freezeDefault',
        protoName: 'freezeDefault')
    ..aOM<$1.Timestamp>(13, _omitFieldNames ? '' : 'expiry',
        subBuilder: $1.Timestamp.create)
    ..aOM<$0.AccountID>(14, _omitFieldNames ? '' : 'autoRenewAccount',
        protoName: 'autoRenewAccount', subBuilder: $0.AccountID.create)
    ..aOM<$2.Duration>(15, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $2.Duration.create)
    ..aOS(16, _omitFieldNames ? '' : 'memo')
    ..aE<$0.TokenType>(17, _omitFieldNames ? '' : 'tokenType',
        protoName: 'tokenType', enumValues: $0.TokenType.values)
    ..aE<$0.TokenSupplyType>(18, _omitFieldNames ? '' : 'supplyType',
        protoName: 'supplyType', enumValues: $0.TokenSupplyType.values)
    ..aInt64(19, _omitFieldNames ? '' : 'maxSupply', protoName: 'maxSupply')
    ..aOM<$0.Key>(20, _omitFieldNames ? '' : 'feeScheduleKey',
        subBuilder: $0.Key.create)
    ..pPM<$3.CustomFee>(21, _omitFieldNames ? '' : 'customFees',
        subBuilder: $3.CustomFee.create)
    ..aOM<$0.Key>(22, _omitFieldNames ? '' : 'pauseKey',
        subBuilder: $0.Key.create)
    ..a<$core.List<$core.int>>(
        23, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.OY)
    ..aOM<$0.Key>(24, _omitFieldNames ? '' : 'metadataKey',
        subBuilder: $0.Key.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenCreateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenCreateTransactionBody copyWith(
          void Function(TokenCreateTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenCreateTransactionBody))
          as TokenCreateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenCreateTransactionBody create() => TokenCreateTransactionBody._();
  @$core.override
  TokenCreateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenCreateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenCreateTransactionBody>(create);
  static TokenCreateTransactionBody? _defaultInstance;

  /// *
  ///  A name for the token.<br/>
  ///  This is generally the "full name" displayed in wallet software.
  ///  <p>
  ///  This field is REQUIRED.<br/>
  ///  This value MUST NOT exceed 100 bytes when encoded as UTF-8.<br/>
  ///  This value MUST NOT contain the Unicode NUL codepoint.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// *
  ///  A symbol to use for the token.
  ///  <p>
  ///  This field is REQUIRED.<br/>
  ///  This value MUST NOT exceed 100 bytes when encoded as UTF-8.<br/>
  ///  This value MUST NOT contain the Unicode NUL codepoint.
  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => $_clearField(2);

  /// *
  ///  A decimal precision of the token's smallest denomination.<br/>
  ///  Most values are described in terms of this smallest denomination,
  ///  so the token initial supply, for instance, must be divided by
  ///  <tt>10<sup>decimals</sup></tt> to get whole tokens.
  ///  <p>
  ///  This MUST be zero(`0`) for non-fungible/unique tokens.
  @$pb.TagNumber(3)
  $core.int get decimals => $_getIZ(2);
  @$pb.TagNumber(3)
  set decimals($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDecimals() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecimals() => $_clearField(3);

  /// *
  ///  An initial supply, in the smallest denomination for the token.
  ///  <p>
  ///  This amount SHALL be transferred to the treasury account as part
  ///  of this transaction.<br/>
  ///  This amount MUST be specified in the smallest denomination for the
  ///  token (i.e. <tt>10<sup>-decimals</sup></tt> whole tokens).<br/>
  ///  This MUST be zero(`0`) for a non-fungible/unique token.
  @$pb.TagNumber(4)
  $fixnum.Int64 get initialSupply => $_getI64(3);
  @$pb.TagNumber(4)
  set initialSupply($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasInitialSupply() => $_has(3);
  @$pb.TagNumber(4)
  void clearInitialSupply() => $_clearField(4);

  /// *
  ///  A treasury account identifier.
  ///  <p>
  ///  This field is REQUIRED.<br/>
  ///  The identified account SHALL be designated the "treasury" for the
  ///  new token, and all tokens "minted" SHALL be delivered to that account,
  ///  including the initial supply, if any.<br/>
  ///  The identified account MUST exist, MUST NOT be expired, and SHOULD
  ///  have a non-zero HBAR balance.<br/>
  ///  The identified account SHALL be associated to the new token.
  @$pb.TagNumber(5)
  $0.AccountID get treasury => $_getN(4);
  @$pb.TagNumber(5)
  set treasury($0.AccountID value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasTreasury() => $_has(4);
  @$pb.TagNumber(5)
  void clearTreasury() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.AccountID ensureTreasury() => $_ensure(4);

  /// *
  ///  An Hedera key for token administration.
  ///  <p>
  ///  This key, if set, SHALL have administrative authority for this token and
  ///  MAY authorize token update and/or token delete transactions.<br/>
  ///  If this key is not set, or is an empty `KeyList`, this token SHALL be
  ///  immutable, except for expiration and renewal.
  @$pb.TagNumber(6)
  $0.Key get adminKey => $_getN(5);
  @$pb.TagNumber(6)
  set adminKey($0.Key value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAdminKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearAdminKey() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Key ensureAdminKey() => $_ensure(5);

  /// *
  ///  An Hedera key for managing account KYC.
  ///  <p>
  ///  This key, if set, SHALL have KYC authority for this token and
  ///  MAY authorize transactions to grant or revoke KYC for accounts.<br/>
  ///  If this key is not set, or is an empty `KeyList`, KYC status for this
  ///  token SHALL NOT be granted or revoked for any account.<br/>
  ///  If this key is removed after granting KYC, those grants SHALL remain
  ///  and cannot be revoked.
  @$pb.TagNumber(7)
  $0.Key get kycKey => $_getN(6);
  @$pb.TagNumber(7)
  set kycKey($0.Key value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasKycKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearKycKey() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Key ensureKycKey() => $_ensure(6);

  /// *
  ///  An Hedera key for managing asset "freeze".
  ///  <p>
  ///  This key, if set, SHALL have "freeze" authority for this token and
  ///  MAY authorize transactions to freeze or unfreeze accounts
  ///  with respect to this token.<br/>
  ///  If this key is not set, or is an empty `KeyList`, this token
  ///  SHALL NOT be frozen or unfrozen for any account.<br/>
  ///  If this key is removed after freezing accounts, those accounts
  ///  SHALL remain frozen and cannot be unfrozen.
  @$pb.TagNumber(8)
  $0.Key get freezeKey => $_getN(7);
  @$pb.TagNumber(8)
  set freezeKey($0.Key value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasFreezeKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearFreezeKey() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Key ensureFreezeKey() => $_ensure(7);

  /// *
  ///  An Hedera key for wiping tokens from accounts.
  ///  <p>
  ///  This key, if set, SHALL have "wipe" authority for this token and
  ///  MAY authorize transactions to "wipe" any amount of this token from
  ///  any account, effectively burning the tokens "wiped".<br/>
  ///  If this key is not set, or is an empty `KeyList`, it SHALL NOT be
  ///  possible to "wipe" this token from an account.
  @$pb.TagNumber(9)
  $0.Key get wipeKey => $_getN(8);
  @$pb.TagNumber(9)
  set wipeKey($0.Key value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasWipeKey() => $_has(8);
  @$pb.TagNumber(9)
  void clearWipeKey() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Key ensureWipeKey() => $_ensure(8);

  /// *
  ///  An Hedera key for "minting" and "burning" tokens.
  ///  <p>
  ///  This key, if set, MAY authorize transactions to "mint" new tokens to
  ///  be delivered to the token treasury or "burn" tokens held by the
  ///  token treasury.<br/>
  ///  If this key is not set, or is an empty `KeyList`, it SHALL NOT be
  ///  possible to change the supply of tokens and neither "mint" nor "burn"
  ///  transactions SHALL be permitted.
  @$pb.TagNumber(10)
  $0.Key get supplyKey => $_getN(9);
  @$pb.TagNumber(10)
  set supplyKey($0.Key value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasSupplyKey() => $_has(9);
  @$pb.TagNumber(10)
  void clearSupplyKey() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.Key ensureSupplyKey() => $_ensure(9);

  /// *
  ///  An initial Freeze status for accounts associated to this token.
  ///  <p>
  ///  If this value is set, an account MUST be the subject of a
  ///  `tokenUnfreeze` transaction after associating to the token before
  ///  that account can send or receive this token.<br/>
  ///  If this value is set, the `freezeKey` SHOULD be set.<br/>
  ///  If the `freezeKey` is not set, any account associated to this token
  ///  while this value is set SHALL be permanently frozen.
  ///  <p>
  ///  <blockquote>REVIEW NOTE<blockquote>
  ///  Should we prevent setting this value true for tokens with no freeze
  ///  key?<br/>
  ///  Should we set this value to false if a freeze key is removed?
  ///  </blockquote></blockquote>
  @$pb.TagNumber(11)
  $core.bool get freezeDefault => $_getBF(10);
  @$pb.TagNumber(11)
  set freezeDefault($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasFreezeDefault() => $_has(10);
  @$pb.TagNumber(11)
  void clearFreezeDefault() => $_clearField(11);

  /// *
  ///  An expiration timestamp.
  ///  <p>
  ///  If the `autoRenewAccount` and `autoRenewPeriod` fields are set, this
  ///  value SHALL be replaced with the current consensus time extended
  ///  by the `autoRenewPeriod` duration.<br/>
  ///  If this value is set and token expiration is enabled in network
  ///  configuration, this token SHALL expire when consensus time exceeds
  ///  this value, and MAY be subsequently removed from the network state.<br/>
  ///  If this value is not set, and the automatic renewal account is also not
  ///  set, then this value SHALL default to the current consensus time
  ///  extended by the "default" expiration period from network configuration.
  @$pb.TagNumber(13)
  $1.Timestamp get expiry => $_getN(11);
  @$pb.TagNumber(13)
  set expiry($1.Timestamp value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasExpiry() => $_has(11);
  @$pb.TagNumber(13)
  void clearExpiry() => $_clearField(13);
  @$pb.TagNumber(13)
  $1.Timestamp ensureExpiry() => $_ensure(11);

  /// *
  ///  An identifier for the account to be charged renewal fees at the token's
  ///  expiry to extend the lifetime of the token.
  ///  <p>
  ///  If this value is set, the token lifetime SHALL be extended by the
  ///  _smallest_ of the following:
  ///  <ul>
  ///    <li>The current `autoRenewPeriod` duration.</li>
  ///    <li>The maximum duration that this account has funds to purchase.</li>
  ///    <li>The configured MAX_AUTORENEW_PERIOD at the time of automatic
  ///        renewal.</li>
  ///  </ul>
  ///  If this account's HBAR balance is `0` when the token must be
  ///  renewed, then the token SHALL be expired, and MAY be subsequently
  ///  removed from state.<br/>
  ///  If this value is set, the referenced account MUST sign this
  ///  transaction.
  @$pb.TagNumber(14)
  $0.AccountID get autoRenewAccount => $_getN(12);
  @$pb.TagNumber(14)
  set autoRenewAccount($0.AccountID value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasAutoRenewAccount() => $_has(12);
  @$pb.TagNumber(14)
  void clearAutoRenewAccount() => $_clearField(14);
  @$pb.TagNumber(14)
  $0.AccountID ensureAutoRenewAccount() => $_ensure(12);

  /// *
  ///  A duration between token automatic renewals.<br/>
  ///  All entities in state may be charged "rent" occasionally (typically
  ///  every 90 days) to prevent unnecessary growth of the ledger. This value
  ///  sets the interval between such events for this token.
  ///  <p>
  ///  This value MUST be set.<br/>
  ///  This value MUST be greater than the configured
  ///  MIN_AUTORENEW_PERIOD.<br/>
  ///  This value MUST be less than the configured MAX_AUTORENEW_PERIOD.
  @$pb.TagNumber(15)
  $2.Duration get autoRenewPeriod => $_getN(13);
  @$pb.TagNumber(15)
  set autoRenewPeriod($2.Duration value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasAutoRenewPeriod() => $_has(13);
  @$pb.TagNumber(15)
  void clearAutoRenewPeriod() => $_clearField(15);
  @$pb.TagNumber(15)
  $2.Duration ensureAutoRenewPeriod() => $_ensure(13);

  /// *
  ///  A short description for this token.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(16)
  $core.String get memo => $_getSZ(14);
  @$pb.TagNumber(16)
  set memo($core.String value) => $_setString(14, value);
  @$pb.TagNumber(16)
  $core.bool hasMemo() => $_has(14);
  @$pb.TagNumber(16)
  void clearMemo() => $_clearField(16);

  /// *
  ///  A type for this token, according to IWA classification.
  ///  <p>
  ///  If this value is not set, the token SHALL have the default type of
  ///  fungible/common.<br/>
  ///  This field SHALL be immutable.
  @$pb.TagNumber(17)
  $0.TokenType get tokenType => $_getN(15);
  @$pb.TagNumber(17)
  set tokenType($0.TokenType value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasTokenType() => $_has(15);
  @$pb.TagNumber(17)
  void clearTokenType() => $_clearField(17);

  /// *
  ///  A supply type for this token, according to IWA classification.
  ///  <p>
  ///  If this value is not set, the token SHALL have the default supply
  ///  type of "infinite" (which is, as a practical matter,
  ///  (2<sup><i>63</i></sup>-1)/10<sup><i>decimals</i></sup>).<br/>
  ///  This field SHALL be immutable.
  @$pb.TagNumber(18)
  $0.TokenSupplyType get supplyType => $_getN(16);
  @$pb.TagNumber(18)
  set supplyType($0.TokenSupplyType value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasSupplyType() => $_has(16);
  @$pb.TagNumber(18)
  void clearSupplyType() => $_clearField(18);

  /// *
  ///  A maximum supply for this token.
  ///  <p>
  ///  This SHALL be interpreted in terms of the smallest fractional unit for
  ///  this token.<br/>
  ///  If `supplyType` is "infinite", this MUST be `0`.<br/>
  ///  This field SHALL be immutable.
  @$pb.TagNumber(19)
  $fixnum.Int64 get maxSupply => $_getI64(17);
  @$pb.TagNumber(19)
  set maxSupply($fixnum.Int64 value) => $_setInt64(17, value);
  @$pb.TagNumber(19)
  $core.bool hasMaxSupply() => $_has(17);
  @$pb.TagNumber(19)
  void clearMaxSupply() => $_clearField(19);

  /// *
  ///  An Hedera key for managing the token custom fee schedule.
  ///  <p>
  ///  This key, if set, MAY authorize transactions to modify the
  ///  `custom_fees` for this token.<br/>
  ///  If this key is not set, or is an empty `KeyList`, the `custom_fees`
  ///  for this token SHALL NOT be modified.
  @$pb.TagNumber(20)
  $0.Key get feeScheduleKey => $_getN(18);
  @$pb.TagNumber(20)
  set feeScheduleKey($0.Key value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasFeeScheduleKey() => $_has(18);
  @$pb.TagNumber(20)
  void clearFeeScheduleKey() => $_clearField(20);
  @$pb.TagNumber(20)
  $0.Key ensureFeeScheduleKey() => $_ensure(18);

  /// *
  ///  A list of custom fees representing a fee schedule.
  ///  <p>
  ///  This list MAY be empty, which SHALL mean that there
  ///  are no custom fees for this token.<br/>
  ///  If this token is a non-fungible/unique type, the entries
  ///  in this list MUST NOT declare a `fractional_fee`.<br/>
  ///  If this token is a fungible/common type, the entries in this
  ///  list MUST NOT declare a `royalty_fee`.<br/>
  ///  Any token type MAY include entries that declare a `fixed_fee`.
  @$pb.TagNumber(21)
  $pb.PbList<$3.CustomFee> get customFees => $_getList(19);

  /// *
  ///  An Hedera key for managing token "pause".
  ///  <p>
  ///  This key, if set, SHALL have "pause" authority for this token and
  ///  MAY authorize transactions to pause or unpause this token.<br/>
  ///  If this key is not set, or is an empty `KeyList`, this token
  ///  SHALL NOT be paused or unpaused.<br/>
  ///  If this key is removed while the token is paused, the token cannot
  ///  be unpaused and SHALL remain paused.
  @$pb.TagNumber(22)
  $0.Key get pauseKey => $_getN(20);
  @$pb.TagNumber(22)
  set pauseKey($0.Key value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasPauseKey() => $_has(20);
  @$pb.TagNumber(22)
  void clearPauseKey() => $_clearField(22);
  @$pb.TagNumber(22)
  $0.Key ensurePauseKey() => $_ensure(20);

  /// *
  ///  Token "Metadata".
  ///  <p>
  ///  The value, if set, MUST NOT exceed 100 bytes.<br/>
  ///  <dl><dt>Examples</dt>
  ///    <dd>hcs://1/0.0.4896575</dd>
  ///    <dd>ipfs://bafkreifd7tcjjuwxxf4qkaibkj62pj4mhfuud7plwrc3pfoygt55al6syi</dd>
  ///  </dl>
  @$pb.TagNumber(23)
  $core.List<$core.int> get metadata => $_getN(21);
  @$pb.TagNumber(23)
  set metadata($core.List<$core.int> value) => $_setBytes(21, value);
  @$pb.TagNumber(23)
  $core.bool hasMetadata() => $_has(21);
  @$pb.TagNumber(23)
  void clearMetadata() => $_clearField(23);

  /// *
  ///  An Hedera key for managing the token `metadata`.
  ///  <p>
  ///  This key, if set, MAY authorize transactions to modify the
  ///  `metadata` for this token.<br/>
  ///  If this key is not set, or is an empty `KeyList`, the `metadata`
  ///  for this token SHALL NOT be modified.
  @$pb.TagNumber(24)
  $0.Key get metadataKey => $_getN(22);
  @$pb.TagNumber(24)
  set metadataKey($0.Key value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasMetadataKey() => $_has(22);
  @$pb.TagNumber(24)
  void clearMetadataKey() => $_clearField(24);
  @$pb.TagNumber(24)
  $0.Key ensureMetadataKey() => $_ensure(22);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
