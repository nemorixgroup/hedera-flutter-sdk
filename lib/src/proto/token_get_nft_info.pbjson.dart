// This is a generated file - do not edit.
//
// Generated from token_get_nft_info.proto.

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

@$core.Deprecated('Use tokenGetNftInfoQueryDescriptor instead')
const TokenGetNftInfoQuery$json = {
  '1': 'TokenGetNftInfoQuery',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.QueryHeader',
      '10': 'header'
    },
    {'1': 'nftID', '3': 2, '4': 1, '5': 11, '6': '.proto.NftID', '10': 'nftID'},
  ],
};

/// Descriptor for `TokenGetNftInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGetNftInfoQueryDescriptor = $convert.base64Decode(
    'ChRUb2tlbkdldE5mdEluZm9RdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdWVyeUhlYW'
    'RlclIGaGVhZGVyEiIKBW5mdElEGAIgASgLMgwucHJvdG8uTmZ0SURSBW5mdElE');

@$core.Deprecated('Use tokenNftInfoDescriptor instead')
const TokenNftInfo$json = {
  '1': 'TokenNftInfo',
  '2': [
    {'1': 'nftID', '3': 1, '4': 1, '5': 11, '6': '.proto.NftID', '10': 'nftID'},
    {
      '1': 'accountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {
      '1': 'creationTime',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'creationTime'
    },
    {'1': 'metadata', '3': 4, '4': 1, '5': 12, '10': 'metadata'},
    {'1': 'ledger_id', '3': 5, '4': 1, '5': 12, '10': 'ledgerId'},
    {
      '1': 'spender_id',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'spenderId'
    },
  ],
};

/// Descriptor for `TokenNftInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenNftInfoDescriptor = $convert.base64Decode(
    'CgxUb2tlbk5mdEluZm8SIgoFbmZ0SUQYASABKAsyDC5wcm90by5OZnRJRFIFbmZ0SUQSLgoJYW'
    'Njb3VudElEGAIgASgLMhAucHJvdG8uQWNjb3VudElEUglhY2NvdW50SUQSNAoMY3JlYXRpb25U'
    'aW1lGAMgASgLMhAucHJvdG8uVGltZXN0YW1wUgxjcmVhdGlvblRpbWUSGgoIbWV0YWRhdGEYBC'
    'ABKAxSCG1ldGFkYXRhEhsKCWxlZGdlcl9pZBgFIAEoDFIIbGVkZ2VySWQSLwoKc3BlbmRlcl9p'
    'ZBgGIAEoCzIQLnByb3RvLkFjY291bnRJRFIJc3BlbmRlcklk');

@$core.Deprecated('Use tokenGetNftInfoResponseDescriptor instead')
const TokenGetNftInfoResponse$json = {
  '1': 'TokenGetNftInfoResponse',
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
      '1': 'nft',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenNftInfo',
      '10': 'nft'
    },
  ],
};

/// Descriptor for `TokenGetNftInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGetNftInfoResponseDescriptor = $convert.base64Decode(
    'ChdUb2tlbkdldE5mdEluZm9SZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by5SZXNwb2'
    '5zZUhlYWRlclIGaGVhZGVyEiUKA25mdBgCIAEoCzITLnByb3RvLlRva2VuTmZ0SW5mb1IDbmZ0');
