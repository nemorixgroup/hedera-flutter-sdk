// This is a generated file - do not edit.
//
// Generated from contract_get_records.proto.

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

@$core.Deprecated('Use contractGetRecordsQueryDescriptor instead')
const ContractGetRecordsQuery$json = {
  '1': 'ContractGetRecordsQuery',
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
      '1': 'contractID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractID'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `ContractGetRecordsQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractGetRecordsQueryDescriptor = $convert.base64Decode(
    'ChdDb250cmFjdEdldFJlY29yZHNRdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdWVyeU'
    'hlYWRlclIGaGVhZGVyEjEKCmNvbnRyYWN0SUQYAiABKAsyES5wcm90by5Db250cmFjdElEUgpj'
    'b250cmFjdElEOgIYAQ==');

@$core.Deprecated('Use contractGetRecordsResponseDescriptor instead')
const ContractGetRecordsResponse$json = {
  '1': 'ContractGetRecordsResponse',
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
      '1': 'contractID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractID'
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
  '7': {'3': true},
};

/// Descriptor for `ContractGetRecordsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractGetRecordsResponseDescriptor = $convert.base64Decode(
    'ChpDb250cmFjdEdldFJlY29yZHNSZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by5SZX'
    'Nwb25zZUhlYWRlclIGaGVhZGVyEjEKCmNvbnRyYWN0SUQYAiABKAsyES5wcm90by5Db250cmFj'
    'dElEUgpjb250cmFjdElEEjIKB3JlY29yZHMYAyADKAsyGC5wcm90by5UcmFuc2FjdGlvblJlY2'
    '9yZFIHcmVjb3JkczoCGAE=');
