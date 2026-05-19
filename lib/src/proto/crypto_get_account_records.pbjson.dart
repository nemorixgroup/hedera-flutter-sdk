// This is a generated file - do not edit.
//
// Generated from crypto_get_account_records.proto.

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

@$core.Deprecated('Use cryptoGetAccountRecordsQueryDescriptor instead')
const CryptoGetAccountRecordsQuery$json = {
  '1': 'CryptoGetAccountRecordsQuery',
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
      '10': 'accountID'
    },
  ],
};

/// Descriptor for `CryptoGetAccountRecordsQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetAccountRecordsQueryDescriptor =
    $convert.base64Decode(
        'ChxDcnlwdG9HZXRBY2NvdW50UmVjb3Jkc1F1ZXJ5EioKBmhlYWRlchgBIAEoCzISLnByb3RvLl'
        'F1ZXJ5SGVhZGVyUgZoZWFkZXISLgoJYWNjb3VudElEGAIgASgLMhAucHJvdG8uQWNjb3VudElE'
        'UglhY2NvdW50SUQ=');

@$core.Deprecated('Use cryptoGetAccountRecordsResponseDescriptor instead')
const CryptoGetAccountRecordsResponse$json = {
  '1': 'CryptoGetAccountRecordsResponse',
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
    {
      '1': 'records',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.proto.TransactionRecord',
      '10': 'records'
    },
  ],
};

/// Descriptor for `CryptoGetAccountRecordsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetAccountRecordsResponseDescriptor =
    $convert.base64Decode(
        'Ch9DcnlwdG9HZXRBY2NvdW50UmVjb3Jkc1Jlc3BvbnNlEi0KBmhlYWRlchgBIAEoCzIVLnByb3'
        'RvLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISLgoJYWNjb3VudElEGAIgASgLMhAucHJvdG8uQWNj'
        'b3VudElEUglhY2NvdW50SUQSMgoHcmVjb3JkcxgDIAMoCzIYLnByb3RvLlRyYW5zYWN0aW9uUm'
        'Vjb3JkUgdyZWNvcmRz');
