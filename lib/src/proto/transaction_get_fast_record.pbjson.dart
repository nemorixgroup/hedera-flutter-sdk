// This is a generated file - do not edit.
//
// Generated from transaction_get_fast_record.proto.

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

@$core.Deprecated('Use transactionGetFastRecordQueryDescriptor instead')
const TransactionGetFastRecordQuery$json = {
  '1': 'TransactionGetFastRecordQuery',
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
  ],
  '7': {'3': true},
};

/// Descriptor for `TransactionGetFastRecordQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionGetFastRecordQueryDescriptor =
    $convert.base64Decode(
        'Ch1UcmFuc2FjdGlvbkdldEZhc3RSZWNvcmRRdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by'
        '5RdWVyeUhlYWRlclIGaGVhZGVyEjoKDXRyYW5zYWN0aW9uSUQYAiABKAsyFC5wcm90by5UcmFu'
        'c2FjdGlvbklEUg10cmFuc2FjdGlvbklEOgIYAQ==');

@$core.Deprecated('Use transactionGetFastRecordResponseDescriptor instead')
const TransactionGetFastRecordResponse$json = {
  '1': 'TransactionGetFastRecordResponse',
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
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionRecord',
      '10': 'transactionRecord'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `TransactionGetFastRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionGetFastRecordResponseDescriptor =
    $convert.base64Decode(
        'CiBUcmFuc2FjdGlvbkdldEZhc3RSZWNvcmRSZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm'
        '90by5SZXNwb25zZUhlYWRlclIGaGVhZGVyEkYKEXRyYW5zYWN0aW9uUmVjb3JkGAIgASgLMhgu'
        'cHJvdG8uVHJhbnNhY3Rpb25SZWNvcmRSEXRyYW5zYWN0aW9uUmVjb3JkOgIYAQ==');
