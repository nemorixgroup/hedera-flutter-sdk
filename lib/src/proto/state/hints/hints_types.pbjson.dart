// This is a generated file - do not edit.
//
// Generated from state/hints/hints_types.proto.

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

@$core.Deprecated('Use cRSStageDescriptor instead')
const CRSStage$json = {
  '1': 'CRSStage',
  '2': [
    {'1': 'GATHERING_CONTRIBUTIONS', '2': 0},
    {'1': 'WAITING_FOR_ADOPTING_FINAL_CRS', '2': 1},
    {'1': 'COMPLETED', '2': 2},
  ],
};

/// Descriptor for `CRSStage`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cRSStageDescriptor = $convert.base64Decode(
    'CghDUlNTdGFnZRIbChdHQVRIRVJJTkdfQ09OVFJJQlVUSU9OUxAAEiIKHldBSVRJTkdfRk9SX0'
    'FET1BUSU5HX0ZJTkFMX0NSUxABEg0KCUNPTVBMRVRFRBAC');

@$core.Deprecated('Use hintsPartyIdDescriptor instead')
const HintsPartyId$json = {
  '1': 'HintsPartyId',
  '2': [
    {'1': 'party_id', '3': 1, '4': 1, '5': 13, '10': 'partyId'},
    {'1': 'num_parties', '3': 2, '4': 1, '5': 13, '10': 'numParties'},
  ],
};

/// Descriptor for `HintsPartyId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hintsPartyIdDescriptor = $convert.base64Decode(
    'CgxIaW50c1BhcnR5SWQSGQoIcGFydHlfaWQYASABKA1SB3BhcnR5SWQSHwoLbnVtX3BhcnRpZX'
    'MYAiABKA1SCm51bVBhcnRpZXM=');

@$core.Deprecated('Use hintsKeySetDescriptor instead')
const HintsKeySet$json = {
  '1': 'HintsKeySet',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 4, '10': 'nodeId'},
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

/// Descriptor for `HintsKeySet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hintsKeySetDescriptor = $convert.base64Decode(
    'CgtIaW50c0tleVNldBIXCgdub2RlX2lkGAEgASgEUgZub2RlSWQSNQoNYWRvcHRpb25fdGltZR'
    'gCIAEoCzIQLnByb3RvLlRpbWVzdGFtcFIMYWRvcHRpb25UaW1lEhAKA2tleRgDIAEoDFIDa2V5'
    'EhkKCG5leHRfa2V5GAQgASgMUgduZXh0S2V5');

@$core.Deprecated('Use preprocessedKeysDescriptor instead')
const PreprocessedKeys$json = {
  '1': 'PreprocessedKeys',
  '2': [
    {'1': 'aggregation_key', '3': 1, '4': 1, '5': 12, '10': 'aggregationKey'},
    {'1': 'verification_key', '3': 2, '4': 1, '5': 12, '10': 'verificationKey'},
  ],
};

/// Descriptor for `PreprocessedKeys`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preprocessedKeysDescriptor = $convert.base64Decode(
    'ChBQcmVwcm9jZXNzZWRLZXlzEicKD2FnZ3JlZ2F0aW9uX2tleRgBIAEoDFIOYWdncmVnYXRpb2'
    '5LZXkSKQoQdmVyaWZpY2F0aW9uX2tleRgCIAEoDFIPdmVyaWZpY2F0aW9uS2V5');

@$core.Deprecated('Use preprocessingVoteIdDescriptor instead')
const PreprocessingVoteId$json = {
  '1': 'PreprocessingVoteId',
  '2': [
    {'1': 'construction_id', '3': 1, '4': 1, '5': 4, '10': 'constructionId'},
    {'1': 'node_id', '3': 2, '4': 1, '5': 4, '10': 'nodeId'},
  ],
};

/// Descriptor for `PreprocessingVoteId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preprocessingVoteIdDescriptor = $convert.base64Decode(
    'ChNQcmVwcm9jZXNzaW5nVm90ZUlkEicKD2NvbnN0cnVjdGlvbl9pZBgBIAEoBFIOY29uc3RydW'
    'N0aW9uSWQSFwoHbm9kZV9pZBgCIAEoBFIGbm9kZUlk');

@$core.Deprecated('Use preprocessingVoteDescriptor instead')
const PreprocessingVote$json = {
  '1': 'PreprocessingVote',
  '2': [
    {
      '1': 'preprocessed_keys',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.hints.PreprocessedKeys',
      '9': 0,
      '10': 'preprocessedKeys'
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

/// Descriptor for `PreprocessingVote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preprocessingVoteDescriptor = $convert.base64Decode(
    'ChFQcmVwcm9jZXNzaW5nVm90ZRJhChFwcmVwcm9jZXNzZWRfa2V5cxgBIAEoCzIyLmNvbS5oZW'
    'RlcmEuaGFwaS5ub2RlLnN0YXRlLmhpbnRzLlByZXByb2Nlc3NlZEtleXNIAFIQcHJlcHJvY2Vz'
    'c2VkS2V5cxIsChFjb25ncnVlbnRfbm9kZV9pZBgCIAEoBEgAUg9jb25ncnVlbnROb2RlSWRCBg'
    'oEdm90ZQ==');

@$core.Deprecated('Use nodePartyIdDescriptor instead')
const NodePartyId$json = {
  '1': 'NodePartyId',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 4, '10': 'nodeId'},
    {'1': 'party_id', '3': 2, '4': 1, '5': 13, '10': 'partyId'},
  ],
};

/// Descriptor for `NodePartyId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodePartyIdDescriptor = $convert.base64Decode(
    'CgtOb2RlUGFydHlJZBIXCgdub2RlX2lkGAEgASgEUgZub2RlSWQSGQoIcGFydHlfaWQYAiABKA'
    '1SB3BhcnR5SWQ=');

@$core.Deprecated('Use hintsSchemeDescriptor instead')
const HintsScheme$json = {
  '1': 'HintsScheme',
  '2': [
    {
      '1': 'preprocessed_keys',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.hints.PreprocessedKeys',
      '10': 'preprocessedKeys'
    },
    {
      '1': 'node_party_ids',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.hints.NodePartyId',
      '10': 'nodePartyIds'
    },
  ],
};

/// Descriptor for `HintsScheme`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hintsSchemeDescriptor = $convert.base64Decode(
    'CgtIaW50c1NjaGVtZRJfChFwcmVwcm9jZXNzZWRfa2V5cxgBIAEoCzIyLmNvbS5oZWRlcmEuaG'
    'FwaS5ub2RlLnN0YXRlLmhpbnRzLlByZXByb2Nlc3NlZEtleXNSEHByZXByb2Nlc3NlZEtleXMS'
    'UwoObm9kZV9wYXJ0eV9pZHMYAiADKAsyLS5jb20uaGVkZXJhLmhhcGkubm9kZS5zdGF0ZS5oaW'
    '50cy5Ob2RlUGFydHlJZFIMbm9kZVBhcnR5SWRz');

@$core.Deprecated('Use hintsConstructionDescriptor instead')
const HintsConstruction$json = {
  '1': 'HintsConstruction',
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
      '1': 'target_roster_hash',
      '3': 3,
      '4': 1,
      '5': 12,
      '10': 'targetRosterHash'
    },
    {
      '1': 'grace_period_end_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '9': 0,
      '10': 'gracePeriodEndTime'
    },
    {
      '1': 'preprocessing_start_time',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '9': 0,
      '10': 'preprocessingStartTime'
    },
    {
      '1': 'hints_scheme',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.state.hints.HintsScheme',
      '9': 0,
      '10': 'hintsScheme'
    },
  ],
  '8': [
    {'1': 'preprocessing_state'},
  ],
};

/// Descriptor for `HintsConstruction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hintsConstructionDescriptor = $convert.base64Decode(
    'ChFIaW50c0NvbnN0cnVjdGlvbhInCg9jb25zdHJ1Y3Rpb25faWQYASABKARSDmNvbnN0cnVjdG'
    'lvbklkEiwKEnNvdXJjZV9yb3N0ZXJfaGFzaBgCIAEoDFIQc291cmNlUm9zdGVySGFzaBIsChJ0'
    'YXJnZXRfcm9zdGVyX2hhc2gYAyABKAxSEHRhcmdldFJvc3Rlckhhc2gSRQoVZ3JhY2VfcGVyaW'
    '9kX2VuZF90aW1lGAQgASgLMhAucHJvdG8uVGltZXN0YW1wSABSEmdyYWNlUGVyaW9kRW5kVGlt'
    'ZRJMChhwcmVwcm9jZXNzaW5nX3N0YXJ0X3RpbWUYBSABKAsyEC5wcm90by5UaW1lc3RhbXBIAF'
    'IWcHJlcHJvY2Vzc2luZ1N0YXJ0VGltZRJSCgxoaW50c19zY2hlbWUYBiABKAsyLS5jb20uaGVk'
    'ZXJhLmhhcGkubm9kZS5zdGF0ZS5oaW50cy5IaW50c1NjaGVtZUgAUgtoaW50c1NjaGVtZUIVCh'
    'NwcmVwcm9jZXNzaW5nX3N0YXRl');

@$core.Deprecated('Use cRSStateDescriptor instead')
const CRSState$json = {
  '1': 'CRSState',
  '2': [
    {'1': 'crs', '3': 1, '4': 1, '5': 12, '10': 'crs'},
    {
      '1': 'stage',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.com.hedera.hapi.node.state.hints.CRSStage',
      '10': 'stage'
    },
    {
      '1': 'next_contributing_node_id',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.UInt64Value',
      '10': 'nextContributingNodeId'
    },
    {
      '1': 'contribution_end_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'contributionEndTime'
    },
  ],
};

/// Descriptor for `CRSState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cRSStateDescriptor = $convert.base64Decode(
    'CghDUlNTdGF0ZRIQCgNjcnMYASABKAxSA2NycxJACgVzdGFnZRgCIAEoDjIqLmNvbS5oZWRlcm'
    'EuaGFwaS5ub2RlLnN0YXRlLmhpbnRzLkNSU1N0YWdlUgVzdGFnZRJXChluZXh0X2NvbnRyaWJ1'
    'dGluZ19ub2RlX2lkGAMgASgLMhwuZ29vZ2xlLnByb3RvYnVmLlVJbnQ2NFZhbHVlUhZuZXh0Q2'
    '9udHJpYnV0aW5nTm9kZUlkEkQKFWNvbnRyaWJ1dGlvbl9lbmRfdGltZRgEIAEoCzIQLnByb3Rv'
    'LlRpbWVzdGFtcFITY29udHJpYnV0aW9uRW5kVGltZQ==');
