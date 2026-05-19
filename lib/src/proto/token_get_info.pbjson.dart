// This is a generated file - do not edit.
//
// Generated from token_get_info.proto.

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

@$core.Deprecated('Use tokenGetInfoQueryDescriptor instead')
const TokenGetInfoQuery$json = {
  '1': 'TokenGetInfoQuery',
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
      '1': 'token',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'token'
    },
  ],
};

/// Descriptor for `TokenGetInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGetInfoQueryDescriptor = $convert.base64Decode(
    'ChFUb2tlbkdldEluZm9RdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdWVyeUhlYWRlcl'
    'IGaGVhZGVyEiQKBXRva2VuGAIgASgLMg4ucHJvdG8uVG9rZW5JRFIFdG9rZW4=');

@$core.Deprecated('Use tokenInfoDescriptor instead')
const TokenInfo$json = {
  '1': 'TokenInfo',
  '2': [
    {
      '1': 'tokenId',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenId'
    },
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'symbol', '3': 3, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'decimals', '3': 4, '4': 1, '5': 13, '10': 'decimals'},
    {'1': 'totalSupply', '3': 5, '4': 1, '5': 4, '10': 'totalSupply'},
    {
      '1': 'treasury',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'treasury'
    },
    {
      '1': 'adminKey',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {'1': 'kycKey', '3': 8, '4': 1, '5': 11, '6': '.proto.Key', '10': 'kycKey'},
    {
      '1': 'freezeKey',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'freezeKey'
    },
    {
      '1': 'wipeKey',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'wipeKey'
    },
    {
      '1': 'supplyKey',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'supplyKey'
    },
    {
      '1': 'defaultFreezeStatus',
      '3': 12,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenFreezeStatus',
      '10': 'defaultFreezeStatus'
    },
    {
      '1': 'defaultKycStatus',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenKycStatus',
      '10': 'defaultKycStatus'
    },
    {'1': 'deleted', '3': 14, '4': 1, '5': 8, '10': 'deleted'},
    {
      '1': 'autoRenewAccount',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'autoRenewAccount'
    },
    {
      '1': 'autoRenewPeriod',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'autoRenewPeriod'
    },
    {
      '1': 'expiry',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expiry'
    },
    {'1': 'memo', '3': 18, '4': 1, '5': 9, '10': 'memo'},
    {
      '1': 'tokenType',
      '3': 19,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenType',
      '10': 'tokenType'
    },
    {
      '1': 'supplyType',
      '3': 20,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenSupplyType',
      '10': 'supplyType'
    },
    {'1': 'maxSupply', '3': 21, '4': 1, '5': 3, '10': 'maxSupply'},
    {
      '1': 'fee_schedule_key',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'feeScheduleKey'
    },
    {
      '1': 'custom_fees',
      '3': 23,
      '4': 3,
      '5': 11,
      '6': '.proto.CustomFee',
      '10': 'customFees'
    },
    {
      '1': 'pause_key',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'pauseKey'
    },
    {
      '1': 'pause_status',
      '3': 25,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenPauseStatus',
      '10': 'pauseStatus'
    },
    {'1': 'ledger_id', '3': 26, '4': 1, '5': 12, '10': 'ledgerId'},
    {'1': 'metadata', '3': 27, '4': 1, '5': 12, '10': 'metadata'},
    {
      '1': 'metadata_key',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'metadataKey'
    },
  ],
};

/// Descriptor for `TokenInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenInfoDescriptor = $convert.base64Decode(
    'CglUb2tlbkluZm8SKAoHdG9rZW5JZBgBIAEoCzIOLnByb3RvLlRva2VuSURSB3Rva2VuSWQSEg'
    'oEbmFtZRgCIAEoCVIEbmFtZRIWCgZzeW1ib2wYAyABKAlSBnN5bWJvbBIaCghkZWNpbWFscxgE'
    'IAEoDVIIZGVjaW1hbHMSIAoLdG90YWxTdXBwbHkYBSABKARSC3RvdGFsU3VwcGx5EiwKCHRyZW'
    'FzdXJ5GAYgASgLMhAucHJvdG8uQWNjb3VudElEUgh0cmVhc3VyeRImCghhZG1pbktleRgHIAEo'
    'CzIKLnByb3RvLktleVIIYWRtaW5LZXkSIgoGa3ljS2V5GAggASgLMgoucHJvdG8uS2V5UgZreW'
    'NLZXkSKAoJZnJlZXplS2V5GAkgASgLMgoucHJvdG8uS2V5UglmcmVlemVLZXkSJAoHd2lwZUtl'
    'eRgKIAEoCzIKLnByb3RvLktleVIHd2lwZUtleRIoCglzdXBwbHlLZXkYCyABKAsyCi5wcm90by'
    '5LZXlSCXN1cHBseUtleRJKChNkZWZhdWx0RnJlZXplU3RhdHVzGAwgASgOMhgucHJvdG8uVG9r'
    'ZW5GcmVlemVTdGF0dXNSE2RlZmF1bHRGcmVlemVTdGF0dXMSQQoQZGVmYXVsdEt5Y1N0YXR1cx'
    'gNIAEoDjIVLnByb3RvLlRva2VuS3ljU3RhdHVzUhBkZWZhdWx0S3ljU3RhdHVzEhgKB2RlbGV0'
    'ZWQYDiABKAhSB2RlbGV0ZWQSPAoQYXV0b1JlbmV3QWNjb3VudBgPIAEoCzIQLnByb3RvLkFjY2'
    '91bnRJRFIQYXV0b1JlbmV3QWNjb3VudBI5Cg9hdXRvUmVuZXdQZXJpb2QYECABKAsyDy5wcm90'
    'by5EdXJhdGlvblIPYXV0b1JlbmV3UGVyaW9kEigKBmV4cGlyeRgRIAEoCzIQLnByb3RvLlRpbW'
    'VzdGFtcFIGZXhwaXJ5EhIKBG1lbW8YEiABKAlSBG1lbW8SLgoJdG9rZW5UeXBlGBMgASgOMhAu'
    'cHJvdG8uVG9rZW5UeXBlUgl0b2tlblR5cGUSNgoKc3VwcGx5VHlwZRgUIAEoDjIWLnByb3RvLl'
    'Rva2VuU3VwcGx5VHlwZVIKc3VwcGx5VHlwZRIcCgltYXhTdXBwbHkYFSABKANSCW1heFN1cHBs'
    'eRI0ChBmZWVfc2NoZWR1bGVfa2V5GBYgASgLMgoucHJvdG8uS2V5Ug5mZWVTY2hlZHVsZUtleR'
    'IxCgtjdXN0b21fZmVlcxgXIAMoCzIQLnByb3RvLkN1c3RvbUZlZVIKY3VzdG9tRmVlcxInCglw'
    'YXVzZV9rZXkYGCABKAsyCi5wcm90by5LZXlSCHBhdXNlS2V5EjoKDHBhdXNlX3N0YXR1cxgZIA'
    'EoDjIXLnByb3RvLlRva2VuUGF1c2VTdGF0dXNSC3BhdXNlU3RhdHVzEhsKCWxlZGdlcl9pZBga'
    'IAEoDFIIbGVkZ2VySWQSGgoIbWV0YWRhdGEYGyABKAxSCG1ldGFkYXRhEi0KDG1ldGFkYXRhX2'
    'tleRgcIAEoCzIKLnByb3RvLktleVILbWV0YWRhdGFLZXk=');

@$core.Deprecated('Use tokenGetInfoResponseDescriptor instead')
const TokenGetInfoResponse$json = {
  '1': 'TokenGetInfoResponse',
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
      '1': 'tokenInfo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenInfo',
      '10': 'tokenInfo'
    },
  ],
};

/// Descriptor for `TokenGetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGetInfoResponseDescriptor = $convert.base64Decode(
    'ChRUb2tlbkdldEluZm9SZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by5SZXNwb25zZU'
    'hlYWRlclIGaGVhZGVyEi4KCXRva2VuSW5mbxgCIAEoCzIQLnByb3RvLlRva2VuSW5mb1IJdG9r'
    'ZW5JbmZv');
