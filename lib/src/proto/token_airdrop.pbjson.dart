// This is a generated file - do not edit.
//
// Generated from token_airdrop.proto.

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

@$core.Deprecated('Use tokenAirdropTransactionBodyDescriptor instead')
const TokenAirdropTransactionBody$json = {
  '1': 'TokenAirdropTransactionBody',
  '2': [
    {
      '1': 'token_transfers',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenTransferList',
      '10': 'tokenTransfers'
    },
  ],
};

/// Descriptor for `TokenAirdropTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenAirdropTransactionBodyDescriptor =
    $convert.base64Decode(
        'ChtUb2tlbkFpcmRyb3BUcmFuc2FjdGlvbkJvZHkSQQoPdG9rZW5fdHJhbnNmZXJzGAEgAygLMh'
        'gucHJvdG8uVG9rZW5UcmFuc2Zlckxpc3RSDnRva2VuVHJhbnNmZXJz');
