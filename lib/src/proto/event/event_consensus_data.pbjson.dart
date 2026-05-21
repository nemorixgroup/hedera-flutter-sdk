// This is a generated file - do not edit.
//
// Generated from event/event_consensus_data.proto.

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

@$core.Deprecated('Use eventConsensusDataDescriptor instead')
const EventConsensusData$json = {
  '1': 'EventConsensusData',
  '2': [
    {
      '1': 'consensus_timestamp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'consensusTimestamp'
    },
    {'1': 'consensus_order', '3': 2, '4': 1, '5': 4, '10': 'consensusOrder'},
  ],
};

/// Descriptor for `EventConsensusData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventConsensusDataDescriptor = $convert.base64Decode(
    'ChJFdmVudENvbnNlbnN1c0RhdGESQQoTY29uc2Vuc3VzX3RpbWVzdGFtcBgBIAEoCzIQLnByb3'
    'RvLlRpbWVzdGFtcFISY29uc2Vuc3VzVGltZXN0YW1wEicKD2NvbnNlbnN1c19vcmRlchgCIAEo'
    'BFIOY29uc2Vuc3VzT3JkZXI=');
