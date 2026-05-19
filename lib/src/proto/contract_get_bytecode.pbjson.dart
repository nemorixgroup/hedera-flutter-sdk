// This is a generated file - do not edit.
//
// Generated from contract_get_bytecode.proto.

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

@$core.Deprecated('Use contractGetBytecodeQueryDescriptor instead')
const ContractGetBytecodeQuery$json = {
  '1': 'ContractGetBytecodeQuery',
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
      '1': 'contractID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractID'
    },
  ],
};

/// Descriptor for `ContractGetBytecodeQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractGetBytecodeQueryDescriptor = $convert.base64Decode(
    'ChhDb250cmFjdEdldEJ5dGVjb2RlUXVlcnkSKgoGaGVhZGVyGAEgASgLMhIucHJvdG8uUXVlcn'
    'lIZWFkZXJSBmhlYWRlchIxCgpjb250cmFjdElEGAIgASgLMhEucHJvdG8uQ29udHJhY3RJRFIK'
    'Y29udHJhY3RJRA==');

@$core.Deprecated('Use contractGetBytecodeResponseDescriptor instead')
const ContractGetBytecodeResponse$json = {
  '1': 'ContractGetBytecodeResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ResponseHeader',
      '10': 'header'
    },
    {'1': 'bytecode', '3': 6, '4': 1, '5': 12, '10': 'bytecode'},
  ],
};

/// Descriptor for `ContractGetBytecodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractGetBytecodeResponseDescriptor =
    $convert.base64Decode(
        'ChtDb250cmFjdEdldEJ5dGVjb2RlUmVzcG9uc2USLQoGaGVhZGVyGAEgASgLMhUucHJvdG8uUm'
        'VzcG9uc2VIZWFkZXJSBmhlYWRlchIaCghieXRlY29kZRgGIAEoDFIIYnl0ZWNvZGU=');
