// This is a generated file - do not edit.
//
// Generated from crypto_create.proto.

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
import 'duration.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum CryptoCreateTransactionBody_StakedId {
  stakedAccountId,
  stakedNodeId,
  notSet
}

///
///  Create a new account.
///
///  If the auto_renew_account field is set, the key of the referenced account
///  MUST sign this transaction.<br/>
///  Current limitations REQUIRE that `shardID` and `realmID` both MUST be `0`.
///  This is expected to change in the future.
///
///  ### Block Stream Effects
///  The newly created account SHALL be included in State Changes.
class CryptoCreateTransactionBody extends $pb.GeneratedMessage {
  factory CryptoCreateTransactionBody({
    $0.Key? key,
    $fixnum.Int64? initialBalance,
    @$core.Deprecated('This field is deprecated.') $0.AccountID? proxyAccountID,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? sendRecordThreshold,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? receiveRecordThreshold,
    $core.bool? receiverSigRequired,
    $1.Duration? autoRenewPeriod,
    $0.ShardID? shardID,
    $0.RealmID? realmID,
    @$core.Deprecated('This field is deprecated.') $0.Key? newRealmAdminKey,
    $core.String? memo,
    $core.int? maxAutomaticTokenAssociations,
    $0.AccountID? stakedAccountId,
    $fixnum.Int64? stakedNodeId,
    $core.bool? declineReward,
    $core.List<$core.int>? alias,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (initialBalance != null) result.initialBalance = initialBalance;
    if (proxyAccountID != null) result.proxyAccountID = proxyAccountID;
    if (sendRecordThreshold != null)
      result.sendRecordThreshold = sendRecordThreshold;
    if (receiveRecordThreshold != null)
      result.receiveRecordThreshold = receiveRecordThreshold;
    if (receiverSigRequired != null)
      result.receiverSigRequired = receiverSigRequired;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (shardID != null) result.shardID = shardID;
    if (realmID != null) result.realmID = realmID;
    if (newRealmAdminKey != null) result.newRealmAdminKey = newRealmAdminKey;
    if (memo != null) result.memo = memo;
    if (maxAutomaticTokenAssociations != null)
      result.maxAutomaticTokenAssociations = maxAutomaticTokenAssociations;
    if (stakedAccountId != null) result.stakedAccountId = stakedAccountId;
    if (stakedNodeId != null) result.stakedNodeId = stakedNodeId;
    if (declineReward != null) result.declineReward = declineReward;
    if (alias != null) result.alias = alias;
    return result;
  }

  CryptoCreateTransactionBody._();

  factory CryptoCreateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoCreateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CryptoCreateTransactionBody_StakedId>
      _CryptoCreateTransactionBody_StakedIdByTag = {
    15: CryptoCreateTransactionBody_StakedId.stakedAccountId,
    16: CryptoCreateTransactionBody_StakedId.stakedNodeId,
    0: CryptoCreateTransactionBody_StakedId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoCreateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [15, 16])
    ..aOM<$0.Key>(1, _omitFieldNames ? '' : 'key', subBuilder: $0.Key.create)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'initialBalance', $pb.PbFieldType.OU6,
        protoName: 'initialBalance', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.AccountID>(3, _omitFieldNames ? '' : 'proxyAccountID',
        protoName: 'proxyAccountID', subBuilder: $0.AccountID.create)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'sendRecordThreshold', $pb.PbFieldType.OU6,
        protoName: 'sendRecordThreshold', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'receiveRecordThreshold', $pb.PbFieldType.OU6,
        protoName: 'receiveRecordThreshold', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(8, _omitFieldNames ? '' : 'receiverSigRequired',
        protoName: 'receiverSigRequired')
    ..aOM<$1.Duration>(9, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $1.Duration.create)
    ..aOM<$0.ShardID>(10, _omitFieldNames ? '' : 'shardID',
        protoName: 'shardID', subBuilder: $0.ShardID.create)
    ..aOM<$0.RealmID>(11, _omitFieldNames ? '' : 'realmID',
        protoName: 'realmID', subBuilder: $0.RealmID.create)
    ..aOM<$0.Key>(12, _omitFieldNames ? '' : 'newRealmAdminKey',
        protoName: 'newRealmAdminKey', subBuilder: $0.Key.create)
    ..aOS(13, _omitFieldNames ? '' : 'memo')
    ..aI(14, _omitFieldNames ? '' : 'maxAutomaticTokenAssociations')
    ..aOM<$0.AccountID>(15, _omitFieldNames ? '' : 'stakedAccountId',
        subBuilder: $0.AccountID.create)
    ..aInt64(16, _omitFieldNames ? '' : 'stakedNodeId')
    ..aOB(17, _omitFieldNames ? '' : 'declineReward')
    ..a<$core.List<$core.int>>(
        18, _omitFieldNames ? '' : 'alias', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoCreateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoCreateTransactionBody copyWith(
          void Function(CryptoCreateTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as CryptoCreateTransactionBody))
          as CryptoCreateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoCreateTransactionBody create() =>
      CryptoCreateTransactionBody._();
  @$core.override
  CryptoCreateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoCreateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoCreateTransactionBody>(create);
  static CryptoCreateTransactionBody? _defaultInstance;

  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  CryptoCreateTransactionBody_StakedId whichStakedId() =>
      _CryptoCreateTransactionBody_StakedIdByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  void clearStakedId() => $_clearField($_whichOneof(0));

  /// *
  ///  The identifying key for this account.
  ///  This key represents the account owner, and is required for most actions
  ///  involving this account that do not modify the account itself. This key
  ///  may also identify the account for smart contracts.
  ///  <p>
  ///  This field is REQUIRED.
  ///  This `Key` MUST NOT be an empty `KeyList` and MUST contain at least one
  ///  "primitive" (i.e. cryptographic) key value.
  @$pb.TagNumber(1)
  $0.Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($0.Key value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Key ensureKey() => $_ensure(0);

  /// *
  ///  An amount, in tinybar, to deposit to the newly created account.
  ///  <p>
  ///  The deposited amount SHALL be debited to the "payer" account for this
  ///  transaction.
  @$pb.TagNumber(2)
  $fixnum.Int64 get initialBalance => $_getI64(1);
  @$pb.TagNumber(2)
  set initialBalance($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasInitialBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearInitialBalance() => $_clearField(2);

  /// *
  ///  Use `staked_id` instead.<br/>
  ///  An account identifier for a staking proxy.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $0.AccountID get proxyAccountID => $_getN(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set proxyAccountID($0.AccountID value) => $_setField(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasProxyAccountID() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearProxyAccountID() => $_clearField(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $0.AccountID ensureProxyAccountID() => $_ensure(2);

  /// *
  ///  Removed prior to the first available history, and may be related to an
  ///  early design dead-end.<br/>
  ///  An amount below which record stream records would not be created for
  ///  a transaction that reduces this account balance.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $fixnum.Int64 get sendRecordThreshold => $_getI64(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set sendRecordThreshold($fixnum.Int64 value) => $_setInt64(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasSendRecordThreshold() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearSendRecordThreshold() => $_clearField(6);

  /// *
  ///  Removed prior to the first available history, and may be related to an
  ///  early design dead-end.<br/>
  ///  An amount below which record stream records would not be created for
  ///  a transaction that increases this account balance.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $fixnum.Int64 get receiveRecordThreshold => $_getI64(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  set receiveRecordThreshold($fixnum.Int64 value) => $_setInt64(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $core.bool hasReceiveRecordThreshold() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  void clearReceiveRecordThreshold() => $_clearField(7);

  /// *
  ///  A flag indicating the account holder must authorize all incoming
  ///  token transfers.
  ///  <p>
  ///  If this flag is set then any transaction that would result in adding
  ///  hbar or other tokens to this account balance MUST be signed by the
  ///  identifying key of this account (that is, the `key` field).<br/>
  ///  If this flag is set, then the account key (`key` field) MUST sign
  ///  this create transaction, in addition to the transaction payer.
  @$pb.TagNumber(8)
  $core.bool get receiverSigRequired => $_getBF(5);
  @$pb.TagNumber(8)
  set receiverSigRequired($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(8)
  $core.bool hasReceiverSigRequired() => $_has(5);
  @$pb.TagNumber(8)
  void clearReceiverSigRequired() => $_clearField(8);

  /// *
  ///  The duration between account automatic renewals.<br/>
  ///  All entities in state may be charged "rent" occasionally (typically
  ///  every 90 days) to prevent unnecessary growth of the ledger. This value
  ///  sets the interval between such events for this account.
  ///  <p>
  ///  If the account balance (in HBAR) is insufficient to pay the full renewal
  ///  fee, the entire HBAR balance SHALL be consumed and the expiration for
  ///  the account SHALL be extended as far as the available balance can
  ///  support.<br/>
  ///  If the account HBAR balance is `0` when the account must be renewed, then
  ///  the account SHALL be deleted, and subsequently removed from state.
  @$pb.TagNumber(9)
  $1.Duration get autoRenewPeriod => $_getN(6);
  @$pb.TagNumber(9)
  set autoRenewPeriod($1.Duration value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAutoRenewPeriod() => $_has(6);
  @$pb.TagNumber(9)
  void clearAutoRenewPeriod() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.Duration ensureAutoRenewPeriod() => $_ensure(6);

  /// *
  ///  The shard in which this account is created
  ///  <p>
  ///  Currently, this MUST be `0`.<br/>
  ///  If the desired shard is `0`, this SHOULD NOT be set.
  @$pb.TagNumber(10)
  $0.ShardID get shardID => $_getN(7);
  @$pb.TagNumber(10)
  set shardID($0.ShardID value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasShardID() => $_has(7);
  @$pb.TagNumber(10)
  void clearShardID() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.ShardID ensureShardID() => $_ensure(7);

  /// *
  ///  The realm in which this account is created.
  ///  <p>
  ///  The shard number for this realm MUST match the value in `shardID`.<br/>
  ///  Currently, this MUST be `0` for both fields.<br/>
  ///  If the desired realm is `0`, this SHOULD NOT be set.
  @$pb.TagNumber(11)
  $0.RealmID get realmID => $_getN(8);
  @$pb.TagNumber(11)
  set realmID($0.RealmID value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasRealmID() => $_has(8);
  @$pb.TagNumber(11)
  void clearRealmID() => $_clearField(11);
  @$pb.TagNumber(11)
  $0.RealmID ensureRealmID() => $_ensure(8);

  /// *
  ///  This field was never actually used or enabled, and is not expected to
  ///  ever be used in the future.<br/>
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $0.Key get newRealmAdminKey => $_getN(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  set newRealmAdminKey($0.Key value) => $_setField(12, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.bool hasNewRealmAdminKey() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  void clearNewRealmAdminKey() => $_clearField(12);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $0.Key ensureNewRealmAdminKey() => $_ensure(9);

  /// *
  ///  A short description of this Account.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(13)
  $core.String get memo => $_getSZ(10);
  @$pb.TagNumber(13)
  set memo($core.String value) => $_setString(10, value);
  @$pb.TagNumber(13)
  $core.bool hasMemo() => $_has(10);
  @$pb.TagNumber(13)
  void clearMemo() => $_clearField(13);

  /// *
  ///  A maximum number of tokens that can be auto-associated
  ///  with this account.<br/>
  ///  By default this value is 0 for all accounts except for automatically
  ///  created accounts (e.g. smart contracts), which default to -1.
  ///  <p>
  ///  If this value is `0`, then this account MUST manually associate to
  ///  a token before holding or transacting in that token.<br/>
  ///  This value MAY also be `-1` to indicate no limit.<br/>
  ///  This value MUST NOT be less than `-1`.
  @$pb.TagNumber(14)
  $core.int get maxAutomaticTokenAssociations => $_getIZ(11);
  @$pb.TagNumber(14)
  set maxAutomaticTokenAssociations($core.int value) =>
      $_setSignedInt32(11, value);
  @$pb.TagNumber(14)
  $core.bool hasMaxAutomaticTokenAssociations() => $_has(11);
  @$pb.TagNumber(14)
  void clearMaxAutomaticTokenAssociations() => $_clearField(14);

  /// *
  ///  ID of the account to which this account is staking its balances.
  ///  <p>
  ///  If this account is not currently staking its balances, then this
  ///  field, if set, MUST be the sentinel value of `0.0.0`.
  @$pb.TagNumber(15)
  $0.AccountID get stakedAccountId => $_getN(12);
  @$pb.TagNumber(15)
  set stakedAccountId($0.AccountID value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasStakedAccountId() => $_has(12);
  @$pb.TagNumber(15)
  void clearStakedAccountId() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.AccountID ensureStakedAccountId() => $_ensure(12);

  /// *
  ///  ID of the node this account is staked to.
  ///  <p>
  ///  If this account is not currently staking its balances, then this
  ///  field, if set, SHALL be the sentinel value of `-1`.<br/>
  ///  Wallet software SHOULD surface staking issues to users and provide a
  ///  simple mechanism to update staking to a new node ID in the event the
  ///  prior staked node ID ceases to be valid.
  @$pb.TagNumber(16)
  $fixnum.Int64 get stakedNodeId => $_getI64(13);
  @$pb.TagNumber(16)
  set stakedNodeId($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(16)
  $core.bool hasStakedNodeId() => $_has(13);
  @$pb.TagNumber(16)
  void clearStakedNodeId() => $_clearField(16);

  /// *
  ///  A boolean indicating that this account has chosen to decline rewards for
  ///  staking its balances.
  ///  <p>
  ///  This account MAY still stake its balances, but SHALL NOT receive reward
  ///  payments for doing so, if this value is set.
  @$pb.TagNumber(17)
  $core.bool get declineReward => $_getBF(14);
  @$pb.TagNumber(17)
  set declineReward($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(17)
  $core.bool hasDeclineReward() => $_has(14);
  @$pb.TagNumber(17)
  void clearDeclineReward() => $_clearField(17);

  /// *
  ///  Bytes to be used as the account's alias.
  ///  <p>
  ///  This value, if set, MUST be one of the following values<br/>
  ///  <ul>
  ///    <li>The 32-byte serialized form of the ED25519 account key.</li>
  ///    <li>The 33-byte _compressed_ serialized form of the ECDSA(secp256k1)
  ///        account key.</li>
  ///    <li>The 20-byte EVM address derived from a keccak-256 hash of the
  ///        ECDSA(secp256k1) account key</li>
  ///  </ul>
  ///  All aliases within the network MUST be unique. If this value matches an
  ///  existing account alias, this `create` transaction SHALL fail.<br/>
  ///  If an account exists with a particular alias value, any transaction to
  ///  transfer value _to_ that alias SHALL deposit the transferred value in
  ///  the existing account, and SHALL NOT assess an account creation fee.<br/>
  ///  Once set, an account alias is immutable and MUST NOT be changed.
  @$pb.TagNumber(18)
  $core.List<$core.int> get alias => $_getN(15);
  @$pb.TagNumber(18)
  set alias($core.List<$core.int> value) => $_setBytes(15, value);
  @$pb.TagNumber(18)
  $core.bool hasAlias() => $_has(15);
  @$pb.TagNumber(18)
  void clearAlias() => $_clearField(18);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
