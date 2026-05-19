// This is a generated file - do not edit.
//
// Generated from token_wipe_account.proto.

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

@$core.Deprecated('Use tokenWipeAccountTransactionBodyDescriptor instead')
const TokenWipeAccountTransactionBody$json = {
  '1': 'TokenWipeAccountTransactionBody',
  '2': [
    {
      '1': 'token',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'token'
    },
    {
      '1': 'account',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'account'
    },
    {'1': 'amount', '3': 3, '4': 1, '5': 4, '10': 'amount'},
    {'1': 'serialNumbers', '3': 4, '4': 3, '5': 3, '10': 'serialNumbers'},
  ],
};

/// Descriptor for `TokenWipeAccountTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenWipeAccountTransactionBodyDescriptor =
    $convert.base64Decode(
        'Ch9Ub2tlbldpcGVBY2NvdW50VHJhbnNhY3Rpb25Cb2R5EiQKBXRva2VuGAEgASgLMg4ucHJvdG'
        '8uVG9rZW5JRFIFdG9rZW4SKgoHYWNjb3VudBgCIAEoCzIQLnByb3RvLkFjY291bnRJRFIHYWNj'
        'b3VudBIWCgZhbW91bnQYAyABKARSBmFtb3VudBIkCg1zZXJpYWxOdW1iZXJzGAQgAygDUg1zZX'
        'JpYWxOdW1iZXJz');
