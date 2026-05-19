// This is a generated file - do not edit.
//
// Generated from token_get_info.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'custom_fees.pb.dart' as $4;
import 'duration.pb.dart' as $2;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $5;
import 'timestamp.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Request information for a token.
class TokenGetInfoQuery extends $pb.GeneratedMessage {
  factory TokenGetInfoQuery({
    $0.QueryHeader? header,
    $1.TokenID? token,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (token != null) result.token = token;
    return result;
  }

  TokenGetInfoQuery._();

  factory TokenGetInfoQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenGetInfoQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenGetInfoQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.TokenID>(2, _omitFieldNames ? '' : 'token',
        subBuilder: $1.TokenID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetInfoQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetInfoQuery copyWith(void Function(TokenGetInfoQuery) updates) =>
      super.copyWith((message) => updates(message as TokenGetInfoQuery))
          as TokenGetInfoQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenGetInfoQuery create() => TokenGetInfoQuery._();
  @$core.override
  TokenGetInfoQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenGetInfoQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenGetInfoQuery>(create);
  static TokenGetInfoQuery? _defaultInstance;

  /// *
  ///  Standard information sent with every query operation.<br/>
  ///  This includes the signed payment and what kind of response is requested
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $0.QueryHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.QueryHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.QueryHeader ensureHeader() => $_ensure(0);

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This SHALL identify the token to query.<br/>
  ///  The identified token MUST exist, and MUST NOT be deleted.
  @$pb.TagNumber(2)
  $1.TokenID get token => $_getN(1);
  @$pb.TagNumber(2)
  set token($1.TokenID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.TokenID ensureToken() => $_ensure(1);
}

/// *
///  An Hedera Token Service(HTS) token.
///
///  A token SHALL represent a fungible or non-fungible unit of exchange.<br/>
///  The specified Treasury Account SHALL receive the initial supply of tokens and
///  SHALL determine distribution of all tokens once minted.
class TokenInfo extends $pb.GeneratedMessage {
  factory TokenInfo({
    $1.TokenID? tokenId,
    $core.String? name,
    $core.String? symbol,
    $core.int? decimals,
    $fixnum.Int64? totalSupply,
    $1.AccountID? treasury,
    $1.Key? adminKey,
    $1.Key? kycKey,
    $1.Key? freezeKey,
    $1.Key? wipeKey,
    $1.Key? supplyKey,
    $1.TokenFreezeStatus? defaultFreezeStatus,
    $1.TokenKycStatus? defaultKycStatus,
    $core.bool? deleted,
    $1.AccountID? autoRenewAccount,
    $2.Duration? autoRenewPeriod,
    $3.Timestamp? expiry,
    $core.String? memo,
    $1.TokenType? tokenType,
    $1.TokenSupplyType? supplyType,
    $fixnum.Int64? maxSupply,
    $1.Key? feeScheduleKey,
    $core.Iterable<$4.CustomFee>? customFees,
    $1.Key? pauseKey,
    $1.TokenPauseStatus? pauseStatus,
    $core.List<$core.int>? ledgerId,
    $core.List<$core.int>? metadata,
    $1.Key? metadataKey,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (name != null) result.name = name;
    if (symbol != null) result.symbol = symbol;
    if (decimals != null) result.decimals = decimals;
    if (totalSupply != null) result.totalSupply = totalSupply;
    if (treasury != null) result.treasury = treasury;
    if (adminKey != null) result.adminKey = adminKey;
    if (kycKey != null) result.kycKey = kycKey;
    if (freezeKey != null) result.freezeKey = freezeKey;
    if (wipeKey != null) result.wipeKey = wipeKey;
    if (supplyKey != null) result.supplyKey = supplyKey;
    if (defaultFreezeStatus != null)
      result.defaultFreezeStatus = defaultFreezeStatus;
    if (defaultKycStatus != null) result.defaultKycStatus = defaultKycStatus;
    if (deleted != null) result.deleted = deleted;
    if (autoRenewAccount != null) result.autoRenewAccount = autoRenewAccount;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (expiry != null) result.expiry = expiry;
    if (memo != null) result.memo = memo;
    if (tokenType != null) result.tokenType = tokenType;
    if (supplyType != null) result.supplyType = supplyType;
    if (maxSupply != null) result.maxSupply = maxSupply;
    if (feeScheduleKey != null) result.feeScheduleKey = feeScheduleKey;
    if (customFees != null) result.customFees.addAll(customFees);
    if (pauseKey != null) result.pauseKey = pauseKey;
    if (pauseStatus != null) result.pauseStatus = pauseStatus;
    if (ledgerId != null) result.ledgerId = ledgerId;
    if (metadata != null) result.metadata = metadata;
    if (metadataKey != null) result.metadataKey = metadataKey;
    return result;
  }

  TokenInfo._();

  factory TokenInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        protoName: 'tokenId', subBuilder: $1.TokenID.create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'symbol')
    ..aI(4, _omitFieldNames ? '' : 'decimals', fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'totalSupply', $pb.PbFieldType.OU6,
        protoName: 'totalSupply', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.AccountID>(6, _omitFieldNames ? '' : 'treasury',
        subBuilder: $1.AccountID.create)
    ..aOM<$1.Key>(7, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $1.Key.create)
    ..aOM<$1.Key>(8, _omitFieldNames ? '' : 'kycKey',
        protoName: 'kycKey', subBuilder: $1.Key.create)
    ..aOM<$1.Key>(9, _omitFieldNames ? '' : 'freezeKey',
        protoName: 'freezeKey', subBuilder: $1.Key.create)
    ..aOM<$1.Key>(10, _omitFieldNames ? '' : 'wipeKey',
        protoName: 'wipeKey', subBuilder: $1.Key.create)
    ..aOM<$1.Key>(11, _omitFieldNames ? '' : 'supplyKey',
        protoName: 'supplyKey', subBuilder: $1.Key.create)
    ..aE<$1.TokenFreezeStatus>(12, _omitFieldNames ? '' : 'defaultFreezeStatus',
        protoName: 'defaultFreezeStatus',
        enumValues: $1.TokenFreezeStatus.values)
    ..aE<$1.TokenKycStatus>(13, _omitFieldNames ? '' : 'defaultKycStatus',
        protoName: 'defaultKycStatus', enumValues: $1.TokenKycStatus.values)
    ..aOB(14, _omitFieldNames ? '' : 'deleted')
    ..aOM<$1.AccountID>(15, _omitFieldNames ? '' : 'autoRenewAccount',
        protoName: 'autoRenewAccount', subBuilder: $1.AccountID.create)
    ..aOM<$2.Duration>(16, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $2.Duration.create)
    ..aOM<$3.Timestamp>(17, _omitFieldNames ? '' : 'expiry',
        subBuilder: $3.Timestamp.create)
    ..aOS(18, _omitFieldNames ? '' : 'memo')
    ..aE<$1.TokenType>(19, _omitFieldNames ? '' : 'tokenType',
        protoName: 'tokenType', enumValues: $1.TokenType.values)
    ..aE<$1.TokenSupplyType>(20, _omitFieldNames ? '' : 'supplyType',
        protoName: 'supplyType', enumValues: $1.TokenSupplyType.values)
    ..aInt64(21, _omitFieldNames ? '' : 'maxSupply', protoName: 'maxSupply')
    ..aOM<$1.Key>(22, _omitFieldNames ? '' : 'feeScheduleKey',
        subBuilder: $1.Key.create)
    ..pPM<$4.CustomFee>(23, _omitFieldNames ? '' : 'customFees',
        subBuilder: $4.CustomFee.create)
    ..aOM<$1.Key>(24, _omitFieldNames ? '' : 'pauseKey',
        subBuilder: $1.Key.create)
    ..aE<$1.TokenPauseStatus>(25, _omitFieldNames ? '' : 'pauseStatus',
        enumValues: $1.TokenPauseStatus.values)
    ..a<$core.List<$core.int>>(
        26, _omitFieldNames ? '' : 'ledgerId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        27, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.OY)
    ..aOM<$1.Key>(28, _omitFieldNames ? '' : 'metadataKey',
        subBuilder: $1.Key.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenInfo copyWith(void Function(TokenInfo) updates) =>
      super.copyWith((message) => updates(message as TokenInfo)) as TokenInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenInfo create() => TokenInfo._();
  @$core.override
  TokenInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenInfo>(create);
  static TokenInfo? _defaultInstance;

  /// *
  ///  A unique identifier for this token.
  @$pb.TagNumber(1)
  $1.TokenID get tokenId => $_getN(0);
  @$pb.TagNumber(1)
  set tokenId($1.TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTokenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenId() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.TokenID ensureTokenId() => $_ensure(0);

  /// *
  ///  A human-readable name for this token.
  ///  <p>
  ///  This value MAY NOT be unique.<br/>
  ///  This value SHALL NOT exceed 100 bytes when encoded as UTF-8.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// *
  ///  A human-readable symbol for the token.
  ///  <p>
  ///  This value SHALL NOT be unique.<br/>
  ///  This value SHALL NOT exceed 100 bytes when encoded as UTF-8.
  @$pb.TagNumber(3)
  $core.String get symbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbol($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => $_clearField(3);

  /// *
  ///  A number of decimal places for this token.
  ///  <p>
  ///  If decimals are 8 or 11, then the number of whole tokens can be at most
  ///  billions or millions, respectively. More decimals allows for a more
  ///  finely-divided token, but also limits the maximum total supply.
  ///  <p>
  ///  Examples
  ///  <ul>
  ///    <li>Bitcoin satoshis (21 million whole tokens with 8 decimals).</li>
  ///    <li>Hedera tinybar (50 billion whole tokens with 8 decimals).</li>
  ///    <li>Bitcoin milli-satoshis (21 million whole tokens with 11
  ///        decimals).</li>
  ///    <li>Theoretical limit is roughly 92.2 billion with 8 decimals, or
  ///        92.2 million with 11 decimals.</li>
  ///  </ul>
  ///  All token amounts in the network are stored as integer amounts, with
  ///  each unit representing 10<sup>-decimals</sup> whole tokens.
  ///  <p>
  ///  For tokens with `token_type` set to `NON_FUNGIBLE_UNIQUE` this MUST be 0.
  @$pb.TagNumber(4)
  $core.int get decimals => $_getIZ(3);
  @$pb.TagNumber(4)
  set decimals($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDecimals() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecimals() => $_clearField(4);

  /// *
  ///  A _current_ total supply of this token, expressed in the smallest unit
  ///  of the token.
  ///  <p>
  ///  The number of _whole_ tokens this represents is (total_supply /
  ///  10<sup>decimals</sup>). The value of total supply, MUST be within the
  ///  positive range of a twos-compliment signed 64-bit integer.
  ///  The `total_supply`, therefore MUST be between 1, and
  ///  9,223,372,036,854,775,807, inclusive.
  ///  <p>
  ///  This value SHALL be reduced when a `token_burn` or `token_wipe_account`
  ///  operation is executed, and SHALL be increased when a `token_mint`
  ///  operation is executed.
  @$pb.TagNumber(5)
  $fixnum.Int64 get totalSupply => $_getI64(4);
  @$pb.TagNumber(5)
  set totalSupply($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTotalSupply() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalSupply() => $_clearField(5);

  /// *
  ///  A treasury account identifier for this token.
  ///  <p>
  ///  When the token is created, the initial supply given in the token create
  ///  transaction SHALL be minted and deposited in the treasury account.<br/>
  ///  All token mint transactions for this token SHALL deposit the new minted
  ///  tokens in the treasury account.<br/>
  ///  All token burn transactions for this token SHALL remove the tokens to be
  ///  burned from the treasury account.
  @$pb.TagNumber(6)
  $1.AccountID get treasury => $_getN(5);
  @$pb.TagNumber(6)
  set treasury($1.AccountID value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTreasury() => $_has(5);
  @$pb.TagNumber(6)
  void clearTreasury() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.AccountID ensureTreasury() => $_ensure(5);

  /// *
  ///  Access control for general modification of this token.
  ///  <p>
  ///  This key MUST sign any `token_update` transaction that
  ///  changes any attribute of the token other than expiration_time.
  ///  Other attributes of this token MAY be changed by transactions other than
  ///  `token_update`, and MUST be signed by one of the other purpose-specific
  ///  keys assigned to the token.<br/>
  ///  This value can be set during token creation, and SHALL NOT be
  ///  modified thereafter, unless the update transaction is signed by both
  ///  the existing `admin_key` and the new `admin_key`.<br/>
  ///  If the `admin_key` is not set for a token, that token SHALL be immutable.
  @$pb.TagNumber(7)
  $1.Key get adminKey => $_getN(6);
  @$pb.TagNumber(7)
  set adminKey($1.Key value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAdminKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearAdminKey() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Key ensureAdminKey() => $_ensure(6);

  /// *
  ///  Access control for KYC for this token.
  ///  <p>
  ///  Know Your Customer (KYC) status may be granted for an account by a token
  ///  grant kyc transaction signed by this key.<br/>
  ///  If this key is not set, then KYC status cannot be granted to an account
  ///  for this token, and any `TokenGrantKyc` transaction attempting to grant
  ///  kyc to an account for this token SHALL NOT succeed.<br/>
  ///  This key MAY be set when the token is created, and MAY be set or modified
  ///  via a token update transaction signed by the `admin_key`.<br/>
  ///  If `admin_key` is not set, this value, whether set or unset,
  ///  SHALL be immutable.
  @$pb.TagNumber(8)
  $1.Key get kycKey => $_getN(7);
  @$pb.TagNumber(8)
  set kycKey($1.Key value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasKycKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearKycKey() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Key ensureKycKey() => $_ensure(7);

  /// *
  ///  Access control to freeze this token.
  ///  <p>
  ///  A token may be frozen for an account, preventing any transaction from
  ///  transferring that token for that specified account, by a token freeze
  ///  account transaction signed by this key.<br/>
  ///  If this key is not set, the token cannot be frozen, and any transaction
  ///  attempting to freeze the token for an account SHALL NOT succeed.<br/>
  ///  This key MAY be set when the token is created, and MAY be set or modified
  ///  via a token update transaction signed by the `admin_key`.<br/>
  ///  If `admin_key` is not set, this value, whether set or unset,
  ///  SHALL be immutable.
  @$pb.TagNumber(9)
  $1.Key get freezeKey => $_getN(8);
  @$pb.TagNumber(9)
  set freezeKey($1.Key value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasFreezeKey() => $_has(8);
  @$pb.TagNumber(9)
  void clearFreezeKey() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.Key ensureFreezeKey() => $_ensure(8);

  /// *
  ///  Access control of account wipe for this token.
  ///  <p>
  ///  A token may be wiped, removing and burning tokens from a specific
  ///  account, by a token wipe transaction, which MUST be signed by this key.
  ///  The `treasury_account` cannot be subjected to a token wipe. A token burn
  ///  transaction, signed by the `supply_key`, serves to burn tokens held by
  ///  the `treasury_account` instead.<br/>
  ///  If this key is not set, the token cannot be wiped, and any transaction
  ///  attempting to wipe the token from an account SHALL NOT succeed.<br/>
  ///  This key MAY be set when the token is created, and MAY be set or modified
  ///  via a token update transaction signed by the `admin_key`.<br/>
  ///  If `admin_key` is not set, this value, whether set or unset,
  ///  SHALL be immutable.
  @$pb.TagNumber(10)
  $1.Key get wipeKey => $_getN(9);
  @$pb.TagNumber(10)
  set wipeKey($1.Key value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasWipeKey() => $_has(9);
  @$pb.TagNumber(10)
  void clearWipeKey() => $_clearField(10);
  @$pb.TagNumber(10)
  $1.Key ensureWipeKey() => $_ensure(9);

  /// *
  ///  Access control of token mint/burn for this token.
  ///  <p>
  ///  A token mint transaction MUST be signed by this key, and any token mint
  ///  transaction not signed by the current `supply_key` for that token
  ///  SHALL NOT succeed.<br/>
  ///  A token burn transaction MUST be signed by this key, and any token burn
  ///  transaction not signed by the current `supply_key` for that token
  ///  SHALL NOT succeed.<br/>
  ///  This key MAY be set when the token is created, and MAY be set or modified
  ///  via a token update transaction signed by the `admin_key`.<br/>
  ///  If `admin_key` is not set, this value, whether set or unset,
  ///  SHALL be immutable.
  @$pb.TagNumber(11)
  $1.Key get supplyKey => $_getN(10);
  @$pb.TagNumber(11)
  set supplyKey($1.Key value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSupplyKey() => $_has(10);
  @$pb.TagNumber(11)
  void clearSupplyKey() => $_clearField(11);
  @$pb.TagNumber(11)
  $1.Key ensureSupplyKey() => $_ensure(10);

  /// *
  ///  A flag indicating if accounts associated to this token are frozen by
  ///  default, not frozen, or freeze is not applicable.
  ///  <p>
  ///  Accounts frozen by default and newly associated with this token CANNOT
  ///  transact in the token until unfrozen.<br/>
  ///  This SHALL NOT prevent a `tokenReject` transaction to return the tokens
  ///  from an account to the treasury account.
  @$pb.TagNumber(12)
  $1.TokenFreezeStatus get defaultFreezeStatus => $_getN(11);
  @$pb.TagNumber(12)
  set defaultFreezeStatus($1.TokenFreezeStatus value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasDefaultFreezeStatus() => $_has(11);
  @$pb.TagNumber(12)
  void clearDefaultFreezeStatus() => $_clearField(12);

  /// *
  ///  A flag indicating if accounts associated with this token are granted
  ///  KYC by default, revoked by default, or KYC is not applicable.
  @$pb.TagNumber(13)
  $1.TokenKycStatus get defaultKycStatus => $_getN(12);
  @$pb.TagNumber(13)
  set defaultKycStatus($1.TokenKycStatus value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasDefaultKycStatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearDefaultKycStatus() => $_clearField(13);

  /// *
  ///  A flag indicating that this token is deleted.
  ///  <p>
  ///  A transaction involving a deleted token MUST NOT succeed.
  @$pb.TagNumber(14)
  $core.bool get deleted => $_getBF(13);
  @$pb.TagNumber(14)
  set deleted($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasDeleted() => $_has(13);
  @$pb.TagNumber(14)
  void clearDeleted() => $_clearField(14);

  /// *
  ///  An identifier for the account (if any) that the network will attempt
  ///  to charge for this token's auto-renewal upon expiration.
  ///  <p>
  ///  This field is OPTIONAL. If it is not set then renewal fees SHALL be
  ///  charged to the account identified by `treasury`.
  @$pb.TagNumber(15)
  $1.AccountID get autoRenewAccount => $_getN(14);
  @$pb.TagNumber(15)
  set autoRenewAccount($1.AccountID value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasAutoRenewAccount() => $_has(14);
  @$pb.TagNumber(15)
  void clearAutoRenewAccount() => $_clearField(15);
  @$pb.TagNumber(15)
  $1.AccountID ensureAutoRenewAccount() => $_ensure(14);

  /// *
  ///  A duration by which the network should automatically extend
  ///  this token's expiration.
  ///  <p>
  ///  If the token has a valid auto-renew account, and is not deleted upon
  ///  expiration, the network SHALL attempt to automatically renew this
  ///  token.<br/>
  ///  The default values for the minimum period and maximum period are 30 days
  ///  and 90 days, respectively.
  @$pb.TagNumber(16)
  $2.Duration get autoRenewPeriod => $_getN(15);
  @$pb.TagNumber(16)
  set autoRenewPeriod($2.Duration value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasAutoRenewPeriod() => $_has(15);
  @$pb.TagNumber(16)
  void clearAutoRenewPeriod() => $_clearField(16);
  @$pb.TagNumber(16)
  $2.Duration ensureAutoRenewPeriod() => $_ensure(15);

  /// *
  ///  An expiration time for this token, in seconds since the epoch.
  ///  <p>
  ///  For this purpose, `epoch` SHALL be the
  ///  UNIX epoch with 0 at `1970-01-01T00:00:00.000Z`.
  @$pb.TagNumber(17)
  $3.Timestamp get expiry => $_getN(16);
  @$pb.TagNumber(17)
  set expiry($3.Timestamp value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasExpiry() => $_has(16);
  @$pb.TagNumber(17)
  void clearExpiry() => $_clearField(17);
  @$pb.TagNumber(17)
  $3.Timestamp ensureExpiry() => $_ensure(16);

  /// *
  ///  A short description of this token.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(18)
  $core.String get memo => $_getSZ(17);
  @$pb.TagNumber(18)
  set memo($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasMemo() => $_has(17);
  @$pb.TagNumber(18)
  void clearMemo() => $_clearField(18);

  /// *
  ///  A type for this token.
  ///  <p>
  ///  A token SHALL be either `FUNGIBLE_COMMON` or `NON_FUNGIBLE_UNIQUE`.<br/>
  ///  If this value was omitted during token creation, `FUNGIBLE_COMMON`
  ///  SHALL be used.<br/>
  ///  The value `FUNGIBLE_COMMON` SHALL represent a fungible/common token.
  ///  The value `NON_FUNGIBLE_UNIQUE` SHALL represent a
  ///  non-fungible/unique token.
  @$pb.TagNumber(19)
  $1.TokenType get tokenType => $_getN(18);
  @$pb.TagNumber(19)
  set tokenType($1.TokenType value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasTokenType() => $_has(18);
  @$pb.TagNumber(19)
  void clearTokenType() => $_clearField(19);

  /// *
  ///  A supply type for this token.
  ///  <p>
  ///  A token SHALL have either `INFINITE` or `FINITE` supply type.<br/>
  ///  If this value was omitted during token creation, the value `INFINITE`
  ///  SHALL be used.
  @$pb.TagNumber(20)
  $1.TokenSupplyType get supplyType => $_getN(19);
  @$pb.TagNumber(20)
  set supplyType($1.TokenSupplyType value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasSupplyType() => $_has(19);
  @$pb.TagNumber(20)
  void clearSupplyType() => $_clearField(20);

  /// *
  ///  A maximum supply of this token.<br/>
  ///  This is the maximum number of tokens of this type that may be issued.
  ///  <p>
  ///  This limit SHALL apply regardless of `token_type`.<br/>
  ///  If `supply_type` is `INFINITE` then this value MUST be 0.<br/>
  ///  If `supply_type` is `FINITE`, then this value MUST be greater than 0.
  @$pb.TagNumber(21)
  $fixnum.Int64 get maxSupply => $_getI64(20);
  @$pb.TagNumber(21)
  set maxSupply($fixnum.Int64 value) => $_setInt64(20, value);
  @$pb.TagNumber(21)
  $core.bool hasMaxSupply() => $_has(20);
  @$pb.TagNumber(21)
  void clearMaxSupply() => $_clearField(21);

  /// *
  ///  Access control of the `custom_fees` field for this token.
  ///  <p>
  ///  The token custom fee schedule may be changed, modifying the fees charged
  ///  for transferring that token, by a token update transaction, which MUST
  ///  be signed by this key.<br/>
  ///  If this key is not set, the token custom fee schedule cannot be changed,
  ///  and any transaction attempting to change the custom fee schedule for
  ///  this token SHALL NOT succeed.<br/>
  ///  This key MAY be set when the token is created, and MAY be set or modified
  ///  via a token update transaction signed by the `admin_key`.<br/>
  ///  If `admin_key` is not set, this value, whether set or unset,
  ///  SHALL be immutable.
  @$pb.TagNumber(22)
  $1.Key get feeScheduleKey => $_getN(21);
  @$pb.TagNumber(22)
  set feeScheduleKey($1.Key value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasFeeScheduleKey() => $_has(21);
  @$pb.TagNumber(22)
  void clearFeeScheduleKey() => $_clearField(22);
  @$pb.TagNumber(22)
  $1.Key ensureFeeScheduleKey() => $_ensure(21);

  /// *
  ///  A custom fee schedule for this token.
  @$pb.TagNumber(23)
  $pb.PbList<$4.CustomFee> get customFees => $_getList(22);

  /// *
  ///  Access control of pause/unpause for this token.
  ///  <p>
  ///  A token may be paused, preventing any transaction from transferring that
  ///  token, by a token update transaction signed by this key.<br/>
  ///  If this key is not set, the token cannot be paused, and any transaction
  ///  attempting to pause the token SHALL NOT succeed.<br/>
  ///  This key MAY be set when the token is created, and MAY be set or modified
  ///  via a token update transaction signed by the `admin_key`.<br/>
  ///  If `admin_key` is not set, this value, whether set or unset,
  ///  SHALL be immutable.
  @$pb.TagNumber(24)
  $1.Key get pauseKey => $_getN(23);
  @$pb.TagNumber(24)
  set pauseKey($1.Key value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasPauseKey() => $_has(23);
  @$pb.TagNumber(24)
  void clearPauseKey() => $_clearField(24);
  @$pb.TagNumber(24)
  $1.Key ensurePauseKey() => $_ensure(23);

  /// *
  ///  A flag indicating that this token is paused.<br/>
  ///  A token may be paused, unpaused, or pause not applicable.
  ///  <p>
  ///  A transaction involving a paused token, other than token_unpause,
  ///  MUST NOT succeed.
  @$pb.TagNumber(25)
  $1.TokenPauseStatus get pauseStatus => $_getN(24);
  @$pb.TagNumber(25)
  set pauseStatus($1.TokenPauseStatus value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasPauseStatus() => $_has(24);
  @$pb.TagNumber(25)
  void clearPauseStatus() => $_clearField(25);

  /// *
  ///  The ledger ID of the network that generated this response.
  ///  <p>
  ///  This value SHALL identify the distributed ledger that responded to
  ///  this query.
  @$pb.TagNumber(26)
  $core.List<$core.int> get ledgerId => $_getN(25);
  @$pb.TagNumber(26)
  set ledgerId($core.List<$core.int> value) => $_setBytes(25, value);
  @$pb.TagNumber(26)
  $core.bool hasLedgerId() => $_has(25);
  @$pb.TagNumber(26)
  void clearLedgerId() => $_clearField(26);

  /// *
  ///  A Token "Metadata".
  ///  <p>
  ///  This value, if set, SHALL NOT exceed 100 bytes.
  @$pb.TagNumber(27)
  $core.List<$core.int> get metadata => $_getN(26);
  @$pb.TagNumber(27)
  set metadata($core.List<$core.int> value) => $_setBytes(26, value);
  @$pb.TagNumber(27)
  $core.bool hasMetadata() => $_has(26);
  @$pb.TagNumber(27)
  void clearMetadata() => $_clearField(27);

  /// *
  ///  Access Control of metadata update for this token.
  ///  <p>
  ///  A transaction to update the `metadata` field of this token MUST be
  ///  signed by this key.<br/>
  ///  If this token is a non-fungible/unique token type, a transaction to
  ///  update the `metadata` field of any individual serialized unique token
  ///  of this type MUST be signed by this key.<br/>
  ///  If this key is not set, the token metadata SHALL NOT be changed after it
  ///  is created.<br/>
  ///  If this key is not set, the metadata for any individual serialized token
  ///  of this type SHALL NOT be changed after it is created.<br/>
  ///  This key MAY be set when the token is created, and MAY be set or modified
  ///  via a token update transaction signed by the `admin_key`.<br/>
  ///  If `admin_key` is not set, this value, whether set or unset,
  ///  SHALL be immutable.
  @$pb.TagNumber(28)
  $1.Key get metadataKey => $_getN(27);
  @$pb.TagNumber(28)
  set metadataKey($1.Key value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasMetadataKey() => $_has(27);
  @$pb.TagNumber(28)
  void clearMetadataKey() => $_clearField(28);
  @$pb.TagNumber(28)
  $1.Key ensureMetadataKey() => $_ensure(27);
}

/// *
///  A response message for the `getTokenInfo` query.
class TokenGetInfoResponse extends $pb.GeneratedMessage {
  factory TokenGetInfoResponse({
    $5.ResponseHeader? header,
    TokenInfo? tokenInfo,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (tokenInfo != null) result.tokenInfo = tokenInfo;
    return result;
  }

  TokenGetInfoResponse._();

  factory TokenGetInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenGetInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenGetInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$5.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $5.ResponseHeader.create)
    ..aOM<TokenInfo>(2, _omitFieldNames ? '' : 'tokenInfo',
        protoName: 'tokenInfo', subBuilder: TokenInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetInfoResponse copyWith(void Function(TokenGetInfoResponse) updates) =>
      super.copyWith((message) => updates(message as TokenGetInfoResponse))
          as TokenGetInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenGetInfoResponse create() => TokenGetInfoResponse._();
  @$core.override
  TokenGetInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenGetInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenGetInfoResponse>(create);
  static TokenGetInfoResponse? _defaultInstance;

  /// *
  ///  The standard response information for queries.<br/>
  ///  This includes the values requested in the `QueryHeader`
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $5.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($5.ResponseHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.ResponseHeader ensureHeader() => $_ensure(0);

  /// *
  ///  The information requested for the identified token.
  @$pb.TagNumber(2)
  TokenInfo get tokenInfo => $_getN(1);
  @$pb.TagNumber(2)
  set tokenInfo(TokenInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTokenInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  TokenInfo ensureTokenInfo() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
