// This is a generated file - do not edit.
//
// Generated from contract_create.proto.

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

@$core.Deprecated('Use contractCreateTransactionBodyDescriptor instead')
const ContractCreateTransactionBody$json = {
  '1': 'ContractCreateTransactionBody',
  '2': [
    {
      '1': 'fileID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '9': 0,
      '10': 'fileID'
    },
    {'1': 'initcode', '3': 16, '4': 1, '5': 12, '9': 0, '10': 'initcode'},
    {
      '1': 'adminKey',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {'1': 'gas', '3': 4, '4': 1, '5': 3, '10': 'gas'},
    {'1': 'initialBalance', '3': 5, '4': 1, '5': 3, '10': 'initialBalance'},
    {
      '1': 'proxyAccountID',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '8': {'3': true},
      '10': 'proxyAccountID',
    },
    {
      '1': 'autoRenewPeriod',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'autoRenewPeriod'
    },
    {
      '1': 'constructorParameters',
      '3': 9,
      '4': 1,
      '5': 12,
      '10': 'constructorParameters'
    },
    {
      '1': 'shardID',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.ShardID',
      '10': 'shardID'
    },
    {
      '1': 'realmID',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.proto.RealmID',
      '10': 'realmID'
    },
    {
      '1': 'newRealmAdminKey',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'newRealmAdminKey'
    },
    {'1': 'memo', '3': 13, '4': 1, '5': 9, '10': 'memo'},
    {
      '1': 'max_automatic_token_associations',
      '3': 14,
      '4': 1,
      '5': 5,
      '10': 'maxAutomaticTokenAssociations'
    },
    {
      '1': 'auto_renew_account_id',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'autoRenewAccountId'
    },
    {
      '1': 'staked_account_id',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '9': 1,
      '10': 'stakedAccountId'
    },
    {
      '1': 'staked_node_id',
      '3': 18,
      '4': 1,
      '5': 3,
      '9': 1,
      '10': 'stakedNodeId'
    },
    {'1': 'decline_reward', '3': 19, '4': 1, '5': 8, '10': 'declineReward'},
  ],
  '8': [
    {'1': 'initcodeSource'},
    {'1': 'staked_id'},
  ],
};

/// Descriptor for `ContractCreateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractCreateTransactionBodyDescriptor = $convert.base64Decode(
    'Ch1Db250cmFjdENyZWF0ZVRyYW5zYWN0aW9uQm9keRInCgZmaWxlSUQYASABKAsyDS5wcm90by'
    '5GaWxlSURIAFIGZmlsZUlEEhwKCGluaXRjb2RlGBAgASgMSABSCGluaXRjb2RlEiYKCGFkbWlu'
    'S2V5GAMgASgLMgoucHJvdG8uS2V5UghhZG1pbktleRIQCgNnYXMYBCABKANSA2dhcxImCg5pbm'
    'l0aWFsQmFsYW5jZRgFIAEoA1IOaW5pdGlhbEJhbGFuY2USPAoOcHJveHlBY2NvdW50SUQYBiAB'
    'KAsyEC5wcm90by5BY2NvdW50SURCAhgBUg5wcm94eUFjY291bnRJRBI5Cg9hdXRvUmVuZXdQZX'
    'Jpb2QYCCABKAsyDy5wcm90by5EdXJhdGlvblIPYXV0b1JlbmV3UGVyaW9kEjQKFWNvbnN0cnVj'
    'dG9yUGFyYW1ldGVycxgJIAEoDFIVY29uc3RydWN0b3JQYXJhbWV0ZXJzEigKB3NoYXJkSUQYCi'
    'ABKAsyDi5wcm90by5TaGFyZElEUgdzaGFyZElEEigKB3JlYWxtSUQYCyABKAsyDi5wcm90by5S'
    'ZWFsbUlEUgdyZWFsbUlEEjYKEG5ld1JlYWxtQWRtaW5LZXkYDCABKAsyCi5wcm90by5LZXlSEG'
    '5ld1JlYWxtQWRtaW5LZXkSEgoEbWVtbxgNIAEoCVIEbWVtbxJHCiBtYXhfYXV0b21hdGljX3Rv'
    'a2VuX2Fzc29jaWF0aW9ucxgOIAEoBVIdbWF4QXV0b21hdGljVG9rZW5Bc3NvY2lhdGlvbnMSQw'
    'oVYXV0b19yZW5ld19hY2NvdW50X2lkGA8gASgLMhAucHJvdG8uQWNjb3VudElEUhJhdXRvUmVu'
    'ZXdBY2NvdW50SWQSPgoRc3Rha2VkX2FjY291bnRfaWQYESABKAsyEC5wcm90by5BY2NvdW50SU'
    'RIAVIPc3Rha2VkQWNjb3VudElkEiYKDnN0YWtlZF9ub2RlX2lkGBIgASgDSAFSDHN0YWtlZE5v'
    'ZGVJZBIlCg5kZWNsaW5lX3Jld2FyZBgTIAEoCFINZGVjbGluZVJld2FyZEIQCg5pbml0Y29kZV'
    'NvdXJjZUILCglzdGFrZWRfaWQ=');
