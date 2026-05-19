// This is a generated file - do not edit.
//
// Generated from freeze_type.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// *
///  An enumeration of possible network freeze types.
///
///  Each enumerated value SHALL be associated to a single network freeze
///  scenario. Each freeze scenario defines the specific parameters
///  REQUIRED for that freeze.
class FreezeType extends $pb.ProtobufEnum {
  /// *
  ///  An invalid freeze type.
  ///  <p>
  ///  The first value in a protobuf enum is a default value. This default
  ///  is RECOMMENDED to be an invalid value to aid in detecting unset fields.
  static const FreezeType UNKNOWN_FREEZE_TYPE =
      FreezeType._(0, _omitEnumNames ? '' : 'UNKNOWN_FREEZE_TYPE');

  /// *
  ///  Freeze the network, and take no further action.
  ///  <p>
  ///  The `start_time` field is REQUIRED, MUST be strictly later than the
  ///  consensus time when this transaction is handled, and SHOULD be between
  ///  `300` and `3600` seconds after the transaction identifier
  ///  `transactionValidStart` field.<br/>
  ///  The fields `update_file` and `file_hash` SHALL be ignored.<br/>
  ///  A `FREEZE_ONLY` transaction SHALL NOT perform any network
  ///  changes or upgrades.<br/>
  ///  After this freeze is processed manual intervention is REQUIRED
  ///  to restart the network.
  static const FreezeType FREEZE_ONLY =
      FreezeType._(1, _omitEnumNames ? '' : 'FREEZE_ONLY');

  /// *
  ///  This freeze type does not freeze the network, but begins
  ///  "preparation" to upgrade the network.
  ///  <p>
  ///  The fields `update_file` and `file_hash` are REQUIRED
  ///  and MUST be valid.<br/>
  ///  The `start_time` field SHALL be ignored.<br/>
  ///  A `PREPARE_UPGRADE` transaction SHALL NOT freeze the network or
  ///  interfere with general transaction processing.<br/>
  ///  If this freeze type is initiated after a `TELEMETRY_UPGRADE`, the
  ///  prepared telemetry upgrade SHALL be reset and all telemetry upgrade
  ///  artifacts in the filesystem SHALL be deleted.<br/>
  ///  At some point after this freeze type completes (dependent on the size
  ///  of the upgrade file), the network SHALL be prepared to complete
  ///  a software upgrade of all nodes.
  static const FreezeType PREPARE_UPGRADE =
      FreezeType._(2, _omitEnumNames ? '' : 'PREPARE_UPGRADE');

  /// *
  ///  Freeze the network to perform a software upgrade.
  ///  <p>
  ///  The `start_time` field is REQUIRED, MUST be strictly later than the
  ///  consensus time when this transaction is handled, and SHOULD be between
  ///  `300` and `3600` seconds after the transaction identifier
  ///  `transactionValidStart` field.<br/>
  ///  A software upgrade file MUST be prepared prior to this transaction.<br/>
  ///  After this transaction completes, the network SHALL initiate an
  ///  upgrade and restart of all nodes at the start time specified.
  static const FreezeType FREEZE_UPGRADE =
      FreezeType._(3, _omitEnumNames ? '' : 'FREEZE_UPGRADE');

  /// *
  ///  Abort a pending network freeze operation.
  ///  <p>
  ///  All fields SHALL be ignored for this freeze type.<br/>
  ///  This freeze type MAY be submitted after a `FREEZE_ONLY`,
  ///  `FREEZE_UPGRADE`, or `TELEMETRY_UPGRADE` is initiated.<br/>
  ///  This freeze type MUST be submitted and reach consensus
  ///  before the `start_time` designated for the current pending
  ///  freeze to be effective.<br/>
  ///  After this freeze type is processed, the upgrade file hash
  ///  and pending freeze start time stored in the network SHALL
  ///  be reset to default (empty) values.
  static const FreezeType FREEZE_ABORT =
      FreezeType._(4, _omitEnumNames ? '' : 'FREEZE_ABORT');

  /// *
  ///  Prepare an upgrade of auxiliary services and containers
  ///  providing telemetry/metrics.
  ///  <p>
  ///  The `start_time` field is REQUIRED, MUST be strictly later than the
  ///  consensus time when this transaction is handled, and SHOULD be between
  ///  `300` and `3600` seconds after the transaction identifier
  ///  `transactionValidStart` field.<br/>
  ///  The `update_file` field is REQUIRED and MUST be valid.<br/>
  ///  A `TELEMETRY_UPGRADE` transaction SHALL NOT freeze the network or
  ///  interfere with general transaction processing.<br/>
  ///  This freeze type MUST NOT be initiated between a `PREPARE_UPGRADE`
  ///  and `FREEZE_UPGRADE`. If this freeze type is initiated after a
  ///  `PREPARE_UPGRADE`, the prepared upgrade SHALL be reset and all software
  ///  upgrade artifacts in the filesystem SHALL be deleted.<br/>
  ///  At some point after this freeze type completes (dependent on the
  ///  size of the upgrade file), the network SHALL automatically upgrade
  ///  the telemetry/metrics services and containers as directed in
  ///  the specified telemetry upgrade file.
  ///  <blockquote> The condition that `start_time` is REQUIRED is an
  ///  historical anomaly and SHOULD change in a future release.</blockquote>
  static const FreezeType TELEMETRY_UPGRADE =
      FreezeType._(5, _omitEnumNames ? '' : 'TELEMETRY_UPGRADE');

  static const $core.List<FreezeType> values = <FreezeType>[
    UNKNOWN_FREEZE_TYPE,
    FREEZE_ONLY,
    PREPARE_UPGRADE,
    FREEZE_UPGRADE,
    FREEZE_ABORT,
    TELEMETRY_UPGRADE,
  ];

  static final $core.List<FreezeType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static FreezeType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FreezeType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
