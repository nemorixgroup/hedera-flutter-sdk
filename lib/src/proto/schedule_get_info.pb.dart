// This is a generated file - do not edit.
//
// Generated from schedule_get_info.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $4;
import 'schedulable_transaction_body.pb.dart' as $3;
import 'timestamp.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Request for information about a scheduled transaction.
///
///  If the requested schedule does not exist, the network SHALL respond
///  with `INVALID_SCHEDULE_ID`.
class ScheduleGetInfoQuery extends $pb.GeneratedMessage {
  factory ScheduleGetInfoQuery({
    $0.QueryHeader? header,
    $1.ScheduleID? scheduleID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (scheduleID != null) result.scheduleID = scheduleID;
    return result;
  }

  ScheduleGetInfoQuery._();

  factory ScheduleGetInfoQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScheduleGetInfoQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleGetInfoQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.ScheduleID>(2, _omitFieldNames ? '' : 'scheduleID',
        protoName: 'scheduleID', subBuilder: $1.ScheduleID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleGetInfoQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleGetInfoQuery copyWith(void Function(ScheduleGetInfoQuery) updates) =>
      super.copyWith((message) => updates(message as ScheduleGetInfoQuery))
          as ScheduleGetInfoQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleGetInfoQuery create() => ScheduleGetInfoQuery._();
  @$core.override
  ScheduleGetInfoQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScheduleGetInfoQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleGetInfoQuery>(create);
  static ScheduleGetInfoQuery? _defaultInstance;

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
  ///  A schedule identifier.
  ///  <p>
  ///  This SHALL identify the schedule to retrieve.<br/>
  ///  This field is REQUIRED.
  @$pb.TagNumber(2)
  $1.ScheduleID get scheduleID => $_getN(1);
  @$pb.TagNumber(2)
  set scheduleID($1.ScheduleID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScheduleID() => $_has(1);
  @$pb.TagNumber(2)
  void clearScheduleID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.ScheduleID ensureScheduleID() => $_ensure(1);
}

enum ScheduleInfo_Data { deletionTime, executionTime, notSet }

/// *
///  Information summarizing schedule state
class ScheduleInfo extends $pb.GeneratedMessage {
  factory ScheduleInfo({
    $1.ScheduleID? scheduleID,
    $2.Timestamp? deletionTime,
    $2.Timestamp? executionTime,
    $2.Timestamp? expirationTime,
    $3.SchedulableTransactionBody? scheduledTransactionBody,
    $core.String? memo,
    $1.Key? adminKey,
    $1.KeyList? signers,
    $1.AccountID? creatorAccountID,
    $1.AccountID? payerAccountID,
    $1.TransactionID? scheduledTransactionID,
    $core.List<$core.int>? ledgerId,
    $core.bool? waitForExpiry,
  }) {
    final result = create();
    if (scheduleID != null) result.scheduleID = scheduleID;
    if (deletionTime != null) result.deletionTime = deletionTime;
    if (executionTime != null) result.executionTime = executionTime;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (scheduledTransactionBody != null)
      result.scheduledTransactionBody = scheduledTransactionBody;
    if (memo != null) result.memo = memo;
    if (adminKey != null) result.adminKey = adminKey;
    if (signers != null) result.signers = signers;
    if (creatorAccountID != null) result.creatorAccountID = creatorAccountID;
    if (payerAccountID != null) result.payerAccountID = payerAccountID;
    if (scheduledTransactionID != null)
      result.scheduledTransactionID = scheduledTransactionID;
    if (ledgerId != null) result.ledgerId = ledgerId;
    if (waitForExpiry != null) result.waitForExpiry = waitForExpiry;
    return result;
  }

  ScheduleInfo._();

  factory ScheduleInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScheduleInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ScheduleInfo_Data> _ScheduleInfo_DataByTag =
      {
    2: ScheduleInfo_Data.deletionTime,
    3: ScheduleInfo_Data.executionTime,
    0: ScheduleInfo_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<$1.ScheduleID>(1, _omitFieldNames ? '' : 'scheduleID',
        protoName: 'scheduleID', subBuilder: $1.ScheduleID.create)
    ..aOM<$2.Timestamp>(2, _omitFieldNames ? '' : 'deletionTime',
        subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'executionTime',
        subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $2.Timestamp.create)
    ..aOM<$3.SchedulableTransactionBody>(
        5, _omitFieldNames ? '' : 'scheduledTransactionBody',
        protoName: 'scheduledTransactionBody',
        subBuilder: $3.SchedulableTransactionBody.create)
    ..aOS(6, _omitFieldNames ? '' : 'memo')
    ..aOM<$1.Key>(7, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $1.Key.create)
    ..aOM<$1.KeyList>(8, _omitFieldNames ? '' : 'signers',
        subBuilder: $1.KeyList.create)
    ..aOM<$1.AccountID>(9, _omitFieldNames ? '' : 'creatorAccountID',
        protoName: 'creatorAccountID', subBuilder: $1.AccountID.create)
    ..aOM<$1.AccountID>(10, _omitFieldNames ? '' : 'payerAccountID',
        protoName: 'payerAccountID', subBuilder: $1.AccountID.create)
    ..aOM<$1.TransactionID>(11, _omitFieldNames ? '' : 'scheduledTransactionID',
        protoName: 'scheduledTransactionID',
        subBuilder: $1.TransactionID.create)
    ..a<$core.List<$core.int>>(
        12, _omitFieldNames ? '' : 'ledgerId', $pb.PbFieldType.OY)
    ..aOB(13, _omitFieldNames ? '' : 'waitForExpiry')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleInfo copyWith(void Function(ScheduleInfo) updates) =>
      super.copyWith((message) => updates(message as ScheduleInfo))
          as ScheduleInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleInfo create() => ScheduleInfo._();
  @$core.override
  ScheduleInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScheduleInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleInfo>(create);
  static ScheduleInfo? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  ScheduleInfo_Data whichData() => _ScheduleInfo_DataByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearData() => $_clearField($_whichOneof(0));

  /// *
  ///  A schedule identifier.
  ///  <p>
  ///  This SHALL identify the schedule retrieved.
  @$pb.TagNumber(1)
  $1.ScheduleID get scheduleID => $_getN(0);
  @$pb.TagNumber(1)
  set scheduleID($1.ScheduleID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasScheduleID() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleID() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.ScheduleID ensureScheduleID() => $_ensure(0);

  /// *
  ///  A deletion timestamp.
  ///  <p>
  ///  If the schedule was deleted, this SHALL be set to the consensus
  ///  timestamp of the `deleteSchedule` transaction.<br/>
  ///  If the schedule is _not_ deleted, this field SHALL NOT be set.
  @$pb.TagNumber(2)
  $2.Timestamp get deletionTime => $_getN(1);
  @$pb.TagNumber(2)
  set deletionTime($2.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDeletionTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeletionTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureDeletionTime() => $_ensure(1);

  /// *
  ///  An execution timestamp.
  ///  <p>
  ///  If the schedule was completed, and the _scheduled_ transaction
  ///  executed, this SHALL be set to the consensus timestamp of the
  ///  transaction that initiated that execution.<br/>
  ///  If the schedule is _not_ complete, this field SHALL NOT be set.
  @$pb.TagNumber(3)
  $2.Timestamp get executionTime => $_getN(2);
  @$pb.TagNumber(3)
  set executionTime($2.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExecutionTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearExecutionTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureExecutionTime() => $_ensure(2);

  /// *
  ///  An expiration timestamp.<br/>
  ///  This represents the time at which the schedule will expire. For a
  ///  long-term schedule (if enabled) this is when the schedule will be
  ///  executed, assuming it meets signature requirements at that time.
  ///  For a short-term schedule, this is the deadline to complete the
  ///  signature requirements for the scheduled transaction to execute.
  ///  Regardless of schedule type, the schedule will be removed from
  ///  state when it expires.
  ///  <p>
  ///  A schedule SHALL be removed from state when it expires.<br/>
  ///  A short-term schedule MUST meet signature requirements strictly
  ///  before expiration or it SHALL NOT be executed.<br/>
  ///  A long-term schedule SHALL be executed if, and only if, all signature
  ///  requirements for the scheduled transaction are met at expiration.<br/>
  ///  A long-term schedule SHALL NOT be executed if any signature requirement
  ///  for the scheduled transaction are not met at expiration.<br/>
  @$pb.TagNumber(4)
  $2.Timestamp get expirationTime => $_getN(3);
  @$pb.TagNumber(4)
  set expirationTime($2.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExpirationTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpirationTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureExpirationTime() => $_ensure(3);

  /// *
  ///  A scheduled transaction.
  ///  <p>
  ///  This SHALL be a transaction type enabled in the network property
  ///  `scheduling.whitelist`, and SHALL NOT be any other
  ///  transaction type.<br/>
  ///  This transaction SHALL be executed if the schedule meets all signature
  ///  and execution time requirements for this transaction.<br/>
  ///  The signature requirements for this transaction SHALL be evaluated
  ///  at schedule creation, SHALL be reevaluated with each `signSchedule`
  ///  transaction, and, for long-term schedules, SHALL be reevaluated when
  ///  the schedule expires.<br/>
  @$pb.TagNumber(5)
  $3.SchedulableTransactionBody get scheduledTransactionBody => $_getN(4);
  @$pb.TagNumber(5)
  set scheduledTransactionBody($3.SchedulableTransactionBody value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasScheduledTransactionBody() => $_has(4);
  @$pb.TagNumber(5)
  void clearScheduledTransactionBody() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.SchedulableTransactionBody ensureScheduledTransactionBody() => $_ensure(4);

  /// *
  ///  A short description for this schedule.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(6)
  $core.String get memo => $_getSZ(5);
  @$pb.TagNumber(6)
  set memo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMemo() => $_has(5);
  @$pb.TagNumber(6)
  void clearMemo() => $_clearField(6);

  /// *
  ///  The key used to delete the schedule from state
  @$pb.TagNumber(7)
  $1.Key get adminKey => $_getN(6);
  @$pb.TagNumber(7)
  set adminKey($1.Key value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAdminKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearAdminKey() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Key ensureAdminKey() => $_ensure(6);

  /// *
  ///  A list of "valid" signatures for this schedule.<br/>
  ///  This list contains only "primitive" (i.e. cryptographic or contract)
  ///  signatures. The full signature requirements for the scheduled
  ///  transaction are evaluated as if this list of keys had signed the
  ///  scheduled transaction directly.
  ///  <p>
  ///  This list SHALL contain every "primitive" key that has signed the
  ///  original `createSchedule`, or any subsequent
  ///  `signSchedule` transaction.<br/>
  ///  This list MAY elide any signature not likely to be required by the
  ///  scheduled transaction. Such requirement SHOULD be evaluated when the
  ///  signature is presented (i.e. during evaluation of a `createSchedule` or
  ///  `signSchedule` transaction).
  @$pb.TagNumber(8)
  $1.KeyList get signers => $_getN(7);
  @$pb.TagNumber(8)
  set signers($1.KeyList value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSigners() => $_has(7);
  @$pb.TagNumber(8)
  void clearSigners() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.KeyList ensureSigners() => $_ensure(7);

  /// *
  ///  An account identifier.
  ///  <p>
  ///  This SHALL identify the account that created this schedule.
  @$pb.TagNumber(9)
  $1.AccountID get creatorAccountID => $_getN(8);
  @$pb.TagNumber(9)
  set creatorAccountID($1.AccountID value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCreatorAccountID() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatorAccountID() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.AccountID ensureCreatorAccountID() => $_ensure(8);

  /// *
  ///  An account identifier.
  ///  <p>
  ///  The identified account SHALL pay the full transaction fee for the
  ///  scheduled transaction _when it executes_.
  @$pb.TagNumber(10)
  $1.AccountID get payerAccountID => $_getN(9);
  @$pb.TagNumber(10)
  set payerAccountID($1.AccountID value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasPayerAccountID() => $_has(9);
  @$pb.TagNumber(10)
  void clearPayerAccountID() => $_clearField(10);
  @$pb.TagNumber(10)
  $1.AccountID ensurePayerAccountID() => $_ensure(9);

  /// *
  ///  A transaction identifier.
  ///  <p>
  ///  This SHALL be recorded as the transaction identifier for the
  ///  _scheduled_ transaction, if (and when) it is executed.
  @$pb.TagNumber(11)
  $1.TransactionID get scheduledTransactionID => $_getN(10);
  @$pb.TagNumber(11)
  set scheduledTransactionID($1.TransactionID value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasScheduledTransactionID() => $_has(10);
  @$pb.TagNumber(11)
  void clearScheduledTransactionID() => $_clearField(11);
  @$pb.TagNumber(11)
  $1.TransactionID ensureScheduledTransactionID() => $_ensure(10);

  /// *
  ///  The ledger ID of the network that generated this response.
  ///  <p>
  ///  This value SHALL identify the distributed ledger that responded to
  ///  this query.
  @$pb.TagNumber(12)
  $core.List<$core.int> get ledgerId => $_getN(11);
  @$pb.TagNumber(12)
  set ledgerId($core.List<$core.int> value) => $_setBytes(11, value);
  @$pb.TagNumber(12)
  $core.bool hasLedgerId() => $_has(11);
  @$pb.TagNumber(12)
  void clearLedgerId() => $_clearField(12);

  /// *
  ///  A flag indicating this schedule will execute when it expires.
  ///  <p>
  ///  If this field is set
  ///  <ul>
  ///    <li>This schedule SHALL be considered a "long-term" schedule.</li>
  ///    <li>This schedule SHALL be evaluated when the network consensus time
  ///        reaches the `expirationTime`, and if the signature requirements
  ///        for the scheduled transaction are met at that time, the
  ///        scheduled transaction SHALL be executed.</li>
  ///    <li>This schedule SHALL NOT be executed before the network consensus
  ///        time reaches the `expirationTime`.</li>
  ///  </ul>
  ///  If this field is not set
  ///  <ul>
  ///    <li>This schedule SHALL be considered a "short-term" schedule.</li>
  ///    <li>This schedule SHALL be evaluated when created, and reevaluated
  ///        with each `signSchedule` transaction, and if the signature
  ///        requirements for the scheduled transaction are met at that time,
  ///        the scheduled transaction SHALL be executed immediately.</li>
  ///    <li>This schedule SHALL be executed as soon as the signature
  ///        requirements are met, and MUST be executed before the network
  ///        consensus time reaches the `expirationTime`, if at all.</li>
  ///  </ul>
  @$pb.TagNumber(13)
  $core.bool get waitForExpiry => $_getBF(12);
  @$pb.TagNumber(13)
  set waitForExpiry($core.bool value) => $_setBool(12, value);
  @$pb.TagNumber(13)
  $core.bool hasWaitForExpiry() => $_has(12);
  @$pb.TagNumber(13)
  void clearWaitForExpiry() => $_clearField(13);
}

/// *
///  A response message for a `getScheduleInfo` query.
class ScheduleGetInfoResponse extends $pb.GeneratedMessage {
  factory ScheduleGetInfoResponse({
    $4.ResponseHeader? header,
    ScheduleInfo? scheduleInfo,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (scheduleInfo != null) result.scheduleInfo = scheduleInfo;
    return result;
  }

  ScheduleGetInfoResponse._();

  factory ScheduleGetInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScheduleGetInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleGetInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$4.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $4.ResponseHeader.create)
    ..aOM<ScheduleInfo>(2, _omitFieldNames ? '' : 'scheduleInfo',
        protoName: 'scheduleInfo', subBuilder: ScheduleInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleGetInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleGetInfoResponse copyWith(
          void Function(ScheduleGetInfoResponse) updates) =>
      super.copyWith((message) => updates(message as ScheduleGetInfoResponse))
          as ScheduleGetInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleGetInfoResponse create() => ScheduleGetInfoResponse._();
  @$core.override
  ScheduleGetInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScheduleGetInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleGetInfoResponse>(create);
  static ScheduleGetInfoResponse? _defaultInstance;

  /// *
  ///  The standard response information for queries.<br/>
  ///  This includes the values requested in the `QueryHeader`
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $4.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($4.ResponseHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.ResponseHeader ensureHeader() => $_ensure(0);

  /// *
  ///  Detail information for a schedule.
  ///  <p>
  ///  This field SHALL contain all available schedule detail.
  @$pb.TagNumber(2)
  ScheduleInfo get scheduleInfo => $_getN(1);
  @$pb.TagNumber(2)
  set scheduleInfo(ScheduleInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScheduleInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearScheduleInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  ScheduleInfo ensureScheduleInfo() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
