// This is a generated file - do not edit.
//
// Generated from crypto_create.proto.

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

@$core.Deprecated('Use cryptoCreateTransactionBodyDescriptor instead')
const CryptoCreateTransactionBody$json = {
  '1': 'CryptoCreateTransactionBody',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.proto.Key', '10': 'key'},
    {'1': 'initialBalance', '3': 2, '4': 1, '5': 4, '10': 'initialBalance'},
    {
      '1': 'proxyAccountID',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '8': {'3': true},
      '10': 'proxyAccountID',
    },
    {
      '1': 'sendRecordThreshold',
      '3': 6,
      '4': 1,
      '5': 4,
      '8': {'3': true},
      '10': 'sendRecordThreshold',
    },
    {
      '1': 'receiveRecordThreshold',
      '3': 7,
      '4': 1,
      '5': 4,
      '8': {'3': true},
      '10': 'receiveRecordThreshold',
    },
    {
      '1': 'receiverSigRequired',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'receiverSigRequired'
    },
    {
      '1': 'autoRenewPeriod',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'autoRenewPeriod'
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
      '8': {'3': true},
      '10': 'newRealmAdminKey',
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
      '1': 'staked_account_id',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '9': 0,
      '10': 'stakedAccountId'
    },
    {
      '1': 'staked_node_id',
      '3': 16,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'stakedNodeId'
    },
    {'1': 'decline_reward', '3': 17, '4': 1, '5': 8, '10': 'declineReward'},
    {'1': 'alias', '3': 18, '4': 1, '5': 12, '10': 'alias'},
  ],
  '8': [
    {'1': 'staked_id'},
  ],
  '9': [
    {'1': 4, '2': 5},
    {'1': 5, '2': 6},
  ],
};

/// Descriptor for `CryptoCreateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoCreateTransactionBodyDescriptor = $convert.base64Decode(
    'ChtDcnlwdG9DcmVhdGVUcmFuc2FjdGlvbkJvZHkSHAoDa2V5GAEgASgLMgoucHJvdG8uS2V5Ug'
    'NrZXkSJgoOaW5pdGlhbEJhbGFuY2UYAiABKARSDmluaXRpYWxCYWxhbmNlEjwKDnByb3h5QWNj'
    'b3VudElEGAMgASgLMhAucHJvdG8uQWNjb3VudElEQgIYAVIOcHJveHlBY2NvdW50SUQSNAoTc2'
    'VuZFJlY29yZFRocmVzaG9sZBgGIAEoBEICGAFSE3NlbmRSZWNvcmRUaHJlc2hvbGQSOgoWcmVj'
    'ZWl2ZVJlY29yZFRocmVzaG9sZBgHIAEoBEICGAFSFnJlY2VpdmVSZWNvcmRUaHJlc2hvbGQSMA'
    'oTcmVjZWl2ZXJTaWdSZXF1aXJlZBgIIAEoCFITcmVjZWl2ZXJTaWdSZXF1aXJlZBI5Cg9hdXRv'
    'UmVuZXdQZXJpb2QYCSABKAsyDy5wcm90by5EdXJhdGlvblIPYXV0b1JlbmV3UGVyaW9kEigKB3'
    'NoYXJkSUQYCiABKAsyDi5wcm90by5TaGFyZElEUgdzaGFyZElEEigKB3JlYWxtSUQYCyABKAsy'
    'Di5wcm90by5SZWFsbUlEUgdyZWFsbUlEEjoKEG5ld1JlYWxtQWRtaW5LZXkYDCABKAsyCi5wcm'
    '90by5LZXlCAhgBUhBuZXdSZWFsbUFkbWluS2V5EhIKBG1lbW8YDSABKAlSBG1lbW8SRwogbWF4'
    'X2F1dG9tYXRpY190b2tlbl9hc3NvY2lhdGlvbnMYDiABKAVSHW1heEF1dG9tYXRpY1Rva2VuQX'
    'Nzb2NpYXRpb25zEj4KEXN0YWtlZF9hY2NvdW50X2lkGA8gASgLMhAucHJvdG8uQWNjb3VudElE'
    'SABSD3N0YWtlZEFjY291bnRJZBImCg5zdGFrZWRfbm9kZV9pZBgQIAEoA0gAUgxzdGFrZWROb2'
    'RlSWQSJQoOZGVjbGluZV9yZXdhcmQYESABKAhSDWRlY2xpbmVSZXdhcmQSFAoFYWxpYXMYEiAB'
    'KAxSBWFsaWFzQgsKCXN0YWtlZF9pZEoECAQQBUoECAUQBg==');
