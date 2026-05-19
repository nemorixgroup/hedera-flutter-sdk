// This is a generated file - do not edit.
//
// Generated from network_get_execution_time.proto.

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

@$core.Deprecated('Use networkGetExecutionTimeQueryDescriptor instead')
const NetworkGetExecutionTimeQuery$json = {
  '1': 'NetworkGetExecutionTimeQuery',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.QueryHeader',
      '10': 'header'
    },
    {
      '1': 'transaction_ids',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.TransactionID',
      '10': 'transactionIds'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `NetworkGetExecutionTimeQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkGetExecutionTimeQueryDescriptor =
    $convert.base64Decode(
        'ChxOZXR3b3JrR2V0RXhlY3V0aW9uVGltZVF1ZXJ5EioKBmhlYWRlchgBIAEoCzISLnByb3RvLl'
        'F1ZXJ5SGVhZGVyUgZoZWFkZXISPQoPdHJhbnNhY3Rpb25faWRzGAIgAygLMhQucHJvdG8uVHJh'
        'bnNhY3Rpb25JRFIOdHJhbnNhY3Rpb25JZHM6AhgB');

@$core.Deprecated('Use networkGetExecutionTimeResponseDescriptor instead')
const NetworkGetExecutionTimeResponse$json = {
  '1': 'NetworkGetExecutionTimeResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ResponseHeader',
      '10': 'header'
    },
    {'1': 'execution_times', '3': 2, '4': 3, '5': 4, '10': 'executionTimes'},
  ],
  '7': {'3': true},
};

/// Descriptor for `NetworkGetExecutionTimeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkGetExecutionTimeResponseDescriptor =
    $convert.base64Decode(
        'Ch9OZXR3b3JrR2V0RXhlY3V0aW9uVGltZVJlc3BvbnNlEi0KBmhlYWRlchgBIAEoCzIVLnByb3'
        'RvLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISJwoPZXhlY3V0aW9uX3RpbWVzGAIgAygEUg5leGVj'
        'dXRpb25UaW1lczoCGAE=');
