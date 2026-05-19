// This is a generated file - do not edit.
//
// Generated from crypto_get_account_balance.proto.

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

@$core.Deprecated('Use cryptoGetAccountBalanceQueryDescriptor instead')
const CryptoGetAccountBalanceQuery$json = {
  '1': 'CryptoGetAccountBalanceQuery',
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
      '1': 'accountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '9': 0,
      '10': 'accountID'
    },
    {
      '1': 'contractID',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '9': 0,
      '10': 'contractID'
    },
  ],
  '8': [
    {'1': 'balanceSource'},
  ],
};

/// Descriptor for `CryptoGetAccountBalanceQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetAccountBalanceQueryDescriptor = $convert.base64Decode(
    'ChxDcnlwdG9HZXRBY2NvdW50QmFsYW5jZVF1ZXJ5EioKBmhlYWRlchgBIAEoCzISLnByb3RvLl'
    'F1ZXJ5SGVhZGVyUgZoZWFkZXISMAoJYWNjb3VudElEGAIgASgLMhAucHJvdG8uQWNjb3VudElE'
    'SABSCWFjY291bnRJRBIzCgpjb250cmFjdElEGAMgASgLMhEucHJvdG8uQ29udHJhY3RJREgAUg'
    'pjb250cmFjdElEQg8KDWJhbGFuY2VTb3VyY2U=');

@$core.Deprecated('Use cryptoGetAccountBalanceResponseDescriptor instead')
const CryptoGetAccountBalanceResponse$json = {
  '1': 'CryptoGetAccountBalanceResponse',
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
      '1': 'accountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {'1': 'balance', '3': 3, '4': 1, '5': 4, '10': 'balance'},
    {
      '1': 'tokenBalances',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenBalance',
      '8': {'3': true},
      '10': 'tokenBalances',
    },
  ],
};

/// Descriptor for `CryptoGetAccountBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetAccountBalanceResponseDescriptor = $convert.base64Decode(
    'Ch9DcnlwdG9HZXRBY2NvdW50QmFsYW5jZVJlc3BvbnNlEi0KBmhlYWRlchgBIAEoCzIVLnByb3'
    'RvLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISLgoJYWNjb3VudElEGAIgASgLMhAucHJvdG8uQWNj'
    'b3VudElEUglhY2NvdW50SUQSGAoHYmFsYW5jZRgDIAEoBFIHYmFsYW5jZRI9Cg10b2tlbkJhbG'
    'FuY2VzGAQgAygLMhMucHJvdG8uVG9rZW5CYWxhbmNlQgIYAVINdG9rZW5CYWxhbmNlcw==');
