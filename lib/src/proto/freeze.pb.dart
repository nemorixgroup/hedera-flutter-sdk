// This is a generated file - do not edit.
//
// Generated from freeze.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;
import 'freeze_type.pbenum.dart' as $2;
import 'timestamp.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A transaction body for all five freeze transactions.
///
///  Combining five different transactions into a single message, this
///  transaction body MUST support options to schedule a freeze, abort a
///  scheduled freeze, prepare a software upgrade, prepare a telemetry
///  upgrade, or initiate a software upgrade.
///
///  For a scheduled freeze, at the scheduled time, according to
///  network consensus time
///    - A freeze (`FREEZE_ONLY`) causes the network nodes to stop creating
///      events or accepting transactions, and enter a persistent
///      maintenance state.
///    - A freeze upgrade (`FREEZE_UPGRADE`) causes the network nodes to stop
///      creating events or accepting transactions, and upgrade the node software
///      from a previously prepared upgrade package. The network nodes then
///      restart and rejoin the network after upgrading.
///
///  For other freeze types, immediately upon processing the freeze transaction
///    - A Freeze Abort (`FREEZE_ABORT`) cancels any pending scheduled freeze.
///    - A prepare upgrade (`PREPARE_UPGRADE`) begins to extract the contents of
///      the specified upgrade file to the local filesystem.
///    - A telemetry upgrade (`TELEMETRY_UPGRADE`) causes the network nodes to
///      extract a telemetry upgrade package to the local filesystem and signal
///      other software on the machine to upgrade, without impacting the node or
///      network processing.
///
///  ### Block Stream Effects
///  Unknown
class FreezeTransactionBody extends $pb.GeneratedMessage {
  factory FreezeTransactionBody({
    @$core.Deprecated('This field is deprecated.') $core.int? startHour,
    @$core.Deprecated('This field is deprecated.') $core.int? startMin,
    @$core.Deprecated('This field is deprecated.') $core.int? endHour,
    @$core.Deprecated('This field is deprecated.') $core.int? endMin,
    $0.FileID? updateFile,
    $core.List<$core.int>? fileHash,
    $1.Timestamp? startTime,
    $2.FreezeType? freezeType,
  }) {
    final result = create();
    if (startHour != null) result.startHour = startHour;
    if (startMin != null) result.startMin = startMin;
    if (endHour != null) result.endHour = endHour;
    if (endMin != null) result.endMin = endMin;
    if (updateFile != null) result.updateFile = updateFile;
    if (fileHash != null) result.fileHash = fileHash;
    if (startTime != null) result.startTime = startTime;
    if (freezeType != null) result.freezeType = freezeType;
    return result;
  }

  FreezeTransactionBody._();

  factory FreezeTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FreezeTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FreezeTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'startHour', protoName: 'startHour')
    ..aI(2, _omitFieldNames ? '' : 'startMin', protoName: 'startMin')
    ..aI(3, _omitFieldNames ? '' : 'endHour', protoName: 'endHour')
    ..aI(4, _omitFieldNames ? '' : 'endMin', protoName: 'endMin')
    ..aOM<$0.FileID>(5, _omitFieldNames ? '' : 'updateFile',
        subBuilder: $0.FileID.create)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'fileHash', $pb.PbFieldType.OY)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'startTime',
        subBuilder: $1.Timestamp.create)
    ..aE<$2.FreezeType>(8, _omitFieldNames ? '' : 'freezeType',
        enumValues: $2.FreezeType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FreezeTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FreezeTransactionBody copyWith(
          void Function(FreezeTransactionBody) updates) =>
      super.copyWith((message) => updates(message as FreezeTransactionBody))
          as FreezeTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FreezeTransactionBody create() => FreezeTransactionBody._();
  @$core.override
  FreezeTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FreezeTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FreezeTransactionBody>(create);
  static FreezeTransactionBody? _defaultInstance;

  /// *
  ///  Rejected if set; replace with `start_time`.<br/>
  ///  The start hour (in UTC time), a value between 0 and 23
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.int get startHour => $_getIZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set startHour($core.int value) => $_setSignedInt32(0, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasStartHour() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearStartHour() => $_clearField(1);

  /// *
  ///  Rejected if set; replace with `start_time`.<br/>
  ///  The start minute (in UTC time), a value between 0 and 59
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.int get startMin => $_getIZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set startMin($core.int value) => $_setSignedInt32(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasStartMin() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearStartMin() => $_clearField(2);

  /// *
  ///  Rejected if set; end time is neither assigned nor guaranteed and depends
  ///  on many uncontrolled factors.<br/>
  ///  The end hour (in UTC time), a value between 0 and 23
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.int get endHour => $_getIZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set endHour($core.int value) => $_setSignedInt32(2, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasEndHour() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearEndHour() => $_clearField(3);

  /// *
  ///  Rejected if set; end time is neither assigned nor guaranteed and depends
  ///  on many uncontrolled factors.<br/>
  ///  The end minute (in UTC time), a value between 0 and 59
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.int get endMin => $_getIZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set endMin($core.int value) => $_setSignedInt32(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasEndMin() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearEndMin() => $_clearField(4);

  /// *
  ///  An upgrade file.
  ///  <p>
  ///  If set, the identifier of a file in network state.<br/>
  ///  The contents of this file MUST be a `zip` file and this data
  ///  SHALL be extracted to the node filesystem during a
  ///  `PREPARE_UPGRADE` or `TELEMETRY_UPGRADE` freeze type.<br/>
  ///  The `file_hash` field MUST match the SHA384 hash of the content
  ///  of this file.<br/>
  ///  The extracted data SHALL be used to perform a network software update
  ///  if a `FREEZE_UPGRADE` freeze type is subsequently processed.
  @$pb.TagNumber(5)
  $0.FileID get updateFile => $_getN(4);
  @$pb.TagNumber(5)
  set updateFile($0.FileID value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUpdateFile() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdateFile() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.FileID ensureUpdateFile() => $_ensure(4);

  /// *
  ///  A SHA384 hash of file content.<br/>
  ///  This is a hash of the file identified by `update_file`.
  ///  <p>
  ///  This MUST be set if `update_file` is set, and MUST match the
  ///  SHA384 hash of the contents of that file.
  @$pb.TagNumber(6)
  $core.List<$core.int> get fileHash => $_getN(5);
  @$pb.TagNumber(6)
  set fileHash($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFileHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearFileHash() => $_clearField(6);

  /// *
  ///  A start time for the freeze.
  ///  <p>
  ///  If this field is REQUIRED for the specified `freeze_type`, then
  ///  when the network consensus time reaches this instant<ol>
  ///    <li>The network SHALL stop accepting transactions.</li>
  ///    <li>The network SHALL gossip a freeze state.</li>
  ///    <li>The nodes SHALL, in coordinated order, disconnect and
  ///        shut down.</li>
  ///    <li>The nodes SHALL halt or perform a software upgrade, depending
  ///        on `freeze_type`.</li>
  ///    <li>If the `freeze_type` is `FREEZE_UPGRADE`, the nodes SHALL
  ///        restart and rejoin the network upon completion of the
  ///        software upgrade.</li>
  ///  </ol>
  ///  <blockquote>
  ///  If the `freeze_type` is `TELEMETRY_UPGRADE`, the start time is required,
  ///  but the network SHALL NOT stop, halt, or interrupt transaction
  ///  processing. The required field is an historical anomaly and SHOULD
  ///  change in a future release.</blockquote>
  @$pb.TagNumber(7)
  $1.Timestamp get startTime => $_getN(6);
  @$pb.TagNumber(7)
  set startTime($1.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasStartTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartTime() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureStartTime() => $_ensure(6);

  /// *
  ///  The type of freeze.
  ///  <p>
  ///  This REQUIRED field effectively selects between five quite different
  ///  transactions in the same transaction body. Depending on this value
  ///  the service may schedule a freeze, prepare upgrades, perform upgrades,
  ///  or even abort a previously scheduled freeze.
  @$pb.TagNumber(8)
  $2.FreezeType get freezeType => $_getN(7);
  @$pb.TagNumber(8)
  set freezeType($2.FreezeType value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasFreezeType() => $_has(7);
  @$pb.TagNumber(8)
  void clearFreezeType() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
