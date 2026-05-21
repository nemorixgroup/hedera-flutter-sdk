// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from schedule_create.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'schedulable_transaction_body.pb.dart' as $0;
import 'timestamp.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Create a new Schedule.
///
///  #### Requirements
///  This transaction SHALL create a new _schedule_ entity in network state.<br/>
///  The schedule created SHALL contain the `scheduledTransactionBody` to be
///  executed.<br/>
///  If successful the receipt SHALL contain a `scheduleID` with the full
///  identifier of the schedule created.<br/>
///  When a schedule _executes_ successfully, the receipt SHALL include a
///  `scheduledTransactionID` with the `TransactionID` of the transaction that
///  executed.<br/>
///  When a scheduled transaction is executed the network SHALL charge the
///  regular _service_ fee for the transaction to the `payerAccountID` for
///  that schedule, but SHALL NOT charge node or network fees.<br/>
///  If the `payerAccountID` field is not set, the effective `payerAccountID`
///  SHALL be the `payer` for this create transaction.<br/>
///  If an `adminKey` is not specified, or is an empty `KeyList`, the schedule
///  created SHALL be immutable.<br/>
///  An immutable schedule MAY be signed, and MAY execute, but SHALL NOT be
///  deleted.<br/>
///  If two schedules have the same values for all fields except `payerAccountID`
///  then those two schedules SHALL be deemed "identical".<br/>
///  If a `scheduleCreate` requests a new schedule that is identical to an
///  existing schedule, the transaction SHALL fail and SHALL return a status
///  code of `IDENTICAL_SCHEDULE_ALREADY_CREATED` in the receipt.<br/>
///  The receipt for a duplicate schedule SHALL include the `ScheduleID` of the
///  existing schedule and the `TransactionID` of the earlier `scheduleCreate`
///  so that the earlier schedule may be queried and/or referred to in a
///  subsequent `scheduleSign`.
///
///  #### Signature Requirements
///  A `scheduleSign` transaction SHALL be used to add additional signatures
///  to an existing schedule.<br/>
///  Each signature SHALL "activate" the corresponding cryptographic("primitive")
///  key for that schedule.<br/>
///  Signature requirements SHALL be met when the set of active keys includes
///  all keys required by the scheduled transaction.<br/>
///  A scheduled transaction for a "long term" schedule SHALL NOT execute if
///  the signature requirements for that transaction are not met when the
///  network consensus time reaches the schedule `expiration_time`.<br/>
///  A "short term" schedule SHALL execute immediately once signature
///  requirements are met. This MAY be immediately when created.
///
///  #### Long Term Schedules
///  A "short term" schedule SHALL have the flag `wait_for_expiry` _unset_.<br/>
///  A "long term" schedule SHALL have the flag  `wait_for_expiry` _set_.<br/>
///  A "long term" schedule SHALL NOT be accepted if the network configuration
///  `scheduling.longTermEnabled` is not enabled.<br/>
///  A "long term" schedule SHALL execute when the current consensus time
///  matches or exceeds the `expiration_time` for that schedule, if the
///  signature requirements for the scheduled transaction
///  are met at that instant.<br/>
///  A "long term" schedule SHALL NOT execute before the current consensus time
///  matches or exceeds the `expiration_time` for that schedule.<br/>
///  A "long term" schedule SHALL expire, and be removed from state, after the
///  network consensus time exceeds the schedule `expiration_time`.<br/>
///  A short term schedule SHALL expire, and be removed from state,
///  after the network consensus time exceeds the current network
///  configuration for `ledger.scheduleTxExpiryTimeSecs`.
///
///  > Note
///  >> Long term schedules are not (as of release 0.56.0) enabled. Any schedule
///  >> created currently MUST NOT set the `wait_for_expiry` flag.<br/>
///  >> When long term schedules are not enabled, schedules SHALL NOT be
///  >> executed at expiration, and MUST meet signature requirements strictly
///  >> before expiration to be executed.
///
///  ### Block Stream Effects
///  If the scheduled transaction is executed immediately, the transaction
///  record SHALL include a `scheduleRef` with the schedule identifier of the
///  schedule created.
class ScheduleCreateTransactionBody extends $pb.GeneratedMessage {
  factory ScheduleCreateTransactionBody({
    $0.SchedulableTransactionBody? scheduledTransactionBody,
    $core.String? memo,
    $1.Key? adminKey,
    $1.AccountID? payerAccountID,
    $2.Timestamp? expirationTime,
    $core.bool? waitForExpiry,
  }) {
    final result = create();
    if (scheduledTransactionBody != null)
      result.scheduledTransactionBody = scheduledTransactionBody;
    if (memo != null) result.memo = memo;
    if (adminKey != null) result.adminKey = adminKey;
    if (payerAccountID != null) result.payerAccountID = payerAccountID;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (waitForExpiry != null) result.waitForExpiry = waitForExpiry;
    return result;
  }

  ScheduleCreateTransactionBody._();

  factory ScheduleCreateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScheduleCreateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleCreateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.SchedulableTransactionBody>(
        1, _omitFieldNames ? '' : 'scheduledTransactionBody',
        protoName: 'scheduledTransactionBody',
        subBuilder: $0.SchedulableTransactionBody.create)
    ..aOS(2, _omitFieldNames ? '' : 'memo')
    ..aOM<$1.Key>(3, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $1.Key.create)
    ..aOM<$1.AccountID>(4, _omitFieldNames ? '' : 'payerAccountID',
        protoName: 'payerAccountID', subBuilder: $1.AccountID.create)
    ..aOM<$2.Timestamp>(5, _omitFieldNames ? '' : 'expirationTime',
        subBuilder: $2.Timestamp.create)
    ..aOB(13, _omitFieldNames ? '' : 'waitForExpiry')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleCreateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleCreateTransactionBody copyWith(
          void Function(ScheduleCreateTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as ScheduleCreateTransactionBody))
          as ScheduleCreateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleCreateTransactionBody create() =>
      ScheduleCreateTransactionBody._();
  @$core.override
  ScheduleCreateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScheduleCreateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleCreateTransactionBody>(create);
  static ScheduleCreateTransactionBody? _defaultInstance;

  /// *
  ///  A scheduled transaction.
  ///  <p>
  ///  This value is REQUIRED.<br/>
  ///  This transaction body MUST be one of the types enabled in the
  ///  network configuration value `scheduling.whitelist`.
  @$pb.TagNumber(1)
  $0.SchedulableTransactionBody get scheduledTransactionBody => $_getN(0);
  @$pb.TagNumber(1)
  set scheduledTransactionBody($0.SchedulableTransactionBody value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasScheduledTransactionBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduledTransactionBody() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SchedulableTransactionBody ensureScheduledTransactionBody() => $_ensure(0);

  /// *
  ///  A short description of the schedule.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(2)
  $core.String get memo => $_getSZ(1);
  @$pb.TagNumber(2)
  set memo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMemo() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemo() => $_clearField(2);

  /// *
  ///  A `Key` required to delete this schedule.
  ///  <p>
  ///  If this is not set, or is an empty `KeyList`, this schedule SHALL be
  ///  immutable and SHALL NOT be deleted.
  @$pb.TagNumber(3)
  $1.Key get adminKey => $_getN(2);
  @$pb.TagNumber(3)
  set adminKey($1.Key value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAdminKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdminKey() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Key ensureAdminKey() => $_ensure(2);

  /// *
  ///  An account identifier of a `payer` for the scheduled transaction.
  ///  <p>
  ///  This value MAY be unset. If unset, the `payer` for this `scheduleCreate`
  ///  transaction SHALL be the `payer` for the scheduled transaction.<br/>
  ///  If this is set, the identified account SHALL be charged the fees
  ///  required for the scheduled transaction when it is executed.<br/>
  ///  If the actual `payer` for the _scheduled_ transaction lacks
  ///  sufficient HBAR balance to pay service fees for the scheduled
  ///  transaction _when it executes_, the scheduled transaction
  ///  SHALL fail with `INSUFFICIENT_PAYER_BALANCE`.<br/>
  @$pb.TagNumber(4)
  $1.AccountID get payerAccountID => $_getN(3);
  @$pb.TagNumber(4)
  set payerAccountID($1.AccountID value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPayerAccountID() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayerAccountID() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.AccountID ensurePayerAccountID() => $_ensure(3);

  /// *
  ///  An expiration time.
  ///  <p>
  ///  If not set, the expiration SHALL default to the current consensus time
  ///  advanced by either the network configuration value
  ///  `scheduling.maxExpirationFutureSeconds`, if `wait_for_expiry` is set and
  ///  "long term" schedules are enabled, or the network configuration value
  ///  `ledger.scheduleTxExpiryTimeSecs` otherwise.
  @$pb.TagNumber(5)
  $2.Timestamp get expirationTime => $_getN(4);
  @$pb.TagNumber(5)
  set expirationTime($2.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExpirationTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpirationTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.Timestamp ensureExpirationTime() => $_ensure(4);

  /// *
  ///  A flag to delay execution until expiration.
  ///  <p>
  ///  If this flag is set the scheduled transaction SHALL NOT be evaluated for
  ///  execution before the network consensus time matches or exceeds the
  ///  `expiration_time`.<br/>
  ///  If this flag is not set, the scheduled transaction SHALL be executed
  ///  immediately when all required signatures are received, whether in this
  ///  `scheduleCreate` transaction or a later `scheduleSign` transaction.<br/>
  ///  This value SHALL NOT be used and MUST NOT be set when the network
  ///  configuration value `scheduling.longTermEnabled` is not enabled.
  @$pb.TagNumber(13)
  $core.bool get waitForExpiry => $_getBF(5);
  @$pb.TagNumber(13)
  set waitForExpiry($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(13)
  $core.bool hasWaitForExpiry() => $_has(5);
  @$pb.TagNumber(13)
  void clearWaitForExpiry() => $_clearField(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
