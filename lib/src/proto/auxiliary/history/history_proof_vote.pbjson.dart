// This is a generated file - do not edit.
//
// Generated from auxiliary/history/history_proof_vote.proto.

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

@$core.Deprecated('Use historyProofVoteTransactionBodyDescriptor instead')
const HistoryProofVoteTransactionBody$json = {
  '1': 'HistoryProofVoteTransactionBody',
  '2': [
    {'1': 'construction_id', '3': 1, '4': 1, '5': 4, '10': 'constructionId'},
    {
      '1': 'vote',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.history.HistoryProofVote',
      '10': 'vote'
    },
  ],
};

/// Descriptor for `HistoryProofVoteTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyProofVoteTransactionBodyDescriptor =
    $convert.base64Decode(
        'Ch9IaXN0b3J5UHJvb2ZWb3RlVHJhbnNhY3Rpb25Cb2R5EicKD2NvbnN0cnVjdGlvbl9pZBgBIA'
        'EoBFIOY29uc3RydWN0aW9uSWQSSAoEdm90ZRgCIAEoCzI0LmNvbS5oZWRlcmEuaGFwaS5ub2Rl'
        'LnN0YXRlLmhpc3RvcnkuSGlzdG9yeVByb29mVm90ZVIEdm90ZQ==');
