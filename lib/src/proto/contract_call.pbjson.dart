// This is a generated file - do not edit.
//
// Generated from contract_call.proto.

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

@$core.Deprecated('Use contractCallTransactionBodyDescriptor instead')
const ContractCallTransactionBody$json = {
  '1': 'ContractCallTransactionBody',
  '2': [
    {
      '1': 'contractID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractID'
    },
    {'1': 'gas', '3': 2, '4': 1, '5': 3, '10': 'gas'},
    {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
    {
      '1': 'functionParameters',
      '3': 4,
      '4': 1,
      '5': 12,
      '10': 'functionParameters'
    },
  ],
};

/// Descriptor for `ContractCallTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractCallTransactionBodyDescriptor = $convert.base64Decode(
    'ChtDb250cmFjdENhbGxUcmFuc2FjdGlvbkJvZHkSMQoKY29udHJhY3RJRBgBIAEoCzIRLnByb3'
    'RvLkNvbnRyYWN0SURSCmNvbnRyYWN0SUQSEAoDZ2FzGAIgASgDUgNnYXMSFgoGYW1vdW50GAMg'
    'ASgDUgZhbW91bnQSLgoSZnVuY3Rpb25QYXJhbWV0ZXJzGAQgASgMUhJmdW5jdGlvblBhcmFtZX'
    'RlcnM=');
