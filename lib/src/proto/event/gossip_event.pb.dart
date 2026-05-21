// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from event/gossip_event.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'event_core.pb.dart' as $0;
import 'event_descriptor.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  An event that is sent and received via gossip
class GossipEvent extends $pb.GeneratedMessage {
  factory GossipEvent({
    $0.EventCore? eventCore,
    $core.List<$core.int>? signature,
    $core.Iterable<$core.List<$core.int>>? transactions,
    $core.Iterable<$1.EventDescriptor>? parents,
  }) {
    final result = create();
    if (eventCore != null) result.eventCore = eventCore;
    if (signature != null) result.signature = signature;
    if (transactions != null) result.transactions.addAll(transactions);
    if (parents != null) result.parents.addAll(parents);
    return result;
  }

  GossipEvent._();

  factory GossipEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GossipEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GossipEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.platform.event'),
      createEmptyInstance: create)
    ..aOM<$0.EventCore>(1, _omitFieldNames ? '' : 'eventCore',
        subBuilder: $0.EventCore.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'transactions', $pb.PbFieldType.PY)
    ..pPM<$1.EventDescriptor>(5, _omitFieldNames ? '' : 'parents',
        subBuilder: $1.EventDescriptor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GossipEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GossipEvent copyWith(void Function(GossipEvent) updates) =>
      super.copyWith((message) => updates(message as GossipEvent))
          as GossipEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GossipEvent create() => GossipEvent._();
  @$core.override
  GossipEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GossipEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GossipEvent>(create);
  static GossipEvent? _defaultInstance;

  /// *
  ///  The core event data
  @$pb.TagNumber(1)
  $0.EventCore get eventCore => $_getN(0);
  @$pb.TagNumber(1)
  set eventCore($0.EventCore value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasEventCore() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventCore() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.EventCore ensureEventCore() => $_ensure(0);

  /// *
  ///  A node signature on the event hash.<br/>
  ///  The signature SHALL be created with the SHA384withRSA algorithm.<br/>
  ///  The signature MUST verify using the public key belonging to the `event_creator`.<br/>
  ///  The `event_creator` public key SHALL be read from the address book that corresponds to the event's birth round.<br/>
  ///  The signed event hash SHALL be a SHA-384 hash.<br/>
  ///  The signed event hash SHALL have the following inputs, in the specified order:<br/>
  ///  1. The bytes of the `event_core` field<br/>
  ///  2. The SHA-384 hash of each individual `EventTransaction`, in the order the transaction appear in the `event_transaction` field
  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => $_clearField(2);

  /// *
  ///  A list of serialized transactions.
  ///  <p>
  ///  This field MAY contain zero transactions.<br/>
  ///  Each transaction in this list SHALL be presented exactly as
  ///  it was supplied to the consensus algorithm.<br/>
  ///  This field MUST contain one entry for each transaction
  ///  included in this gossip event.
  @$pb.TagNumber(4)
  $pb.PbList<$core.List<$core.int>> get transactions => $_getList(2);

  /// *
  ///  A list of EventDescriptors representing the parents of this event.<br/>
  ///  The list of parents SHALL include zero or one self parents, and zero or more other parents.<br/>
  ///  The first element of the list SHALL be the self parent, if one exists.<br/>
  ///  The list of parents SHALL NOT include more than one parent from the same creator.
  ///  <p>
  ///  NOTE: This field is currently being migrated from EventCore to GossipEvent.
  ///  Once the migration is complete, this field will be removed from EventCore.
  ///  While migration is ongoing, the expectation is that only one of the two
  ///  fields will be set, but not both.
  @$pb.TagNumber(5)
  $pb.PbList<$1.EventDescriptor> get parents => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
