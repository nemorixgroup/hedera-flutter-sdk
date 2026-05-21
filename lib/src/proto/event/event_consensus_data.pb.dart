// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from event/event_consensus_data.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Event Consensus Data.<br/>
///  This message records the critical values produced by consensus for an event.
class EventConsensusData extends $pb.GeneratedMessage {
  factory EventConsensusData({
    $0.Timestamp? consensusTimestamp,
    $fixnum.Int64? consensusOrder,
  }) {
    final result = create();
    if (consensusTimestamp != null)
      result.consensusTimestamp = consensusTimestamp;
    if (consensusOrder != null) result.consensusOrder = consensusOrder;
    return result;
  }

  EventConsensusData._();

  factory EventConsensusData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EventConsensusData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EventConsensusData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.platform.event'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'consensusTimestamp',
        subBuilder: $0.Timestamp.create)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'consensusOrder', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventConsensusData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventConsensusData copyWith(void Function(EventConsensusData) updates) =>
      super.copyWith((message) => updates(message as EventConsensusData))
          as EventConsensusData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventConsensusData create() => EventConsensusData._();
  @$core.override
  EventConsensusData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EventConsensusData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventConsensusData>(create);
  static EventConsensusData? _defaultInstance;

  /// *
  ///  A consensus timestamp.<br/>
  ///  The network's consensus agreement on a timestamp for this event.
  ///  <p>
  ///  This timestamp MUST be strictly greater than the `consensus_timestamp` of
  ///  the previous consensus event.<br/>
  ///  This is a consensus value and MAY NOT match real-world "wall clock" time.
  @$pb.TagNumber(1)
  $0.Timestamp get consensusTimestamp => $_getN(0);
  @$pb.TagNumber(1)
  set consensusTimestamp($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConsensusTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsensusTimestamp() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureConsensusTimestamp() => $_ensure(0);

  /// *
  ///  A consensus order sequence number.<br/>
  ///  A non-negative sequence number that identifies an event's consensus order
  ///  since genesis.
  ///  <p>
  ///  This SHALL be the unique for each consensus event.<br/>
  ///  This SHALL always increase, and SHALL NOT decrease.<br/>
  ///  This SHALL increment by one for each consensus event.
  @$pb.TagNumber(2)
  $fixnum.Int64 get consensusOrder => $_getI64(1);
  @$pb.TagNumber(2)
  set consensusOrder($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasConsensusOrder() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsensusOrder() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
