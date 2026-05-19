// This is a generated file - do not edit.
//
// Generated from consensus_topic_info.proto.

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
import 'custom_fees.pb.dart' as $3;
import 'duration.pb.dart' as $2;
import 'timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A query response describing the current state of a topic for the Hedera
///  Consensus Service (HCS).
class ConsensusTopicInfo extends $pb.GeneratedMessage {
  factory ConsensusTopicInfo({
    $core.String? memo,
    $core.List<$core.int>? runningHash,
    $fixnum.Int64? sequenceNumber,
    $0.Timestamp? expirationTime,
    $1.Key? adminKey,
    $1.Key? submitKey,
    $2.Duration? autoRenewPeriod,
    $1.AccountID? autoRenewAccount,
    $core.List<$core.int>? ledgerId,
    $1.Key? feeScheduleKey,
    $core.Iterable<$1.Key>? feeExemptKeyList,
    $core.Iterable<$3.FixedCustomFee>? customFees,
  }) {
    final result = create();
    if (memo != null) result.memo = memo;
    if (runningHash != null) result.runningHash = runningHash;
    if (sequenceNumber != null) result.sequenceNumber = sequenceNumber;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (adminKey != null) result.adminKey = adminKey;
    if (submitKey != null) result.submitKey = submitKey;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (autoRenewAccount != null) result.autoRenewAccount = autoRenewAccount;
    if (ledgerId != null) result.ledgerId = ledgerId;
    if (feeScheduleKey != null) result.feeScheduleKey = feeScheduleKey;
    if (feeExemptKeyList != null)
      result.feeExemptKeyList.addAll(feeExemptKeyList);
    if (customFees != null) result.customFees.addAll(customFees);
    return result;
  }

  ConsensusTopicInfo._();

  factory ConsensusTopicInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConsensusTopicInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConsensusTopicInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'memo')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'runningHash', $pb.PbFieldType.OY,
        protoName: 'runningHash')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'sequenceNumber', $pb.PbFieldType.OU6,
        protoName: 'sequenceNumber', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $0.Timestamp.create)
    ..aOM<$1.Key>(5, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $1.Key.create)
    ..aOM<$1.Key>(6, _omitFieldNames ? '' : 'submitKey',
        protoName: 'submitKey', subBuilder: $1.Key.create)
    ..aOM<$2.Duration>(7, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $2.Duration.create)
    ..aOM<$1.AccountID>(8, _omitFieldNames ? '' : 'autoRenewAccount',
        protoName: 'autoRenewAccount', subBuilder: $1.AccountID.create)
    ..a<$core.List<$core.int>>(
        9, _omitFieldNames ? '' : 'ledgerId', $pb.PbFieldType.OY)
    ..aOM<$1.Key>(10, _omitFieldNames ? '' : 'feeScheduleKey',
        subBuilder: $1.Key.create)
    ..pPM<$1.Key>(11, _omitFieldNames ? '' : 'feeExemptKeyList',
        subBuilder: $1.Key.create)
    ..pPM<$3.FixedCustomFee>(12, _omitFieldNames ? '' : 'customFees',
        subBuilder: $3.FixedCustomFee.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusTopicInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusTopicInfo copyWith(void Function(ConsensusTopicInfo) updates) =>
      super.copyWith((message) => updates(message as ConsensusTopicInfo))
          as ConsensusTopicInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsensusTopicInfo create() => ConsensusTopicInfo._();
  @$core.override
  ConsensusTopicInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConsensusTopicInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConsensusTopicInfo>(create);
  static ConsensusTopicInfo? _defaultInstance;

  /// *
  ///  A short description of this topic.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(1)
  $core.String get memo => $_getSZ(0);
  @$pb.TagNumber(1)
  set memo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMemo() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemo() => $_clearField(1);

  /// *
  ///  The latest running hash of the topic.
  ///  <p>
  ///  This 48-byte field is the output of a SHA-384 digest with input
  ///  data determined by the current version of the running hash algorithm
  ///  used by the network.<br/>
  ///  All new transactions SHALL use algorithm version `3`.<br/>
  ///  The bytes of each uint64 or uint32 encoded for the hash input
  ///  MUST be in Big-Endian format.
  ///  <p>
  ///  <hr/>
  ///  If the algorithm version is '3', then the input data to the
  ///  SHA-384 digest are, in order:
  ///  <ol>
  ///    <li>The previous running hash of the topic (48 bytes)</li>
  ///    <li>The `topicRunningHashVersion` (8 bytes)</li>
  ///    <li>The payer account's shard (8 bytes)</li>
  ///    <li>The payer account's realm (8 bytes)</li>
  ///    <li>The payer account's number (8 bytes)</li>
  ///    <li>The topic's shard (8 bytes)</li>
  ///    <li>The topic's realm (8 bytes)</li>
  ///    <li>The topic's number (8 bytes)</li>
  ///    <li>The number of seconds since the epoch when the
  ///        `ConsensusSubmitMessage` reached consensus (8 bytes)</li>
  ///    <li>The number of nanoseconds within the second when the
  ///        `ConsensusSubmitMessage` reached consensus (4 bytes)</li>
  ///    <li>The `topicSequenceNumber` (8 bytes)</li>
  ///    <li>The output of a SHA-384 digest of the message bytes from the
  ///        `ConsensusSubmitMessage` (48 bytes)</li>
  ///  </ol>
  @$pb.TagNumber(2)
  $core.List<$core.int> get runningHash => $_getN(1);
  @$pb.TagNumber(2)
  set runningHash($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunningHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunningHash() => $_clearField(2);

  /// *
  ///  A current sequence number (starting at 1 for the first message)
  ///  for messages on this topic.
  @$pb.TagNumber(3)
  $fixnum.Int64 get sequenceNumber => $_getI64(2);
  @$pb.TagNumber(3)
  set sequenceNumber($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSequenceNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearSequenceNumber() => $_clearField(3);

  /// *
  ///  An expiration time for this topic, in seconds since the epoch.
  ///  <p>
  ///  For this purpose, `epoch` SHALL be the UNIX epoch
  ///  with 0 at `1970-01-01T00:00:00.000Z`.
  @$pb.TagNumber(4)
  $0.Timestamp get expirationTime => $_getN(3);
  @$pb.TagNumber(4)
  set expirationTime($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExpirationTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpirationTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureExpirationTime() => $_ensure(3);

  /// *
  ///  A key that MUST sign any transaction to update or delete this topic.
  ///  <p>
  ///  If this value is not set (null) then the topic CANNOT be deleted,
  ///  modified, or updated.
  @$pb.TagNumber(5)
  $1.Key get adminKey => $_getN(4);
  @$pb.TagNumber(5)
  set adminKey($1.Key value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAdminKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdminKey() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Key ensureAdminKey() => $_ensure(4);

  /// *
  ///  A key that MUST sign any transaction to submit a message to this topic.
  ///  <p>
  ///  If this value is not set (null) then any account MAY submit messages to
  ///  this topic.
  @$pb.TagNumber(6)
  $1.Key get submitKey => $_getN(5);
  @$pb.TagNumber(6)
  set submitKey($1.Key value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSubmitKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearSubmitKey() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Key ensureSubmitKey() => $_ensure(5);

  /// *
  ///  A duration, in seconds, to extend the `expirationTime` value when
  ///  this topic is automatically renewed.
  ///  <p>
  ///  If the `autoRenewAccount` value for this topic is set to a valid account
  ///  with sufficient HBAR balance to pay renewal fees when this topic
  ///  expires, the system SHALL automatically renew this topic, extending the
  ///  `expirationTime` value by the number of seconds described here.<br/>
  ///  If, however, the `autoRenewAccount` lacks sufficient HBAR balance
  ///  to pay renewal fees when this topic expires, this topic SHALL be
  ///  deleted after the time period specified in the `AUTORENEW_GRACE_PERIOD`
  ///  configuration value.
  @$pb.TagNumber(7)
  $2.Duration get autoRenewPeriod => $_getN(6);
  @$pb.TagNumber(7)
  set autoRenewPeriod($2.Duration value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAutoRenewPeriod() => $_has(6);
  @$pb.TagNumber(7)
  void clearAutoRenewPeriod() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.Duration ensureAutoRenewPeriod() => $_ensure(6);

  /// *
  ///  An account that is designated to pay automatic renewal fees.
  ///  <p>
  ///  If this value is a valid account ID when this topic expires,
  ///  this account SHALL be charged the renewal fees for this topic,
  ///  if it holds sufficient HBAR balance. If the account does not hold
  ///  sufficient HBAR balance to pay renewal fees when necessary, then
  ///  this topic SHALL be deleted.<br/>
  ///  If this value is not set (null), or is not a valid account ID, when
  ///  this topic expires, then this topic SHALL be deleted after the time
  ///  period specified in the `AUTORENEW_GRACE_PERIOD` configuration value.
  @$pb.TagNumber(8)
  $1.AccountID get autoRenewAccount => $_getN(7);
  @$pb.TagNumber(8)
  set autoRenewAccount($1.AccountID value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAutoRenewAccount() => $_has(7);
  @$pb.TagNumber(8)
  void clearAutoRenewAccount() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.AccountID ensureAutoRenewAccount() => $_ensure(7);

  /// *
  ///  A ledger ID of the network that generated this response.
  ///  <p>
  ///  This value SHALL identify the distributed ledger that responded to
  ///  this query.
  @$pb.TagNumber(9)
  $core.List<$core.int> get ledgerId => $_getN(8);
  @$pb.TagNumber(9)
  set ledgerId($core.List<$core.int> value) => $_setBytes(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLedgerId() => $_has(8);
  @$pb.TagNumber(9)
  void clearLedgerId() => $_clearField(9);

  /// *
  ///  Access control for update/delete of custom fees.
  ///  <p>
  ///  If unset, custom fees CANNOT be set for this topic.<br/>
  ///  If not set when the topic is created, this field CANNOT be set via
  ///  update.<br/>
  ///  If set when the topic is created, this field MAY be changed via update.
  @$pb.TagNumber(10)
  $1.Key get feeScheduleKey => $_getN(9);
  @$pb.TagNumber(10)
  set feeScheduleKey($1.Key value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFeeScheduleKey() => $_has(9);
  @$pb.TagNumber(10)
  void clearFeeScheduleKey() => $_clearField(10);
  @$pb.TagNumber(10)
  $1.Key ensureFeeScheduleKey() => $_ensure(9);

  /// *
  ///  A set of keys.<br/>
  ///  Keys in this list are permitted to submit messages to this topic without
  ///  paying custom fees associated with this topic.
  ///  <p>
  ///  If a topic submit message is signed by _any_ key included in this set,
  ///  custom fees SHALL NOT be charged for that transaction.<br/>
  ///  `fee_exempt_key_list` MAY contain keys for accounts that are inactive,
  ///  deleted, or non-existent.<br/>
  ///  If not set, there SHALL NOT be any fee-exempt keys.  In particular, the
  ///  following keys SHALL NOT be implicitly or automatically added to this
  ///  list: `adminKey`, `submitKey`, `fee_schedule_key`.
  ///  A `fee_exempt_key_list` MUST NOT contain more than
  ///  `MAX_ENTRIES_FOR_FEE_EXEMPT_KEY_LIST` keys.
  ///  A `fee_exempt_key_list` MUST NOT contain any duplicate keys.
  @$pb.TagNumber(11)
  $pb.PbList<$1.Key> get feeExemptKeyList => $_getList(10);

  /// *
  ///  A set of custom fee definitions.<br/>
  ///  These are fees to be assessed for each submit to this topic.
  ///  <p>
  ///  Each fee defined in this set SHALL be evaluated for
  ///  each message submitted to this topic, and the resultant
  ///  total assessed fees SHALL be charged.<br/>
  ///  Custom fees defined here SHALL be assessed in addition to the base
  ///  network and node fees.
  @$pb.TagNumber(12)
  $pb.PbList<$3.FixedCustomFee> get customFees => $_getList(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
