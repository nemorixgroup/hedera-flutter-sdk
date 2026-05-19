// This is a generated file - do not edit.
//
// Generated from token_mint.proto.

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

@$core.Deprecated('Use tokenMintTransactionBodyDescriptor instead')
const TokenMintTransactionBody$json = {
  '1': 'TokenMintTransactionBody',
  '2': [
    {
      '1': 'token',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'token'
    },
    {'1': 'amount', '3': 2, '4': 1, '5': 4, '10': 'amount'},
    {'1': 'metadata', '3': 3, '4': 3, '5': 12, '10': 'metadata'},
  ],
};

/// Descriptor for `TokenMintTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenMintTransactionBodyDescriptor = $convert.base64Decode(
    'ChhUb2tlbk1pbnRUcmFuc2FjdGlvbkJvZHkSJAoFdG9rZW4YASABKAsyDi5wcm90by5Ub2tlbk'
    'lEUgV0b2tlbhIWCgZhbW91bnQYAiABKARSBmFtb3VudBIaCghtZXRhZGF0YRgDIAMoDFIIbWV0'
    'YWRhdGE=');
