// This is a generated file - do not edit.
//
// Generated from system_delete.proto.

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

@$core.Deprecated('Use systemDeleteTransactionBodyDescriptor instead')
const SystemDeleteTransactionBody$json = {
  '1': 'SystemDeleteTransactionBody',
  '2': [
    {
      '1': 'fileID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '9': 0,
      '10': 'fileID'
    },
    {
      '1': 'contractID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '9': 0,
      '10': 'contractID'
    },
    {
      '1': 'expirationTime',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.TimestampSeconds',
      '10': 'expirationTime'
    },
  ],
  '8': [
    {'1': 'id'},
  ],
};

/// Descriptor for `SystemDeleteTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemDeleteTransactionBodyDescriptor = $convert.base64Decode(
    'ChtTeXN0ZW1EZWxldGVUcmFuc2FjdGlvbkJvZHkSJwoGZmlsZUlEGAEgASgLMg0ucHJvdG8uRm'
    'lsZUlESABSBmZpbGVJRBIzCgpjb250cmFjdElEGAIgASgLMhEucHJvdG8uQ29udHJhY3RJREgA'
    'Ugpjb250cmFjdElEEj8KDmV4cGlyYXRpb25UaW1lGAMgASgLMhcucHJvdG8uVGltZXN0YW1wU2'
    'Vjb25kc1IOZXhwaXJhdGlvblRpbWVCBAoCaWQ=');
