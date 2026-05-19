// This is a generated file - do not edit.
//
// Generated from consensus_update_topic.proto.

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

@$core.Deprecated('Use consensusUpdateTopicTransactionBodyDescriptor instead')
const ConsensusUpdateTopicTransactionBody$json = {
  '1': 'ConsensusUpdateTopicTransactionBody',
  '2': [
    {
      '1': 'topicID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TopicID',
      '10': 'topicID'
    },
    {
      '1': 'memo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'memo'
    },
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
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {
      '1': 'submitKey',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'submitKey'
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
      '1': 'autoRenewAccount',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'autoRenewAccount'
    },
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
      '4': 1,
      '5': 11,
      '6': '.proto.FeeExemptKeyList',
      '10': 'feeExemptKeyList'
    },
    {
      '1': 'custom_fees',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.FixedCustomFeeList',
      '10': 'customFees'
    },
  ],
};

/// Descriptor for `ConsensusUpdateTopicTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consensusUpdateTopicTransactionBodyDescriptor = $convert.base64Decode(
    'CiNDb25zZW5zdXNVcGRhdGVUb3BpY1RyYW5zYWN0aW9uQm9keRIoCgd0b3BpY0lEGAEgASgLMg'
    '4ucHJvdG8uVG9waWNJRFIHdG9waWNJRBIwCgRtZW1vGAIgASgLMhwuZ29vZ2xlLnByb3RvYnVm'
    'LlN0cmluZ1ZhbHVlUgRtZW1vEjgKDmV4cGlyYXRpb25UaW1lGAQgASgLMhAucHJvdG8uVGltZX'
    'N0YW1wUg5leHBpcmF0aW9uVGltZRImCghhZG1pbktleRgGIAEoCzIKLnByb3RvLktleVIIYWRt'
    'aW5LZXkSKAoJc3VibWl0S2V5GAcgASgLMgoucHJvdG8uS2V5UglzdWJtaXRLZXkSOQoPYXV0b1'
    'JlbmV3UGVyaW9kGAggASgLMg8ucHJvdG8uRHVyYXRpb25SD2F1dG9SZW5ld1BlcmlvZBI8ChBh'
    'dXRvUmVuZXdBY2NvdW50GAkgASgLMhAucHJvdG8uQWNjb3VudElEUhBhdXRvUmVuZXdBY2NvdW'
    '50EjQKEGZlZV9zY2hlZHVsZV9rZXkYCiABKAsyCi5wcm90by5LZXlSDmZlZVNjaGVkdWxlS2V5'
    'EkYKE2ZlZV9leGVtcHRfa2V5X2xpc3QYCyABKAsyFy5wcm90by5GZWVFeGVtcHRLZXlMaXN0Uh'
    'BmZWVFeGVtcHRLZXlMaXN0EjoKC2N1c3RvbV9mZWVzGAwgASgLMhkucHJvdG8uRml4ZWRDdXN0'
    'b21GZWVMaXN0UgpjdXN0b21GZWVz');
