// This is a generated file - do not edit.
//
// Generated from transaction_get_receipt.proto.

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

@$core.Deprecated('Use transactionGetReceiptQueryDescriptor instead')
const TransactionGetReceiptQuery$json = {
  '1': 'TransactionGetReceiptQuery',
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
      '1': 'transactionID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionID',
      '10': 'transactionID'
    },
    {
      '1': 'includeDuplicates',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'includeDuplicates'
    },
    {
      '1': 'include_child_receipts',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'includeChildReceipts'
    },
  ],
};

/// Descriptor for `TransactionGetReceiptQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionGetReceiptQueryDescriptor = $convert.base64Decode(
    'ChpUcmFuc2FjdGlvbkdldFJlY2VpcHRRdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdW'
    'VyeUhlYWRlclIGaGVhZGVyEjoKDXRyYW5zYWN0aW9uSUQYAiABKAsyFC5wcm90by5UcmFuc2Fj'
    'dGlvbklEUg10cmFuc2FjdGlvbklEEiwKEWluY2x1ZGVEdXBsaWNhdGVzGAMgASgIUhFpbmNsdW'
    'RlRHVwbGljYXRlcxI0ChZpbmNsdWRlX2NoaWxkX3JlY2VpcHRzGAQgASgIUhRpbmNsdWRlQ2hp'
    'bGRSZWNlaXB0cw==');

@$core.Deprecated('Use transactionGetReceiptResponseDescriptor instead')
const TransactionGetReceiptResponse$json = {
  '1': 'TransactionGetReceiptResponse',
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
      '1': 'receipt',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionReceipt',
      '10': 'receipt'
    },
    {
      '1': 'duplicateTransactionReceipts',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.proto.TransactionReceipt',
      '10': 'duplicateTransactionReceipts'
    },
    {
      '1': 'child_transaction_receipts',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.proto.TransactionReceipt',
      '10': 'childTransactionReceipts'
    },
  ],
};

/// Descriptor for `TransactionGetReceiptResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionGetReceiptResponseDescriptor = $convert.base64Decode(
    'Ch1UcmFuc2FjdGlvbkdldFJlY2VpcHRSZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by'
    '5SZXNwb25zZUhlYWRlclIGaGVhZGVyEjMKB3JlY2VpcHQYAiABKAsyGS5wcm90by5UcmFuc2Fj'
    'dGlvblJlY2VpcHRSB3JlY2VpcHQSXQocZHVwbGljYXRlVHJhbnNhY3Rpb25SZWNlaXB0cxgEIA'
    'MoCzIZLnByb3RvLlRyYW5zYWN0aW9uUmVjZWlwdFIcZHVwbGljYXRlVHJhbnNhY3Rpb25SZWNl'
    'aXB0cxJXChpjaGlsZF90cmFuc2FjdGlvbl9yZWNlaXB0cxgFIAMoCzIZLnByb3RvLlRyYW5zYW'
    'N0aW9uUmVjZWlwdFIYY2hpbGRUcmFuc2FjdGlvblJlY2VpcHRz');
