// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from event/event_core.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../basic_types.pb.dart' as $2;
import '../timestamp.pb.dart' as $0;
import 'event_descriptor.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Contains information about an event and its parents.
class EventCore extends $pb.GeneratedMessage {
  factory EventCore({
    $fixnum.Int64? creatorNodeId,
    $fixnum.Int64? birthRound,
    $0.Timestamp? timeCreated,
    @$core.Deprecated('This field is deprecated.')
    $core.Iterable<$1.EventDescriptor>? parents,
    $2.SemanticVersion? version,
  }) {
    final result = create();
    if (creatorNodeId != null) result.creatorNodeId = creatorNodeId;
    if (birthRound != null) result.birthRound = birthRound;
    if (timeCreated != null) result.timeCreated = timeCreated;
    if (parents != null) result.parents.addAll(parents);
    if (version != null) result.version = version;
    return result;
  }

  EventCore._();

  factory EventCore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EventCore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EventCore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.platform.event'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'creatorNodeId')
    ..aInt64(2, _omitFieldNames ? '' : 'birthRound')
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'timeCreated',
        subBuilder: $0.Timestamp.create)
    ..pPM<$1.EventDescriptor>(4, _omitFieldNames ? '' : 'parents',
        subBuilder: $1.EventDescriptor.create)
    ..aOM<$2.SemanticVersion>(17, _omitFieldNames ? '' : 'version',
        subBuilder: $2.SemanticVersion.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventCore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventCore copyWith(void Function(EventCore) updates) =>
      super.copyWith((message) => updates(message as EventCore)) as EventCore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventCore create() => EventCore._();
  @$core.override
  EventCore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EventCore getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventCore>(create);
  static EventCore? _defaultInstance;

  /// *
  ///  The creator node identifier.<br/>
  ///  This SHALL be the unique identifier for the node that created the event.<br/>
  ///  This SHALL match the ID of the node as it appears in the address book.
  @$pb.TagNumber(1)
  $fixnum.Int64 get creatorNodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set creatorNodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCreatorNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatorNodeId() => $_clearField(1);

  /// *
  ///  The birth round of the event.<br/>
  ///  The birth round SHALL be the pending consensus round at the time the event is created.<br/>
  ///  The pending consensus round SHALL be **one greater** than the latest round to reach consensus.
  @$pb.TagNumber(2)
  $fixnum.Int64 get birthRound => $_getI64(1);
  @$pb.TagNumber(2)
  set birthRound($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBirthRound() => $_has(1);
  @$pb.TagNumber(2)
  void clearBirthRound() => $_clearField(2);

  /// *
  ///  The wall clock time at which the event was created, according to the node creating the event.<br/>
  ///  If the event has a self parent, this timestamp MUST be strictly greater than the `time_created` of the self parent.
  @$pb.TagNumber(3)
  $0.Timestamp get timeCreated => $_getN(2);
  @$pb.TagNumber(3)
  set timeCreated($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTimeCreated() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeCreated() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureTimeCreated() => $_ensure(2);

  /// *
  ///  A list of EventDescriptors representing the parents of this event.<br/>
  ///  The list of parents SHALL include zero or one self parents, and zero or more other parents.<br/>
  ///  The first element of the list SHALL be the self parent, if one exists.<br/>
  ///  The list of parents SHALL NOT include more than one parent from the same creator.
  ///  <p>
  ///  This field is deprecated and can be removed in release 0.62
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $pb.PbList<$1.EventDescriptor> get parents => $_getList(3);

  /// *
  ///  The event specification version.<br/>
  ///  The specification described by this version SHALL encompass the format of the `GossipEvent` message, and also the
  ///  format of all contained messages.<br/>
  ///  This SHALL exactly match the specification version passed into the platform at construction.
  @$pb.TagNumber(17)
  $2.SemanticVersion get version => $_getN(4);
  @$pb.TagNumber(17)
  set version($2.SemanticVersion value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(17)
  void clearVersion() => $_clearField(17);
  @$pb.TagNumber(17)
  $2.SemanticVersion ensureVersion() => $_ensure(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
