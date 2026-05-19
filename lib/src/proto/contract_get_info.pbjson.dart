// This is a generated file - do not edit.
//
// Generated from contract_get_info.proto.

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

@$core.Deprecated('Use contractGetInfoQueryDescriptor instead')
const ContractGetInfoQuery$json = {
  '1': 'ContractGetInfoQuery',
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
};

/// Descriptor for `ContractGetInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractGetInfoQueryDescriptor = $convert.base64Decode(
    'ChRDb250cmFjdEdldEluZm9RdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdWVyeUhlYW'
    'RlclIGaGVhZGVyEjEKCmNvbnRyYWN0SUQYAiABKAsyES5wcm90by5Db250cmFjdElEUgpjb250'
    'cmFjdElE');

@$core.Deprecated('Use contractGetInfoResponseDescriptor instead')
const ContractGetInfoResponse$json = {
  '1': 'ContractGetInfoResponse',
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
      '1': 'contractInfo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractGetInfoResponse.ContractInfo',
      '10': 'contractInfo'
    },
  ],
  '3': [ContractGetInfoResponse_ContractInfo$json],
};

@$core.Deprecated('Use contractGetInfoResponseDescriptor instead')
const ContractGetInfoResponse_ContractInfo$json = {
  '1': 'ContractInfo',
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
      '1': 'accountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {
      '1': 'contractAccountID',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'contractAccountID'
    },
    {
      '1': 'adminKey',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {
      '1': 'expirationTime',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expirationTime'
    },
    {
      '1': 'autoRenewPeriod',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'autoRenewPeriod'
    },
    {'1': 'storage', '3': 7, '4': 1, '5': 3, '10': 'storage'},
    {'1': 'memo', '3': 8, '4': 1, '5': 9, '10': 'memo'},
    {'1': 'balance', '3': 9, '4': 1, '5': 4, '10': 'balance'},
    {'1': 'deleted', '3': 10, '4': 1, '5': 8, '10': 'deleted'},
    {
      '1': 'tokenRelationships',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenRelationship',
      '8': {'3': true},
      '10': 'tokenRelationships',
    },
    {'1': 'ledger_id', '3': 12, '4': 1, '5': 12, '10': 'ledgerId'},
    {
      '1': 'auto_renew_account_id',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'autoRenewAccountId'
    },
    {
      '1': 'max_automatic_token_associations',
      '3': 14,
      '4': 1,
      '5': 5,
      '10': 'maxAutomaticTokenAssociations'
    },
    {
      '1': 'staking_info',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.StakingInfo',
      '10': 'stakingInfo'
    },
  ],
};

/// Descriptor for `ContractGetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractGetInfoResponseDescriptor = $convert.base64Decode(
    'ChdDb250cmFjdEdldEluZm9SZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by5SZXNwb2'
    '5zZUhlYWRlclIGaGVhZGVyEk8KDGNvbnRyYWN0SW5mbxgCIAEoCzIrLnByb3RvLkNvbnRyYWN0'
    'R2V0SW5mb1Jlc3BvbnNlLkNvbnRyYWN0SW5mb1IMY29udHJhY3RJbmZvGs4FCgxDb250cmFjdE'
    'luZm8SMQoKY29udHJhY3RJRBgBIAEoCzIRLnByb3RvLkNvbnRyYWN0SURSCmNvbnRyYWN0SUQS'
    'LgoJYWNjb3VudElEGAIgASgLMhAucHJvdG8uQWNjb3VudElEUglhY2NvdW50SUQSLAoRY29udH'
    'JhY3RBY2NvdW50SUQYAyABKAlSEWNvbnRyYWN0QWNjb3VudElEEiYKCGFkbWluS2V5GAQgASgL'
    'MgoucHJvdG8uS2V5UghhZG1pbktleRI4Cg5leHBpcmF0aW9uVGltZRgFIAEoCzIQLnByb3RvLl'
    'RpbWVzdGFtcFIOZXhwaXJhdGlvblRpbWUSOQoPYXV0b1JlbmV3UGVyaW9kGAYgASgLMg8ucHJv'
    'dG8uRHVyYXRpb25SD2F1dG9SZW5ld1BlcmlvZBIYCgdzdG9yYWdlGAcgASgDUgdzdG9yYWdlEh'
    'IKBG1lbW8YCCABKAlSBG1lbW8SGAoHYmFsYW5jZRgJIAEoBFIHYmFsYW5jZRIYCgdkZWxldGVk'
    'GAogASgIUgdkZWxldGVkEkwKEnRva2VuUmVsYXRpb25zaGlwcxgLIAMoCzIYLnByb3RvLlRva2'
    'VuUmVsYXRpb25zaGlwQgIYAVISdG9rZW5SZWxhdGlvbnNoaXBzEhsKCWxlZGdlcl9pZBgMIAEo'
    'DFIIbGVkZ2VySWQSQwoVYXV0b19yZW5ld19hY2NvdW50X2lkGA0gASgLMhAucHJvdG8uQWNjb3'
    'VudElEUhJhdXRvUmVuZXdBY2NvdW50SWQSRwogbWF4X2F1dG9tYXRpY190b2tlbl9hc3NvY2lh'
    'dGlvbnMYDiABKAVSHW1heEF1dG9tYXRpY1Rva2VuQXNzb2NpYXRpb25zEjUKDHN0YWtpbmdfaW'
    '5mbxgPIAEoCzISLnByb3RvLlN0YWtpbmdJbmZvUgtzdGFraW5nSW5mbw==');
