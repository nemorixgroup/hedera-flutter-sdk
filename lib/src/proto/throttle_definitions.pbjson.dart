// This is a generated file - do not edit.
//
// Generated from throttle_definitions.proto.

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

@$core.Deprecated('Use throttleGroupDescriptor instead')
const ThrottleGroup$json = {
  '1': 'ThrottleGroup',
  '2': [
    {
      '1': 'operations',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.proto.HederaFunctionality',
      '10': 'operations'
    },
    {'1': 'milliOpsPerSec', '3': 2, '4': 1, '5': 4, '10': 'milliOpsPerSec'},
  ],
};

/// Descriptor for `ThrottleGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List throttleGroupDescriptor = $convert.base64Decode(
    'Cg1UaHJvdHRsZUdyb3VwEjoKCm9wZXJhdGlvbnMYASADKA4yGi5wcm90by5IZWRlcmFGdW5jdG'
    'lvbmFsaXR5UgpvcGVyYXRpb25zEiYKDm1pbGxpT3BzUGVyU2VjGAIgASgEUg5taWxsaU9wc1Bl'
    'clNlYw==');

@$core.Deprecated('Use throttleBucketDescriptor instead')
const ThrottleBucket$json = {
  '1': 'ThrottleBucket',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'burstPeriodMs', '3': 2, '4': 1, '5': 4, '10': 'burstPeriodMs'},
    {
      '1': 'throttleGroups',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.proto.ThrottleGroup',
      '10': 'throttleGroups'
    },
  ],
};

/// Descriptor for `ThrottleBucket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List throttleBucketDescriptor = $convert.base64Decode(
    'Cg5UaHJvdHRsZUJ1Y2tldBISCgRuYW1lGAEgASgJUgRuYW1lEiQKDWJ1cnN0UGVyaW9kTXMYAi'
    'ABKARSDWJ1cnN0UGVyaW9kTXMSPAoOdGhyb3R0bGVHcm91cHMYAyADKAsyFC5wcm90by5UaHJv'
    'dHRsZUdyb3VwUg50aHJvdHRsZUdyb3Vwcw==');

@$core.Deprecated('Use throttleDefinitionsDescriptor instead')
const ThrottleDefinitions$json = {
  '1': 'ThrottleDefinitions',
  '2': [
    {
      '1': 'throttleBuckets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.ThrottleBucket',
      '10': 'throttleBuckets'
    },
  ],
};

/// Descriptor for `ThrottleDefinitions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List throttleDefinitionsDescriptor = $convert.base64Decode(
    'ChNUaHJvdHRsZURlZmluaXRpb25zEj8KD3Rocm90dGxlQnVja2V0cxgBIAMoCzIVLnByb3RvLl'
    'Rocm90dGxlQnVja2V0Ug90aHJvdHRsZUJ1Y2tldHM=');
