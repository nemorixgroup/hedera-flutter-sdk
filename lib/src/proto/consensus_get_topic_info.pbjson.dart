// This is a generated file - do not edit.
//
// Generated from consensus_get_topic_info.proto.

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

@$core.Deprecated('Use consensusGetTopicInfoQueryDescriptor instead')
const ConsensusGetTopicInfoQuery$json = {
  '1': 'ConsensusGetTopicInfoQuery',
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
      '1': 'topicID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TopicID',
      '10': 'topicID'
    },
  ],
};

/// Descriptor for `ConsensusGetTopicInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consensusGetTopicInfoQueryDescriptor =
    $convert.base64Decode(
        'ChpDb25zZW5zdXNHZXRUb3BpY0luZm9RdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdW'
        'VyeUhlYWRlclIGaGVhZGVyEigKB3RvcGljSUQYAiABKAsyDi5wcm90by5Ub3BpY0lEUgd0b3Bp'
        'Y0lE');

@$core.Deprecated('Use consensusGetTopicInfoResponseDescriptor instead')
const ConsensusGetTopicInfoResponse$json = {
  '1': 'ConsensusGetTopicInfoResponse',
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
      '1': 'topicID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TopicID',
      '10': 'topicID'
    },
    {
      '1': 'topicInfo',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusTopicInfo',
      '10': 'topicInfo'
    },
  ],
};

/// Descriptor for `ConsensusGetTopicInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consensusGetTopicInfoResponseDescriptor = $convert.base64Decode(
    'Ch1Db25zZW5zdXNHZXRUb3BpY0luZm9SZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by'
    '5SZXNwb25zZUhlYWRlclIGaGVhZGVyEigKB3RvcGljSUQYAiABKAsyDi5wcm90by5Ub3BpY0lE'
    'Ugd0b3BpY0lEEjcKCXRvcGljSW5mbxgFIAEoCzIZLnByb3RvLkNvbnNlbnN1c1RvcGljSW5mb1'
    'IJdG9waWNJbmZv');
