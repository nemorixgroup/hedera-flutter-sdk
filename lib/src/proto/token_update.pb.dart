// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from token_update.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $3;

import 'basic_types.pb.dart' as $0;
import 'duration.pb.dart' as $1;
import 'timestamp.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Update an existing token.
///
///  This transaction SHALL NOT update any field that is not set.<br/>
///  Most changes MUST be signed by the current `admin_key` of the token. If the
///  token does not currently have a valid `admin_key`, then this transaction
///  MUST NOT set any value other than `expiry` or a non-admin key.<br/>
///  If the `treasury` is set to a new account, the new account MUST sign this
///  transaction.<br/>
///  If the `treasury` is set to a new account for a _non-fungible/unique_ token,
///  The current treasury MUST NOT hold any tokens, or the network configuration
///  property `tokens.nfts.useTreasuryWildcards` MUST be set.
///
///  #### Requirements for Keys
///  Any of the key values may be changed, even without an admin key, but the
///  key to be changed MUST have an existing valid key assigned, and both the
///  current key and the new key MUST sign the transaction.<br/>
///  A key value MAY be set to an empty `KeyList`. In this case the existing
///  key MUST sign this transaction, but the new value is not a valid key, and the
///  update SHALL effectively remove the existing key.
///
///  ### Block Stream Effects
///  None
class TokenUpdateTransactionBody extends $pb.GeneratedMessage {
  factory TokenUpdateTransactionBody({
    $0.TokenID? token,
    $core.String? symbol,
    $core.String? name,
    $0.AccountID? treasury,
    $0.Key? adminKey,
    $0.Key? kycKey,
    $0.Key? freezeKey,
    $0.Key? wipeKey,
    $0.Key? supplyKey,
    $0.AccountID? autoRenewAccount,
    $1.Duration? autoRenewPeriod,
    $2.Timestamp? expiry,
    $3.StringValue? memo,
    $0.Key? feeScheduleKey,
    $0.Key? pauseKey,
    $3.BytesValue? metadata,
    $0.Key? metadataKey,
    $0.TokenKeyValidation? keyVerificationMode,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (symbol != null) result.symbol = symbol;
    if (name != null) result.name = name;
    if (treasury != null) result.treasury = treasury;
    if (adminKey != null) result.adminKey = adminKey;
    if (kycKey != null) result.kycKey = kycKey;
    if (freezeKey != null) result.freezeKey = freezeKey;
    if (wipeKey != null) result.wipeKey = wipeKey;
    if (supplyKey != null) result.supplyKey = supplyKey;
    if (autoRenewAccount != null) result.autoRenewAccount = autoRenewAccount;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (expiry != null) result.expiry = expiry;
    if (memo != null) result.memo = memo;
    if (feeScheduleKey != null) result.feeScheduleKey = feeScheduleKey;
    if (pauseKey != null) result.pauseKey = pauseKey;
    if (metadata != null) result.metadata = metadata;
    if (metadataKey != null) result.metadataKey = metadataKey;
    if (keyVerificationMode != null)
      result.keyVerificationMode = keyVerificationMode;
    return result;
  }

  TokenUpdateTransactionBody._();

  factory TokenUpdateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenUpdateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenUpdateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: $0.TokenID.create)
    ..aOS(2, _omitFieldNames ? '' : 'symbol')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOM<$0.AccountID>(4, _omitFieldNames ? '' : 'treasury',
        subBuilder: $0.AccountID.create)
    ..aOM<$0.Key>(5, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(6, _omitFieldNames ? '' : 'kycKey',
        protoName: 'kycKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(7, _omitFieldNames ? '' : 'freezeKey',
        protoName: 'freezeKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(8, _omitFieldNames ? '' : 'wipeKey',
        protoName: 'wipeKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(9, _omitFieldNames ? '' : 'supplyKey',
        protoName: 'supplyKey', subBuilder: $0.Key.create)
    ..aOM<$0.AccountID>(10, _omitFieldNames ? '' : 'autoRenewAccount',
        protoName: 'autoRenewAccount', subBuilder: $0.AccountID.create)
    ..aOM<$1.Duration>(11, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $1.Duration.create)
    ..aOM<$2.Timestamp>(12, _omitFieldNames ? '' : 'expiry',
        subBuilder: $2.Timestamp.create)
    ..aOM<$3.StringValue>(13, _omitFieldNames ? '' : 'memo',
        subBuilder: $3.StringValue.create)
    ..aOM<$0.Key>(14, _omitFieldNames ? '' : 'feeScheduleKey',
        subBuilder: $0.Key.create)
    ..aOM<$0.Key>(15, _omitFieldNames ? '' : 'pauseKey',
        subBuilder: $0.Key.create)
    ..aOM<$3.BytesValue>(16, _omitFieldNames ? '' : 'metadata',
        subBuilder: $3.BytesValue.create)
    ..aOM<$0.Key>(17, _omitFieldNames ? '' : 'metadataKey',
        subBuilder: $0.Key.create)
    ..aE<$0.TokenKeyValidation>(
        18, _omitFieldNames ? '' : 'keyVerificationMode',
        enumValues: $0.TokenKeyValidation.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenUpdateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenUpdateTransactionBody copyWith(
          void Function(TokenUpdateTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenUpdateTransactionBody))
          as TokenUpdateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenUpdateTransactionBody create() => TokenUpdateTransactionBody._();
  @$core.override
  TokenUpdateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenUpdateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenUpdateTransactionBody>(create);
  static TokenUpdateTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This SHALL identify the token type to delete.<br/>
  ///  The identified token MUST exist, and MUST NOT be deleted.<br/>
  ///  If any field other than `expiry` is set, the identified token MUST
  ///  have a valid `admin_key`.
  @$pb.TagNumber(1)
  $0.TokenID get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($0.TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TokenID ensureToken() => $_ensure(0);

  /// *
  ///  A new symbol to use for the token.
  ///  <p>
  ///  This value, if set, MUST NOT exceed 100 bytes when encoded as UTF-8.<br/>
  ///  This value, if set, MUST NOT contain the Unicode NUL codepoint.
  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => $_clearField(2);

  /// *
  ///  A new name for the token.<br/>
  ///  This is generally the "full name" displayed in wallet software.
  ///  <p>
  ///  This value, if set, MUST NOT exceed 100 bytes when encoded as UTF-8.<br/>
  ///  This value, if set, MUST NOT contain the Unicode NUL codepoint.
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  /// *
  ///  A new treasury account identifier.
  ///  <p>
  ///  If set,
  ///  - The identified account SHALL be designated the "treasury" for the
  ///    token, and all tokens "minted" SHALL be delivered to that account
  ///    following this transaction.<br/>
  ///  - The identified account MUST exist, MUST NOT be expired, MUST NOT be
  ///    deleted, and SHOULD have a non-zero HBAR balance.<br/>
  ///  - The identified account SHALL be associated to this token.
  ///  - The full balance of this token held by the prior treasury account
  ///    SHALL be transferred to the new treasury account, if the token type
  ///    is fungible/common.
  ///  - If the token type is non-fungible/unique, the previous treasury
  ///    account MUST NOT hold any tokens of this type.
  ///  - The new treasury account key MUST sign this transaction.
  @$pb.TagNumber(4)
  $0.AccountID get treasury => $_getN(3);
  @$pb.TagNumber(4)
  set treasury($0.AccountID value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTreasury() => $_has(3);
  @$pb.TagNumber(4)
  void clearTreasury() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.AccountID ensureTreasury() => $_ensure(3);

  /// *
  ///  An Hedera key for token administration.
  ///  <p>
  ///  This key, if set, SHALL have administrative authority for this token and
  ///  MAY authorize token update and/or token delete transactions.<br/>
  ///  If this key is set to an empty `KeyList`, this token SHALL be
  ///  immutable thereafter, except for expiration and renewal.<br/>
  ///  If set, this key MUST be a valid key or an empty `KeyList`.<br/>
  ///  If set to a valid key, the previous key and new key MUST both
  ///  sign this transaction.
  @$pb.TagNumber(5)
  $0.Key get adminKey => $_getN(4);
  @$pb.TagNumber(5)
  set adminKey($0.Key value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAdminKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdminKey() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Key ensureAdminKey() => $_ensure(4);

  /// *
  ///  An Hedera key for managing account KYC.
  ///  <p>
  ///  This key, if set, SHALL have KYC authority for this token and
  ///  MAY authorize transactions to grant or revoke KYC for accounts.<br/>
  ///  If this key is not set, or is an empty `KeyList`, KYC status for this
  ///  token SHALL NOT be granted or revoked for any account.<br/>
  ///  If this key is removed after granting KYC, those grants SHALL remain
  ///  and cannot be revoked.<br/>
  ///  If set, this key MUST be a valid key or an empty `KeyList`.<br/>
  ///  If set to a valid key, the previous key and new key MUST both
  ///  sign this transaction.
  @$pb.TagNumber(6)
  $0.Key get kycKey => $_getN(5);
  @$pb.TagNumber(6)
  set kycKey($0.Key value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasKycKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearKycKey() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Key ensureKycKey() => $_ensure(5);

  /// *
  ///  An Hedera key for managing asset "freeze".
  ///  <p>
  ///  This key, if set, SHALL have "freeze" authority for this token and
  ///  MAY authorize transactions to freeze or unfreeze accounts
  ///  with respect to this token.<br/>
  ///  If this key is set to an empty `KeyList`, this token
  ///  SHALL NOT be frozen or unfrozen for any account.<br/>
  ///  If this key is removed after freezing accounts, those accounts
  ///  SHALL remain frozen and cannot be unfrozen.<br/>
  ///  If set, this key MUST be a valid key or an empty `KeyList`.<br/>
  ///  If set to a valid key, the previous key and new key MUST both
  ///  sign this transaction.
  @$pb.TagNumber(7)
  $0.Key get freezeKey => $_getN(6);
  @$pb.TagNumber(7)
  set freezeKey($0.Key value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFreezeKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearFreezeKey() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Key ensureFreezeKey() => $_ensure(6);

  /// *
  ///  An Hedera key for wiping tokens from accounts.
  ///  <p>
  ///  This key, if set, SHALL have "wipe" authority for this token and
  ///  MAY authorize transactions to "wipe" any amount of this token from
  ///  any account, effectively burning the tokens "wiped".<br/>
  ///  If this key is set to an empty `KeyList`, it SHALL NOT be
  ///  possible to "wipe" this token from an account.<br/>
  ///  If set, this key MUST be a valid key or an empty `KeyList`.<br/>
  ///  If set to a valid key, the previous key and new key MUST both
  ///  sign this transaction.
  @$pb.TagNumber(8)
  $0.Key get wipeKey => $_getN(7);
  @$pb.TagNumber(8)
  set wipeKey($0.Key value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasWipeKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearWipeKey() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Key ensureWipeKey() => $_ensure(7);

  /// *
  ///  An Hedera key for "minting" and "burning" tokens.
  ///  <p>
  ///  This key, if set, MAY authorize transactions to "mint" new tokens to
  ///  be delivered to the token treasury or "burn" tokens held by the
  ///  token treasury.<br/>
  ///  If this key is set to an empty `KeyList`, it SHALL NOT be
  ///  possible to change the supply of tokens and neither "mint" nor "burn"
  ///  transactions SHALL be permitted.<br/>
  ///  If set, this key MUST be a valid key or an empty `KeyList`.<br/>
  ///  If set to a valid key, the previous key and new key MUST both
  ///  sign this transaction.
  @$pb.TagNumber(9)
  $0.Key get supplyKey => $_getN(8);
  @$pb.TagNumber(9)
  set supplyKey($0.Key value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSupplyKey() => $_has(8);
  @$pb.TagNumber(9)
  void clearSupplyKey() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Key ensureSupplyKey() => $_ensure(8);

  /// *
  ///  An identifier for the account to be charged renewal fees at the token's
  ///  expiry to extend the lifetime of the token.
  ///  <p>
  ///  If this value is set for the identified token, the token lifetime SHALL
  ///  be extended by the _smallest_ of the following at expiration:
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
  ///  <p>
  ///  <blockquote>Note<blockquote>
  ///  It is not currently possible to remove an automatic renewal account.
  ///  Once set, it can only be replaced by a valid account.
  ///  </blockquote></blockquote>
  @$pb.TagNumber(10)
  $0.AccountID get autoRenewAccount => $_getN(9);
  @$pb.TagNumber(10)
  set autoRenewAccount($0.AccountID value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAutoRenewAccount() => $_has(9);
  @$pb.TagNumber(10)
  void clearAutoRenewAccount() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.AccountID ensureAutoRenewAccount() => $_ensure(9);

  /// *
  ///  A duration between token automatic renewals.<br/>
  ///  All entities in state may be charged "rent" occasionally (typically
  ///  every 90 days) to prevent unnecessary growth of the ledger. This value
  ///  sets the interval between such events for this token.
  ///  <p>
  ///  If set, this value MUST be greater than the configured
  ///  `MIN_AUTORENEW_PERIOD`.<br/>
  ///  If set, this value MUST be less than the configured
  ///  `MAX_AUTORENEW_PERIOD`.
  @$pb.TagNumber(11)
  $1.Duration get autoRenewPeriod => $_getN(10);
  @$pb.TagNumber(11)
  set autoRenewPeriod($1.Duration value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAutoRenewPeriod() => $_has(10);
  @$pb.TagNumber(11)
  void clearAutoRenewPeriod() => $_clearField(11);
  @$pb.TagNumber(11)
  $1.Duration ensureAutoRenewPeriod() => $_ensure(10);

  /// *
  ///  An expiration timestamp.
  ///  <p>
  ///  If this value is set, the automatic renewal account is not set for the
  ///  identified token, and token expiration is enabled in network
  ///  configuration, this token SHALL expire when the consensus time exceeds
  ///  this value, and MAY be subsequently removed from the network state.<br/>
  ///  If `autoRenewAccount` is set or the `auto_renew_account_id` is set for
  ///  the identified token, the token SHALL be subject to automatic renewal
  ///  when the consensus time exceeds this value.
  @$pb.TagNumber(12)
  $2.Timestamp get expiry => $_getN(11);
  @$pb.TagNumber(12)
  set expiry($2.Timestamp value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasExpiry() => $_has(11);
  @$pb.TagNumber(12)
  void clearExpiry() => $_clearField(12);
  @$pb.TagNumber(12)
  $2.Timestamp ensureExpiry() => $_ensure(11);

  /// *
  ///  A short description for this token.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(13)
  $3.StringValue get memo => $_getN(12);
  @$pb.TagNumber(13)
  set memo($3.StringValue value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasMemo() => $_has(12);
  @$pb.TagNumber(13)
  void clearMemo() => $_clearField(13);
  @$pb.TagNumber(13)
  $3.StringValue ensureMemo() => $_ensure(12);

  /// *
  ///  An Hedera key for managing the token custom fee schedule.
  ///  <p>
  ///  This key, if set, MAY authorize transactions to modify the
  ///  `custom_fees` for this token.<br/>
  ///  If this key is set to an empty `KeyList`, the `custom_fees`
  ///  for this token SHALL NOT be modified.<br/>
  ///  If set, this key MUST be a valid key or an empty `KeyList`.<br/>
  ///  If set to a valid key, the previous key and new key MUST both
  ///  sign this transaction.
  @$pb.TagNumber(14)
  $0.Key get feeScheduleKey => $_getN(13);
  @$pb.TagNumber(14)
  set feeScheduleKey($0.Key value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasFeeScheduleKey() => $_has(13);
  @$pb.TagNumber(14)
  void clearFeeScheduleKey() => $_clearField(14);
  @$pb.TagNumber(14)
  $0.Key ensureFeeScheduleKey() => $_ensure(13);

  /// *
  ///  An Hedera key for managing token "pause".
  ///  <p>
  ///  This key, if set, SHALL have "pause" authority for this token and
  ///  MAY authorize transactions to pause or unpause this token.<br/>
  ///  If this key is set to an empty `KeyList`, this token
  ///  SHALL NOT be paused or unpaused.<br/>
  ///  If this key is removed while the token is paused, the token cannot
  ///  be unpaused and SHALL remain paused.<br/>
  ///  If set, this key MUST be a valid key or an empty `KeyList`.<br/>
  ///  If set to a valid key, the previous key and new key MUST both
  ///  sign this transaction.
  @$pb.TagNumber(15)
  $0.Key get pauseKey => $_getN(14);
  @$pb.TagNumber(15)
  set pauseKey($0.Key value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasPauseKey() => $_has(14);
  @$pb.TagNumber(15)
  void clearPauseKey() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.Key ensurePauseKey() => $_ensure(14);

  /// *
  ///  Token "Metadata".
  ///  <p>
  ///  The value, if set, MUST NOT exceed 100 bytes.<br/>
  ///  <dl><dt>Examples</dt>
  ///    <dd>hcs://1/0.0.4896575</dd>
  ///    <dd>ipfs://bafkreifd7tcjjuwxxf4qkaibkj62pj4mhfuud7plwrc3pfoygt55al6syi</dd>
  ///  </dl>
  @$pb.TagNumber(16)
  $3.BytesValue get metadata => $_getN(15);
  @$pb.TagNumber(16)
  set metadata($3.BytesValue value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasMetadata() => $_has(15);
  @$pb.TagNumber(16)
  void clearMetadata() => $_clearField(16);
  @$pb.TagNumber(16)
  $3.BytesValue ensureMetadata() => $_ensure(15);

  /// *
  ///  An Hedera key for managing the token `metadata`.
  ///  <p>
  ///  This key, if set, MAY authorize transactions to modify the
  ///  `metadata` for this token.<br/>
  ///  If this key is set to an empty `KeyList`, the `metadata`
  ///  for this token SHALL NOT be modified.<br/>
  ///  If set, this key MUST be a valid key or an empty `KeyList`.<br/>
  ///  If set to a valid key, the previous key and new key MUST both
  ///  sign this transaction.
  @$pb.TagNumber(17)
  $0.Key get metadataKey => $_getN(16);
  @$pb.TagNumber(17)
  set metadataKey($0.Key value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasMetadataKey() => $_has(16);
  @$pb.TagNumber(17)
  void clearMetadataKey() => $_clearField(17);
  @$pb.TagNumber(17)
  $0.Key ensureMetadataKey() => $_ensure(16);

  /// *
  ///  Set a key validation mode.<br/>
  ///  Any key may be updated by a transaction signed by the token `admin_key`.
  ///  Each role key may _also_ sign a transaction to update that key.
  ///  If a role key signs an update to change that role key both old
  ///  and new key must sign the transaction, _unless_ this field is set
  ///  to `NO_VALIDATION`, in which case the _new_ key is not required to
  ///  sign the transaction (the existing key is still required).<br/>
  ///  The primary intent for this field is to allow a role key (e.g. a
  ///  `pause_key`) holder to "remove" that key from the token by signing
  ///  a transaction to set that role key to an empty `KeyList`.
  ///  <p>
  ///  If set to `FULL_VALIDATION`, either the `admin_key` or _both_ current
  ///  and new key MUST sign this transaction to update a "key" field for the
  ///  identified token.<br/>
  ///  If set to `NO_VALIDATION`, either the `admin_key` or the current
  ///  key MUST sign this transaction to update a "key" field for the
  ///  identified token.<br/>
  ///  This field SHALL be treated as `FULL_VALIDATION` if not set.
  @$pb.TagNumber(18)
  $0.TokenKeyValidation get keyVerificationMode => $_getN(17);
  @$pb.TagNumber(18)
  set keyVerificationMode($0.TokenKeyValidation value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasKeyVerificationMode() => $_has(17);
  @$pb.TagNumber(18)
  void clearKeyVerificationMode() => $_clearField(18);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
