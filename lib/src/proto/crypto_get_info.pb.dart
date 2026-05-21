// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from crypto_get_info.proto.

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
import 'crypto_add_live_hash.pb.dart' as $5;
import 'duration.pb.dart' as $4;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;
import 'timestamp.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A query to read information for an account.
///
///  The returned information SHALL include balance.<br/>
///  The returned information SHALL NOT include allowances.<br/>
///  The returned information SHALL NOT include token relationships.<br/>
///  The returned information SHALL NOT include account records.
class CryptoGetInfoQuery extends $pb.GeneratedMessage {
  factory CryptoGetInfoQuery({
    $0.QueryHeader? header,
    $1.AccountID? accountID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountID != null) result.accountID = accountID;
    return result;
  }

  CryptoGetInfoQuery._();

  factory CryptoGetInfoQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetInfoQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetInfoQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetInfoQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetInfoQuery copyWith(void Function(CryptoGetInfoQuery) updates) =>
      super.copyWith((message) => updates(message as CryptoGetInfoQuery))
          as CryptoGetInfoQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetInfoQuery create() => CryptoGetInfoQuery._();
  @$core.override
  CryptoGetInfoQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetInfoQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetInfoQuery>(create);
  static CryptoGetInfoQuery? _defaultInstance;

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
  ///  The account ID for which information is requested
  @$pb.TagNumber(2)
  $1.AccountID get accountID => $_getN(1);
  @$pb.TagNumber(2)
  set accountID($1.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.AccountID ensureAccountID() => $_ensure(1);
}

/// *
///  Information describing A single Account in the Hedera distributed ledger.
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
class CryptoGetInfoResponse_AccountInfo extends $pb.GeneratedMessage {
  factory CryptoGetInfoResponse_AccountInfo({
    $1.AccountID? accountID,
    $core.String? contractAccountID,
    $core.bool? deleted,
    @$core.Deprecated('This field is deprecated.') $1.AccountID? proxyAccountID,
    @$core.Deprecated('This field is deprecated.') $fixnum.Int64? proxyReceived,
    $1.Key? key,
    $fixnum.Int64? balance,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? generateSendRecordThreshold,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? generateReceiveRecordThreshold,
    $core.bool? receiverSigRequired,
    $3.Timestamp? expirationTime,
    $4.Duration? autoRenewPeriod,
    $core.Iterable<$5.LiveHash>? liveHashes,
    @$core.Deprecated('This field is deprecated.')
    $core.Iterable<$1.TokenRelationship>? tokenRelationships,
    $core.String? memo,
    $fixnum.Int64? ownedNfts,
    $core.int? maxAutomaticTokenAssociations,
    $core.List<$core.int>? alias,
    $core.List<$core.int>? ledgerId,
    $fixnum.Int64? ethereumNonce,
    $1.StakingInfo? stakingInfo,
  }) {
    final result = create();
    if (accountID != null) result.accountID = accountID;
    if (contractAccountID != null) result.contractAccountID = contractAccountID;
    if (deleted != null) result.deleted = deleted;
    if (proxyAccountID != null) result.proxyAccountID = proxyAccountID;
    if (proxyReceived != null) result.proxyReceived = proxyReceived;
    if (key != null) result.key = key;
    if (balance != null) result.balance = balance;
    if (generateSendRecordThreshold != null)
      result.generateSendRecordThreshold = generateSendRecordThreshold;
    if (generateReceiveRecordThreshold != null)
      result.generateReceiveRecordThreshold = generateReceiveRecordThreshold;
    if (receiverSigRequired != null)
      result.receiverSigRequired = receiverSigRequired;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (liveHashes != null) result.liveHashes.addAll(liveHashes);
    if (tokenRelationships != null)
      result.tokenRelationships.addAll(tokenRelationships);
    if (memo != null) result.memo = memo;
    if (ownedNfts != null) result.ownedNfts = ownedNfts;
    if (maxAutomaticTokenAssociations != null)
      result.maxAutomaticTokenAssociations = maxAutomaticTokenAssociations;
    if (alias != null) result.alias = alias;
    if (ledgerId != null) result.ledgerId = ledgerId;
    if (ethereumNonce != null) result.ethereumNonce = ethereumNonce;
    if (stakingInfo != null) result.stakingInfo = stakingInfo;
    return result;
  }

  CryptoGetInfoResponse_AccountInfo._();

  factory CryptoGetInfoResponse_AccountInfo.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetInfoResponse_AccountInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetInfoResponse.AccountInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.AccountID>(1, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..aOS(2, _omitFieldNames ? '' : 'contractAccountID',
        protoName: 'contractAccountID')
    ..aOB(3, _omitFieldNames ? '' : 'deleted')
    ..aOM<$1.AccountID>(4, _omitFieldNames ? '' : 'proxyAccountID',
        protoName: 'proxyAccountID', subBuilder: $1.AccountID.create)
    ..aInt64(6, _omitFieldNames ? '' : 'proxyReceived',
        protoName: 'proxyReceived')
    ..aOM<$1.Key>(7, _omitFieldNames ? '' : 'key', subBuilder: $1.Key.create)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'generateSendRecordThreshold',
        $pb.PbFieldType.OU6,
        protoName: 'generateSendRecordThreshold',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        10,
        _omitFieldNames ? '' : 'generateReceiveRecordThreshold',
        $pb.PbFieldType.OU6,
        protoName: 'generateReceiveRecordThreshold',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(11, _omitFieldNames ? '' : 'receiverSigRequired',
        protoName: 'receiverSigRequired')
    ..aOM<$3.Timestamp>(12, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $3.Timestamp.create)
    ..aOM<$4.Duration>(13, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $4.Duration.create)
    ..pPM<$5.LiveHash>(14, _omitFieldNames ? '' : 'liveHashes',
        protoName: 'liveHashes', subBuilder: $5.LiveHash.create)
    ..pPM<$1.TokenRelationship>(15, _omitFieldNames ? '' : 'tokenRelationships',
        protoName: 'tokenRelationships',
        subBuilder: $1.TokenRelationship.create)
    ..aOS(16, _omitFieldNames ? '' : 'memo')
    ..aInt64(17, _omitFieldNames ? '' : 'ownedNfts', protoName: 'ownedNfts')
    ..aI(18, _omitFieldNames ? '' : 'maxAutomaticTokenAssociations')
    ..a<$core.List<$core.int>>(
        19, _omitFieldNames ? '' : 'alias', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        20, _omitFieldNames ? '' : 'ledgerId', $pb.PbFieldType.OY)
    ..aInt64(21, _omitFieldNames ? '' : 'ethereumNonce')
    ..aOM<$1.StakingInfo>(22, _omitFieldNames ? '' : 'stakingInfo',
        subBuilder: $1.StakingInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetInfoResponse_AccountInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetInfoResponse_AccountInfo copyWith(
          void Function(CryptoGetInfoResponse_AccountInfo) updates) =>
      super.copyWith((message) =>
              updates(message as CryptoGetInfoResponse_AccountInfo))
          as CryptoGetInfoResponse_AccountInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetInfoResponse_AccountInfo create() =>
      CryptoGetInfoResponse_AccountInfo._();
  @$core.override
  CryptoGetInfoResponse_AccountInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetInfoResponse_AccountInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetInfoResponse_AccountInfo>(
          create);
  static CryptoGetInfoResponse_AccountInfo? _defaultInstance;

  /// *
  ///  a unique identifier for this account.
  ///  <p>
  ///  An account identifier, when assigned to this field, SHALL be of
  ///  the form `shard.realm.number`.
  @$pb.TagNumber(1)
  $1.AccountID get accountID => $_getN(0);
  @$pb.TagNumber(1)
  set accountID($1.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountID() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountID() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.AccountID ensureAccountID() => $_ensure(0);

  /// *
  ///  A Solidity ID.
  ///  <p>
  ///  This SHALL be populated if this account is a smart contract, and
  ///  SHALL NOT be populated otherwise.<br/>
  ///  This SHALL be formatted as a string according to Solidity ID
  ///  standards.
  @$pb.TagNumber(2)
  $core.String get contractAccountID => $_getSZ(1);
  @$pb.TagNumber(2)
  set contractAccountID($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContractAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractAccountID() => $_clearField(2);

  /// *
  ///  A boolean indicating that this account is deleted.
  ///  <p>
  ///  Any transaction involving a deleted account SHALL fail.
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
  $1.AccountID get proxyAccountID => $_getN(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set proxyAccountID($1.AccountID value) => $_setField(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasProxyAccountID() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearProxyAccountID() => $_clearField(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $1.AccountID ensureProxyAccountID() => $_ensure(3);

  /// *
  ///  Replaced by StakingInfo.<br/>
  ///  The total amount of tinybar proxy staked to this account.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $fixnum.Int64 get proxyReceived => $_getI64(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set proxyReceived($fixnum.Int64 value) => $_setInt64(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasProxyReceived() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearProxyReceived() => $_clearField(6);

  /// *
  ///  The key to be used to sign transactions from this account, if any.
  ///  <p>
  ///  This key SHALL NOT be set for hollow accounts until the account
  ///  is finalized.<br/>
  ///  This key SHALL be set on all other accounts, except for certain
  ///  immutable accounts (0.0.800 and 0.0.801) necessary for network
  ///  function and otherwise secured by the governing council.
  @$pb.TagNumber(7)
  $1.Key get key => $_getN(5);
  @$pb.TagNumber(7)
  set key($1.Key value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasKey() => $_has(5);
  @$pb.TagNumber(7)
  void clearKey() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Key ensureKey() => $_ensure(5);

  /// *
  ///  The HBAR balance of this account, in tinybar (10<sup>-8</sup> HBAR).
  ///  <p>
  ///  This value SHALL always be a whole number.
  @$pb.TagNumber(8)
  $fixnum.Int64 get balance => $_getI64(6);
  @$pb.TagNumber(8)
  set balance($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(8)
  $core.bool hasBalance() => $_has(6);
  @$pb.TagNumber(8)
  void clearBalance() => $_clearField(8);

  /// *
  ///  Obsolete and unused.<br/>
  ///  The threshold amount, in tinybars, at which a record was created for
  ///  any transaction that decreased the balance of this account.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $fixnum.Int64 get generateSendRecordThreshold => $_getI64(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  set generateSendRecordThreshold($fixnum.Int64 value) => $_setInt64(7, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $core.bool hasGenerateSendRecordThreshold() => $_has(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  void clearGenerateSendRecordThreshold() => $_clearField(9);

  /// *
  ///  Obsolete and unused.<br/>
  ///  The threshold amount, in tinybars, at which a record was created for
  ///  any transaction that increased the balance of this account.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $fixnum.Int64 get generateReceiveRecordThreshold => $_getI64(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set generateReceiveRecordThreshold($fixnum.Int64 value) =>
      $_setInt64(8, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasGenerateReceiveRecordThreshold() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearGenerateReceiveRecordThreshold() => $_clearField(10);

  /// *
  ///  A boolean indicating that the account requires a receiver signature
  ///  for inbound token transfer transactions.
  ///  <p>
  ///  If this value is `true` then a transaction to transfer tokens to this
  ///  account SHALL NOT succeed unless this account has signed the
  ///  transfer transaction.
  @$pb.TagNumber(11)
  $core.bool get receiverSigRequired => $_getBF(9);
  @$pb.TagNumber(11)
  set receiverSigRequired($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(11)
  $core.bool hasReceiverSigRequired() => $_has(9);
  @$pb.TagNumber(11)
  void clearReceiverSigRequired() => $_clearField(11);

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
  @$pb.TagNumber(12)
  $3.Timestamp get expirationTime => $_getN(10);
  @$pb.TagNumber(12)
  set expirationTime($3.Timestamp value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasExpirationTime() => $_has(10);
  @$pb.TagNumber(12)
  void clearExpirationTime() => $_clearField(12);
  @$pb.TagNumber(12)
  $3.Timestamp ensureExpirationTime() => $_ensure(10);

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
  @$pb.TagNumber(13)
  $4.Duration get autoRenewPeriod => $_getN(11);
  @$pb.TagNumber(13)
  set autoRenewPeriod($4.Duration value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasAutoRenewPeriod() => $_has(11);
  @$pb.TagNumber(13)
  void clearAutoRenewPeriod() => $_clearField(13);
  @$pb.TagNumber(13)
  $4.Duration ensureAutoRenewPeriod() => $_ensure(11);

  /// *
  ///  All of the livehashes attached to the account (each of which is a
  ///  hash along with the keys that authorized it and can delete it)
  @$pb.TagNumber(14)
  $pb.PbList<$5.LiveHash> get liveHashes => $_getList(12);

  /// *
  ///  As of `HIP-367`, which enabled unlimited token associations, the
  ///  potential scale for this value requires that users consult a mirror
  ///  node for this information.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(15)
  $pb.PbList<$1.TokenRelationship> get tokenRelationships => $_getList(13);

  /// *
  ///  A short description of this account.
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
  ///  The total number of non-fungible/unique tokens owned by this account.
  @$pb.TagNumber(17)
  $fixnum.Int64 get ownedNfts => $_getI64(15);
  @$pb.TagNumber(17)
  set ownedNfts($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(17)
  $core.bool hasOwnedNfts() => $_has(15);
  @$pb.TagNumber(17)
  void clearOwnedNfts() => $_clearField(17);

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
  @$pb.TagNumber(18)
  $core.int get maxAutomaticTokenAssociations => $_getIZ(16);
  @$pb.TagNumber(18)
  set maxAutomaticTokenAssociations($core.int value) =>
      $_setSignedInt32(16, value);
  @$pb.TagNumber(18)
  $core.bool hasMaxAutomaticTokenAssociations() => $_has(16);
  @$pb.TagNumber(18)
  void clearMaxAutomaticTokenAssociations() => $_clearField(18);

  /// *
  ///  An account alias.<br/>
  ///  This is a value used in some contexts to reference an account when
  ///  the tripartite account identifier is not available.
  ///  <p>
  ///  This field, when set to a non-default value, is immutable and
  ///  SHALL NOT be changed.
  @$pb.TagNumber(19)
  $core.List<$core.int> get alias => $_getN(17);
  @$pb.TagNumber(19)
  set alias($core.List<$core.int> value) => $_setBytes(17, value);
  @$pb.TagNumber(19)
  $core.bool hasAlias() => $_has(17);
  @$pb.TagNumber(19)
  void clearAlias() => $_clearField(19);

  /// *
  ///  The ledger ID of the network that generated this response.
  ///  <p>
  ///  This value SHALL identify the distributed ledger that responded to
  ///  this query.
  @$pb.TagNumber(20)
  $core.List<$core.int> get ledgerId => $_getN(18);
  @$pb.TagNumber(20)
  set ledgerId($core.List<$core.int> value) => $_setBytes(18, value);
  @$pb.TagNumber(20)
  $core.bool hasLedgerId() => $_has(18);
  @$pb.TagNumber(20)
  void clearLedgerId() => $_clearField(20);

  /// *
  ///  The ethereum transaction nonce associated with this account.
  @$pb.TagNumber(21)
  $fixnum.Int64 get ethereumNonce => $_getI64(19);
  @$pb.TagNumber(21)
  set ethereumNonce($fixnum.Int64 value) => $_setInt64(19, value);
  @$pb.TagNumber(21)
  $core.bool hasEthereumNonce() => $_has(19);
  @$pb.TagNumber(21)
  void clearEthereumNonce() => $_clearField(21);

  /// *
  ///  Staking information for this account.
  @$pb.TagNumber(22)
  $1.StakingInfo get stakingInfo => $_getN(20);
  @$pb.TagNumber(22)
  set stakingInfo($1.StakingInfo value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasStakingInfo() => $_has(20);
  @$pb.TagNumber(22)
  void clearStakingInfo() => $_clearField(22);
  @$pb.TagNumber(22)
  $1.StakingInfo ensureStakingInfo() => $_ensure(20);
}

/// *
///  Response when the client sends the node CryptoGetInfoQuery
class CryptoGetInfoResponse extends $pb.GeneratedMessage {
  factory CryptoGetInfoResponse({
    $2.ResponseHeader? header,
    CryptoGetInfoResponse_AccountInfo? accountInfo,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountInfo != null) result.accountInfo = accountInfo;
    return result;
  }

  CryptoGetInfoResponse._();

  factory CryptoGetInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<CryptoGetInfoResponse_AccountInfo>(
        2, _omitFieldNames ? '' : 'accountInfo',
        protoName: 'accountInfo',
        subBuilder: CryptoGetInfoResponse_AccountInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetInfoResponse copyWith(
          void Function(CryptoGetInfoResponse) updates) =>
      super.copyWith((message) => updates(message as CryptoGetInfoResponse))
          as CryptoGetInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetInfoResponse create() => CryptoGetInfoResponse._();
  @$core.override
  CryptoGetInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetInfoResponse>(create);
  static CryptoGetInfoResponse? _defaultInstance;

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
  CryptoGetInfoResponse_AccountInfo get accountInfo => $_getN(1);
  @$pb.TagNumber(2)
  set accountInfo(CryptoGetInfoResponse_AccountInfo value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  CryptoGetInfoResponse_AccountInfo ensureAccountInfo() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
