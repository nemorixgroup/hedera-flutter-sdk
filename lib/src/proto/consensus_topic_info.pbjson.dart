// This is a generated file - do not edit.
//
// Generated from consensus_topic_info.proto.

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

@$core.Deprecated('Use consensusTopicInfoDescriptor instead')
const ConsensusTopicInfo$json = {
  '1': 'ConsensusTopicInfo',
  '2': [
    {'1': 'memo', '3': 1, '4': 1, '5': 9, '10': 'memo'},
    {'1': 'runningHash', '3': 2, '4': 1, '5': 12, '10': 'runningHash'},
    {'1': 'sequenceNumber', '3': 3, '4': 1, '5': 4, '10': 'sequenceNumber'},
    {
      '1': 'expirationTime',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expirationTime'
    },
    {
      '1': 'adminKey',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {
      '1': 'submitKey',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'submitKey'
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
      '1': 'autoRenewAccount',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'autoRenewAccount'
    },
    {'1': 'ledger_id', '3': 9, '4': 1, '5': 12, '10': 'ledgerId'},
    {
      '1': 'fee_schedule_key',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'feeScheduleKey'
    },
    {
      '1': 'fee_exempt_key_list',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.proto.Key',
      '10': 'feeExemptKeyList'
    },
    {
      '1': 'custom_fees',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.proto.FixedCustomFee',
      '10': 'customFees'
    },
  ],
};

/// Descriptor for `ConsensusTopicInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consensusTopicInfoDescriptor = $convert.base64Decode(
    'ChJDb25zZW5zdXNUb3BpY0luZm8SEgoEbWVtbxgBIAEoCVIEbWVtbxIgCgtydW5uaW5nSGFzaB'
    'gCIAEoDFILcnVubmluZ0hhc2gSJgoOc2VxdWVuY2VOdW1iZXIYAyABKARSDnNlcXVlbmNlTnVt'
    'YmVyEjgKDmV4cGlyYXRpb25UaW1lGAQgASgLMhAucHJvdG8uVGltZXN0YW1wUg5leHBpcmF0aW'
    '9uVGltZRImCghhZG1pbktleRgFIAEoCzIKLnByb3RvLktleVIIYWRtaW5LZXkSKAoJc3VibWl0'
    'S2V5GAYgASgLMgoucHJvdG8uS2V5UglzdWJtaXRLZXkSOQoPYXV0b1JlbmV3UGVyaW9kGAcgAS'
    'gLMg8ucHJvdG8uRHVyYXRpb25SD2F1dG9SZW5ld1BlcmlvZBI8ChBhdXRvUmVuZXdBY2NvdW50'
    'GAggASgLMhAucHJvdG8uQWNjb3VudElEUhBhdXRvUmVuZXdBY2NvdW50EhsKCWxlZGdlcl9pZB'
    'gJIAEoDFIIbGVkZ2VySWQSNAoQZmVlX3NjaGVkdWxlX2tleRgKIAEoCzIKLnByb3RvLktleVIO'
    'ZmVlU2NoZWR1bGVLZXkSOQoTZmVlX2V4ZW1wdF9rZXlfbGlzdBgLIAMoCzIKLnByb3RvLktleV'
    'IQZmVlRXhlbXB0S2V5TGlzdBI2CgtjdXN0b21fZmVlcxgMIAMoCzIVLnByb3RvLkZpeGVkQ3Vz'
    'dG9tRmVlUgpjdXN0b21GZWVz');
