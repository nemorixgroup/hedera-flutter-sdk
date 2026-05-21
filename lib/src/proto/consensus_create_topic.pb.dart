// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from consensus_create_topic.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;
import 'custom_fees.pb.dart' as $2;
import 'duration.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Create a topic to accept and group consensus messages.
///
///  If `autoRenewAccount` is specified, that account Key MUST also sign this
///  transaction.<br/>
///  If `adminKey` is set, that Key MUST sign the transaction.<br/>
///  On success, the resulting `TransactionReceipt` SHALL contain the newly
///  created `TopicId`.
///
///  The `autoRenewPeriod` on a topic MUST be set to a value between
///  `autoRenewPeriod.minDuration` and `autoRenewPeriod.maxDuration`. These
///  values are configurable, typically 30 and 92 days.<br/>
///  This also sets the initial expirationTime of the topic.
///
///  If no `adminKey` is set on a topic
///    -`autoRenewAccount` SHALL NOT be set on the topic.
///    - A `deleteTopic` transaction SHALL fail.
///    - An `updateTopic` transaction that only extends the expirationTime MAY
///      succeed.
///    - Any other `updateTopic` transaction SHALL fail.
///
///  If the topic expires and is not automatically renewed, the topic SHALL enter
///  the `EXPIRED` state.
///    - All transactions on the topic SHALL fail with TOPIC_EXPIRED
///       - Except an updateTopic() call that only extends the expirationTime.
///    - getTopicInfo() SHALL succeed, and show the topic is expired.
///  The topic SHALL remain in the `EXPIRED` state for a time determined by the
///  `autorenew.gracePeriod` (configurable, originally 7 days).<br/>
///  After the grace period, if the topic's expirationTime is not extended, the
///  topic SHALL be automatically deleted from state entirely, and cannot be
///  recovered or recreated.
///
///  ### Block Stream Effects
///  None
class ConsensusCreateTopicTransactionBody extends $pb.GeneratedMessage {
  factory ConsensusCreateTopicTransactionBody({
    $core.String? memo,
    $0.Key? adminKey,
    $0.Key? submitKey,
    $1.Duration? autoRenewPeriod,
    $0.AccountID? autoRenewAccount,
    $0.Key? feeScheduleKey,
    $core.Iterable<$0.Key>? feeExemptKeyList,
    $core.Iterable<$2.FixedCustomFee>? customFees,
  }) {
    final result = create();
    if (memo != null) result.memo = memo;
    if (adminKey != null) result.adminKey = adminKey;
    if (submitKey != null) result.submitKey = submitKey;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (autoRenewAccount != null) result.autoRenewAccount = autoRenewAccount;
    if (feeScheduleKey != null) result.feeScheduleKey = feeScheduleKey;
    if (feeExemptKeyList != null)
      result.feeExemptKeyList.addAll(feeExemptKeyList);
    if (customFees != null) result.customFees.addAll(customFees);
    return result;
  }

  ConsensusCreateTopicTransactionBody._();

  factory ConsensusCreateTopicTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConsensusCreateTopicTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConsensusCreateTopicTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'memo')
    ..aOM<$0.Key>(2, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $0.Key.create)
    ..aOM<$0.Key>(3, _omitFieldNames ? '' : 'submitKey',
        protoName: 'submitKey', subBuilder: $0.Key.create)
    ..aOM<$1.Duration>(6, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $1.Duration.create)
    ..aOM<$0.AccountID>(7, _omitFieldNames ? '' : 'autoRenewAccount',
        protoName: 'autoRenewAccount', subBuilder: $0.AccountID.create)
    ..aOM<$0.Key>(8, _omitFieldNames ? '' : 'feeScheduleKey',
        subBuilder: $0.Key.create)
    ..pPM<$0.Key>(9, _omitFieldNames ? '' : 'feeExemptKeyList',
        subBuilder: $0.Key.create)
    ..pPM<$2.FixedCustomFee>(10, _omitFieldNames ? '' : 'customFees',
        subBuilder: $2.FixedCustomFee.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusCreateTopicTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusCreateTopicTransactionBody copyWith(
          void Function(ConsensusCreateTopicTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as ConsensusCreateTopicTransactionBody))
          as ConsensusCreateTopicTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsensusCreateTopicTransactionBody create() =>
      ConsensusCreateTopicTransactionBody._();
  @$core.override
  ConsensusCreateTopicTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConsensusCreateTopicTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConsensusCreateTopicTransactionBody>(create);
  static ConsensusCreateTopicTransactionBody? _defaultInstance;

  /// *
  ///  A short memo for this topic.
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
  ///  Access control for modification of the topic after it is created.
  ///  <p>
  ///  If this field is set, that key MUST sign this transaction.<br/>
  ///  If this field is set, that key MUST sign each future transaction to
  ///  update or delete the topic.<br/>
  ///  An updateTopic transaction that _only_ extends the topic expirationTime
  ///  (a "manual renewal" transaction) SHALL NOT require admin key
  ///  signature.<br/>
  ///  A topic without an admin key SHALL be immutable, except for expiration
  ///  and renewal.<br/>
  ///  If adminKey is not set, then `autoRenewAccount` SHALL NOT be set.
  @$pb.TagNumber(2)
  $0.Key get adminKey => $_getN(1);
  @$pb.TagNumber(2)
  set adminKey($0.Key value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAdminKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdminKey() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Key ensureAdminKey() => $_ensure(1);

  /// *
  ///  Access control for message submission to the topic.
  ///  <p>
  ///  If this field is set, that key MUST sign each consensus submit message
  ///  for this topic.<br/>
  ///  If this field is not set then any account may submit a message on the
  ///  topic, without restriction.
  @$pb.TagNumber(3)
  $0.Key get submitKey => $_getN(2);
  @$pb.TagNumber(3)
  set submitKey($0.Key value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSubmitKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubmitKey() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Key ensureSubmitKey() => $_ensure(2);

  /// *
  ///  The initial lifetime, in seconds, for the topic.<br/>
  ///  This is also the number of seconds for which the topic SHALL be
  ///  automatically renewed upon expiring, if it has a valid auto-renew
  ///  account.
  ///  <p>
  ///  This value MUST be set.<br/>
  ///  This value MUST be greater than the configured
  ///  MIN_AUTORENEW_PERIOD.<br/>
  ///  This value MUST be less than the configured MAX_AUTORENEW_PERIOD.
  @$pb.TagNumber(6)
  $1.Duration get autoRenewPeriod => $_getN(3);
  @$pb.TagNumber(6)
  set autoRenewPeriod($1.Duration value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAutoRenewPeriod() => $_has(3);
  @$pb.TagNumber(6)
  void clearAutoRenewPeriod() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Duration ensureAutoRenewPeriod() => $_ensure(3);

  /// *
  ///  The ID of the account to be charged renewal fees at the topic's
  ///  expirationTime to extend the lifetime of the topic.
  ///  <p>
  ///  The topic lifetime SHALL be extended by the smallest of the following:
  ///  <ul>
  ///    <li>The current `autoRenewPeriod` duration.</li>
  ///    <li>The maximum duration that this account has funds to purchase.</li>
  ///    <li>The configured MAX_AUTORENEW_PERIOD at the time of automatic
  ///        renewal.</li>
  ///  </ul>
  ///  If this value is set, the referenced account MUST sign this
  ///  transaction.<br/>
  ///  If this value is set, the `adminKey` field MUST also be set (though that
  ///  key MAY not have any correlation to this account).
  @$pb.TagNumber(7)
  $0.AccountID get autoRenewAccount => $_getN(4);
  @$pb.TagNumber(7)
  set autoRenewAccount($0.AccountID value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAutoRenewAccount() => $_has(4);
  @$pb.TagNumber(7)
  void clearAutoRenewAccount() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.AccountID ensureAutoRenewAccount() => $_ensure(4);

  /// *
  ///  Access control for update or delete of custom fees.
  ///  <p>
  ///  If set, subsequent `consensus_update_topic` transactions signed with this
  ///  key MAY update or delete the custom fees for this topic.<br/>
  ///  If not set, the custom fees for this topic SHALL BE immutable.<br/>
  ///  If not set when the topic is created, this field CANNOT be set via
  ///  update.<br/>
  ///  If set when the topic is created, this field MAY be changed via update.
  @$pb.TagNumber(8)
  $0.Key get feeScheduleKey => $_getN(5);
  @$pb.TagNumber(8)
  set feeScheduleKey($0.Key value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasFeeScheduleKey() => $_has(5);
  @$pb.TagNumber(8)
  void clearFeeScheduleKey() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Key ensureFeeScheduleKey() => $_ensure(5);

  /// *
  ///  A set of keys.<br/>
  ///  Keys in this list are permitted to submit messages to this topic without
  ///  paying custom fees associated with this topic.
  ///  <p>
  ///  If a submit transaction is signed by _any_ key included in this set,
  ///  custom fees SHALL NOT be charged for that transaction.<br/>
  ///  This field MUST NOT contain more than 10 keys.<br/>
  ///  fee_exempt_key_list SHALL NOT contain any duplicate keys.<br/>
  ///  fee_exempt_key_list MAY contain keys for accounts that are inactive,
  ///  deleted, or non-existent.<br/>
  ///  If fee_exempt_key_list is unset in this transaction, there SHALL NOT be
  ///  any fee-exempt keys.  In particular, the following keys SHALL NOT be
  ///  implicitly or automatically added to this list:
  ///  `adminKey`, `submitKey`, `fee_schedule_key`.
  @$pb.TagNumber(9)
  $pb.PbList<$0.Key> get feeExemptKeyList => $_getList(6);

  /// *
  ///  A set of custom fee definitions.<br/>
  ///  These are fees to be assessed for each submit to this topic.
  ///  <p>
  ///  Each fee defined in this set SHALL be evaluated for
  ///  each message submitted to this topic, and the resultant
  ///  total assessed fees SHALL be charged.<br/>
  ///  Custom fees defined here SHALL be assessed in addition to the base
  ///  network and node fees.<br/>
  ///  custom_fees list SHALL NOT contain more than
  ///  `MAX_CUSTOM_FEE_ENTRIES_FOR_TOPICS` entries.
  @$pb.TagNumber(10)
  $pb.PbList<$2.FixedCustomFee> get customFees => $_getList(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
