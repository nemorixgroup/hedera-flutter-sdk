// This is a generated file - do not edit.
//
// Generated from ethereum_transaction.proto.

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

@$core.Deprecated('Use ethereumTransactionBodyDescriptor instead')
const EthereumTransactionBody$json = {
  '1': 'EthereumTransactionBody',
  '2': [
    {'1': 'ethereum_data', '3': 1, '4': 1, '5': 12, '10': 'ethereumData'},
    {
      '1': 'call_data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '10': 'callData'
    },
    {'1': 'max_gas_allowance', '3': 3, '4': 1, '5': 3, '10': 'maxGasAllowance'},
  ],
};

/// Descriptor for `EthereumTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethereumTransactionBodyDescriptor = $convert.base64Decode(
    'ChdFdGhlcmV1bVRyYW5zYWN0aW9uQm9keRIjCg1ldGhlcmV1bV9kYXRhGAEgASgMUgxldGhlcm'
    'V1bURhdGESKgoJY2FsbF9kYXRhGAIgASgLMg0ucHJvdG8uRmlsZUlEUghjYWxsRGF0YRIqChFt'
    'YXhfZ2FzX2FsbG93YW5jZRgDIAEoA1IPbWF4R2FzQWxsb3dhbmNl');
