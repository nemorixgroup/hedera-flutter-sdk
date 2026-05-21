// This is a generated file - do not edit.
//
// Generated from event/event_core.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventCoreDescriptor instead')
const EventCore$json = {
  '1': 'EventCore',
  '2': [
    {'1': 'creator_node_id', '3': 1, '4': 1, '5': 3, '10': 'creatorNodeId'},
    {'1': 'birth_round', '3': 2, '4': 1, '5': 3, '10': 'birthRound'},
    {
      '1': 'time_created',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'timeCreated'
    },
    {
      '1': 'parents',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.com.hedera.hapi.platform.event.EventDescriptor',
      '8': {'3': true},
      '10': 'parents',
    },
    {
      '1': 'version',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.proto.SemanticVersion',
      '10': 'version'
    },
  ],
};

/// Descriptor for `EventCore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventCoreDescriptor = $convert.base64Decode(
    'CglFdmVudENvcmUSJgoPY3JlYXRvcl9ub2RlX2lkGAEgASgDUg1jcmVhdG9yTm9kZUlkEh8KC2'
    'JpcnRoX3JvdW5kGAIgASgDUgpiaXJ0aFJvdW5kEjMKDHRpbWVfY3JlYXRlZBgDIAEoCzIQLnBy'
    'b3RvLlRpbWVzdGFtcFILdGltZUNyZWF0ZWQSTQoHcGFyZW50cxgEIAMoCzIvLmNvbS5oZWRlcm'
    'EuaGFwaS5wbGF0Zm9ybS5ldmVudC5FdmVudERlc2NyaXB0b3JCAhgBUgdwYXJlbnRzEjAKB3Zl'
    'cnNpb24YESABKAsyFi5wcm90by5TZW1hbnRpY1ZlcnNpb25SB3ZlcnNpb24=');
