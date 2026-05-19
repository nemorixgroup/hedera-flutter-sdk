// This is a generated file - do not edit.
//
// Generated from node_stake_update.proto.

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

@$core.Deprecated('Use nodeStakeUpdateTransactionBodyDescriptor instead')
const NodeStakeUpdateTransactionBody$json = {
  '1': 'NodeStakeUpdateTransactionBody',
  '2': [
    {
      '1': 'end_of_staking_period',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'endOfStakingPeriod'
    },
    {
      '1': 'node_stake',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.NodeStake',
      '10': 'nodeStake'
    },
    {
      '1': 'max_staking_reward_rate_per_hbar',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'maxStakingRewardRatePerHbar'
    },
    {
      '1': 'node_reward_fee_fraction',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.Fraction',
      '10': 'nodeRewardFeeFraction'
    },
    {
      '1': 'staking_periods_stored',
      '3': 5,
      '4': 1,
      '5': 3,
      '10': 'stakingPeriodsStored'
    },
    {'1': 'staking_period', '3': 6, '4': 1, '5': 3, '10': 'stakingPeriod'},
    {
      '1': 'staking_reward_fee_fraction',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.Fraction',
      '10': 'stakingRewardFeeFraction'
    },
    {
      '1': 'staking_start_threshold',
      '3': 8,
      '4': 1,
      '5': 3,
      '10': 'stakingStartThreshold'
    },
    {
      '1': 'staking_reward_rate',
      '3': 9,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '10': 'stakingRewardRate',
    },
    {
      '1': 'reserved_staking_rewards',
      '3': 10,
      '4': 1,
      '5': 3,
      '10': 'reservedStakingRewards'
    },
    {
      '1': 'unreserved_staking_reward_balance',
      '3': 11,
      '4': 1,
      '5': 3,
      '10': 'unreservedStakingRewardBalance'
    },
    {
      '1': 'reward_balance_threshold',
      '3': 12,
      '4': 1,
      '5': 3,
      '10': 'rewardBalanceThreshold'
    },
    {
      '1': 'max_stake_rewarded',
      '3': 13,
      '4': 1,
      '5': 3,
      '10': 'maxStakeRewarded'
    },
    {'1': 'max_total_reward', '3': 14, '4': 1, '5': 3, '10': 'maxTotalReward'},
  ],
};

/// Descriptor for `NodeStakeUpdateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeStakeUpdateTransactionBodyDescriptor = $convert.base64Decode(
    'Ch5Ob2RlU3Rha2VVcGRhdGVUcmFuc2FjdGlvbkJvZHkSQwoVZW5kX29mX3N0YWtpbmdfcGVyaW'
    '9kGAEgASgLMhAucHJvdG8uVGltZXN0YW1wUhJlbmRPZlN0YWtpbmdQZXJpb2QSLwoKbm9kZV9z'
    'dGFrZRgCIAMoCzIQLnByb3RvLk5vZGVTdGFrZVIJbm9kZVN0YWtlEkUKIG1heF9zdGFraW5nX3'
    'Jld2FyZF9yYXRlX3Blcl9oYmFyGAMgASgDUhttYXhTdGFraW5nUmV3YXJkUmF0ZVBlckhiYXIS'
    'SAoYbm9kZV9yZXdhcmRfZmVlX2ZyYWN0aW9uGAQgASgLMg8ucHJvdG8uRnJhY3Rpb25SFW5vZG'
    'VSZXdhcmRGZWVGcmFjdGlvbhI0ChZzdGFraW5nX3BlcmlvZHNfc3RvcmVkGAUgASgDUhRzdGFr'
    'aW5nUGVyaW9kc1N0b3JlZBIlCg5zdGFraW5nX3BlcmlvZBgGIAEoA1INc3Rha2luZ1BlcmlvZB'
    'JOChtzdGFraW5nX3Jld2FyZF9mZWVfZnJhY3Rpb24YByABKAsyDy5wcm90by5GcmFjdGlvblIY'
    'c3Rha2luZ1Jld2FyZEZlZUZyYWN0aW9uEjYKF3N0YWtpbmdfc3RhcnRfdGhyZXNob2xkGAggAS'
    'gDUhVzdGFraW5nU3RhcnRUaHJlc2hvbGQSMgoTc3Rha2luZ19yZXdhcmRfcmF0ZRgJIAEoA0IC'
    'GAFSEXN0YWtpbmdSZXdhcmRSYXRlEjgKGHJlc2VydmVkX3N0YWtpbmdfcmV3YXJkcxgKIAEoA1'
    'IWcmVzZXJ2ZWRTdGFraW5nUmV3YXJkcxJJCiF1bnJlc2VydmVkX3N0YWtpbmdfcmV3YXJkX2Jh'
    'bGFuY2UYCyABKANSHnVucmVzZXJ2ZWRTdGFraW5nUmV3YXJkQmFsYW5jZRI4ChhyZXdhcmRfYm'
    'FsYW5jZV90aHJlc2hvbGQYDCABKANSFnJld2FyZEJhbGFuY2VUaHJlc2hvbGQSLAoSbWF4X3N0'
    'YWtlX3Jld2FyZGVkGA0gASgDUhBtYXhTdGFrZVJld2FyZGVkEigKEG1heF90b3RhbF9yZXdhcm'
    'QYDiABKANSDm1heFRvdGFsUmV3YXJk');

@$core.Deprecated('Use nodeStakeDescriptor instead')
const NodeStake$json = {
  '1': 'NodeStake',
  '2': [
    {'1': 'max_stake', '3': 1, '4': 1, '5': 3, '10': 'maxStake'},
    {'1': 'min_stake', '3': 2, '4': 1, '5': 3, '10': 'minStake'},
    {'1': 'node_id', '3': 3, '4': 1, '5': 3, '10': 'nodeId'},
    {'1': 'reward_rate', '3': 4, '4': 1, '5': 3, '10': 'rewardRate'},
    {'1': 'stake', '3': 5, '4': 1, '5': 3, '10': 'stake'},
    {
      '1': 'stake_not_rewarded',
      '3': 6,
      '4': 1,
      '5': 3,
      '10': 'stakeNotRewarded'
    },
    {'1': 'stake_rewarded', '3': 7, '4': 1, '5': 3, '10': 'stakeRewarded'},
  ],
};

/// Descriptor for `NodeStake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeStakeDescriptor = $convert.base64Decode(
    'CglOb2RlU3Rha2USGwoJbWF4X3N0YWtlGAEgASgDUghtYXhTdGFrZRIbCgltaW5fc3Rha2UYAi'
    'ABKANSCG1pblN0YWtlEhcKB25vZGVfaWQYAyABKANSBm5vZGVJZBIfCgtyZXdhcmRfcmF0ZRgE'
    'IAEoA1IKcmV3YXJkUmF0ZRIUCgVzdGFrZRgFIAEoA1IFc3Rha2USLAoSc3Rha2Vfbm90X3Jld2'
    'FyZGVkGAYgASgDUhBzdGFrZU5vdFJld2FyZGVkEiUKDnN0YWtlX3Jld2FyZGVkGAcgASgDUg1z'
    'dGFrZVJld2FyZGVk');
