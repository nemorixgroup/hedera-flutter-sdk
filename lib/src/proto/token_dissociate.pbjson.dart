// This is a generated file - do not edit.
//
// Generated from token_dissociate.proto.

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

@$core.Deprecated('Use tokenDissociateTransactionBodyDescriptor instead')
const TokenDissociateTransactionBody$json = {
  '1': 'TokenDissociateTransactionBody',
  '2': [
    {
      '1': 'account',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'account'
    },
    {
      '1': 'tokens',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokens'
    },
  ],
};

/// Descriptor for `TokenDissociateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDissociateTransactionBodyDescriptor =
    $convert.base64Decode(
        'Ch5Ub2tlbkRpc3NvY2lhdGVUcmFuc2FjdGlvbkJvZHkSKgoHYWNjb3VudBgBIAEoCzIQLnByb3'
        'RvLkFjY291bnRJRFIHYWNjb3VudBImCgZ0b2tlbnMYAiADKAsyDi5wcm90by5Ub2tlbklEUgZ0'
        'b2tlbnM=');
