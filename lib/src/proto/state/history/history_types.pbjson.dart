// This is a generated file - do not edit.
//
// Generated from state/history/history_types.proto.

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

@$core.Deprecated('Use proofKeySetDescriptor instead')
const ProofKeySet$json = {
  '1': 'ProofKeySet',
  '2': [
    {
      '1': 'adoption_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'adoptionTime'
    },
    {'1': 'key', '3': 3, '4': 1, '5': 12, '10': 'key'},
    {'1': 'next_key', '3': 4, '4': 1, '5': 12, '10': 'nextKey'},
  ],
};

/// Descriptor for `ProofKeySet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proofKeySetDescriptor = $convert.base64Decode(
    'CgtQcm9vZktleVNldBI1Cg1hZG9wdGlvbl90aW1lGAIgASgLMhAucHJvdG8uVGltZXN0YW1wUg'
    'xhZG9wdGlvblRpbWUSEAoDa2V5GAMgASgMUgNrZXkSGQoIbmV4dF9rZXkYBCABKAxSB25leHRL'
    'ZXk=');

@$core.Deprecated('Use proofKeyDescriptor instead')
const ProofKey$json = {
  '1': 'ProofKey',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 4, '10': 'nodeId'},
    {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
  ],
};

/// Descriptor for `ProofKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proofKeyDescriptor = $convert.base64Decode(
    'CghQcm9vZktleRIXCgdub2RlX2lkGAEgASgEUgZub2RlSWQSEAoDa2V5GAIgASgMUgNrZXk=');

@$core.Deprecated('Use historyDescriptor instead')
const History$json = {
  '1': 'History',
  '2': [
    {
      '1': 'address_book_hash',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'addressBookHash'
    },
    {'1': 'metadata', '3': 2, '4': 1, '5': 12, '10': 'metadata'},
  ],
};

/// Descriptor for `History`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyDescriptor = $convert.base64Decode(
    'CgdIaXN0b3J5EioKEWFkZHJlc3NfYm9va19oYXNoGAEgASgMUg9hZGRyZXNzQm9va0hhc2gSGg'
    'oIbWV0YWRhdGEYAiABKAxSCG1ldGFkYXRh');

@$core.Deprecated('Use historyProofDescriptor instead')
const HistoryProof$json = {
  '1': 'HistoryProof',
  '2': [
    {
      '1': 'source_address_book_hash',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'sourceAddressBookHash'
    },
    {
      '1': 'target_proof_keys',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.history.ProofKey',
      '10': 'targetProofKeys'
    },
    {
      '1': 'target_history',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.history.History',
      '10': 'targetHistory'
    },
    {'1': 'proof', '3': 4, '4': 1, '5': 12, '10': 'proof'},
  ],
};

/// Descriptor for `HistoryProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyProofDescriptor = $convert.base64Decode(
    'CgxIaXN0b3J5UHJvb2YSNwoYc291cmNlX2FkZHJlc3NfYm9va19oYXNoGAEgASgMUhVzb3VyY2'
    'VBZGRyZXNzQm9va0hhc2gSWAoRdGFyZ2V0X3Byb29mX2tleXMYAiADKAsyLC5jb20uaGVkZXJh'
    'LmhhcGkubm9kZS5zdGF0ZS5oaXN0b3J5LlByb29mS2V5Ug90YXJnZXRQcm9vZktleXMSUgoOdG'
    'FyZ2V0X2hpc3RvcnkYAyABKAsyKy5jb20uaGVkZXJhLmhhcGkubm9kZS5zdGF0ZS5oaXN0b3J5'
    'Lkhpc3RvcnlSDXRhcmdldEhpc3RvcnkSFAoFcHJvb2YYBCABKAxSBXByb29m');

@$core.Deprecated('Use historyProofConstructionDescriptor instead')
const HistoryProofConstruction$json = {
  '1': 'HistoryProofConstruction',
  '2': [
    {'1': 'construction_id', '3': 1, '4': 1, '5': 4, '10': 'constructionId'},
    {
      '1': 'source_roster_hash',
      '3': 2,
      '4': 1,
      '5': 12,
      '10': 'sourceRosterHash'
    },
    {
      '1': 'source_proof',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.history.HistoryProof',
      '10': 'sourceProof'
    },
    {
      '1': 'target_roster_hash',
      '3': 4,
      '4': 1,
      '5': 12,
      '10': 'targetRosterHash'
    },
    {
      '1': 'grace_period_end_time',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '9': 0,
      '10': 'gracePeriodEndTime'
    },
    {
      '1': 'assembly_start_time',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '9': 0,
      '10': 'assemblyStartTime'
    },
    {
      '1': 'target_proof',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.history.HistoryProof',
      '9': 0,
      '10': 'targetProof'
    },
    {
      '1': 'failure_reason',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'failureReason'
    },
  ],
  '8': [
    {'1': 'proof_state'},
  ],
};

/// Descriptor for `HistoryProofConstruction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyProofConstructionDescriptor = $convert.base64Decode(
    'ChhIaXN0b3J5UHJvb2ZDb25zdHJ1Y3Rpb24SJwoPY29uc3RydWN0aW9uX2lkGAEgASgEUg5jb2'
    '5zdHJ1Y3Rpb25JZBIsChJzb3VyY2Vfcm9zdGVyX2hhc2gYAiABKAxSEHNvdXJjZVJvc3Rlckhh'
    'c2gSUwoMc291cmNlX3Byb29mGAMgASgLMjAuY29tLmhlZGVyYS5oYXBpLm5vZGUuc3RhdGUuaG'
    'lzdG9yeS5IaXN0b3J5UHJvb2ZSC3NvdXJjZVByb29mEiwKEnRhcmdldF9yb3N0ZXJfaGFzaBgE'
    'IAEoDFIQdGFyZ2V0Um9zdGVySGFzaBJFChVncmFjZV9wZXJpb2RfZW5kX3RpbWUYBSABKAsyEC'
    '5wcm90by5UaW1lc3RhbXBIAFISZ3JhY2VQZXJpb2RFbmRUaW1lEkIKE2Fzc2VtYmx5X3N0YXJ0'
    'X3RpbWUYBiABKAsyEC5wcm90by5UaW1lc3RhbXBIAFIRYXNzZW1ibHlTdGFydFRpbWUSVQoMdG'
    'FyZ2V0X3Byb29mGAcgASgLMjAuY29tLmhlZGVyYS5oYXBpLm5vZGUuc3RhdGUuaGlzdG9yeS5I'
    'aXN0b3J5UHJvb2ZIAFILdGFyZ2V0UHJvb2YSJwoOZmFpbHVyZV9yZWFzb24YCCABKAlIAFINZm'
    'FpbHVyZVJlYXNvbkINCgtwcm9vZl9zdGF0ZQ==');

@$core.Deprecated('Use constructionNodeIdDescriptor instead')
const ConstructionNodeId$json = {
  '1': 'ConstructionNodeId',
  '2': [
    {'1': 'construction_id', '3': 1, '4': 1, '5': 4, '10': 'constructionId'},
    {'1': 'node_id', '3': 2, '4': 1, '5': 4, '10': 'nodeId'},
  ],
};

/// Descriptor for `ConstructionNodeId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constructionNodeIdDescriptor = $convert.base64Decode(
    'ChJDb25zdHJ1Y3Rpb25Ob2RlSWQSJwoPY29uc3RydWN0aW9uX2lkGAEgASgEUg5jb25zdHJ1Y3'
    'Rpb25JZBIXCgdub2RlX2lkGAIgASgEUgZub2RlSWQ=');

@$core.Deprecated('Use historyProofVoteDescriptor instead')
const HistoryProofVote$json = {
  '1': 'HistoryProofVote',
  '2': [
    {
      '1': 'proof',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.history.HistoryProof',
      '9': 0,
      '10': 'proof'
    },
    {
      '1': 'congruent_node_id',
      '3': 2,
      '4': 1,
      '5': 4,
      '9': 0,
      '10': 'congruentNodeId'
    },
  ],
  '8': [
    {'1': 'vote'},
  ],
};

/// Descriptor for `HistoryProofVote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyProofVoteDescriptor = $convert.base64Decode(
    'ChBIaXN0b3J5UHJvb2ZWb3RlEkgKBXByb29mGAEgASgLMjAuY29tLmhlZGVyYS5oYXBpLm5vZG'
    'Uuc3RhdGUuaGlzdG9yeS5IaXN0b3J5UHJvb2ZIAFIFcHJvb2YSLAoRY29uZ3J1ZW50X25vZGVf'
    'aWQYAiABKARIAFIPY29uZ3J1ZW50Tm9kZUlkQgYKBHZvdGU=');

@$core.Deprecated('Use historySignatureDescriptor instead')
const HistorySignature$json = {
  '1': 'HistorySignature',
  '2': [
    {
      '1': 'history',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.history.History',
      '10': 'history'
    },
    {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `HistorySignature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historySignatureDescriptor = $convert.base64Decode(
    'ChBIaXN0b3J5U2lnbmF0dXJlEkUKB2hpc3RvcnkYASABKAsyKy5jb20uaGVkZXJhLmhhcGkubm'
    '9kZS5zdGF0ZS5oaXN0b3J5Lkhpc3RvcnlSB2hpc3RvcnkSHAoJc2lnbmF0dXJlGAIgASgMUglz'
    'aWduYXR1cmU=');

@$core.Deprecated('Use recordedHistorySignatureDescriptor instead')
const RecordedHistorySignature$json = {
  '1': 'RecordedHistorySignature',
  '2': [
    {
      '1': 'signing_time',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'signingTime'
    },
    {
      '1': 'history_signature',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.history.HistorySignature',
      '10': 'historySignature'
    },
  ],
};

/// Descriptor for `RecordedHistorySignature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordedHistorySignatureDescriptor = $convert.base64Decode(
    'ChhSZWNvcmRlZEhpc3RvcnlTaWduYXR1cmUSMwoMc2lnbmluZ190aW1lGAEgASgLMhAucHJvdG'
    '8uVGltZXN0YW1wUgtzaWduaW5nVGltZRJhChFoaXN0b3J5X3NpZ25hdHVyZRgCIAEoCzI0LmNv'
    'bS5oZWRlcmEuaGFwaS5ub2RlLnN0YXRlLmhpc3RvcnkuSGlzdG9yeVNpZ25hdHVyZVIQaGlzdG'
    '9yeVNpZ25hdHVyZQ==');
