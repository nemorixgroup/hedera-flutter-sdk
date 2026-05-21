// This is a generated file - do not edit.
//
// Generated from auxiliary/tss/tss_vote.proto.

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

@$core.Deprecated('Use tssVoteTransactionBodyDescriptor instead')
const TssVoteTransactionBody$json = {
  '1': 'TssVoteTransactionBody',
  '2': [
    {
      '1': 'source_roster_hash',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'sourceRosterHash'
    },
    {
      '1': 'target_roster_hash',
      '3': 2,
      '4': 1,
      '5': 12,
      '10': 'targetRosterHash'
    },
    {'1': 'ledger_id', '3': 3, '4': 1, '5': 12, '10': 'ledgerId'},
    {'1': 'node_signature', '3': 4, '4': 1, '5': 12, '10': 'nodeSignature'},
    {'1': 'tss_vote', '3': 5, '4': 1, '5': 12, '10': 'tssVote'},
  ],
};

/// Descriptor for `TssVoteTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tssVoteTransactionBodyDescriptor = $convert.base64Decode(
    'ChZUc3NWb3RlVHJhbnNhY3Rpb25Cb2R5EiwKEnNvdXJjZV9yb3N0ZXJfaGFzaBgBIAEoDFIQc2'
    '91cmNlUm9zdGVySGFzaBIsChJ0YXJnZXRfcm9zdGVyX2hhc2gYAiABKAxSEHRhcmdldFJvc3Rl'
    'ckhhc2gSGwoJbGVkZ2VyX2lkGAMgASgMUghsZWRnZXJJZBIlCg5ub2RlX3NpZ25hdHVyZRgEIA'
    'EoDFINbm9kZVNpZ25hdHVyZRIZCgh0c3Nfdm90ZRgFIAEoDFIHdHNzVm90ZQ==');
