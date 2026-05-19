// This is a generated file - do not edit.
//
// Generated from contract_update.proto.

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

@$core.Deprecated('Use contractUpdateTransactionBodyDescriptor instead')
const ContractUpdateTransactionBody$json = {
  '1': 'ContractUpdateTransactionBody',
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
      '1': 'expirationTime',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expirationTime'
    },
    {
      '1': 'adminKey',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
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
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'autoRenewPeriod'
    },
    {
      '1': 'fileID',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '8': {'3': true},
      '10': 'fileID',
    },
    {
      '1': 'memo',
      '3': 9,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '9': 0,
      '10': 'memo',
    },
    {
      '1': 'memoWrapper',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '9': 0,
      '10': 'memoWrapper'
    },
    {
      '1': 'max_automatic_token_associations',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'maxAutomaticTokenAssociations'
    },
    {
      '1': 'auto_renew_account_id',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'autoRenewAccountId'
    },
    {
      '1': 'staked_account_id',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '9': 1,
      '10': 'stakedAccountId'
    },
    {
      '1': 'staked_node_id',
      '3': 14,
      '4': 1,
      '5': 3,
      '9': 1,
      '10': 'stakedNodeId'
    },
    {
      '1': 'decline_reward',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'declineReward'
    },
  ],
  '8': [
    {'1': 'memoField'},
    {'1': 'staked_id'},
  ],
};

/// Descriptor for `ContractUpdateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractUpdateTransactionBodyDescriptor = $convert.base64Decode(
    'Ch1Db250cmFjdFVwZGF0ZVRyYW5zYWN0aW9uQm9keRIxCgpjb250cmFjdElEGAEgASgLMhEucH'
    'JvdG8uQ29udHJhY3RJRFIKY29udHJhY3RJRBI4Cg5leHBpcmF0aW9uVGltZRgCIAEoCzIQLnBy'
    'b3RvLlRpbWVzdGFtcFIOZXhwaXJhdGlvblRpbWUSJgoIYWRtaW5LZXkYAyABKAsyCi5wcm90by'
    '5LZXlSCGFkbWluS2V5EjwKDnByb3h5QWNjb3VudElEGAYgASgLMhAucHJvdG8uQWNjb3VudElE'
    'QgIYAVIOcHJveHlBY2NvdW50SUQSOQoPYXV0b1JlbmV3UGVyaW9kGAcgASgLMg8ucHJvdG8uRH'
    'VyYXRpb25SD2F1dG9SZW5ld1BlcmlvZBIpCgZmaWxlSUQYCCABKAsyDS5wcm90by5GaWxlSURC'
    'AhgBUgZmaWxlSUQSGAoEbWVtbxgJIAEoCUICGAFIAFIEbWVtbxJACgttZW1vV3JhcHBlchgKIA'
    'EoCzIcLmdvb2dsZS5wcm90b2J1Zi5TdHJpbmdWYWx1ZUgAUgttZW1vV3JhcHBlchJkCiBtYXhf'
    'YXV0b21hdGljX3Rva2VuX2Fzc29jaWF0aW9ucxgLIAEoCzIbLmdvb2dsZS5wcm90b2J1Zi5Jbn'
    'QzMlZhbHVlUh1tYXhBdXRvbWF0aWNUb2tlbkFzc29jaWF0aW9ucxJDChVhdXRvX3JlbmV3X2Fj'
    'Y291bnRfaWQYDCABKAsyEC5wcm90by5BY2NvdW50SURSEmF1dG9SZW5ld0FjY291bnRJZBI+Ch'
    'FzdGFrZWRfYWNjb3VudF9pZBgNIAEoCzIQLnByb3RvLkFjY291bnRJREgBUg9zdGFrZWRBY2Nv'
    'dW50SWQSJgoOc3Rha2VkX25vZGVfaWQYDiABKANIAVIMc3Rha2VkTm9kZUlkEkEKDmRlY2xpbm'
    'VfcmV3YXJkGA8gASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xWYWx1ZVINZGVjbGluZVJld2Fy'
    'ZEILCgltZW1vRmllbGRCCwoJc3Rha2VkX2lk');
