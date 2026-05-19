// This is a generated file - do not edit.
//
// Generated from token_grant_kyc.proto.

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

@$core.Deprecated('Use tokenGrantKycTransactionBodyDescriptor instead')
const TokenGrantKycTransactionBody$json = {
  '1': 'TokenGrantKycTransactionBody',
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
  ],
};

/// Descriptor for `TokenGrantKycTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGrantKycTransactionBodyDescriptor =
    $convert.base64Decode(
        'ChxUb2tlbkdyYW50S3ljVHJhbnNhY3Rpb25Cb2R5EiQKBXRva2VuGAEgASgLMg4ucHJvdG8uVG'
        '9rZW5JRFIFdG9rZW4SKgoHYWNjb3VudBgCIAEoCzIQLnByb3RvLkFjY291bnRJRFIHYWNjb3Vu'
        'dA==');
