// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from consensus_update_topic.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $1;

import 'basic_types.pb.dart' as $0;
import 'custom_fees.pb.dart' as $4;
import 'duration.pb.dart' as $3;
import 'timestamp.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Update the fields of an existing HCS topic.
///
///  The topicID field is REQUIRED. All other fields are OPTIONAL.<br/>
///  Fields set on this transaction SHALL be updated.<br/>
///  Fields _not_ set on this transaction SHALL NOT be updated.
///
///  ### Block Stream Effects
///  None
class ConsensusUpdateTopicTransactionBody extends $pb.GeneratedMessage {
  factory ConsensusUpdateTopicTransactionBody({
    $0.TopicID? topicID,
    $1.StringValue? memo,
    $2.Timestamp? expirationTime,
    $0.Key? adminKey,
    $0.Key? submitKey,
    $3.Duration? autoRenewPeriod,
    $0.AccountID? autoRenewAccount,
    $0.Key? feeScheduleKey,
    $4.FeeExemptKeyList? feeExemptKeyList,
    $4.FixedCustomFeeList? customFees,
  }) {
    final result = create();
    if (topicID != null) result.topicID = topicID;
    if (memo != null) result.memo = memo;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (adminKey != null) result.adminKey = adminKey;
    if (submitKey != null) result.submitKey = submitKey;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (autoRenewAccount != null) result.autoRenewAccount = autoRenewAccount;
    if (feeScheduleKey != null) result.feeScheduleKey = feeScheduleKey;
    if (feeExemptKeyList != null) result.feeExemptKeyList = feeExemptKeyList;
    if (customFees != null) result.customFees = customFees;
    return result;
  }

  ConsensusUpdateTopicTransactionBody._();

  factory ConsensusUpdateTopicTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConsensusUpdateTopicTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConsensusUpdateTopicTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TopicID>(1, _omitFieldNames ? '' : 'topicID',
        protoName: 'topicID', subBuilder: $0.TopicID.create)
    ..aOM<$1.StringValue>(2, _omitFieldNames ? '' : 'memo',
        subBuilder: $1.StringValue.create)
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $2.Timestamp.create)
    ..aOM<$0.Key>(6, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(7, _omitFieldNames ? '' : 'submitKey',
        protoName: 'submitKey', subBuilder: $0.Key.create)
    ..aOM<$3.Duration>(8, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $3.Duration.create)
    ..aOM<$0.AccountID>(9, _omitFieldNames ? '' : 'autoRenewAccount',
        protoName: 'autoRenewAccount', subBuilder: $0.AccountID.create)
    ..aOM<$0.Key>(10, _omitFieldNames ? '' : 'feeScheduleKey',
        subBuilder: $0.Key.create)
    ..aOM<$4.FeeExemptKeyList>(11, _omitFieldNames ? '' : 'feeExemptKeyList',
        subBuilder: $4.FeeExemptKeyList.create)
    ..aOM<$4.FixedCustomFeeList>(12, _omitFieldNames ? '' : 'customFees',
        subBuilder: $4.FixedCustomFeeList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusUpdateTopicTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusUpdateTopicTransactionBody copyWith(
          void Function(ConsensusUpdateTopicTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as ConsensusUpdateTopicTransactionBody))
          as ConsensusUpdateTopicTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsensusUpdateTopicTransactionBody create() =>
      ConsensusUpdateTopicTransactionBody._();
  @$core.override
  ConsensusUpdateTopicTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConsensusUpdateTopicTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConsensusUpdateTopicTransactionBody>(create);
  static ConsensusUpdateTopicTransactionBody? _defaultInstance;

  /// *
  ///  The topic ID specifying the topic to update.
  ///  <p>
  ///  A topic with this ID MUST exist and MUST NOT be deleted.<br/>
  ///  This value is REQUIRED.
  @$pb.TagNumber(1)
  $0.TopicID get topicID => $_getN(0);
  @$pb.TagNumber(1)
  set topicID($0.TopicID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTopicID() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TopicID ensureTopicID() => $_ensure(0);

  /// *
  ///  An updated memo to be associated with this topic.
  ///  <p>
  ///  If this value is set, the current `adminKey` for the topic MUST sign
  ///  this transaction.<br/>
  ///  This value, if set, SHALL be encoded UTF-8 and SHALL NOT exceed
  ///  100 bytes when so encoded.
  @$pb.TagNumber(2)
  $1.StringValue get memo => $_getN(1);
  @$pb.TagNumber(2)
  set memo($1.StringValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMemo() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemo() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.StringValue ensureMemo() => $_ensure(1);

  /// *
  ///  An updated expiration time for this topic, in seconds since the epoch.
  ///  <p>
  ///  For this purpose, `epoch` SHALL be the UNIX epoch
  ///  with 0 at `1970-01-01T00:00:00.000Z`.<br/>
  ///  The expirationTime MUST NOT be greater than the sum of
  ///  `MAX_AUTORENEW_PERIOD` and the actual consensus timestamp of
  ///  this transaction.<br/>
  ///  If `adminKey` is <b>unset</b> for the _topic_, this transaction MUST NOT
  ///  modify any other field.
  @$pb.TagNumber(4)
  $2.Timestamp get expirationTime => $_getN(2);
  @$pb.TagNumber(4)
  set expirationTime($2.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExpirationTime() => $_has(2);
  @$pb.TagNumber(4)
  void clearExpirationTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureExpirationTime() => $_ensure(2);

  /// *
  ///  Updated access control for modification of the topic.
  ///  <p>
  ///  If this field is set, that key and the previously set key MUST both
  ///  sign this transaction.<br/>
  ///  If this value is an empty `KeyList`, the prior key MUST sign this
  ///  transaction, and the topic SHALL be immutable after this transaction
  ///  completes, except for expiration and renewal.
  @$pb.TagNumber(6)
  $0.Key get adminKey => $_getN(3);
  @$pb.TagNumber(6)
  set adminKey($0.Key value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAdminKey() => $_has(3);
  @$pb.TagNumber(6)
  void clearAdminKey() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Key ensureAdminKey() => $_ensure(3);

  /// *
  ///  Updated access control for message submission to the topic.
  ///  <p>
  ///  If this value is set, the current `adminKey` for the topic MUST sign
  ///  this transaction.<br/>
  ///  If this value is set to an empty `KeyList`, the `submitKey` for the
  ///  topic will be unset after this transaction completes. When the
  ///  `submitKey` is unset, any account may submit a message on the topic,
  ///  without restriction.
  @$pb.TagNumber(7)
  $0.Key get submitKey => $_getN(4);
  @$pb.TagNumber(7)
  set submitKey($0.Key value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSubmitKey() => $_has(4);
  @$pb.TagNumber(7)
  void clearSubmitKey() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Key ensureSubmitKey() => $_ensure(4);

  ///
  ///  An updated value for the number of seconds by which the topic expiration
  ///  will be automatically extended upon expiration, if it has a valid
  ///  auto-renew account.
  ///  <p>
  ///  If this value is set, the current `adminKey` for the topic MUST sign
  ///  this transaction.<br/>
  ///  This value, if set, MUST be greater than the
  ///  configured MIN_AUTORENEW_PERIOD.<br/>
  ///  This value, if set, MUST be less than the
  ///  configured MAX_AUTORENEW_PERIOD.
  @$pb.TagNumber(8)
  $3.Duration get autoRenewPeriod => $_getN(5);
  @$pb.TagNumber(8)
  set autoRenewPeriod($3.Duration value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAutoRenewPeriod() => $_has(5);
  @$pb.TagNumber(8)
  void clearAutoRenewPeriod() => $_clearField(8);
  @$pb.TagNumber(8)
  $3.Duration ensureAutoRenewPeriod() => $_ensure(5);

  /// *
  ///  An updated ID for the account to be charged renewal fees at the topic's
  ///  `expirationTime` to extend the lifetime of the topic.
  ///  <p>
  ///  If this value is set and not the "sentinel account", the referenced
  ///  account MUST sign this transaction.<br/>
  ///  If this value is set, the current `adminKey` for the topic MUST sign
  ///  this transaction.<br/>
  ///  If this value is set to the "sentinel account", which is `0.0.0`, the
  ///  `autoRenewAccount` SHALL be removed from the topic.
  @$pb.TagNumber(9)
  $0.AccountID get autoRenewAccount => $_getN(6);
  @$pb.TagNumber(9)
  set autoRenewAccount($0.AccountID value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAutoRenewAccount() => $_has(6);
  @$pb.TagNumber(9)
  void clearAutoRenewAccount() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.AccountID ensureAutoRenewAccount() => $_ensure(6);

  /// *
  ///  Access control for update/delete of custom fees.
  ///  <p>
  ///  If set, subsequent consensus_update_topic transactions signed with this
  ///  key MAY update or delete the custom fees for this topic.<br/>
  ///  If this field is set, the admin key MUST sign this transaction.<br/>
  ///  If this field is set, the previous value SHALL be replaced.<br/>
  ///  If set to a 'Key' containing an empty 'KeyList', the previous value
  ///  SHALL be cleared.<br/>
  ///  If not set, the current key SHALL NOT change.<br/>
  ///  If unset in state, this field MUST NOT be set in this transaction.<br/>
  ///  If not set when the topic is created, this field CANNOT be set via
  ///  update.<br/>
  @$pb.TagNumber(10)
  $0.Key get feeScheduleKey => $_getN(7);
  @$pb.TagNumber(10)
  set feeScheduleKey($0.Key value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFeeScheduleKey() => $_has(7);
  @$pb.TagNumber(10)
  void clearFeeScheduleKey() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.Key ensureFeeScheduleKey() => $_ensure(7);

  /// *
  ///  A set of keys<br/>
  ///  Keys in this list are permitted to submit messages to this topic without
  ///  paying custom fees associated with this topic.
  ///  <p>
  ///  If a submit transaction is signed by _any_ key included in this set,
  ///  custom fees SHALL NOT be charged for that transaction.<br/>
  ///  If this field is not set, the current set of keys SHALL NOT change.<br/>
  ///  If this field is set, but contains an empty list, any existing fee-exempt
  ///  keys SHALL be removed.<br/>
  ///  A `fee_exempt_key_list` MUST NOT contain more than
  ///  `MAX_ENTRIES_FOR_FEE_EXEMPT_KEY_LIST` keys.<br/>
  ///  A `fee_exempt_key_list` MUST NOT contain any duplicate keys.<br/>
  ///  A `fee_exempt_key_list` MAY contain keys for accounts that are inactive,
  ///  deleted, or non-existent.
  @$pb.TagNumber(11)
  $4.FeeExemptKeyList get feeExemptKeyList => $_getN(8);
  @$pb.TagNumber(11)
  set feeExemptKeyList($4.FeeExemptKeyList value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasFeeExemptKeyList() => $_has(8);
  @$pb.TagNumber(11)
  void clearFeeExemptKeyList() => $_clearField(11);
  @$pb.TagNumber(11)
  $4.FeeExemptKeyList ensureFeeExemptKeyList() => $_ensure(8);

  /// *
  ///  A set of custom fee definitions.<br/>
  ///  These are fees to be assessed for each submit to this topic.
  ///  <p>
  ///  Each fee defined in this set SHALL be evaluated for
  ///  each message submitted to this topic, and the resultant
  ///  total assessed fees SHALL be charged.<br/>
  ///  Custom fees defined here SHALL be assessed in addition to the base
  ///  network and node fees.<br/>
  ///  If this field is not set, the current set of custom fees
  ///  SHALL NOT change.<br/>
  ///  If this field is set, but contains an empty list, all current custom fees
  ///  SHALL be removed.
  ///  custom_fees list SHALL NOT contain more than
  ///  `MAX_CUSTOM_FEE_ENTRIES_FOR_TOPICS` entries.
  @$pb.TagNumber(12)
  $4.FixedCustomFeeList get customFees => $_getN(9);
  @$pb.TagNumber(12)
  set customFees($4.FixedCustomFeeList value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasCustomFees() => $_has(9);
  @$pb.TagNumber(12)
  void clearCustomFees() => $_clearField(12);
  @$pb.TagNumber(12)
  $4.FixedCustomFeeList ensureCustomFees() => $_ensure(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
