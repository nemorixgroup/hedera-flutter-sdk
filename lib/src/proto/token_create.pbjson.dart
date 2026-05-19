// This is a generated file - do not edit.
//
// Generated from token_create.proto.

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

@$core.Deprecated('Use tokenCreateTransactionBodyDescriptor instead')
const TokenCreateTransactionBody$json = {
  '1': 'TokenCreateTransactionBody',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'decimals', '3': 3, '4': 1, '5': 13, '10': 'decimals'},
    {'1': 'initialSupply', '3': 4, '4': 1, '5': 4, '10': 'initialSupply'},
    {
      '1': 'treasury',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'treasury'
    },
    {
      '1': 'adminKey',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {'1': 'kycKey', '3': 7, '4': 1, '5': 11, '6': '.proto.Key', '10': 'kycKey'},
    {
      '1': 'freezeKey',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'freezeKey'
    },
    {
      '1': 'wipeKey',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'wipeKey'
    },
    {
      '1': 'supplyKey',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'supplyKey'
    },
    {'1': 'freezeDefault', '3': 11, '4': 1, '5': 8, '10': 'freezeDefault'},
    {
      '1': 'expiry',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expiry'
    },
    {
      '1': 'autoRenewAccount',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'autoRenewAccount'
    },
    {
      '1': 'autoRenewPeriod',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'autoRenewPeriod'
    },
    {'1': 'memo', '3': 16, '4': 1, '5': 9, '10': 'memo'},
    {
      '1': 'tokenType',
      '3': 17,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenType',
      '10': 'tokenType'
    },
    {
      '1': 'supplyType',
      '3': 18,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenSupplyType',
      '10': 'supplyType'
    },
    {'1': 'maxSupply', '3': 19, '4': 1, '5': 3, '10': 'maxSupply'},
    {
      '1': 'fee_schedule_key',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'feeScheduleKey'
    },
    {
      '1': 'custom_fees',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.proto.CustomFee',
      '10': 'customFees'
    },
    {
      '1': 'pause_key',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'pauseKey'
    },
    {'1': 'metadata', '3': 23, '4': 1, '5': 12, '10': 'metadata'},
    {
      '1': 'metadata_key',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'metadataKey'
    },
  ],
};

/// Descriptor for `TokenCreateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenCreateTransactionBodyDescriptor = $convert.base64Decode(
    'ChpUb2tlbkNyZWF0ZVRyYW5zYWN0aW9uQm9keRISCgRuYW1lGAEgASgJUgRuYW1lEhYKBnN5bW'
    'JvbBgCIAEoCVIGc3ltYm9sEhoKCGRlY2ltYWxzGAMgASgNUghkZWNpbWFscxIkCg1pbml0aWFs'
    'U3VwcGx5GAQgASgEUg1pbml0aWFsU3VwcGx5EiwKCHRyZWFzdXJ5GAUgASgLMhAucHJvdG8uQW'
    'Njb3VudElEUgh0cmVhc3VyeRImCghhZG1pbktleRgGIAEoCzIKLnByb3RvLktleVIIYWRtaW5L'
    'ZXkSIgoGa3ljS2V5GAcgASgLMgoucHJvdG8uS2V5UgZreWNLZXkSKAoJZnJlZXplS2V5GAggAS'
    'gLMgoucHJvdG8uS2V5UglmcmVlemVLZXkSJAoHd2lwZUtleRgJIAEoCzIKLnByb3RvLktleVIH'
    'd2lwZUtleRIoCglzdXBwbHlLZXkYCiABKAsyCi5wcm90by5LZXlSCXN1cHBseUtleRIkCg1mcm'
    'VlemVEZWZhdWx0GAsgASgIUg1mcmVlemVEZWZhdWx0EigKBmV4cGlyeRgNIAEoCzIQLnByb3Rv'
    'LlRpbWVzdGFtcFIGZXhwaXJ5EjwKEGF1dG9SZW5ld0FjY291bnQYDiABKAsyEC5wcm90by5BY2'
    'NvdW50SURSEGF1dG9SZW5ld0FjY291bnQSOQoPYXV0b1JlbmV3UGVyaW9kGA8gASgLMg8ucHJv'
    'dG8uRHVyYXRpb25SD2F1dG9SZW5ld1BlcmlvZBISCgRtZW1vGBAgASgJUgRtZW1vEi4KCXRva2'
    'VuVHlwZRgRIAEoDjIQLnByb3RvLlRva2VuVHlwZVIJdG9rZW5UeXBlEjYKCnN1cHBseVR5cGUY'
    'EiABKA4yFi5wcm90by5Ub2tlblN1cHBseVR5cGVSCnN1cHBseVR5cGUSHAoJbWF4U3VwcGx5GB'
    'MgASgDUgltYXhTdXBwbHkSNAoQZmVlX3NjaGVkdWxlX2tleRgUIAEoCzIKLnByb3RvLktleVIO'
    'ZmVlU2NoZWR1bGVLZXkSMQoLY3VzdG9tX2ZlZXMYFSADKAsyEC5wcm90by5DdXN0b21GZWVSCm'
    'N1c3RvbUZlZXMSJwoJcGF1c2Vfa2V5GBYgASgLMgoucHJvdG8uS2V5UghwYXVzZUtleRIaCght'
    'ZXRhZGF0YRgXIAEoDFIIbWV0YWRhdGESLQoMbWV0YWRhdGFfa2V5GBggASgLMgoucHJvdG8uS2'
    'V5UgttZXRhZGF0YUtleQ==');
