// This is a generated file - do not edit.
//
// Generated from contract_update.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $3;

import 'basic_types.pb.dart' as $0;
import 'duration.pb.dart' as $2;
import 'timestamp.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum ContractUpdateTransactionBody_MemoField { memo, memoWrapper, notSet }

enum ContractUpdateTransactionBody_StakedId {
  stakedAccountId,
  stakedNodeId,
  notSet
}

/// *
///  Modify the current state of a smart contract.
///
///  ### Requirements
///  - The `adminKey` MUST sign all contract update transactions except one
///    that only updates the `expirationTime`.
///  - A transaction that modifies any field other than `expirationTime` for
///    a contract without a valid `adminKey` set SHALL fail with response
///    code `MODIFYING_IMMUTABLE_CONTRACT`.
///  - Fields set to non-default values in this transaction SHALL be updated on
///    success. Fields not set to non-default values SHALL NOT be
///    updated on success.
///
///  ### Block Stream Effects
///  None
class ContractUpdateTransactionBody extends $pb.GeneratedMessage {
  factory ContractUpdateTransactionBody({
    $0.ContractID? contractID,
    $1.Timestamp? expirationTime,
    $0.Key? adminKey,
    @$core.Deprecated('This field is deprecated.') $0.AccountID? proxyAccountID,
    $2.Duration? autoRenewPeriod,
    @$core.Deprecated('This field is deprecated.') $0.FileID? fileID,
    @$core.Deprecated('This field is deprecated.') $core.String? memo,
    $3.StringValue? memoWrapper,
    $3.Int32Value? maxAutomaticTokenAssociations,
    $0.AccountID? autoRenewAccountId,
    $0.AccountID? stakedAccountId,
    $fixnum.Int64? stakedNodeId,
    $3.BoolValue? declineReward,
  }) {
    final result = create();
    if (contractID != null) result.contractID = contractID;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (adminKey != null) result.adminKey = adminKey;
    if (proxyAccountID != null) result.proxyAccountID = proxyAccountID;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (fileID != null) result.fileID = fileID;
    if (memo != null) result.memo = memo;
    if (memoWrapper != null) result.memoWrapper = memoWrapper;
    if (maxAutomaticTokenAssociations != null)
      result.maxAutomaticTokenAssociations = maxAutomaticTokenAssociations;
    if (autoRenewAccountId != null)
      result.autoRenewAccountId = autoRenewAccountId;
    if (stakedAccountId != null) result.stakedAccountId = stakedAccountId;
    if (stakedNodeId != null) result.stakedNodeId = stakedNodeId;
    if (declineReward != null) result.declineReward = declineReward;
    return result;
  }

  ContractUpdateTransactionBody._();

  factory ContractUpdateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractUpdateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ContractUpdateTransactionBody_MemoField>
      _ContractUpdateTransactionBody_MemoFieldByTag = {
    9: ContractUpdateTransactionBody_MemoField.memo,
    10: ContractUpdateTransactionBody_MemoField.memoWrapper,
    0: ContractUpdateTransactionBody_MemoField.notSet
  };
  static const $core.Map<$core.int, ContractUpdateTransactionBody_StakedId>
      _ContractUpdateTransactionBody_StakedIdByTag = {
    13: ContractUpdateTransactionBody_StakedId.stakedAccountId,
    14: ContractUpdateTransactionBody_StakedId.stakedNodeId,
    0: ContractUpdateTransactionBody_StakedId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractUpdateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [9, 10])
    ..oo(1, [13, 14])
    ..aOM<$0.ContractID>(1, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $0.ContractID.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $1.Timestamp.create)
    ..aOM<$0.Key>(3, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $0.Key.create)
    ..aOM<$0.AccountID>(6, _omitFieldNames ? '' : 'proxyAccountID',
        protoName: 'proxyAccountID', subBuilder: $0.AccountID.create)
    ..aOM<$2.Duration>(7, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $2.Duration.create)
    ..aOM<$0.FileID>(8, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $0.FileID.create)
    ..aOS(9, _omitFieldNames ? '' : 'memo')
    ..aOM<$3.StringValue>(10, _omitFieldNames ? '' : 'memoWrapper',
        protoName: 'memoWrapper', subBuilder: $3.StringValue.create)
    ..aOM<$3.Int32Value>(
        11, _omitFieldNames ? '' : 'maxAutomaticTokenAssociations',
        subBuilder: $3.Int32Value.create)
    ..aOM<$0.AccountID>(12, _omitFieldNames ? '' : 'autoRenewAccountId',
        subBuilder: $0.AccountID.create)
    ..aOM<$0.AccountID>(13, _omitFieldNames ? '' : 'stakedAccountId',
        subBuilder: $0.AccountID.create)
    ..aInt64(14, _omitFieldNames ? '' : 'stakedNodeId')
    ..aOM<$3.BoolValue>(15, _omitFieldNames ? '' : 'declineReward',
        subBuilder: $3.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractUpdateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractUpdateTransactionBody copyWith(
          void Function(ContractUpdateTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as ContractUpdateTransactionBody))
          as ContractUpdateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractUpdateTransactionBody create() =>
      ContractUpdateTransactionBody._();
  @$core.override
  ContractUpdateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractUpdateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractUpdateTransactionBody>(create);
  static ContractUpdateTransactionBody? _defaultInstance;

  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  ContractUpdateTransactionBody_MemoField whichMemoField() =>
      _ContractUpdateTransactionBody_MemoFieldByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  void clearMemoField() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  ContractUpdateTransactionBody_StakedId whichStakedId() =>
      _ContractUpdateTransactionBody_StakedIdByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  void clearStakedId() => $_clearField($_whichOneof(1));

  /// *
  ///  The contact ID that identifies the smart contract to be updated.<br/>
  ///  This field MUST be set, and MUST NOT be a default ID (`0.0.0`).
  @$pb.TagNumber(1)
  $0.ContractID get contractID => $_getN(0);
  @$pb.TagNumber(1)
  set contractID($0.ContractID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasContractID() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ContractID ensureContractID() => $_ensure(0);

  /// *
  ///  If set, modify the time at which this contract will expire.<br/>
  ///  An expired contract requires a rent payment to "renew" the contract.
  ///  A transaction to update this field is how that rent payment is made.
  ///  <p>
  ///  This value MUST NOT be less than the current `expirationTime`
  ///  of the contract. If this value is earlier than the current
  ///  value, the transaction SHALL fail with response
  ///  code `EXPIRATION_REDUCTION_NOT_ALLOWED`.
  @$pb.TagNumber(2)
  $1.Timestamp get expirationTime => $_getN(1);
  @$pb.TagNumber(2)
  set expirationTime($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExpirationTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpirationTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureExpirationTime() => $_ensure(1);

  /// *
  ///  If set, modify the key that authorizes updates to the contract.
  ///  <p>
  ///  If this field is set to a valid Key, this key and the previously set key
  ///  MUST both sign this transaction.<br/>
  ///  If this value is an empty `KeyList`, the prior key MUST sign this
  ///  transaction, and the smart contract SHALL be immutable after this
  ///  transaction completes, except for expiration and renewal.<br/>
  ///  If this value is not an empty `KeyList`, but does not contain any
  ///  cryptographic keys, or is otherwise malformed, this transaction SHALL
  ///  fail with response code `INVALID_ADMIN_KEY`.
  @$pb.TagNumber(3)
  $0.Key get adminKey => $_getN(2);
  @$pb.TagNumber(3)
  set adminKey($0.Key value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAdminKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdminKey() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Key ensureAdminKey() => $_ensure(2);

  /// *
  ///  Replaced with `staked_id` alternatives.
  ///  This field is unused and SHALL NOT modify the contract state.<br/>
  ///  The id of an account to which the contract is proxy staked
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $0.AccountID get proxyAccountID => $_getN(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set proxyAccountID($0.AccountID value) => $_setField(6, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasProxyAccountID() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearProxyAccountID() => $_clearField(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $0.AccountID ensureProxyAccountID() => $_ensure(3);

  /// *
  ///  If set, modify the duration added to expiration time by each
  ///  auto-renewal to this value.
  @$pb.TagNumber(7)
  $2.Duration get autoRenewPeriod => $_getN(4);
  @$pb.TagNumber(7)
  set autoRenewPeriod($2.Duration value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAutoRenewPeriod() => $_has(4);
  @$pb.TagNumber(7)
  void clearAutoRenewPeriod() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.Duration ensureAutoRenewPeriod() => $_ensure(4);

  /// *
  ///  This field is unused and SHALL NOT modify the contract state.<br/>
  ///  Previously, an ID of a file containing the bytecode of the Solidity
  ///  transaction that created this contract.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  $0.FileID get fileID => $_getN(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  set fileID($0.FileID value) => $_setField(8, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  $core.bool hasFileID() => $_has(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  void clearFileID() => $_clearField(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  $0.FileID ensureFileID() => $_ensure(5);

  /// *
  ///  This value could not accurately distinguish unset or deliberately
  ///  empty. memoWrapper should be used instead.<br/>
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $core.String get memo => $_getSZ(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  set memo($core.String value) => $_setString(6, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $core.bool hasMemo() => $_has(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  void clearMemo() => $_clearField(9);

  /// *
  ///  If set, modify the short memo for this smart contract.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(10)
  $3.StringValue get memoWrapper => $_getN(7);
  @$pb.TagNumber(10)
  set memoWrapper($3.StringValue value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasMemoWrapper() => $_has(7);
  @$pb.TagNumber(10)
  void clearMemoWrapper() => $_clearField(10);
  @$pb.TagNumber(10)
  $3.StringValue ensureMemoWrapper() => $_ensure(7);

  /// *
  ///  If set, modify the maximum number of tokens that can be auto-associated with the
  ///  contract.
  ///  <p>
  ///  If this is set and less than or equal to `used_auto_associations`, or 0, then this contract
  ///  MUST manually associate with a token before transacting in that token.<br/>
  ///  This value MAY also be `-1` to indicate no limit.<br/>
  ///  This value MUST NOT be less than `-1`.
  @$pb.TagNumber(11)
  $3.Int32Value get maxAutomaticTokenAssociations => $_getN(8);
  @$pb.TagNumber(11)
  set maxAutomaticTokenAssociations($3.Int32Value value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasMaxAutomaticTokenAssociations() => $_has(8);
  @$pb.TagNumber(11)
  void clearMaxAutomaticTokenAssociations() => $_clearField(11);
  @$pb.TagNumber(11)
  $3.Int32Value ensureMaxAutomaticTokenAssociations() => $_ensure(8);

  /// *
  ///  If set, modify the account, in the same shard and realm as this smart
  ///  contract, that has agreed to allow the network to use its balance, when
  ///  needed, to automatically extend this contract's expiration time.
  ///  <p>
  ///  If this field is set to a non-default value, that Account MUST sign this
  ///  transaction.<br/>
  ///  If this field is set to a default AccountID value (`0.0.0`), any
  ///  pre-existing `auto_renew_account_id` value SHALL be removed on success.
  @$pb.TagNumber(12)
  $0.AccountID get autoRenewAccountId => $_getN(9);
  @$pb.TagNumber(12)
  set autoRenewAccountId($0.AccountID value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAutoRenewAccountId() => $_has(9);
  @$pb.TagNumber(12)
  void clearAutoRenewAccountId() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.AccountID ensureAutoRenewAccountId() => $_ensure(9);

  /// *
  ///  An account identifier.<br/>
  ///  A staked account acts as a proxy, and this contract effectively
  ///  nominates the same node as the identified account.
  ///  <p>
  ///  If set, modify this smart contract such that it SHALL stake its HBAR
  ///  to the same node as the identified account.<br/>
  ///  If this field is set to a default AccountID value (`0.0.0`), any
  ///  pre-existing `staked_account_id` value SHALL be removed on success.
  @$pb.TagNumber(13)
  $0.AccountID get stakedAccountId => $_getN(10);
  @$pb.TagNumber(13)
  set stakedAccountId($0.AccountID value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasStakedAccountId() => $_has(10);
  @$pb.TagNumber(13)
  void clearStakedAccountId() => $_clearField(13);
  @$pb.TagNumber(13)
  $0.AccountID ensureStakedAccountId() => $_ensure(10);

  /// *
  ///  A node identifier.<br/>
  ///  A staked node identifier indicates the consensus node that this
  ///  account nominates for staking.
  ///  <p>
  ///  If set, modify this smart contract such that it SHALL stake its HBAR
  ///  to this node.
  ///  If set to a the value `-1` any pre-existing `staked_node_id` value
  ///  SHALL be removed on success.
  ///  <p>
  ///  <blockquote>Note: node IDs do fluctuate as node operators change.
  ///  Most contracts are immutable, and a contract staking to an invalid
  ///  node ID SHALL NOT participate in staking. Immutable contracts may
  ///  find it more reliable to use a proxy account for staking (via
  ///  `staked_account_id`) to enable updating the _effective_ staking node
  ///  ID when necessary through updating the proxy account.</blockquote>
  @$pb.TagNumber(14)
  $fixnum.Int64 get stakedNodeId => $_getI64(11);
  @$pb.TagNumber(14)
  set stakedNodeId($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(14)
  $core.bool hasStakedNodeId() => $_has(11);
  @$pb.TagNumber(14)
  void clearStakedNodeId() => $_clearField(14);

  /// *
  ///  A flag indicating if staking rewards are declined.<br/>
  ///  If set, modify the flag indicating if this contract declines to accept
  ///  rewards for staking its HBAR to secure the network.
  ///  <p>
  ///  If set to true, this smart contract SHALL NOT receive any reward for
  ///  staking its HBAR balance to help secure the network, regardless of
  ///  staking configuration, but MAY stake HBAR to support the network
  ///  without reward.
  @$pb.TagNumber(15)
  $3.BoolValue get declineReward => $_getN(12);
  @$pb.TagNumber(15)
  set declineReward($3.BoolValue value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasDeclineReward() => $_has(12);
  @$pb.TagNumber(15)
  void clearDeclineReward() => $_clearField(15);
  @$pb.TagNumber(15)
  $3.BoolValue ensureDeclineReward() => $_ensure(12);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
