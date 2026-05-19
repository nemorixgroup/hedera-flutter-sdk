// This is a generated file - do not edit.
//
// Generated from transaction_record.proto.

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

@$core.Deprecated('Use transactionRecordDescriptor instead')
const TransactionRecord$json = {
  '1': 'TransactionRecord',
  '2': [
    {
      '1': 'receipt',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionReceipt',
      '10': 'receipt'
    },
    {'1': 'transactionHash', '3': 2, '4': 1, '5': 12, '10': 'transactionHash'},
    {
      '1': 'consensusTimestamp',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'consensusTimestamp'
    },
    {
      '1': 'transactionID',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionID',
      '10': 'transactionID'
    },
    {'1': 'memo', '3': 5, '4': 1, '5': 9, '10': 'memo'},
    {'1': 'transactionFee', '3': 6, '4': 1, '5': 4, '10': 'transactionFee'},
    {
      '1': 'contractCallResult',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractFunctionResult',
      '9': 0,
      '10': 'contractCallResult'
    },
    {
      '1': 'contractCreateResult',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractFunctionResult',
      '9': 0,
      '10': 'contractCreateResult'
    },
    {
      '1': 'transferList',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.TransferList',
      '10': 'transferList'
    },
    {
      '1': 'tokenTransferLists',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenTransferList',
      '10': 'tokenTransferLists'
    },
    {
      '1': 'scheduleRef',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleID',
      '10': 'scheduleRef'
    },
    {
      '1': 'assessed_custom_fees',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.proto.AssessedCustomFee',
      '10': 'assessedCustomFees'
    },
    {
      '1': 'automatic_token_associations',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenAssociation',
      '10': 'automaticTokenAssociations'
    },
    {
      '1': 'parent_consensus_timestamp',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'parentConsensusTimestamp'
    },
    {'1': 'alias', '3': 16, '4': 1, '5': 12, '10': 'alias'},
    {'1': 'ethereum_hash', '3': 17, '4': 1, '5': 12, '10': 'ethereumHash'},
    {
      '1': 'paid_staking_rewards',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.proto.AccountAmount',
      '10': 'paidStakingRewards'
    },
    {'1': 'prng_bytes', '3': 19, '4': 1, '5': 12, '9': 1, '10': 'prngBytes'},
    {'1': 'prng_number', '3': 20, '4': 1, '5': 5, '9': 1, '10': 'prngNumber'},
    {'1': 'evm_address', '3': 21, '4': 1, '5': 12, '10': 'evmAddress'},
    {
      '1': 'new_pending_airdrops',
      '3': 22,
      '4': 3,
      '5': 11,
      '6': '.proto.PendingAirdropRecord',
      '10': 'newPendingAirdrops'
    },
  ],
  '8': [
    {'1': 'body'},
    {'1': 'entropy'},
  ],
};

/// Descriptor for `TransactionRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionRecordDescriptor = $convert.base64Decode(
    'ChFUcmFuc2FjdGlvblJlY29yZBIzCgdyZWNlaXB0GAEgASgLMhkucHJvdG8uVHJhbnNhY3Rpb2'
    '5SZWNlaXB0UgdyZWNlaXB0EigKD3RyYW5zYWN0aW9uSGFzaBgCIAEoDFIPdHJhbnNhY3Rpb25I'
    'YXNoEkAKEmNvbnNlbnN1c1RpbWVzdGFtcBgDIAEoCzIQLnByb3RvLlRpbWVzdGFtcFISY29uc2'
    'Vuc3VzVGltZXN0YW1wEjoKDXRyYW5zYWN0aW9uSUQYBCABKAsyFC5wcm90by5UcmFuc2FjdGlv'
    'bklEUg10cmFuc2FjdGlvbklEEhIKBG1lbW8YBSABKAlSBG1lbW8SJgoOdHJhbnNhY3Rpb25GZW'
    'UYBiABKARSDnRyYW5zYWN0aW9uRmVlEk8KEmNvbnRyYWN0Q2FsbFJlc3VsdBgHIAEoCzIdLnBy'
    'b3RvLkNvbnRyYWN0RnVuY3Rpb25SZXN1bHRIAFISY29udHJhY3RDYWxsUmVzdWx0ElMKFGNvbn'
    'RyYWN0Q3JlYXRlUmVzdWx0GAggASgLMh0ucHJvdG8uQ29udHJhY3RGdW5jdGlvblJlc3VsdEgA'
    'UhRjb250cmFjdENyZWF0ZVJlc3VsdBI3Cgx0cmFuc2Zlckxpc3QYCiABKAsyEy5wcm90by5Ucm'
    'Fuc2Zlckxpc3RSDHRyYW5zZmVyTGlzdBJIChJ0b2tlblRyYW5zZmVyTGlzdHMYCyADKAsyGC5w'
    'cm90by5Ub2tlblRyYW5zZmVyTGlzdFISdG9rZW5UcmFuc2Zlckxpc3RzEjMKC3NjaGVkdWxlUm'
    'VmGAwgASgLMhEucHJvdG8uU2NoZWR1bGVJRFILc2NoZWR1bGVSZWYSSgoUYXNzZXNzZWRfY3Vz'
    'dG9tX2ZlZXMYDSADKAsyGC5wcm90by5Bc3Nlc3NlZEN1c3RvbUZlZVISYXNzZXNzZWRDdXN0b2'
    '1GZWVzElkKHGF1dG9tYXRpY190b2tlbl9hc3NvY2lhdGlvbnMYDiADKAsyFy5wcm90by5Ub2tl'
    'bkFzc29jaWF0aW9uUhphdXRvbWF0aWNUb2tlbkFzc29jaWF0aW9ucxJOChpwYXJlbnRfY29uc2'
    'Vuc3VzX3RpbWVzdGFtcBgPIAEoCzIQLnByb3RvLlRpbWVzdGFtcFIYcGFyZW50Q29uc2Vuc3Vz'
    'VGltZXN0YW1wEhQKBWFsaWFzGBAgASgMUgVhbGlhcxIjCg1ldGhlcmV1bV9oYXNoGBEgASgMUg'
    'xldGhlcmV1bUhhc2gSRgoUcGFpZF9zdGFraW5nX3Jld2FyZHMYEiADKAsyFC5wcm90by5BY2Nv'
    'dW50QW1vdW50UhJwYWlkU3Rha2luZ1Jld2FyZHMSHwoKcHJuZ19ieXRlcxgTIAEoDEgBUglwcm'
    '5nQnl0ZXMSIQoLcHJuZ19udW1iZXIYFCABKAVIAVIKcHJuZ051bWJlchIfCgtldm1fYWRkcmVz'
    'cxgVIAEoDFIKZXZtQWRkcmVzcxJNChRuZXdfcGVuZGluZ19haXJkcm9wcxgWIAMoCzIbLnByb3'
    'RvLlBlbmRpbmdBaXJkcm9wUmVjb3JkUhJuZXdQZW5kaW5nQWlyZHJvcHNCBgoEYm9keUIJCgdl'
    'bnRyb3B5');

@$core.Deprecated('Use pendingAirdropRecordDescriptor instead')
const PendingAirdropRecord$json = {
  '1': 'PendingAirdropRecord',
  '2': [
    {
      '1': 'pending_airdrop_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.PendingAirdropId',
      '10': 'pendingAirdropId'
    },
    {
      '1': 'pending_airdrop_value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.PendingAirdropValue',
      '10': 'pendingAirdropValue'
    },
  ],
};

/// Descriptor for `PendingAirdropRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingAirdropRecordDescriptor = $convert.base64Decode(
    'ChRQZW5kaW5nQWlyZHJvcFJlY29yZBJFChJwZW5kaW5nX2FpcmRyb3BfaWQYASABKAsyFy5wcm'
    '90by5QZW5kaW5nQWlyZHJvcElkUhBwZW5kaW5nQWlyZHJvcElkEk4KFXBlbmRpbmdfYWlyZHJv'
    'cF92YWx1ZRgCIAEoCzIaLnByb3RvLlBlbmRpbmdBaXJkcm9wVmFsdWVSE3BlbmRpbmdBaXJkcm'
    '9wVmFsdWU=');
