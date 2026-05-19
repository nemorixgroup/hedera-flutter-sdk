// This is a generated file - do not edit.
//
// Generated from query_header.proto.

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

@$core.Deprecated('Use responseTypeDescriptor instead')
const ResponseType$json = {
  '1': 'ResponseType',
  '2': [
    {'1': 'ANSWER_ONLY', '2': 0},
    {'1': 'ANSWER_STATE_PROOF', '2': 1},
    {'1': 'COST_ANSWER', '2': 2},
    {'1': 'COST_ANSWER_STATE_PROOF', '2': 3},
  ],
};

/// Descriptor for `ResponseType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List responseTypeDescriptor = $convert.base64Decode(
    'CgxSZXNwb25zZVR5cGUSDwoLQU5TV0VSX09OTFkQABIWChJBTlNXRVJfU1RBVEVfUFJPT0YQAR'
    'IPCgtDT1NUX0FOU1dFUhACEhsKF0NPU1RfQU5TV0VSX1NUQVRFX1BST09GEAM=');

@$core.Deprecated('Use queryHeaderDescriptor instead')
const QueryHeader$json = {
  '1': 'QueryHeader',
  '2': [
    {
      '1': 'payment',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.Transaction',
      '10': 'payment'
    },
    {
      '1': 'responseType',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.proto.ResponseType',
      '10': 'responseType'
    },
  ],
};

/// Descriptor for `QueryHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryHeaderDescriptor = $convert.base64Decode(
    'CgtRdWVyeUhlYWRlchIsCgdwYXltZW50GAEgASgLMhIucHJvdG8uVHJhbnNhY3Rpb25SB3BheW'
    '1lbnQSNwoMcmVzcG9uc2VUeXBlGAIgASgOMhMucHJvdG8uUmVzcG9uc2VUeXBlUgxyZXNwb25z'
    'ZVR5cGU=');
