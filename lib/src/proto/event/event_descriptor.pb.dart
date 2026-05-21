// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from event/event_descriptor.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Unique identifier for an event.
class EventDescriptor extends $pb.GeneratedMessage {
  factory EventDescriptor({
    $core.List<$core.int>? hash,
    $fixnum.Int64? creatorNodeId,
    $fixnum.Int64? birthRound,
    $fixnum.Int64? generation,
  }) {
    final result = create();
    if (hash != null) result.hash = hash;
    if (creatorNodeId != null) result.creatorNodeId = creatorNodeId;
    if (birthRound != null) result.birthRound = birthRound;
    if (generation != null) result.generation = generation;
    return result;
  }

  EventDescriptor._();

  factory EventDescriptor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EventDescriptor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EventDescriptor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.platform.event'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..aInt64(2, _omitFieldNames ? '' : 'creatorNodeId')
    ..aInt64(3, _omitFieldNames ? '' : 'birthRound')
    ..aInt64(17, _omitFieldNames ? '' : 'generation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventDescriptor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventDescriptor copyWith(void Function(EventDescriptor) updates) =>
      super.copyWith((message) => updates(message as EventDescriptor))
          as EventDescriptor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventDescriptor create() => EventDescriptor._();
  @$core.override
  EventDescriptor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EventDescriptor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventDescriptor>(create);
  static EventDescriptor? _defaultInstance;

  /// *
  ///  The hash of the event.<br/>
  ///  The hash SHALL be a SHA-384 hash.<br/>
  ///  The hash SHALL have the following inputs, in the specified order:<br/>
  ///  1. The bytes of the `EventCore` protobuf<br/>
  ///  2. The SHA-384 hash of each individual `EventTransaction`, in the order the transactions appear in the `event_transactions` field of the `GossipEvent` protobuf
  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => $_clearField(1);

  /// *
  ///  The creator node identifier.<br/>
  ///  This SHALL be the unique identifier for the node that created the event.<br/>
  ///  This SHALL match the ID of the node as it appears in the address book.
  @$pb.TagNumber(2)
  $fixnum.Int64 get creatorNodeId => $_getI64(1);
  @$pb.TagNumber(2)
  set creatorNodeId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCreatorNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatorNodeId() => $_clearField(2);

  /// *
  ///  The birth round of the event.<br/>
  ///  The birth round SHALL be the pending consensus round at the time the event is created.<br/>
  ///  The pending consensus round SHALL be **one greater** than the latest round to reach consensus.
  @$pb.TagNumber(3)
  $fixnum.Int64 get birthRound => $_getI64(2);
  @$pb.TagNumber(3)
  set birthRound($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBirthRound() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirthRound() => $_clearField(3);

  /// *
  ///  The generation of the event.<br/>
  ///  This value SHALL be **one greater** than the _maximum_ generation of all parents.<br/>
  @$pb.TagNumber(17)
  $fixnum.Int64 get generation => $_getI64(3);
  @$pb.TagNumber(17)
  set generation($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(17)
  $core.bool hasGeneration() => $_has(3);
  @$pb.TagNumber(17)
  void clearGeneration() => $_clearField(17);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
