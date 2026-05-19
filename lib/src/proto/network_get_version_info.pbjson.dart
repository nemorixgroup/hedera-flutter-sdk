// This is a generated file - do not edit.
//
// Generated from network_get_version_info.proto.

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

@$core.Deprecated('Use networkGetVersionInfoQueryDescriptor instead')
const NetworkGetVersionInfoQuery$json = {
  '1': 'NetworkGetVersionInfoQuery',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.QueryHeader',
      '10': 'header'
    },
  ],
};

/// Descriptor for `NetworkGetVersionInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkGetVersionInfoQueryDescriptor =
    $convert.base64Decode(
        'ChpOZXR3b3JrR2V0VmVyc2lvbkluZm9RdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdW'
        'VyeUhlYWRlclIGaGVhZGVy');

@$core.Deprecated('Use networkGetVersionInfoResponseDescriptor instead')
const NetworkGetVersionInfoResponse$json = {
  '1': 'NetworkGetVersionInfoResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'hapiProtoVersion',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.SemanticVersion',
      '10': 'hapiProtoVersion'
    },
    {
      '1': 'hederaServicesVersion',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.SemanticVersion',
      '10': 'hederaServicesVersion'
    },
  ],
};

/// Descriptor for `NetworkGetVersionInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkGetVersionInfoResponseDescriptor = $convert.base64Decode(
    'Ch1OZXR3b3JrR2V0VmVyc2lvbkluZm9SZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by'
    '5SZXNwb25zZUhlYWRlclIGaGVhZGVyEkIKEGhhcGlQcm90b1ZlcnNpb24YAiABKAsyFi5wcm90'
    'by5TZW1hbnRpY1ZlcnNpb25SEGhhcGlQcm90b1ZlcnNpb24STAoVaGVkZXJhU2VydmljZXNWZX'
    'JzaW9uGAMgASgLMhYucHJvdG8uU2VtYW50aWNWZXJzaW9uUhVoZWRlcmFTZXJ2aWNlc1ZlcnNp'
    'b24=');
