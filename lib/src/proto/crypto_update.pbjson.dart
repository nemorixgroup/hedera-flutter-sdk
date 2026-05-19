// This is a generated file - do not edit.
//
// Generated from crypto_update.proto.

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

@$core.Deprecated('Use cryptoUpdateTransactionBodyDescriptor instead')
const CryptoUpdateTransactionBody$json = {
  '1': 'CryptoUpdateTransactionBody',
  '2': [
    {
      '1': 'accountIDToUpdate',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountIDToUpdate'
    },
    {'1': 'key', '3': 3, '4': 1, '5': 11, '6': '.proto.Key', '10': 'key'},
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
      '1': 'proxyFraction',
      '3': 5,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'proxyFraction',
    },
    {
      '1': 'sendRecordThreshold',
      '3': 6,
      '4': 1,
      '5': 4,
      '8': {'3': true},
      '9': 0,
      '10': 'sendRecordThreshold',
    },
    {
      '1': 'sendRecordThresholdWrapper',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.UInt64Value',
      '8': {'3': true},
      '9': 0,
      '10': 'sendRecordThresholdWrapper',
    },
    {
      '1': 'receiveRecordThreshold',
      '3': 7,
      '4': 1,
      '5': 4,
      '8': {'3': true},
      '9': 1,
      '10': 'receiveRecordThreshold',
    },
    {
      '1': 'receiveRecordThresholdWrapper',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.UInt64Value',
      '8': {'3': true},
      '9': 1,
      '10': 'receiveRecordThresholdWrapper',
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
      '1': 'expirationTime',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expirationTime'
    },
    {
      '1': 'receiverSigRequired',
      '3': 10,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '9': 2,
      '10': 'receiverSigRequired',
    },
    {
      '1': 'receiverSigRequiredWrapper',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '9': 2,
      '10': 'receiverSigRequiredWrapper'
    },
    {
      '1': 'memo',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'memo'
    },
    {
      '1': 'max_automatic_token_associations',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'maxAutomaticTokenAssociations'
    },
    {
      '1': 'staked_account_id',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '9': 3,
      '10': 'stakedAccountId'
    },
    {
      '1': 'staked_node_id',
      '3': 17,
      '4': 1,
      '5': 3,
      '9': 3,
      '10': 'stakedNodeId'
    },
    {
      '1': 'decline_reward',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'declineReward'
    },
  ],
  '8': [
    {'1': 'sendRecordThresholdField'},
    {'1': 'receiveRecordThresholdField'},
    {'1': 'receiverSigRequiredField'},
    {'1': 'staked_id'},
  ],
};

/// Descriptor for `CryptoUpdateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoUpdateTransactionBodyDescriptor = $convert.base64Decode(
    'ChtDcnlwdG9VcGRhdGVUcmFuc2FjdGlvbkJvZHkSPgoRYWNjb3VudElEVG9VcGRhdGUYAiABKA'
    'syEC5wcm90by5BY2NvdW50SURSEWFjY291bnRJRFRvVXBkYXRlEhwKA2tleRgDIAEoCzIKLnBy'
    'b3RvLktleVIDa2V5EjwKDnByb3h5QWNjb3VudElEGAQgASgLMhAucHJvdG8uQWNjb3VudElEQg'
    'IYAVIOcHJveHlBY2NvdW50SUQSKAoNcHJveHlGcmFjdGlvbhgFIAEoBUICGAFSDXByb3h5RnJh'
    'Y3Rpb24SNgoTc2VuZFJlY29yZFRocmVzaG9sZBgGIAEoBEICGAFIAFITc2VuZFJlY29yZFRocm'
    'VzaG9sZBJiChpzZW5kUmVjb3JkVGhyZXNob2xkV3JhcHBlchgLIAEoCzIcLmdvb2dsZS5wcm90'
    'b2J1Zi5VSW50NjRWYWx1ZUICGAFIAFIac2VuZFJlY29yZFRocmVzaG9sZFdyYXBwZXISPAoWcm'
    'VjZWl2ZVJlY29yZFRocmVzaG9sZBgHIAEoBEICGAFIAVIWcmVjZWl2ZVJlY29yZFRocmVzaG9s'
    'ZBJoCh1yZWNlaXZlUmVjb3JkVGhyZXNob2xkV3JhcHBlchgMIAEoCzIcLmdvb2dsZS5wcm90b2'
    'J1Zi5VSW50NjRWYWx1ZUICGAFIAVIdcmVjZWl2ZVJlY29yZFRocmVzaG9sZFdyYXBwZXISOQoP'
    'YXV0b1JlbmV3UGVyaW9kGAggASgLMg8ucHJvdG8uRHVyYXRpb25SD2F1dG9SZW5ld1BlcmlvZB'
    'I4Cg5leHBpcmF0aW9uVGltZRgJIAEoCzIQLnByb3RvLlRpbWVzdGFtcFIOZXhwaXJhdGlvblRp'
    'bWUSNgoTcmVjZWl2ZXJTaWdSZXF1aXJlZBgKIAEoCEICGAFIAlITcmVjZWl2ZXJTaWdSZXF1aX'
    'JlZBJcChpyZWNlaXZlclNpZ1JlcXVpcmVkV3JhcHBlchgNIAEoCzIaLmdvb2dsZS5wcm90b2J1'
    'Zi5Cb29sVmFsdWVIAlIacmVjZWl2ZXJTaWdSZXF1aXJlZFdyYXBwZXISMAoEbWVtbxgOIAEoCz'
    'IcLmdvb2dsZS5wcm90b2J1Zi5TdHJpbmdWYWx1ZVIEbWVtbxJkCiBtYXhfYXV0b21hdGljX3Rv'
    'a2VuX2Fzc29jaWF0aW9ucxgPIAEoCzIbLmdvb2dsZS5wcm90b2J1Zi5JbnQzMlZhbHVlUh1tYX'
    'hBdXRvbWF0aWNUb2tlbkFzc29jaWF0aW9ucxI+ChFzdGFrZWRfYWNjb3VudF9pZBgQIAEoCzIQ'
    'LnByb3RvLkFjY291bnRJREgDUg9zdGFrZWRBY2NvdW50SWQSJgoOc3Rha2VkX25vZGVfaWQYES'
    'ABKANIA1IMc3Rha2VkTm9kZUlkEkEKDmRlY2xpbmVfcmV3YXJkGBIgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLkJvb2xWYWx1ZVINZGVjbGluZVJld2FyZEIaChhzZW5kUmVjb3JkVGhyZXNob2xkRm'
    'llbGRCHQobcmVjZWl2ZVJlY29yZFRocmVzaG9sZEZpZWxkQhoKGHJlY2VpdmVyU2lnUmVxdWly'
    'ZWRGaWVsZEILCglzdGFrZWRfaWQ=');
