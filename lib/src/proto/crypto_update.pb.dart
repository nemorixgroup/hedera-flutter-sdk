// This is a generated file - do not edit.
//
// Generated from crypto_update.proto.

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
import 'duration.pb.dart' as $1;
import 'timestamp.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum CryptoUpdateTransactionBody_SendRecordThresholdField {
  sendRecordThreshold,
  sendRecordThresholdWrapper,
  notSet
}

enum CryptoUpdateTransactionBody_ReceiveRecordThresholdField {
  receiveRecordThreshold,
  receiveRecordThresholdWrapper,
  notSet
}

enum CryptoUpdateTransactionBody_ReceiverSigRequiredField {
  receiverSigRequired,
  receiverSigRequiredWrapper,
  notSet
}

enum CryptoUpdateTransactionBody_StakedId {
  stakedAccountId,
  stakedNodeId,
  notSet
}

/// *
///  Modify the current state of an account.
///
///  ### Requirements
///  - The `key` for this account MUST sign all account update transactions.
///  - If the `key` field is set for this transaction, then _both_ the current
///    `key` and the new `key` MUST sign this transaction, for security and to
///    prevent setting the `key` field to an invalid value.
///  - If the `auto_renew_account` field is set for this transaction, the account
///    identified in that field MUST sign this transaction.
///  - Fields set to non-default values in this transaction SHALL be updated on
///    success. Fields not set to non-default values SHALL NOT be
///    updated on success.
///  - All fields that may be modified in this transaction SHALL have a
///    default value of unset (a.k.a. `null`).
///
///  ### Block Stream Effects
///  None
class CryptoUpdateTransactionBody extends $pb.GeneratedMessage {
  factory CryptoUpdateTransactionBody({
    $0.AccountID? accountIDToUpdate,
    $0.Key? key,
    @$core.Deprecated('This field is deprecated.') $0.AccountID? proxyAccountID,
    @$core.Deprecated('This field is deprecated.') $core.int? proxyFraction,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? sendRecordThreshold,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? receiveRecordThreshold,
    $1.Duration? autoRenewPeriod,
    $2.Timestamp? expirationTime,
    @$core.Deprecated('This field is deprecated.')
    $core.bool? receiverSigRequired,
    @$core.Deprecated('This field is deprecated.')
    $3.UInt64Value? sendRecordThresholdWrapper,
    @$core.Deprecated('This field is deprecated.')
    $3.UInt64Value? receiveRecordThresholdWrapper,
    $3.BoolValue? receiverSigRequiredWrapper,
    $3.StringValue? memo,
    $3.Int32Value? maxAutomaticTokenAssociations,
    $0.AccountID? stakedAccountId,
    $fixnum.Int64? stakedNodeId,
    $3.BoolValue? declineReward,
  }) {
    final result = create();
    if (accountIDToUpdate != null) result.accountIDToUpdate = accountIDToUpdate;
    if (key != null) result.key = key;
    if (proxyAccountID != null) result.proxyAccountID = proxyAccountID;
    if (proxyFraction != null) result.proxyFraction = proxyFraction;
    if (sendRecordThreshold != null)
      result.sendRecordThreshold = sendRecordThreshold;
    if (receiveRecordThreshold != null)
      result.receiveRecordThreshold = receiveRecordThreshold;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (receiverSigRequired != null)
      result.receiverSigRequired = receiverSigRequired;
    if (sendRecordThresholdWrapper != null)
      result.sendRecordThresholdWrapper = sendRecordThresholdWrapper;
    if (receiveRecordThresholdWrapper != null)
      result.receiveRecordThresholdWrapper = receiveRecordThresholdWrapper;
    if (receiverSigRequiredWrapper != null)
      result.receiverSigRequiredWrapper = receiverSigRequiredWrapper;
    if (memo != null) result.memo = memo;
    if (maxAutomaticTokenAssociations != null)
      result.maxAutomaticTokenAssociations = maxAutomaticTokenAssociations;
    if (stakedAccountId != null) result.stakedAccountId = stakedAccountId;
    if (stakedNodeId != null) result.stakedNodeId = stakedNodeId;
    if (declineReward != null) result.declineReward = declineReward;
    return result;
  }

  CryptoUpdateTransactionBody._();

  factory CryptoUpdateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoUpdateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core
      .Map<$core.int, CryptoUpdateTransactionBody_SendRecordThresholdField>
      _CryptoUpdateTransactionBody_SendRecordThresholdFieldByTag = {
    6: CryptoUpdateTransactionBody_SendRecordThresholdField.sendRecordThreshold,
    11: CryptoUpdateTransactionBody_SendRecordThresholdField
        .sendRecordThresholdWrapper,
    0: CryptoUpdateTransactionBody_SendRecordThresholdField.notSet
  };
  static const $core
      .Map<$core.int, CryptoUpdateTransactionBody_ReceiveRecordThresholdField>
      _CryptoUpdateTransactionBody_ReceiveRecordThresholdFieldByTag = {
    7: CryptoUpdateTransactionBody_ReceiveRecordThresholdField
        .receiveRecordThreshold,
    12: CryptoUpdateTransactionBody_ReceiveRecordThresholdField
        .receiveRecordThresholdWrapper,
    0: CryptoUpdateTransactionBody_ReceiveRecordThresholdField.notSet
  };
  static const $core
      .Map<$core.int, CryptoUpdateTransactionBody_ReceiverSigRequiredField>
      _CryptoUpdateTransactionBody_ReceiverSigRequiredFieldByTag = {
    10: CryptoUpdateTransactionBody_ReceiverSigRequiredField
        .receiverSigRequired,
    13: CryptoUpdateTransactionBody_ReceiverSigRequiredField
        .receiverSigRequiredWrapper,
    0: CryptoUpdateTransactionBody_ReceiverSigRequiredField.notSet
  };
  static const $core.Map<$core.int, CryptoUpdateTransactionBody_StakedId>
      _CryptoUpdateTransactionBody_StakedIdByTag = {
    16: CryptoUpdateTransactionBody_StakedId.stakedAccountId,
    17: CryptoUpdateTransactionBody_StakedId.stakedNodeId,
    0: CryptoUpdateTransactionBody_StakedId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoUpdateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [6, 11])
    ..oo(1, [7, 12])
    ..oo(2, [10, 13])
    ..oo(3, [16, 17])
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'accountIDToUpdate',
        protoName: 'accountIDToUpdate', subBuilder: $0.AccountID.create)
    ..aOM<$0.Key>(3, _omitFieldNames ? '' : 'key', subBuilder: $0.Key.create)
    ..aOM<$0.AccountID>(4, _omitFieldNames ? '' : 'proxyAccountID',
        protoName: 'proxyAccountID', subBuilder: $0.AccountID.create)
    ..aI(5, _omitFieldNames ? '' : 'proxyFraction', protoName: 'proxyFraction')
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'sendRecordThreshold', $pb.PbFieldType.OU6,
        protoName: 'sendRecordThreshold', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'receiveRecordThreshold', $pb.PbFieldType.OU6,
        protoName: 'receiveRecordThreshold', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.Duration>(8, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $1.Duration.create)
    ..aOM<$2.Timestamp>(9, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $2.Timestamp.create)
    ..aOB(10, _omitFieldNames ? '' : 'receiverSigRequired',
        protoName: 'receiverSigRequired')
    ..aOM<$3.UInt64Value>(
        11, _omitFieldNames ? '' : 'sendRecordThresholdWrapper',
        protoName: 'sendRecordThresholdWrapper',
        subBuilder: $3.UInt64Value.create)
    ..aOM<$3.UInt64Value>(
        12, _omitFieldNames ? '' : 'receiveRecordThresholdWrapper',
        protoName: 'receiveRecordThresholdWrapper',
        subBuilder: $3.UInt64Value.create)
    ..aOM<$3.BoolValue>(13, _omitFieldNames ? '' : 'receiverSigRequiredWrapper',
        protoName: 'receiverSigRequiredWrapper',
        subBuilder: $3.BoolValue.create)
    ..aOM<$3.StringValue>(14, _omitFieldNames ? '' : 'memo',
        subBuilder: $3.StringValue.create)
    ..aOM<$3.Int32Value>(
        15, _omitFieldNames ? '' : 'maxAutomaticTokenAssociations',
        subBuilder: $3.Int32Value.create)
    ..aOM<$0.AccountID>(16, _omitFieldNames ? '' : 'stakedAccountId',
        subBuilder: $0.AccountID.create)
    ..aInt64(17, _omitFieldNames ? '' : 'stakedNodeId')
    ..aOM<$3.BoolValue>(18, _omitFieldNames ? '' : 'declineReward',
        subBuilder: $3.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoUpdateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoUpdateTransactionBody copyWith(
          void Function(CryptoUpdateTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as CryptoUpdateTransactionBody))
          as CryptoUpdateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoUpdateTransactionBody create() =>
      CryptoUpdateTransactionBody._();
  @$core.override
  CryptoUpdateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoUpdateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoUpdateTransactionBody>(create);
  static CryptoUpdateTransactionBody? _defaultInstance;

  @$pb.TagNumber(6)
  @$pb.TagNumber(11)
  CryptoUpdateTransactionBody_SendRecordThresholdField
      whichSendRecordThresholdField() =>
          _CryptoUpdateTransactionBody_SendRecordThresholdFieldByTag[
              $_whichOneof(0)]!;
  @$pb.TagNumber(6)
  @$pb.TagNumber(11)
  void clearSendRecordThresholdField() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(7)
  @$pb.TagNumber(12)
  CryptoUpdateTransactionBody_ReceiveRecordThresholdField
      whichReceiveRecordThresholdField() =>
          _CryptoUpdateTransactionBody_ReceiveRecordThresholdFieldByTag[
              $_whichOneof(1)]!;
  @$pb.TagNumber(7)
  @$pb.TagNumber(12)
  void clearReceiveRecordThresholdField() => $_clearField($_whichOneof(1));

  @$pb.TagNumber(10)
  @$pb.TagNumber(13)
  CryptoUpdateTransactionBody_ReceiverSigRequiredField
      whichReceiverSigRequiredField() =>
          _CryptoUpdateTransactionBody_ReceiverSigRequiredFieldByTag[
              $_whichOneof(2)]!;
  @$pb.TagNumber(10)
  @$pb.TagNumber(13)
  void clearReceiverSigRequiredField() => $_clearField($_whichOneof(2));

  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  CryptoUpdateTransactionBody_StakedId whichStakedId() =>
      _CryptoUpdateTransactionBody_StakedIdByTag[$_whichOneof(3)]!;
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  void clearStakedId() => $_clearField($_whichOneof(3));

  /// *
  ///  An account identifier.<br/>
  ///  This identifies the account which is to be modified in this transaction.
  ///  <p>
  ///  This field is REQUIRED.
  @$pb.TagNumber(2)
  $0.AccountID get accountIDToUpdate => $_getN(0);
  @$pb.TagNumber(2)
  set accountIDToUpdate($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountIDToUpdate() => $_has(0);
  @$pb.TagNumber(2)
  void clearAccountIDToUpdate() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureAccountIDToUpdate() => $_ensure(0);

  /// *
  ///  An account key.<br/>
  ///  This may be a "primitive" key (a singly cryptographic key), or a
  ///  composite key.
  ///  <p>
  ///  If set, this key MUST be a valid key.<br/>
  ///  If set, the previous key and new key MUST both sign this transaction.
  @$pb.TagNumber(3)
  $0.Key get key => $_getN(1);
  @$pb.TagNumber(3)
  set key($0.Key value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(3)
  void clearKey() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Key ensureKey() => $_ensure(1);

  /// *
  ///  Removed in favor of the `staked_id` oneOf.<br/>
  ///  An account identifier for a "proxy" account. This account's HBAR are
  ///  staked to a node selected by the proxy account.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $0.AccountID get proxyAccountID => $_getN(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set proxyAccountID($0.AccountID value) => $_setField(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasProxyAccountID() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearProxyAccountID() => $_clearField(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $0.AccountID ensureProxyAccountID() => $_ensure(2);

  /// *
  ///  Removed prior to the first available history.<br/>
  ///  A fraction to split staking rewards between this account and the proxy
  ///  account.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.int get proxyFraction => $_getIZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set proxyFraction($core.int value) => $_setSignedInt32(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasProxyFraction() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearProxyFraction() => $_clearField(5);

  /// *
  ///  Removed prior to the first available history, and may be related
  ///  to an early design dead-end.<br/>
  ///  The new threshold amount (in tinybars) for which an account record is
  ///  created for any send/withdraw transaction
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $fixnum.Int64 get sendRecordThreshold => $_getI64(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set sendRecordThreshold($fixnum.Int64 value) => $_setInt64(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasSendRecordThreshold() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearSendRecordThreshold() => $_clearField(6);

  /// *
  ///  Removed prior to the first available history, and may be related
  ///  to an early design dead-end.<br/>
  ///  The new threshold amount (in tinybars) for which an account record is
  ///  created for any receive/deposit transaction.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $fixnum.Int64 get receiveRecordThreshold => $_getI64(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  set receiveRecordThreshold($fixnum.Int64 value) => $_setInt64(5, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $core.bool hasReceiveRecordThreshold() => $_has(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  void clearReceiveRecordThreshold() => $_clearField(7);

  /// *
  ///  A duration to extend account expiration.<br/>
  ///  An amount of time, in seconds, to extend the expiration date for this
  ///  account when _automatically_ renewed.
  ///  <p>
  ///  This duration MUST be between the current configured minimum and maximum
  ///  values defined for the network.<br/>
  ///  This duration SHALL be applied only when _automatically_ extending the
  ///  account expiration.
  @$pb.TagNumber(8)
  $1.Duration get autoRenewPeriod => $_getN(6);
  @$pb.TagNumber(8)
  set autoRenewPeriod($1.Duration value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAutoRenewPeriod() => $_has(6);
  @$pb.TagNumber(8)
  void clearAutoRenewPeriod() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Duration ensureAutoRenewPeriod() => $_ensure(6);

  /// *
  ///  A new account expiration time, in seconds since the epoch.
  ///  <p>
  ///  For this purpose, `epoch` SHALL be the UNIX epoch with 0
  ///  at `1970-01-01T00:00:00.000Z`.<br/>
  ///  If set, this value MUST be later than the current consensus time.<br/>
  ///  If set, this value MUST be earlier than the current consensus time
  ///  extended by the current maximum expiration time configured for the
  ///  network.
  @$pb.TagNumber(9)
  $2.Timestamp get expirationTime => $_getN(7);
  @$pb.TagNumber(9)
  set expirationTime($2.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasExpirationTime() => $_has(7);
  @$pb.TagNumber(9)
  void clearExpirationTime() => $_clearField(9);
  @$pb.TagNumber(9)
  $2.Timestamp ensureExpirationTime() => $_ensure(7);

  /// *
  ///  Removed to distinguish between unset and a default value.<br/>
  ///  Do NOT use this field to set a false value because the server cannot
  ///  distinguish from the default value. Use receiverSigRequiredWrapper
  ///  field for this purpose.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool get receiverSigRequired => $_getBF(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set receiverSigRequired($core.bool value) => $_setBool(8, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasReceiverSigRequired() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearReceiverSigRequired() => $_clearField(10);

  /// *
  ///  Removed prior to the first available history, and may be related
  ///  to an early design dead-end.<br/>
  ///  The new threshold amount (in tinybars) for which an account record is
  ///  created for any send/withdraw transaction
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $3.UInt64Value get sendRecordThresholdWrapper => $_getN(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  set sendRecordThresholdWrapper($3.UInt64Value value) => $_setField(11, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.bool hasSendRecordThresholdWrapper() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  void clearSendRecordThresholdWrapper() => $_clearField(11);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $3.UInt64Value ensureSendRecordThresholdWrapper() => $_ensure(9);

  /// *
  ///  Removed prior to the first available history, and may be related
  ///  to an early design dead-end.<br/>
  ///  The new threshold amount (in tinybars) for which an account record is
  ///  created for any receive/deposit transaction.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $3.UInt64Value get receiveRecordThresholdWrapper => $_getN(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  set receiveRecordThresholdWrapper($3.UInt64Value value) =>
      $_setField(12, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.bool hasReceiveRecordThresholdWrapper() => $_has(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  void clearReceiveRecordThresholdWrapper() => $_clearField(12);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $3.UInt64Value ensureReceiveRecordThresholdWrapper() => $_ensure(10);

  /// *
  ///  A flag indicating the account holder must authorize all incoming
  ///  token transfers.
  ///  <p>
  ///  If this flag is set then any transaction that would result in adding
  ///  hbar or other tokens to this account balance MUST be signed by the
  ///  identifying key of this account (that is, the `key` field).
  @$pb.TagNumber(13)
  $3.BoolValue get receiverSigRequiredWrapper => $_getN(11);
  @$pb.TagNumber(13)
  set receiverSigRequiredWrapper($3.BoolValue value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasReceiverSigRequiredWrapper() => $_has(11);
  @$pb.TagNumber(13)
  void clearReceiverSigRequiredWrapper() => $_clearField(13);
  @$pb.TagNumber(13)
  $3.BoolValue ensureReceiverSigRequiredWrapper() => $_ensure(11);

  /// *
  ///  A short description of this Account.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(14)
  $3.StringValue get memo => $_getN(12);
  @$pb.TagNumber(14)
  set memo($3.StringValue value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasMemo() => $_has(12);
  @$pb.TagNumber(14)
  void clearMemo() => $_clearField(14);
  @$pb.TagNumber(14)
  $3.StringValue ensureMemo() => $_ensure(12);

  /// *
  ///  A maximum number of tokens that can be auto-associated
  ///  with this account.<br/>
  ///  By default this value is 0 for all accounts except for automatically
  ///  created accounts (i.e smart contracts) which default to -1.
  ///  <p>
  ///  If this value is `0`, then this account MUST manually associate to
  ///  a token before holding or transacting in that token.<br/>
  ///  This value MAY also be `-1` to indicate no limit.<br/>
  ///  If set, this value MUST NOT be less than `-1`.<br/>
  @$pb.TagNumber(15)
  $3.Int32Value get maxAutomaticTokenAssociations => $_getN(13);
  @$pb.TagNumber(15)
  set maxAutomaticTokenAssociations($3.Int32Value value) =>
      $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasMaxAutomaticTokenAssociations() => $_has(13);
  @$pb.TagNumber(15)
  void clearMaxAutomaticTokenAssociations() => $_clearField(15);
  @$pb.TagNumber(15)
  $3.Int32Value ensureMaxAutomaticTokenAssociations() => $_ensure(13);

  /// *
  ///  ID of the account to which this account is staking its balances.
  ///  <p>
  ///  If this account is not currently staking its balances, then this
  ///  field, if set, MUST be the sentinel value of `0.0.0`.
  @$pb.TagNumber(16)
  $0.AccountID get stakedAccountId => $_getN(14);
  @$pb.TagNumber(16)
  set stakedAccountId($0.AccountID value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasStakedAccountId() => $_has(14);
  @$pb.TagNumber(16)
  void clearStakedAccountId() => $_clearField(16);
  @$pb.TagNumber(16)
  $0.AccountID ensureStakedAccountId() => $_ensure(14);

  /// *
  ///  ID of the node this account is staked to.
  ///  <p>
  ///  If this account is not currently staking its balances, then this
  ///  field, if set, SHALL be the sentinel value of `-1`.<br/>
  ///  Wallet software SHOULD surface staking issues to users and provide a
  ///  simple mechanism to update staking to a new node ID in the event the
  ///  prior staked node ID ceases to be valid.
  @$pb.TagNumber(17)
  $fixnum.Int64 get stakedNodeId => $_getI64(15);
  @$pb.TagNumber(17)
  set stakedNodeId($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(17)
  $core.bool hasStakedNodeId() => $_has(15);
  @$pb.TagNumber(17)
  void clearStakedNodeId() => $_clearField(17);

  /// *
  ///  A boolean indicating that this account has chosen to decline rewards for
  ///  staking its balances.
  ///  <p>
  ///  This account MAY still stake its balances, but SHALL NOT receive reward
  ///  payments for doing so, if this value is set, and `true`.
  @$pb.TagNumber(18)
  $3.BoolValue get declineReward => $_getN(16);
  @$pb.TagNumber(18)
  set declineReward($3.BoolValue value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasDeclineReward() => $_has(16);
  @$pb.TagNumber(18)
  void clearDeclineReward() => $_clearField(18);
  @$pb.TagNumber(18)
  $3.BoolValue ensureDeclineReward() => $_ensure(16);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
