// This is a generated file - do not edit.
//
// Generated from contract_delete.proto.

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

@$core.Deprecated('Use contractDeleteTransactionBodyDescriptor instead')
const ContractDeleteTransactionBody$json = {
  '1': 'ContractDeleteTransactionBody',
  '2': [
    {
      '1': 'contractID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractID'
    },
    {
      '1': 'transferAccountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '9': 0,
      '10': 'transferAccountID'
    },
    {
      '1': 'transferContractID',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '9': 0,
      '10': 'transferContractID'
    },
    {
      '1': 'permanent_removal',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'permanentRemoval'
    },
  ],
  '8': [
    {'1': 'obtainers'},
  ],
};

/// Descriptor for `ContractDeleteTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractDeleteTransactionBodyDescriptor = $convert.base64Decode(
    'Ch1Db250cmFjdERlbGV0ZVRyYW5zYWN0aW9uQm9keRIxCgpjb250cmFjdElEGAEgASgLMhEucH'
    'JvdG8uQ29udHJhY3RJRFIKY29udHJhY3RJRBJAChF0cmFuc2ZlckFjY291bnRJRBgCIAEoCzIQ'
    'LnByb3RvLkFjY291bnRJREgAUhF0cmFuc2ZlckFjY291bnRJRBJDChJ0cmFuc2ZlckNvbnRyYW'
    'N0SUQYAyABKAsyES5wcm90by5Db250cmFjdElESABSEnRyYW5zZmVyQ29udHJhY3RJRBIrChFw'
    'ZXJtYW5lbnRfcmVtb3ZhbBgEIAEoCFIQcGVybWFuZW50UmVtb3ZhbEILCglvYnRhaW5lcnM=');
