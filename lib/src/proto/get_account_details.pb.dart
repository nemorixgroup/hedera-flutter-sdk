// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from get_account_details.proto.

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
import 'duration.pb.dart' as $4;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;
import 'timestamp.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Request detail information about an account.
///
///  The returned information SHALL include balance and allowances.<br/>
///  The returned information SHALL NOT include a list of account records.
///
///  #### Important
///  This query is a _privileged_ query. Only "system" accounts SHALL be
///  permitted to submit this query.
class GetAccountDetailsQuery extends $pb.GeneratedMessage {
  factory GetAccountDetailsQuery({
    $0.QueryHeader? header,
    $1.AccountID? accountId,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountId != null) result.accountId = accountId;
    return result;
  }

  GetAccountDetailsQuery._();

  factory GetAccountDetailsQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountDetailsQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountDetailsQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountId',
        subBuilder: $1.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountDetailsQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountDetailsQuery copyWith(
          void Function(GetAccountDetailsQuery) updates) =>
      super.copyWith((message) => updates(message as GetAccountDetailsQuery))
          as GetAccountDetailsQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountDetailsQuery create() => GetAccountDetailsQuery._();
  @$core.override
  GetAccountDetailsQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountDetailsQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountDetailsQuery>(create);
  static GetAccountDetailsQuery? _defaultInstance;

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
  ///  An account ID for which information is requested
  ///  <p>
  ///  This value SHALL identify the account to be queried.<br/>
  ///  This value MUST identify a valid account.<br/>
  ///  This field is REQUIRED.
  @$pb.TagNumber(2)
  $1.AccountID get accountId => $_getN(1);
  @$pb.TagNumber(2)
  set accountId($1.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.AccountID ensureAccountId() => $_ensure(1);
}

/// *
///  Information describing a single Account in the Hedera distributed ledger.
///
///  #### Attributes
///  Each Account may have a unique three-part identifier, a Key, and one or
///  more token balances. Accounts also have an alias, which has multiple
///  forms, and may be set automatically. Several additional items are
///  associated with the Account to enable full functionality.
///
///  #### Expiration
///  Accounts, as most items in the network, have an expiration time, recorded
///  as a `Timestamp`, and must be "renewed" for a small fee at expiration.
///  This helps to reduce the amount of inactive accounts retained in state.
///  Another account may be designated to pay any renewal fees and
///  automatically renew the account for (by default) 30-90 days at a time as
///  a means to optionally ensure important accounts remain active.
///
///  ### Staking
///  Accounts may participate in securing the network by "staking" the account
///  balances to a particular network node, and receive a portion of network
///  fees as a reward. An account may optionally decline these rewards but
///  still stake its balances.
///
///  #### Transfer Restrictions
///  An account may optionally require that inbound transfer transactions be
///  signed by that account as receiver (in addition to any other signatures
///  required, including sender).
class GetAccountDetailsResponse_AccountDetails extends $pb.GeneratedMessage {
  factory GetAccountDetailsResponse_AccountDetails({
    $1.AccountID? accountId,
    $core.String? contractAccountId,
    $core.bool? deleted,
    @$core.Deprecated('This field is deprecated.') $1.AccountID? proxyAccountId,
    $fixnum.Int64? proxyReceived,
    $1.Key? key,
    $fixnum.Int64? balance,
    $core.bool? receiverSigRequired,
    $3.Timestamp? expirationTime,
    $4.Duration? autoRenewPeriod,
    $core.Iterable<$1.TokenRelationship>? tokenRelationships,
    $core.String? memo,
    $fixnum.Int64? ownedNfts,
    $core.int? maxAutomaticTokenAssociations,
    $core.List<$core.int>? alias,
    $core.List<$core.int>? ledgerId,
    $core.Iterable<GrantedCryptoAllowance>? grantedCryptoAllowances,
    $core.Iterable<GrantedNftAllowance>? grantedNftAllowances,
    $core.Iterable<GrantedTokenAllowance>? grantedTokenAllowances,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (contractAccountId != null) result.contractAccountId = contractAccountId;
    if (deleted != null) result.deleted = deleted;
    if (proxyAccountId != null) result.proxyAccountId = proxyAccountId;
    if (proxyReceived != null) result.proxyReceived = proxyReceived;
    if (key != null) result.key = key;
    if (balance != null) result.balance = balance;
    if (receiverSigRequired != null)
      result.receiverSigRequired = receiverSigRequired;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (tokenRelationships != null)
      result.tokenRelationships.addAll(tokenRelationships);
    if (memo != null) result.memo = memo;
    if (ownedNfts != null) result.ownedNfts = ownedNfts;
    if (maxAutomaticTokenAssociations != null)
      result.maxAutomaticTokenAssociations = maxAutomaticTokenAssociations;
    if (alias != null) result.alias = alias;
    if (ledgerId != null) result.ledgerId = ledgerId;
    if (grantedCryptoAllowances != null)
      result.grantedCryptoAllowances.addAll(grantedCryptoAllowances);
    if (grantedNftAllowances != null)
      result.grantedNftAllowances.addAll(grantedNftAllowances);
    if (grantedTokenAllowances != null)
      result.grantedTokenAllowances.addAll(grantedTokenAllowances);
    return result;
  }

  GetAccountDetailsResponse_AccountDetails._();

  factory GetAccountDetailsResponse_AccountDetails.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountDetailsResponse_AccountDetails.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountDetailsResponse.AccountDetails',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.AccountID>(1, _omitFieldNames ? '' : 'accountId',
        subBuilder: $1.AccountID.create)
    ..aOS(2, _omitFieldNames ? '' : 'contractAccountId')
    ..aOB(3, _omitFieldNames ? '' : 'deleted')
    ..aOM<$1.AccountID>(4, _omitFieldNames ? '' : 'proxyAccountId',
        subBuilder: $1.AccountID.create)
    ..aInt64(5, _omitFieldNames ? '' : 'proxyReceived')
    ..aOM<$1.Key>(6, _omitFieldNames ? '' : 'key', subBuilder: $1.Key.create)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(8, _omitFieldNames ? '' : 'receiverSigRequired')
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'expirationTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$4.Duration>(10, _omitFieldNames ? '' : 'autoRenewPeriod',
        subBuilder: $4.Duration.create)
    ..pPM<$1.TokenRelationship>(11, _omitFieldNames ? '' : 'tokenRelationships',
        subBuilder: $1.TokenRelationship.create)
    ..aOS(12, _omitFieldNames ? '' : 'memo')
    ..aInt64(13, _omitFieldNames ? '' : 'ownedNfts')
    ..aI(14, _omitFieldNames ? '' : 'maxAutomaticTokenAssociations')
    ..a<$core.List<$core.int>>(
        15, _omitFieldNames ? '' : 'alias', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        16, _omitFieldNames ? '' : 'ledgerId', $pb.PbFieldType.OY)
    ..pPM<GrantedCryptoAllowance>(
        17, _omitFieldNames ? '' : 'grantedCryptoAllowances',
        subBuilder: GrantedCryptoAllowance.create)
    ..pPM<GrantedNftAllowance>(
        18, _omitFieldNames ? '' : 'grantedNftAllowances',
        subBuilder: GrantedNftAllowance.create)
    ..pPM<GrantedTokenAllowance>(
        19, _omitFieldNames ? '' : 'grantedTokenAllowances',
        subBuilder: GrantedTokenAllowance.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountDetailsResponse_AccountDetails clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountDetailsResponse_AccountDetails copyWith(
          void Function(GetAccountDetailsResponse_AccountDetails) updates) =>
      super.copyWith((message) =>
              updates(message as GetAccountDetailsResponse_AccountDetails))
          as GetAccountDetailsResponse_AccountDetails;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountDetailsResponse_AccountDetails create() =>
      GetAccountDetailsResponse_AccountDetails._();
  @$core.override
  GetAccountDetailsResponse_AccountDetails createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountDetailsResponse_AccountDetails getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetAccountDetailsResponse_AccountDetails>(create);
  static GetAccountDetailsResponse_AccountDetails? _defaultInstance;

  /// *
  ///  The unique ID of this account.
  ///  <p>
  ///  An account ID, when assigned to this field, SHALL be of
  ///  the form `shard.realm.number`.<br/>
  ///  Transactions MAY reference the account by alias, but the account
  ///  itself MUST always have a purely numeric identifier. This numeric
  ///  ID is the value used to reference the account in query responses,
  ///  transaction receipts, transaction records, and the block stream.
  @$pb.TagNumber(1)
  $1.AccountID get accountId => $_getN(0);
  @$pb.TagNumber(1)
  set accountId($1.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.AccountID ensureAccountId() => $_ensure(0);

  /// *
  ///  A Solidity ID.<br/>
  ///  This identifies the contract instance, and the `Account` associated
  ///  with that contract instance.
  ///  <p>
  ///  This SHALL be populated if this account is a smart contract, and
  ///  SHALL NOT be populated otherwise.<br/>
  ///  This SHALL be formatted as a string according to Solidity ID
  ///  standards.
  @$pb.TagNumber(2)
  $core.String get contractAccountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set contractAccountId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContractAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractAccountId() => $_clearField(2);

  /// *
  ///  A boolean indicating that this account is deleted.
  @$pb.TagNumber(3)
  $core.bool get deleted => $_getBF(2);
  @$pb.TagNumber(3)
  set deleted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDeleted() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleted() => $_clearField(3);

  /// *
  ///  Replaced by StakingInfo.<br/>
  ///  ID of the account to which this account is staking its balances. If
  ///  this account is not currently staking its balances, then this field,
  ///  if set, SHALL be the sentinel value of `0.0.0`.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $1.AccountID get proxyAccountId => $_getN(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set proxyAccountId($1.AccountID value) => $_setField(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasProxyAccountId() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearProxyAccountId() => $_clearField(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $1.AccountID ensureProxyAccountId() => $_ensure(3);

  /// *
  ///  The total amount of tinybar proxy staked to this account.
  @$pb.TagNumber(5)
  $fixnum.Int64 get proxyReceived => $_getI64(4);
  @$pb.TagNumber(5)
  set proxyReceived($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasProxyReceived() => $_has(4);
  @$pb.TagNumber(5)
  void clearProxyReceived() => $_clearField(5);

  /// *
  ///  The key to be used to sign transactions from this account, if any.
  ///  <p>
  ///  This key SHALL NOT be set for hollow accounts until the account
  ///  is finalized.<br/>
  ///  This key SHALL be set on all other accounts, except for certain
  ///  immutable accounts (0.0.800 and 0.0.801) necessary for network
  ///  function and otherwise secured by the governing council.
  @$pb.TagNumber(6)
  $1.Key get key => $_getN(5);
  @$pb.TagNumber(6)
  set key($1.Key value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearKey() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Key ensureKey() => $_ensure(5);

  /// *
  ///  The HBAR balance of this account, in tinybar (10<sup>-8</sup> HBAR).
  ///  <p>
  ///  This value SHALL always be a whole number.
  @$pb.TagNumber(7)
  $fixnum.Int64 get balance => $_getI64(6);
  @$pb.TagNumber(7)
  set balance($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBalance() => $_has(6);
  @$pb.TagNumber(7)
  void clearBalance() => $_clearField(7);

  /// *
  ///  A boolean indicating that the account requires a receiver signature
  ///  for inbound token transfer transactions.
  ///  <p>
  ///  If this value is `true` then a transaction to transfer tokens to this
  ///  account SHALL NOT succeed unless this account has signed the
  ///  transfer transaction.
  @$pb.TagNumber(8)
  $core.bool get receiverSigRequired => $_getBF(7);
  @$pb.TagNumber(8)
  set receiverSigRequired($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasReceiverSigRequired() => $_has(7);
  @$pb.TagNumber(8)
  void clearReceiverSigRequired() => $_clearField(8);

  /// *
  ///  The current expiration time for this account.
  ///  <p>
  ///  This account SHALL be due standard renewal fees when the network
  ///  consensus time exceeds this time.<br/>
  ///  If rent and expiration are enabled for the network, and automatic
  ///  renewal is enabled for this account, renewal fees SHALL be charged
  ///  after this time, and, if charged, the expiration time SHALL be
  ///  extended for another renewal period.<br/>
  ///  This account MAY be expired and removed from state at any point
  ///  after this time if not renewed.<br/>
  ///  An account holder MAY extend this time by submitting an account
  ///  update transaction to modify expiration time, subject to the current
  ///  maximum expiration time for the network.
  @$pb.TagNumber(9)
  $3.Timestamp get expirationTime => $_getN(8);
  @$pb.TagNumber(9)
  set expirationTime($3.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasExpirationTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearExpirationTime() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureExpirationTime() => $_ensure(8);

  /// *
  ///  A duration to extend this account's expiration.
  ///  <p>
  ///  The network SHALL extend the account's expiration by this
  ///  duration, if funds are available, upon automatic renewal.<br/>
  ///  This SHALL NOT apply if the account is already deleted
  ///  upon expiration.<br/>
  ///  If this is not provided in an allowed range on account creation, the
  ///  transaction SHALL fail with INVALID_AUTO_RENEWAL_PERIOD. The default
  ///  values for the minimum period and maximum period are currently
  ///  30 days and 90 days, respectively.
  @$pb.TagNumber(10)
  $4.Duration get autoRenewPeriod => $_getN(9);
  @$pb.TagNumber(10)
  set autoRenewPeriod($4.Duration value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAutoRenewPeriod() => $_has(9);
  @$pb.TagNumber(10)
  void clearAutoRenewPeriod() => $_clearField(10);
  @$pb.TagNumber(10)
  $4.Duration ensureAutoRenewPeriod() => $_ensure(9);

  /// *
  ///  As of `HIP-367`, which enabled unlimited token associations, the
  ///  potential scale for this value requires that users consult a mirror
  ///  node for this information. Only the top `maxRelsPerInfoQuery`
  ///  (default 1000) relationships will be returned by this query.<br/>
  ///  A list of tokens to which this account is "associated", enabling the
  ///  transfer of that token type by this account.
  @$pb.TagNumber(11)
  $pb.PbList<$1.TokenRelationship> get tokenRelationships => $_getList(10);

  /// *
  ///  A short description of this account.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(12)
  $core.String get memo => $_getSZ(11);
  @$pb.TagNumber(12)
  set memo($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasMemo() => $_has(11);
  @$pb.TagNumber(12)
  void clearMemo() => $_clearField(12);

  /// *
  ///  The total number of non-fungible/unique tokens owned by this account.
  @$pb.TagNumber(13)
  $fixnum.Int64 get ownedNfts => $_getI64(12);
  @$pb.TagNumber(13)
  set ownedNfts($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasOwnedNfts() => $_has(12);
  @$pb.TagNumber(13)
  void clearOwnedNfts() => $_clearField(13);

  /// *
  ///  The maximum number of tokens that can be auto-associated with the
  ///  account.
  ///  <p>
  ///  If this is less than or equal to `used_auto_associations` (or 0),
  ///  then this account MUST manually associate with a token before
  ///  transacting in that token.<br/>
  ///  Following HIP-904 This value may also be `-1` to indicate no
  ///  limit.<br/>
  ///  This value MUST NOT be less than `-1`.
  @$pb.TagNumber(14)
  $core.int get maxAutomaticTokenAssociations => $_getIZ(13);
  @$pb.TagNumber(14)
  set maxAutomaticTokenAssociations($core.int value) =>
      $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasMaxAutomaticTokenAssociations() => $_has(13);
  @$pb.TagNumber(14)
  void clearMaxAutomaticTokenAssociations() => $_clearField(14);

  /// *
  ///  An account EVM alias.<br/>
  ///  This is a value used in some contexts to reference an account when
  ///  the tripartite account identifier is not available.
  ///  <p>
  ///  This field, when set to a non-default value, is immutable and
  ///  SHALL NOT be changed.
  @$pb.TagNumber(15)
  $core.List<$core.int> get alias => $_getN(14);
  @$pb.TagNumber(15)
  set alias($core.List<$core.int> value) => $_setBytes(14, value);
  @$pb.TagNumber(15)
  $core.bool hasAlias() => $_has(14);
  @$pb.TagNumber(15)
  void clearAlias() => $_clearField(15);

  /// *
  ///  The ledger ID of the network that generated this response.
  ///  <p>
  ///  This value SHALL identify the distributed ledger that responded to
  ///  this query.
  @$pb.TagNumber(16)
  $core.List<$core.int> get ledgerId => $_getN(15);
  @$pb.TagNumber(16)
  set ledgerId($core.List<$core.int> value) => $_setBytes(15, value);
  @$pb.TagNumber(16)
  $core.bool hasLedgerId() => $_has(15);
  @$pb.TagNumber(16)
  void clearLedgerId() => $_clearField(16);

  /// *
  ///  A list of crypto (HBAR) allowances approved by this account.
  ///  <p>
  ///  If this is not empty, each allowance SHALL permit a specified
  ///  "spender" account to spend this account's HBAR balance, up
  ///  to a designated limit.<br/>
  ///  This field SHALL permit spending only HBAR balance, not other
  ///  tokens the account may hold.<br/>
  ///  Allowances for other tokens SHALL be listed in the
  ///  `token_allowances` field or the
  ///  `approve_for_all_nft_allowances` field.
  @$pb.TagNumber(17)
  $pb.PbList<GrantedCryptoAllowance> get grantedCryptoAllowances =>
      $_getList(16);

  /// *
  ///  A list of non-fungible token (NFT) allowances approved by
  ///  this account.
  ///  <p>
  ///  If this is not empty, each allowance SHALL permit a specified
  ///  "spender" account to transfer _all_ of this account's
  ///  non-fungible/unique tokens from a particular collection.<br/>
  ///  Allowances for a specific serial number MUST be directly
  ///  associated with that specific non-fungible/unique token, rather
  ///  than the holding account.
  @$pb.TagNumber(18)
  $pb.PbList<GrantedNftAllowance> get grantedNftAllowances => $_getList(17);

  /// *
  ///  A list of fungible token allowances approved by this account.
  ///  <p>
  ///  If this is not empty, each allowance SHALL permit a specified
  ///  "spender" to spend this account's fungible tokens, of the
  ///  designated type, up to a designated limit.
  @$pb.TagNumber(19)
  $pb.PbList<GrantedTokenAllowance> get grantedTokenAllowances => $_getList(18);
}

/// *
///  A response to a `GetAccountDetailsQuery`.
///
///  This SHALL contain the account details if requested and successful.
class GetAccountDetailsResponse extends $pb.GeneratedMessage {
  factory GetAccountDetailsResponse({
    $2.ResponseHeader? header,
    GetAccountDetailsResponse_AccountDetails? accountDetails,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountDetails != null) result.accountDetails = accountDetails;
    return result;
  }

  GetAccountDetailsResponse._();

  factory GetAccountDetailsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountDetailsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountDetailsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<GetAccountDetailsResponse_AccountDetails>(
        2, _omitFieldNames ? '' : 'accountDetails',
        subBuilder: GetAccountDetailsResponse_AccountDetails.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountDetailsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountDetailsResponse copyWith(
          void Function(GetAccountDetailsResponse) updates) =>
      super.copyWith((message) => updates(message as GetAccountDetailsResponse))
          as GetAccountDetailsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountDetailsResponse create() => GetAccountDetailsResponse._();
  @$core.override
  GetAccountDetailsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountDetailsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountDetailsResponse>(create);
  static GetAccountDetailsResponse? _defaultInstance;

  /// *
  ///  The standard response information for queries.<br/>
  ///  This includes the values requested in the `QueryHeader`
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $2.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($2.ResponseHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.ResponseHeader ensureHeader() => $_ensure(0);

  /// *
  ///  Details of the account.
  ///  <p>
  ///  A state proof MAY be generated for this field.
  @$pb.TagNumber(2)
  GetAccountDetailsResponse_AccountDetails get accountDetails => $_getN(1);
  @$pb.TagNumber(2)
  set accountDetails(GetAccountDetailsResponse_AccountDetails value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountDetails() => $_clearField(2);
  @$pb.TagNumber(2)
  GetAccountDetailsResponse_AccountDetails ensureAccountDetails() =>
      $_ensure(1);
}

/// *
///  Permission granted by one account (the "funding" account) to another
///  account (the "spender" account) that allows the spender to spend a
///  specified amount of HBAR owned by the funding account.
///
///  An allowance SHALL NOT transfer any HBAR directly, it only permits
///  transactions signed only by the spender account to transfer HBAR, up
///  to the amount specified, from the funding account.
///
///  Once the specified amount is spent, the allowance SHALL be consumed
///  and a new allowance SHALL be required before that spending account
///  may spend additional HBAR from the funding account.
class GrantedCryptoAllowance extends $pb.GeneratedMessage {
  factory GrantedCryptoAllowance({
    $1.AccountID? spender,
    $fixnum.Int64? amount,
  }) {
    final result = create();
    if (spender != null) result.spender = spender;
    if (amount != null) result.amount = amount;
    return result;
  }

  GrantedCryptoAllowance._();

  factory GrantedCryptoAllowance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GrantedCryptoAllowance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GrantedCryptoAllowance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.AccountID>(1, _omitFieldNames ? '' : 'spender',
        subBuilder: $1.AccountID.create)
    ..aInt64(2, _omitFieldNames ? '' : 'amount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GrantedCryptoAllowance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GrantedCryptoAllowance copyWith(
          void Function(GrantedCryptoAllowance) updates) =>
      super.copyWith((message) => updates(message as GrantedCryptoAllowance))
          as GrantedCryptoAllowance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrantedCryptoAllowance create() => GrantedCryptoAllowance._();
  @$core.override
  GrantedCryptoAllowance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GrantedCryptoAllowance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GrantedCryptoAllowance>(create);
  static GrantedCryptoAllowance? _defaultInstance;

  /// *
  ///  The identifier for the spending account associated with this allowance.
  ///  <p>
  ///  This account SHALL be permitted to sign transactions to spend
  ///  HBAR from the funding/allowing account.<br/>
  ///  This permission SHALL be limited to no more than the specified `amount`.
  @$pb.TagNumber(1)
  $1.AccountID get spender => $_getN(0);
  @$pb.TagNumber(1)
  set spender($1.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpender() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.AccountID ensureSpender() => $_ensure(0);

  /// *
  ///  The maximum amount that the spender account may transfer within
  ///  the scope of this allowance.
  ///  <p>
  ///  This allowance SHALL be consumed if any combination of transfers
  ///  authorized via this allowance meet this value in total.<br/>
  ///  This value MUST be specified in tinybar (i.e. 10<sup>-8</sup> HBAR).
  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => $_clearField(2);
}

/// *
///  Permission granted by one account (the "funding" account) to another
///  account (the "spender" account) that allows the spender to transfer
///  all serial numbers of a specific non-fungible/unique token (NFT)
///  collection owned by the funding account.<br/>
///  This is a broad permission, as it does not matter how many NFTs of the
///  specified collection the funding account owns, the spender MAY dispose
///  of any or all of them with this allowance.<br/>
///  Each token type (typically a collection of NFTs) SHALL require
///  a separate allowance.<br/>
///  Allowances for a specific serial number MUST be directly associated
///  with that specific non-fungible/unique token, rather than
///  the holding account.
///
///  An allowance SHALL NOT transfer any tokens directly, it only permits
///  transactions signed only by the spender account to transfer any
///  non-fungible/unique tokens of the specified type owned by
///  the funding account.
class GrantedNftAllowance extends $pb.GeneratedMessage {
  factory GrantedNftAllowance({
    $1.TokenID? tokenId,
    $1.AccountID? spender,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (spender != null) result.spender = spender;
    return result;
  }

  GrantedNftAllowance._();

  factory GrantedNftAllowance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GrantedNftAllowance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GrantedNftAllowance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        subBuilder: $1.TokenID.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'spender',
        subBuilder: $1.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GrantedNftAllowance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GrantedNftAllowance copyWith(void Function(GrantedNftAllowance) updates) =>
      super.copyWith((message) => updates(message as GrantedNftAllowance))
          as GrantedNftAllowance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrantedNftAllowance create() => GrantedNftAllowance._();
  @$core.override
  GrantedNftAllowance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GrantedNftAllowance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GrantedNftAllowance>(create);
  static GrantedNftAllowance? _defaultInstance;

  /// *
  ///  The identifier for the token associated with this allowance.
  ///  <p>
  ///  This token MUST be a non-fungible/unique token.
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
  ///  The identifier for the spending account associated with this allowance.
  ///  <p>
  ///  This account SHALL be permitted to sign transactions to spend
  ///  tokens of the associated token type from the funding/allowing account.
  @$pb.TagNumber(2)
  $1.AccountID get spender => $_getN(1);
  @$pb.TagNumber(2)
  set spender($1.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpender() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.AccountID ensureSpender() => $_ensure(1);
}

/// *
///  Permission granted by one account (the "funding" account) to another
///  account (the "spender" account) that allows the spender to spend a
///  specified amount of a specific non-HBAR fungible token from the
///  balance owned by the funding account.
///
///  An allowance SHALL NOT transfer any tokens directly, it only permits
///  transactions signed only by the spender account to transfer tokens
///  of the specified type, up to the amount specified, from the funding account.
///
///  Once the specified amount is spent, the allowance SHALL be consumed
///  and a new allowance SHALL be required before that spending account
///  may spend additional tokens from the funding account.
class GrantedTokenAllowance extends $pb.GeneratedMessage {
  factory GrantedTokenAllowance({
    $1.TokenID? tokenId,
    $1.AccountID? spender,
    $fixnum.Int64? amount,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (spender != null) result.spender = spender;
    if (amount != null) result.amount = amount;
    return result;
  }

  GrantedTokenAllowance._();

  factory GrantedTokenAllowance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GrantedTokenAllowance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GrantedTokenAllowance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        subBuilder: $1.TokenID.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'spender',
        subBuilder: $1.AccountID.create)
    ..aInt64(3, _omitFieldNames ? '' : 'amount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GrantedTokenAllowance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GrantedTokenAllowance copyWith(
          void Function(GrantedTokenAllowance) updates) =>
      super.copyWith((message) => updates(message as GrantedTokenAllowance))
          as GrantedTokenAllowance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrantedTokenAllowance create() => GrantedTokenAllowance._();
  @$core.override
  GrantedTokenAllowance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GrantedTokenAllowance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GrantedTokenAllowance>(create);
  static GrantedTokenAllowance? _defaultInstance;

  /// *
  ///  The identifier for the token associated with this allowance.
  ///  <p>
  ///  This token MUST be a fungible/common token.
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
  ///  The identifier for the spending account associated with this allowance.
  ///  <p>
  ///  This account SHALL be permitted to sign transactions to spend tokens
  ///  of the associated token type from the funding/allowing account.<br/>
  ///  This permission SHALL be limited to no more than the specified `amount`.
  @$pb.TagNumber(2)
  $1.AccountID get spender => $_getN(1);
  @$pb.TagNumber(2)
  set spender($1.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpender() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.AccountID ensureSpender() => $_ensure(1);

  ///
  ///  The maximum amount that the spender account may transfer within
  ///  the scope of this allowance.
  ///  <p>
  ///  This allowance SHALL be consumed if any combination of transfers
  ///  authorized via this allowance meet this value in total.<br/>
  ///  This value MUST be specified in the smallest units of the relevant
  ///  token (i.e. 10<sup>-decimals</sup> whole tokens).
  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
