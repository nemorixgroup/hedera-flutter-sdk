// This is a generated file - do not edit.
//
// Generated from consensus_create_topic.proto.

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

@$core.Deprecated('Use consensusCreateTopicTransactionBodyDescriptor instead')
const ConsensusCreateTopicTransactionBody$json = {
  '1': 'ConsensusCreateTopicTransactionBody',
  '2': [
    {'1': 'memo', '3': 1, '4': 1, '5': 9, '10': 'memo'},
    {
      '1': 'adminKey',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {
      '1': 'submitKey',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'submitKey'
    },
    {
      '1': 'autoRenewPeriod',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'autoRenewPeriod'
    },
    {
      '1': 'autoRenewAccount',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'autoRenewAccount'
    },
    {
      '1': 'fee_schedule_key',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'feeScheduleKey'
    },
    {
      '1': 'fee_exempt_key_list',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.proto.Key',
      '10': 'feeExemptKeyList'
    },
    {
      '1': 'custom_fees',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.proto.FixedCustomFee',
      '10': 'customFees'
    },
  ],
};

/// Descriptor for `ConsensusCreateTopicTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consensusCreateTopicTransactionBodyDescriptor = $convert.base64Decode(
    'CiNDb25zZW5zdXNDcmVhdGVUb3BpY1RyYW5zYWN0aW9uQm9keRISCgRtZW1vGAEgASgJUgRtZW'
    '1vEiYKCGFkbWluS2V5GAIgASgLMgoucHJvdG8uS2V5UghhZG1pbktleRIoCglzdWJtaXRLZXkY'
    'AyABKAsyCi5wcm90by5LZXlSCXN1Ym1pdEtleRI5Cg9hdXRvUmVuZXdQZXJpb2QYBiABKAsyDy'
    '5wcm90by5EdXJhdGlvblIPYXV0b1JlbmV3UGVyaW9kEjwKEGF1dG9SZW5ld0FjY291bnQYByAB'
    'KAsyEC5wcm90by5BY2NvdW50SURSEGF1dG9SZW5ld0FjY291bnQSNAoQZmVlX3NjaGVkdWxlX2'
    'tleRgIIAEoCzIKLnByb3RvLktleVIOZmVlU2NoZWR1bGVLZXkSOQoTZmVlX2V4ZW1wdF9rZXlf'
    'bGlzdBgJIAMoCzIKLnByb3RvLktleVIQZmVlRXhlbXB0S2V5TGlzdBI2CgtjdXN0b21fZmVlcx'
    'gKIAMoCzIVLnByb3RvLkZpeGVkQ3VzdG9tRmVlUgpjdXN0b21GZWVz');
