// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from throttle_definitions.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pbenum.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A single throttle limit applied to one or more operations.
///
///  The list of operations MUST contain at least one entry.<br/>
///  The throttle limit SHALL be specified in thousandths of an operation
///  per second; one operation per second for the network would be `1000`.<br/>
///  The throttle limit MUST be greater than zero (`0`).
class ThrottleGroup extends $pb.GeneratedMessage {
  factory ThrottleGroup({
    $core.Iterable<$0.HederaFunctionality>? operations,
    $fixnum.Int64? milliOpsPerSec,
  }) {
    final result = create();
    if (operations != null) result.operations.addAll(operations);
    if (milliOpsPerSec != null) result.milliOpsPerSec = milliOpsPerSec;
    return result;
  }

  ThrottleGroup._();

  factory ThrottleGroup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThrottleGroup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThrottleGroup',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pc<$0.HederaFunctionality>(
        1, _omitFieldNames ? '' : 'operations', $pb.PbFieldType.KE,
        valueOf: $0.HederaFunctionality.valueOf,
        enumValues: $0.HederaFunctionality.values,
        defaultEnumValue: $0.HederaFunctionality.NONE)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'milliOpsPerSec', $pb.PbFieldType.OU6,
        protoName: 'milliOpsPerSec', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThrottleGroup clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThrottleGroup copyWith(void Function(ThrottleGroup) updates) =>
      super.copyWith((message) => updates(message as ThrottleGroup))
          as ThrottleGroup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThrottleGroup create() => ThrottleGroup._();
  @$core.override
  ThrottleGroup createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThrottleGroup getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThrottleGroup>(create);
  static ThrottleGroup? _defaultInstance;

  /// *
  ///  A list of operations to be throttled.
  ///  <p>
  ///  This list MUST contain at least one item.<br/>
  ///  This list SHOULD NOT contain any item included in any other
  ///  active `ThrottleGroup`.
  @$pb.TagNumber(1)
  $pb.PbList<$0.HederaFunctionality> get operations => $_getList(0);

  /// *
  ///  A throttle limit for this group.<br/>
  ///  This is a total number of operations, in thousandths, the network may
  ///  perform each second for this group. Every node executes every transaction,
  ///  so this limit effectively applies individually to each node as well.<br/>
  ///  <p>
  ///  This value MUST be greater than zero (`0`).<br/>
  ///  This value SHOULD be less than `9,223,372`.<br/>
  @$pb.TagNumber(2)
  $fixnum.Int64 get milliOpsPerSec => $_getI64(1);
  @$pb.TagNumber(2)
  set milliOpsPerSec($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMilliOpsPerSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearMilliOpsPerSec() => $_clearField(2);
}

/// *
///  A "bucket" of performance allocated across one or more throttle groups.<br/>
///  This entry combines one or more throttle groups into a single unit to
///  calculate limitations and congestion. Each "bucket" "fills" as operations
///  are completed, then "drains" over a period of time defined for each bucket.
///  This fill-and-drain characteristic enables the network to process sudden
///  bursts of heavy traffic while still observing throttle limits over longer
///  timeframes.
///
///  The value of `burstPeriodMs` is combined with the `milliOpsPerSec`
///  values for the individual throttle groups to determine the total
///  bucket "capacity". This combination MUST be less than the maximum
///  value of a signed long integer (`9223372036854775807`), when scaled to
///  a nanosecond measurement resolution.
///
///  > Note
///  >> There is some question regarding the mechanism of calculating the
///  >> combination of `burstPeriodMs` and `milliOpsPerSec`. The calculation
///  >> Is implemented in difficult-to-find code, and very likely does not
///  >> match the approach described here.
class ThrottleBucket extends $pb.GeneratedMessage {
  factory ThrottleBucket({
    $core.String? name,
    $fixnum.Int64? burstPeriodMs,
    $core.Iterable<ThrottleGroup>? throttleGroups,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (burstPeriodMs != null) result.burstPeriodMs = burstPeriodMs;
    if (throttleGroups != null) result.throttleGroups.addAll(throttleGroups);
    return result;
  }

  ThrottleBucket._();

  factory ThrottleBucket.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThrottleBucket.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThrottleBucket',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'burstPeriodMs', $pb.PbFieldType.OU6,
        protoName: 'burstPeriodMs', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<ThrottleGroup>(3, _omitFieldNames ? '' : 'throttleGroups',
        protoName: 'throttleGroups', subBuilder: ThrottleGroup.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThrottleBucket clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThrottleBucket copyWith(void Function(ThrottleBucket) updates) =>
      super.copyWith((message) => updates(message as ThrottleBucket))
          as ThrottleBucket;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThrottleBucket create() => ThrottleBucket._();
  @$core.override
  ThrottleBucket createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThrottleBucket getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThrottleBucket>(create);
  static ThrottleBucket? _defaultInstance;

  /// *
  ///  A name for this bucket.<br/>
  ///  This is used for log entries.
  ///  <p>
  ///  This value SHOULD NOT exceed 20 characters.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// *
  ///  A burst duration limit, in milliseconds.<br/>
  ///  This value determines the total "capacity" of the bucket. The rate
  ///  at which the bucket "drains" is set by the throttles, and this duration
  ///  sets how long that rate must be sustained to empty a "full" bucket.
  ///  That combination (calculated as the product of this value and the least
  ///  common multiple of the `milliOpsPerSec` values for all throttle groups)
  ///  determines the maximum amount of operations this bucket can "hold".
  ///  <p>
  ///  The calculated capacity of this bucket MUST NOT exceed `9,223,372,036,854`.
  @$pb.TagNumber(2)
  $fixnum.Int64 get burstPeriodMs => $_getI64(1);
  @$pb.TagNumber(2)
  set burstPeriodMs($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBurstPeriodMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearBurstPeriodMs() => $_clearField(2);

  /// *
  ///  A list of throttle groups.<br/>
  ///  These throttle groups combined define the effective throttle
  ///  rate for the bucket.
  ///  <p>
  ///  This list MUST contain at least one entry.
  @$pb.TagNumber(3)
  $pb.PbList<ThrottleGroup> get throttleGroups => $_getList(2);
}

/// *
///  A list of throttle buckets.<br/>
///  This list, simultaneously enforced, defines a complete throttling policy.
///
///   1. When an operation appears in more than one throttling bucket,
///      that operation SHALL be throttled unless all of the buckets where
///      the operation appears have "capacity" available.
///   1. An operation assigned to no buckets is SHALL be throttled in every
///      instance.  The _effective_ throttle for this case is `0`.
class ThrottleDefinitions extends $pb.GeneratedMessage {
  factory ThrottleDefinitions({
    $core.Iterable<ThrottleBucket>? throttleBuckets,
  }) {
    final result = create();
    if (throttleBuckets != null) result.throttleBuckets.addAll(throttleBuckets);
    return result;
  }

  ThrottleDefinitions._();

  factory ThrottleDefinitions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThrottleDefinitions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThrottleDefinitions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<ThrottleBucket>(1, _omitFieldNames ? '' : 'throttleBuckets',
        protoName: 'throttleBuckets', subBuilder: ThrottleBucket.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThrottleDefinitions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThrottleDefinitions copyWith(void Function(ThrottleDefinitions) updates) =>
      super.copyWith((message) => updates(message as ThrottleDefinitions))
          as ThrottleDefinitions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThrottleDefinitions create() => ThrottleDefinitions._();
  @$core.override
  ThrottleDefinitions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThrottleDefinitions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThrottleDefinitions>(create);
  static ThrottleDefinitions? _defaultInstance;

  /// *
  ///  A list of throttle buckets.
  ///  <p>
  ///  This list MUST be set, and SHOULD NOT be empty.<br/>
  ///  An empty list SHALL have the effect of setting all operations to
  ///  a single group with throttle limit of `0` operations per second for the
  ///  entire network.
  @$pb.TagNumber(1)
  $pb.PbList<ThrottleBucket> get throttleBuckets => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
