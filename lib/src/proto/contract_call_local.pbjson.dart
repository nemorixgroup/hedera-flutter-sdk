// This is a generated file - do not edit.
//
// Generated from contract_call_local.proto.

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

@$core.Deprecated('Use contractCallLocalQueryDescriptor instead')
const ContractCallLocalQuery$json = {
  '1': 'ContractCallLocalQuery',
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
    {'1': 'gas', '3': 3, '4': 1, '5': 3, '10': 'gas'},
    {
      '1': 'functionParameters',
      '3': 4,
      '4': 1,
      '5': 12,
      '10': 'functionParameters'
    },
    {
      '1': 'maxResultSize',
      '3': 5,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '10': 'maxResultSize',
    },
    {
      '1': 'sender_id',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'senderId'
    },
  ],
};

/// Descriptor for `ContractCallLocalQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractCallLocalQueryDescriptor = $convert.base64Decode(
    'ChZDb250cmFjdENhbGxMb2NhbFF1ZXJ5EioKBmhlYWRlchgBIAEoCzISLnByb3RvLlF1ZXJ5SG'
    'VhZGVyUgZoZWFkZXISMQoKY29udHJhY3RJRBgCIAEoCzIRLnByb3RvLkNvbnRyYWN0SURSCmNv'
    'bnRyYWN0SUQSEAoDZ2FzGAMgASgDUgNnYXMSLgoSZnVuY3Rpb25QYXJhbWV0ZXJzGAQgASgMUh'
    'JmdW5jdGlvblBhcmFtZXRlcnMSKAoNbWF4UmVzdWx0U2l6ZRgFIAEoA0ICGAFSDW1heFJlc3Vs'
    'dFNpemUSLQoJc2VuZGVyX2lkGAYgASgLMhAucHJvdG8uQWNjb3VudElEUghzZW5kZXJJZA==');

@$core.Deprecated('Use contractCallLocalResponseDescriptor instead')
const ContractCallLocalResponse$json = {
  '1': 'ContractCallLocalResponse',
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
      '1': 'functionResult',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractFunctionResult',
      '10': 'functionResult'
    },
  ],
};

/// Descriptor for `ContractCallLocalResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractCallLocalResponseDescriptor = $convert.base64Decode(
    'ChlDb250cmFjdENhbGxMb2NhbFJlc3BvbnNlEi0KBmhlYWRlchgBIAEoCzIVLnByb3RvLlJlc3'
    'BvbnNlSGVhZGVyUgZoZWFkZXISRQoOZnVuY3Rpb25SZXN1bHQYAiABKAsyHS5wcm90by5Db250'
    'cmFjdEZ1bmN0aW9uUmVzdWx0Ug5mdW5jdGlvblJlc3VsdA==');
