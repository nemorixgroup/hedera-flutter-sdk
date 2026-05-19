// This is a generated file - do not edit.
//
// Generated from consensus_submit_message.proto.

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

@$core.Deprecated('Use consensusMessageChunkInfoDescriptor instead')
const ConsensusMessageChunkInfo$json = {
  '1': 'ConsensusMessageChunkInfo',
  '2': [
    {
      '1': 'initialTransactionID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionID',
      '10': 'initialTransactionID'
    },
    {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
    {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `ConsensusMessageChunkInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consensusMessageChunkInfoDescriptor = $convert.base64Decode(
    'ChlDb25zZW5zdXNNZXNzYWdlQ2h1bmtJbmZvEkgKFGluaXRpYWxUcmFuc2FjdGlvbklEGAEgAS'
    'gLMhQucHJvdG8uVHJhbnNhY3Rpb25JRFIUaW5pdGlhbFRyYW5zYWN0aW9uSUQSFAoFdG90YWwY'
    'AiABKAVSBXRvdGFsEhYKBm51bWJlchgDIAEoBVIGbnVtYmVy');

@$core.Deprecated('Use consensusSubmitMessageTransactionBodyDescriptor instead')
const ConsensusSubmitMessageTransactionBody$json = {
  '1': 'ConsensusSubmitMessageTransactionBody',
  '2': [
    {
      '1': 'topicID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TopicID',
      '10': 'topicID'
    },
    {'1': 'message', '3': 2, '4': 1, '5': 12, '10': 'message'},
    {
      '1': 'chunkInfo',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusMessageChunkInfo',
      '10': 'chunkInfo'
    },
  ],
};

/// Descriptor for `ConsensusSubmitMessageTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consensusSubmitMessageTransactionBodyDescriptor =
    $convert.base64Decode(
        'CiVDb25zZW5zdXNTdWJtaXRNZXNzYWdlVHJhbnNhY3Rpb25Cb2R5EigKB3RvcGljSUQYASABKA'
        'syDi5wcm90by5Ub3BpY0lEUgd0b3BpY0lEEhgKB21lc3NhZ2UYAiABKAxSB21lc3NhZ2USPgoJ'
        'Y2h1bmtJbmZvGAMgASgLMiAucHJvdG8uQ29uc2Vuc3VzTWVzc2FnZUNodW5rSW5mb1IJY2h1bm'
        'tJbmZv');
