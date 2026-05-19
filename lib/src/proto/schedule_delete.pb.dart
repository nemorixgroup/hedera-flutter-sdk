// This is a generated file - do not edit.
//
// Generated from schedule_delete.proto.

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
///  Mark a schedule in the network state as deleted.
///
///  This transaction MUST be signed by the `adminKey` for the
///  identified schedule.<br/>
///  If a schedule does not have `adminKey` set or if `adminKey` is an empty
///  `KeyList`, that schedule SHALL be immutable and MUST NOT be deleted.<br/>
///  A deleted schedule SHALL not be executed.<br/>
///  A deleted schedule MUST NOT be the subject of a subsequent
///  `scheduleSign` transaction.
///
///  ### Block Stream Effects
///  None
class ScheduleDeleteTransactionBody extends $pb.GeneratedMessage {
  factory ScheduleDeleteTransactionBody({
    $0.ScheduleID? scheduleID,
  }) {
    final result = create();
    if (scheduleID != null) result.scheduleID = scheduleID;
    return result;
  }

  ScheduleDeleteTransactionBody._();

  factory ScheduleDeleteTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScheduleDeleteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleDeleteTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.ScheduleID>(1, _omitFieldNames ? '' : 'scheduleID',
        protoName: 'scheduleID', subBuilder: $0.ScheduleID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleDeleteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleDeleteTransactionBody copyWith(
          void Function(ScheduleDeleteTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as ScheduleDeleteTransactionBody))
          as ScheduleDeleteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleDeleteTransactionBody create() =>
      ScheduleDeleteTransactionBody._();
  @$core.override
  ScheduleDeleteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScheduleDeleteTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleDeleteTransactionBody>(create);
  static ScheduleDeleteTransactionBody? _defaultInstance;

  /// *
  ///  A schedule identifier.
  ///  <p>
  ///  This MUST identify the schedule which SHALL be deleted.
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
