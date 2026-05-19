// This is a generated file - do not edit.
//
// Generated from token_update.proto.

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

@$core.Deprecated('Use tokenUpdateTransactionBodyDescriptor instead')
const TokenUpdateTransactionBody$json = {
  '1': 'TokenUpdateTransactionBody',
  '2': [
    {
      '1': 'token',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'token'
    },
    {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'treasury',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'treasury'
    },
    {
      '1': 'adminKey',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {'1': 'kycKey', '3': 6, '4': 1, '5': 11, '6': '.proto.Key', '10': 'kycKey'},
    {
      '1': 'freezeKey',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'freezeKey'
    },
    {
      '1': 'wipeKey',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'wipeKey'
    },
    {
      '1': 'supplyKey',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'supplyKey'
    },
    {
      '1': 'autoRenewAccount',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'autoRenewAccount'
    },
    {
      '1': 'autoRenewPeriod',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'autoRenewPeriod'
    },
    {
      '1': 'expiry',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expiry'
    },
    {
      '1': 'memo',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'memo'
    },
    {
      '1': 'fee_schedule_key',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'feeScheduleKey'
    },
    {
      '1': 'pause_key',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'pauseKey'
    },
    {
      '1': 'metadata',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BytesValue',
      '10': 'metadata'
    },
    {
      '1': 'metadata_key',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'metadataKey'
    },
    {
      '1': 'key_verification_mode',
      '3': 18,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenKeyValidation',
      '10': 'keyVerificationMode'
    },
  ],
};

/// Descriptor for `TokenUpdateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenUpdateTransactionBodyDescriptor = $convert.base64Decode(
    'ChpUb2tlblVwZGF0ZVRyYW5zYWN0aW9uQm9keRIkCgV0b2tlbhgBIAEoCzIOLnByb3RvLlRva2'
    'VuSURSBXRva2VuEhYKBnN5bWJvbBgCIAEoCVIGc3ltYm9sEhIKBG5hbWUYAyABKAlSBG5hbWUS'
    'LAoIdHJlYXN1cnkYBCABKAsyEC5wcm90by5BY2NvdW50SURSCHRyZWFzdXJ5EiYKCGFkbWluS2'
    'V5GAUgASgLMgoucHJvdG8uS2V5UghhZG1pbktleRIiCgZreWNLZXkYBiABKAsyCi5wcm90by5L'
    'ZXlSBmt5Y0tleRIoCglmcmVlemVLZXkYByABKAsyCi5wcm90by5LZXlSCWZyZWV6ZUtleRIkCg'
    'd3aXBlS2V5GAggASgLMgoucHJvdG8uS2V5Ugd3aXBlS2V5EigKCXN1cHBseUtleRgJIAEoCzIK'
    'LnByb3RvLktleVIJc3VwcGx5S2V5EjwKEGF1dG9SZW5ld0FjY291bnQYCiABKAsyEC5wcm90by'
    '5BY2NvdW50SURSEGF1dG9SZW5ld0FjY291bnQSOQoPYXV0b1JlbmV3UGVyaW9kGAsgASgLMg8u'
    'cHJvdG8uRHVyYXRpb25SD2F1dG9SZW5ld1BlcmlvZBIoCgZleHBpcnkYDCABKAsyEC5wcm90by'
    '5UaW1lc3RhbXBSBmV4cGlyeRIwCgRtZW1vGA0gASgLMhwuZ29vZ2xlLnByb3RvYnVmLlN0cmlu'
    'Z1ZhbHVlUgRtZW1vEjQKEGZlZV9zY2hlZHVsZV9rZXkYDiABKAsyCi5wcm90by5LZXlSDmZlZV'
    'NjaGVkdWxlS2V5EicKCXBhdXNlX2tleRgPIAEoCzIKLnByb3RvLktleVIIcGF1c2VLZXkSNwoI'
    'bWV0YWRhdGEYECABKAsyGy5nb29nbGUucHJvdG9idWYuQnl0ZXNWYWx1ZVIIbWV0YWRhdGESLQ'
    'oMbWV0YWRhdGFfa2V5GBEgASgLMgoucHJvdG8uS2V5UgttZXRhZGF0YUtleRJNChVrZXlfdmVy'
    'aWZpY2F0aW9uX21vZGUYEiABKA4yGS5wcm90by5Ub2tlbktleVZhbGlkYXRpb25SE2tleVZlcm'
    'lmaWNhdGlvbk1vZGU=');
