// This is a generated file - do not edit.
//
// Generated from schedule_sign.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Add signatures to an existing scheduled transaction.
///
///  When a schedule _executes_ successfully, the receipt SHALL include a
///  `scheduledTransactionID` with the `TransactionID` of the transaction that
///  executed.<br/>
///  When a scheduled transaction is executed the network SHALL charge the
///  regular _service_ fee for the transaction to the `payerAccountID` for
///  that schedule, but SHALL NOT charge node or network fees.<br/>
///  If the `payerAccountID` field is not set, the effective `payerAccountID`
///  SHALL be the `payer` for this create transaction.<br/>
///  Each signature on this transaction SHALL "activate" the corresponding
///  cryptographic("primitive") key for the schedule identified.<br/>
///  Signature requirements SHALL be met when the set of active keys includes
///  all keys required by the scheduled transaction.<br/>
///  A scheduled transaction for a "long term" schedule SHALL NOT execute if
///  the signature requirements for that transaction are not met when the
///  network consensus time reaches the schedule `expiration_time`.<br/>
///  A "short term" schedule SHALL execute immediately once signature
///  requirements are met. This MAY be immediately when created.<br/>
///
///  ### Block Stream Effects
///  If the scheduled transaction is executed immediately following this
///  `scheduleSign` transaction, the transaction record SHALL include a
///  `scheduleRef` with the schedule identifier `scheduleID`.
class ScheduleSignTransactionBody extends $pb.GeneratedMessage {
  factory ScheduleSignTransactionBody({
    $0.ScheduleID? scheduleID,
  }) {
    final result = create();
    if (scheduleID != null) result.scheduleID = scheduleID;
    return result;
  }

  ScheduleSignTransactionBody._();

  factory ScheduleSignTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScheduleSignTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleSignTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.ScheduleID>(1, _omitFieldNames ? '' : 'scheduleID',
        protoName: 'scheduleID', subBuilder: $0.ScheduleID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleSignTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleSignTransactionBody copyWith(
          void Function(ScheduleSignTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as ScheduleSignTransactionBody))
          as ScheduleSignTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleSignTransactionBody create() =>
      ScheduleSignTransactionBody._();
  @$core.override
  ScheduleSignTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScheduleSignTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleSignTransactionBody>(create);
  static ScheduleSignTransactionBody? _defaultInstance;

  /// *
  ///  A schedule identifier.
  ///  <p>
  ///  This MUST identify the schedule to which signatures SHALL be added.
  @$pb.TagNumber(1)
  $0.ScheduleID get scheduleID => $_getN(0);
  @$pb.TagNumber(1)
  set scheduleID($0.ScheduleID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasScheduleID() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ScheduleID ensureScheduleID() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
