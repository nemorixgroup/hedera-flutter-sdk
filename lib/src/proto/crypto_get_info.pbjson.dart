// This is a generated file - do not edit.
//
// Generated from crypto_get_info.proto.

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

@$core.Deprecated('Use cryptoGetInfoQueryDescriptor instead')
const CryptoGetInfoQuery$json = {
  '1': 'CryptoGetInfoQuery',
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

/// Descriptor for `CryptoGetInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetInfoQueryDescriptor = $convert.base64Decode(
    'ChJDcnlwdG9HZXRJbmZvUXVlcnkSKgoGaGVhZGVyGAEgASgLMhIucHJvdG8uUXVlcnlIZWFkZX'
    'JSBmhlYWRlchIuCglhY2NvdW50SUQYAiABKAsyEC5wcm90by5BY2NvdW50SURSCWFjY291bnRJ'
    'RA==');

@$core.Deprecated('Use cryptoGetInfoResponseDescriptor instead')
const CryptoGetInfoResponse$json = {
  '1': 'CryptoGetInfoResponse',
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
      '1': 'accountInfo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetInfoResponse.AccountInfo',
      '10': 'accountInfo'
    },
  ],
  '3': [CryptoGetInfoResponse_AccountInfo$json],
};

@$core.Deprecated('Use cryptoGetInfoResponseDescriptor instead')
const CryptoGetInfoResponse_AccountInfo$json = {
  '1': 'AccountInfo',
  '2': [
    {
      '1': 'accountID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {
      '1': 'contractAccountID',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'contractAccountID'
    },
    {'1': 'deleted', '3': 3, '4': 1, '5': 8, '10': 'deleted'},
    {
      '1': 'proxyAccountID',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '8': {'3': true},
      '10': 'proxyAccountID',
    },
    {
      '1': 'proxyReceived',
      '3': 6,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '10': 'proxyReceived',
    },
    {'1': 'key', '3': 7, '4': 1, '5': 11, '6': '.proto.Key', '10': 'key'},
    {'1': 'balance', '3': 8, '4': 1, '5': 4, '10': 'balance'},
    {
      '1': 'generateSendRecordThreshold',
      '3': 9,
      '4': 1,
      '5': 4,
      '8': {'3': true},
      '10': 'generateSendRecordThreshold',
    },
    {
      '1': 'generateReceiveRecordThreshold',
      '3': 10,
      '4': 1,
      '5': 4,
      '8': {'3': true},
      '10': 'generateReceiveRecordThreshold',
    },
    {
      '1': 'receiverSigRequired',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'receiverSigRequired'
    },
    {
      '1': 'expirationTime',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expirationTime'
    },
    {
      '1': 'autoRenewPeriod',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'autoRenewPeriod'
    },
    {
      '1': 'liveHashes',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.proto.LiveHash',
      '10': 'liveHashes'
    },
    {
      '1': 'tokenRelationships',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenRelationship',
      '8': {'3': true},
      '10': 'tokenRelationships',
    },
    {'1': 'memo', '3': 16, '4': 1, '5': 9, '10': 'memo'},
    {'1': 'ownedNfts', '3': 17, '4': 1, '5': 3, '10': 'ownedNfts'},
    {
      '1': 'max_automatic_token_associations',
      '3': 18,
      '4': 1,
      '5': 5,
      '10': 'maxAutomaticTokenAssociations'
    },
    {'1': 'alias', '3': 19, '4': 1, '5': 12, '10': 'alias'},
    {'1': 'ledger_id', '3': 20, '4': 1, '5': 12, '10': 'ledgerId'},
    {'1': 'ethereum_nonce', '3': 21, '4': 1, '5': 3, '10': 'ethereumNonce'},
    {
      '1': 'staking_info',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.proto.StakingInfo',
      '10': 'stakingInfo'
    },
  ],
  '9': [
    {'1': 5, '2': 6},
  ],
};

/// Descriptor for `CryptoGetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetInfoResponseDescriptor = $convert.base64Decode(
    'ChVDcnlwdG9HZXRJbmZvUmVzcG9uc2USLQoGaGVhZGVyGAEgASgLMhUucHJvdG8uUmVzcG9uc2'
    'VIZWFkZXJSBmhlYWRlchJKCgthY2NvdW50SW5mbxgCIAEoCzIoLnByb3RvLkNyeXB0b0dldElu'
    'Zm9SZXNwb25zZS5BY2NvdW50SW5mb1ILYWNjb3VudEluZm8a7wcKC0FjY291bnRJbmZvEi4KCW'
    'FjY291bnRJRBgBIAEoCzIQLnByb3RvLkFjY291bnRJRFIJYWNjb3VudElEEiwKEWNvbnRyYWN0'
    'QWNjb3VudElEGAIgASgJUhFjb250cmFjdEFjY291bnRJRBIYCgdkZWxldGVkGAMgASgIUgdkZW'
    'xldGVkEjwKDnByb3h5QWNjb3VudElEGAQgASgLMhAucHJvdG8uQWNjb3VudElEQgIYAVIOcHJv'
    'eHlBY2NvdW50SUQSKAoNcHJveHlSZWNlaXZlZBgGIAEoA0ICGAFSDXByb3h5UmVjZWl2ZWQSHA'
    'oDa2V5GAcgASgLMgoucHJvdG8uS2V5UgNrZXkSGAoHYmFsYW5jZRgIIAEoBFIHYmFsYW5jZRJE'
    'ChtnZW5lcmF0ZVNlbmRSZWNvcmRUaHJlc2hvbGQYCSABKARCAhgBUhtnZW5lcmF0ZVNlbmRSZW'
    'NvcmRUaHJlc2hvbGQSSgoeZ2VuZXJhdGVSZWNlaXZlUmVjb3JkVGhyZXNob2xkGAogASgEQgIY'
    'AVIeZ2VuZXJhdGVSZWNlaXZlUmVjb3JkVGhyZXNob2xkEjAKE3JlY2VpdmVyU2lnUmVxdWlyZW'
    'QYCyABKAhSE3JlY2VpdmVyU2lnUmVxdWlyZWQSOAoOZXhwaXJhdGlvblRpbWUYDCABKAsyEC5w'
    'cm90by5UaW1lc3RhbXBSDmV4cGlyYXRpb25UaW1lEjkKD2F1dG9SZW5ld1BlcmlvZBgNIAEoCz'
    'IPLnByb3RvLkR1cmF0aW9uUg9hdXRvUmVuZXdQZXJpb2QSLwoKbGl2ZUhhc2hlcxgOIAMoCzIP'
    'LnByb3RvLkxpdmVIYXNoUgpsaXZlSGFzaGVzEkwKEnRva2VuUmVsYXRpb25zaGlwcxgPIAMoCz'
    'IYLnByb3RvLlRva2VuUmVsYXRpb25zaGlwQgIYAVISdG9rZW5SZWxhdGlvbnNoaXBzEhIKBG1l'
    'bW8YECABKAlSBG1lbW8SHAoJb3duZWROZnRzGBEgASgDUglvd25lZE5mdHMSRwogbWF4X2F1dG'
    '9tYXRpY190b2tlbl9hc3NvY2lhdGlvbnMYEiABKAVSHW1heEF1dG9tYXRpY1Rva2VuQXNzb2Np'
    'YXRpb25zEhQKBWFsaWFzGBMgASgMUgVhbGlhcxIbCglsZWRnZXJfaWQYFCABKAxSCGxlZGdlck'
    'lkEiUKDmV0aGVyZXVtX25vbmNlGBUgASgDUg1ldGhlcmV1bU5vbmNlEjUKDHN0YWtpbmdfaW5m'
    'bxgWIAEoCzISLnByb3RvLlN0YWtpbmdJbmZvUgtzdGFraW5nSW5mb0oECAUQBg==');
