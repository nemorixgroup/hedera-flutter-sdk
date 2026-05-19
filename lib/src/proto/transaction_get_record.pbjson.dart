// This is a generated file - do not edit.
//
// Generated from transaction_get_record.proto.

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

@$core.Deprecated('Use transactionGetRecordQueryDescriptor instead')
const TransactionGetRecordQuery$json = {
  '1': 'TransactionGetRecordQuery',
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
      '1': 'include_child_records',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'includeChildRecords'
    },
  ],
};

/// Descriptor for `TransactionGetRecordQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionGetRecordQueryDescriptor = $convert.base64Decode(
    'ChlUcmFuc2FjdGlvbkdldFJlY29yZFF1ZXJ5EioKBmhlYWRlchgBIAEoCzISLnByb3RvLlF1ZX'
    'J5SGVhZGVyUgZoZWFkZXISOgoNdHJhbnNhY3Rpb25JRBgCIAEoCzIULnByb3RvLlRyYW5zYWN0'
    'aW9uSURSDXRyYW5zYWN0aW9uSUQSLAoRaW5jbHVkZUR1cGxpY2F0ZXMYAyABKAhSEWluY2x1ZG'
    'VEdXBsaWNhdGVzEjIKFWluY2x1ZGVfY2hpbGRfcmVjb3JkcxgEIAEoCFITaW5jbHVkZUNoaWxk'
    'UmVjb3Jkcw==');

@$core.Deprecated('Use transactionGetRecordResponseDescriptor instead')
const TransactionGetRecordResponse$json = {
  '1': 'TransactionGetRecordResponse',
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
      '1': 'transactionRecord',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionRecord',
      '10': 'transactionRecord'
    },
    {
      '1': 'duplicateTransactionRecords',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.proto.TransactionRecord',
      '10': 'duplicateTransactionRecords'
    },
    {
      '1': 'child_transaction_records',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.proto.TransactionRecord',
      '10': 'childTransactionRecords'
    },
  ],
};

/// Descriptor for `TransactionGetRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionGetRecordResponseDescriptor = $convert.base64Decode(
    'ChxUcmFuc2FjdGlvbkdldFJlY29yZFJlc3BvbnNlEi0KBmhlYWRlchgBIAEoCzIVLnByb3RvLl'
    'Jlc3BvbnNlSGVhZGVyUgZoZWFkZXISRgoRdHJhbnNhY3Rpb25SZWNvcmQYAyABKAsyGC5wcm90'
    'by5UcmFuc2FjdGlvblJlY29yZFIRdHJhbnNhY3Rpb25SZWNvcmQSWgobZHVwbGljYXRlVHJhbn'
    'NhY3Rpb25SZWNvcmRzGAQgAygLMhgucHJvdG8uVHJhbnNhY3Rpb25SZWNvcmRSG2R1cGxpY2F0'
    'ZVRyYW5zYWN0aW9uUmVjb3JkcxJUChljaGlsZF90cmFuc2FjdGlvbl9yZWNvcmRzGAUgAygLMh'
    'gucHJvdG8uVHJhbnNhY3Rpb25SZWNvcmRSF2NoaWxkVHJhbnNhY3Rpb25SZWNvcmRz');
