// This is a generated file - do not edit.
//
// Generated from node_stake_update.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A system initiated transaction to update staking information.
///
///  This transaction SHALL be issued at the end of each staking period to update
///  node stakes and reward limits.<br/>
///  This transaction SHALL be a child of the first transaction to reach
///  consensus following the end of the previous staking period.<br/>
///  This transaction MUST NOT be sent by a client and SHALL be rejected if
///  received by any node.<br/>
///  This transaction SHALL be present in the record stream or block stream.
///
///  ### Block Stream Effects
///  None
class NodeStakeUpdateTransactionBody extends $pb.GeneratedMessage {
  factory NodeStakeUpdateTransactionBody({
    $0.Timestamp? endOfStakingPeriod,
    $core.Iterable<NodeStake>? nodeStake,
    $fixnum.Int64? maxStakingRewardRatePerHbar,
    $1.Fraction? nodeRewardFeeFraction,
    $fixnum.Int64? stakingPeriodsStored,
    $fixnum.Int64? stakingPeriod,
    $1.Fraction? stakingRewardFeeFraction,
    $fixnum.Int64? stakingStartThreshold,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? stakingRewardRate,
    $fixnum.Int64? reservedStakingRewards,
    $fixnum.Int64? unreservedStakingRewardBalance,
    $fixnum.Int64? rewardBalanceThreshold,
    $fixnum.Int64? maxStakeRewarded,
    $fixnum.Int64? maxTotalReward,
  }) {
    final result = create();
    if (endOfStakingPeriod != null)
      result.endOfStakingPeriod = endOfStakingPeriod;
    if (nodeStake != null) result.nodeStake.addAll(nodeStake);
    if (maxStakingRewardRatePerHbar != null)
      result.maxStakingRewardRatePerHbar = maxStakingRewardRatePerHbar;
    if (nodeRewardFeeFraction != null)
      result.nodeRewardFeeFraction = nodeRewardFeeFraction;
    if (stakingPeriodsStored != null)
      result.stakingPeriodsStored = stakingPeriodsStored;
    if (stakingPeriod != null) result.stakingPeriod = stakingPeriod;
    if (stakingRewardFeeFraction != null)
      result.stakingRewardFeeFraction = stakingRewardFeeFraction;
    if (stakingStartThreshold != null)
      result.stakingStartThreshold = stakingStartThreshold;
    if (stakingRewardRate != null) result.stakingRewardRate = stakingRewardRate;
    if (reservedStakingRewards != null)
      result.reservedStakingRewards = reservedStakingRewards;
    if (unreservedStakingRewardBalance != null)
      result.unreservedStakingRewardBalance = unreservedStakingRewardBalance;
    if (rewardBalanceThreshold != null)
      result.rewardBalanceThreshold = rewardBalanceThreshold;
    if (maxStakeRewarded != null) result.maxStakeRewarded = maxStakeRewarded;
    if (maxTotalReward != null) result.maxTotalReward = maxTotalReward;
    return result;
  }

  NodeStakeUpdateTransactionBody._();

  factory NodeStakeUpdateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeStakeUpdateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeStakeUpdateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'endOfStakingPeriod',
        subBuilder: $0.Timestamp.create)
    ..pPM<NodeStake>(2, _omitFieldNames ? '' : 'nodeStake',
        subBuilder: NodeStake.create)
    ..aInt64(3, _omitFieldNames ? '' : 'maxStakingRewardRatePerHbar')
    ..aOM<$1.Fraction>(4, _omitFieldNames ? '' : 'nodeRewardFeeFraction',
        subBuilder: $1.Fraction.create)
    ..aInt64(5, _omitFieldNames ? '' : 'stakingPeriodsStored')
    ..aInt64(6, _omitFieldNames ? '' : 'stakingPeriod')
    ..aOM<$1.Fraction>(7, _omitFieldNames ? '' : 'stakingRewardFeeFraction',
        subBuilder: $1.Fraction.create)
    ..aInt64(8, _omitFieldNames ? '' : 'stakingStartThreshold')
    ..aInt64(9, _omitFieldNames ? '' : 'stakingRewardRate')
    ..aInt64(10, _omitFieldNames ? '' : 'reservedStakingRewards')
    ..aInt64(11, _omitFieldNames ? '' : 'unreservedStakingRewardBalance')
    ..aInt64(12, _omitFieldNames ? '' : 'rewardBalanceThreshold')
    ..aInt64(13, _omitFieldNames ? '' : 'maxStakeRewarded')
    ..aInt64(14, _omitFieldNames ? '' : 'maxTotalReward')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeStakeUpdateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeStakeUpdateTransactionBody copyWith(
          void Function(NodeStakeUpdateTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as NodeStakeUpdateTransactionBody))
          as NodeStakeUpdateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeStakeUpdateTransactionBody create() =>
      NodeStakeUpdateTransactionBody._();
  @$core.override
  NodeStakeUpdateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeStakeUpdateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeStakeUpdateTransactionBody>(create);
  static NodeStakeUpdateTransactionBody? _defaultInstance;

  /// *
  ///  A timestamp indicating the end of the staking period.
  ///  <p>
  ///  This value SHALL be one nanosecond prior to midnight prior to the
  ///  consensus time of the parent transaction.
  @$pb.TagNumber(1)
  $0.Timestamp get endOfStakingPeriod => $_getN(0);
  @$pb.TagNumber(1)
  set endOfStakingPeriod($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasEndOfStakingPeriod() => $_has(0);
  @$pb.TagNumber(1)
  void clearEndOfStakingPeriod() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureEndOfStakingPeriod() => $_ensure(0);

  /// *
  ///  A list of `NodeStake` entries for each node at the beginning of the new
  ///  staking period.
  ///  <p>
  ///  This list SHALL have one entry for each node participating in network
  ///  consensus.
  @$pb.TagNumber(2)
  $pb.PbList<NodeStake> get nodeStake => $_getList(1);

  /// *
  ///  A maximum reward rate for this staking period.
  ///  <p>
  ///  This SHALL be a ratio of tinybar to HBAR.<br/>
  ///  An account SHALL NOT receive a reward greater than the product of this
  ///  ratio and the total number of HBAR staked by that account.
  @$pb.TagNumber(3)
  $fixnum.Int64 get maxStakingRewardRatePerHbar => $_getI64(2);
  @$pb.TagNumber(3)
  set maxStakingRewardRatePerHbar($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxStakingRewardRatePerHbar() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxStakingRewardRatePerHbar() => $_clearField(3);

  /// *
  ///  A fraction of network and service fees paid to
  ///  the "node" reward account.<br/>
  ///  The node staking rewards are paid from the designated reward account
  ///  `0.0.801`, which receives a fraction of network and service fees for
  ///  each transaction. This field is the value of that fraction for the
  ///  last staking period.
  @$pb.TagNumber(4)
  $1.Fraction get nodeRewardFeeFraction => $_getN(3);
  @$pb.TagNumber(4)
  set nodeRewardFeeFraction($1.Fraction value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasNodeRewardFeeFraction() => $_has(3);
  @$pb.TagNumber(4)
  void clearNodeRewardFeeFraction() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Fraction ensureNodeRewardFeeFraction() => $_ensure(3);

  /// *
  ///  A limit to the number of staking periods held for inactive accounts.<br/>
  ///  This is the maximum number of trailing staking periods for which an
  ///  account can collect staking rewards.<br/>
  ///  #### Example
  ///  If this value is 365 with a calendar day period, then each account must
  ///  collect rewards at least once per calendar year to receive the full
  ///  amount of staking rewards earned.
  ///  <p>
  ///  Staking rewards SHALL be stored in network state for no more than
  ///  `staking_periods_stored` staking periods.<br/>
  ///  Each account MUST participate in at least one transaction that affects
  ///  its balance, staking, or staking metadata within this time limit
  ///  to receive all available staking rewards.
  @$pb.TagNumber(5)
  $fixnum.Int64 get stakingPeriodsStored => $_getI64(4);
  @$pb.TagNumber(5)
  set stakingPeriodsStored($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStakingPeriodsStored() => $_has(4);
  @$pb.TagNumber(5)
  void clearStakingPeriodsStored() => $_clearField(5);

  /// *
  ///  A number of minutes representing a staking period.<br/>
  ///  <blockquote>Note<blockquote>
  ///  For the special case of `1440` minutes, periods are treated as
  ///  calendar days aligned to midnight UTC, rather than repeating `1440`
  ///  minute periods left-aligned at the epoch.</blockquote></blockquote>
  @$pb.TagNumber(6)
  $fixnum.Int64 get stakingPeriod => $_getI64(5);
  @$pb.TagNumber(6)
  set stakingPeriod($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStakingPeriod() => $_has(5);
  @$pb.TagNumber(6)
  void clearStakingPeriod() => $_clearField(6);

  /// *
  ///  A fraction of network and service fees paid to
  ///  the "general" reward account.<br/>
  ///  The general staking rewards are paid from the designated reward account
  ///  `0.0.800`, which receives a fraction of network and service fees for
  ///  each transaction. This field is the value of that fraction for the
  ///  last staking period.
  @$pb.TagNumber(7)
  $1.Fraction get stakingRewardFeeFraction => $_getN(6);
  @$pb.TagNumber(7)
  set stakingRewardFeeFraction($1.Fraction value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasStakingRewardFeeFraction() => $_has(6);
  @$pb.TagNumber(7)
  void clearStakingRewardFeeFraction() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Fraction ensureStakingRewardFeeFraction() => $_ensure(6);

  /// *
  ///  A minimum balance required to pay general staking rewards.
  ///  <p>
  ///  If the balance of the staking reward account `0.0.800` is below this
  ///  threshold, staking rewards SHALL NOT be paid in full.
  @$pb.TagNumber(8)
  $fixnum.Int64 get stakingStartThreshold => $_getI64(7);
  @$pb.TagNumber(8)
  set stakingStartThreshold($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStakingStartThreshold() => $_has(7);
  @$pb.TagNumber(8)
  void clearStakingStartThreshold() => $_clearField(8);

  /// *
  ///  HIP-786 replaced this field with `max_total_reward`.<br/>
  ///  This was a maximum total number of tinybars to be distributed as staking
  ///  rewards in the staking period that just ended.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $fixnum.Int64 get stakingRewardRate => $_getI64(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  set stakingRewardRate($fixnum.Int64 value) => $_setInt64(8, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $core.bool hasStakingRewardRate() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  void clearStakingRewardRate() => $_clearField(9);

  /// *
  ///  An amount reserved in the staking reward account.<br/>
  ///  This is an amount "reserved" in the balance of account `0.0.800` that
  ///  is already owed for pending rewards that were previously earned but
  ///  have not yet been collected.<br/>
  ///  This value is further detailed in HIP-786.
  @$pb.TagNumber(10)
  $fixnum.Int64 get reservedStakingRewards => $_getI64(9);
  @$pb.TagNumber(10)
  set reservedStakingRewards($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasReservedStakingRewards() => $_has(9);
  @$pb.TagNumber(10)
  void clearReservedStakingRewards() => $_clearField(10);

  /// *
  ///  An available, unreserved, amount in the staking reward account.<br/>
  ///  This is the balance of the staking reward account `0.0.800` at the close
  ///  of the staking period that just ended, after reduction for all "reserved"
  ///  funds necessary to pay previously earned rewards.<br/>
  ///  This value is further detailed in HIP-786.
  ///  <p>
  ///  This value SHALL be used to calculate the reward ratio according to
  ///  the formula detailed in HIP-782.
  @$pb.TagNumber(11)
  $fixnum.Int64 get unreservedStakingRewardBalance => $_getI64(10);
  @$pb.TagNumber(11)
  set unreservedStakingRewardBalance($fixnum.Int64 value) =>
      $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasUnreservedStakingRewardBalance() => $_has(10);
  @$pb.TagNumber(11)
  void clearUnreservedStakingRewardBalance() => $_clearField(11);

  /// *
  ///  A minimum balance required for maximum staking rewards.<br/>
  ///  This value is further detailed in HIP-786.
  ///  The formula to calculate staking rewards is detailed in HIP-782.
  ///  <p>
  ///  The value of `unreserved_staking_reward_balance` MUST match or exceed the
  ///  value of this field to support the maximum staking reward ratio.<br/>
  @$pb.TagNumber(12)
  $fixnum.Int64 get rewardBalanceThreshold => $_getI64(11);
  @$pb.TagNumber(12)
  set rewardBalanceThreshold($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasRewardBalanceThreshold() => $_has(11);
  @$pb.TagNumber(12)
  void clearRewardBalanceThreshold() => $_clearField(12);

  /// *
  ///  A maximum network-wide stake that can earn full rewards.<br/>
  ///  If the network-wide stake, in tinybar, exceeds this value, then staking
  ///  rewards must be reduced to maintain "smooth" reward adjustments as
  ///  defined in HIP-782.<br/>
  ///  This value is further detailed in HIP-786.
  ///  <p>
  ///  If the total network-wide stake exceeds this value, the effective
  ///  staking reward ratio MUST be reduced to maintain solvency of the
  ///  staking reward account.
  @$pb.TagNumber(13)
  $fixnum.Int64 get maxStakeRewarded => $_getI64(12);
  @$pb.TagNumber(13)
  set maxStakeRewarded($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasMaxStakeRewarded() => $_has(12);
  @$pb.TagNumber(13)
  void clearMaxStakeRewarded() => $_clearField(13);

  /// *
  ///  A limit amount that could be paid as staking rewards.<br/>
  ///  In the limit case, the network could pay at most this amount, in tinybar
  ///  as staking rewards for the staking period that just ended, if all other
  ///  conditions were met to perfection.<br/>
  ///  <p>
  ///  This value SHALL reflect the result of a maximum reward calculation that
  ///  takes into account the balance thresholds and maximum stake thresholds
  ///  as defined in HIP-782 and HIP-786.<br/>
  ///  This value is a convenience. The actual defined calculation SHALL be
  ///  authoritative in the unlikely event this value differs.
  @$pb.TagNumber(14)
  $fixnum.Int64 get maxTotalReward => $_getI64(13);
  @$pb.TagNumber(14)
  set maxTotalReward($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasMaxTotalReward() => $_has(13);
  @$pb.TagNumber(14)
  void clearMaxTotalReward() => $_clearField(14);
}

/// *
///  Staking information for one node at the end of a staking period.
///
///  This SHALL be one entry in a list reported at the end of each
///  full staking period.
class NodeStake extends $pb.GeneratedMessage {
  factory NodeStake({
    $fixnum.Int64? maxStake,
    $fixnum.Int64? minStake,
    $fixnum.Int64? nodeId,
    $fixnum.Int64? rewardRate,
    $fixnum.Int64? stake,
    $fixnum.Int64? stakeNotRewarded,
    $fixnum.Int64? stakeRewarded,
  }) {
    final result = create();
    if (maxStake != null) result.maxStake = maxStake;
    if (minStake != null) result.minStake = minStake;
    if (nodeId != null) result.nodeId = nodeId;
    if (rewardRate != null) result.rewardRate = rewardRate;
    if (stake != null) result.stake = stake;
    if (stakeNotRewarded != null) result.stakeNotRewarded = stakeNotRewarded;
    if (stakeRewarded != null) result.stakeRewarded = stakeRewarded;
    return result;
  }

  NodeStake._();

  factory NodeStake.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeStake.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeStake',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'maxStake')
    ..aInt64(2, _omitFieldNames ? '' : 'minStake')
    ..aInt64(3, _omitFieldNames ? '' : 'nodeId')
    ..aInt64(4, _omitFieldNames ? '' : 'rewardRate')
    ..aInt64(5, _omitFieldNames ? '' : 'stake')
    ..aInt64(6, _omitFieldNames ? '' : 'stakeNotRewarded')
    ..aInt64(7, _omitFieldNames ? '' : 'stakeRewarded')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeStake clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeStake copyWith(void Function(NodeStake) updates) =>
      super.copyWith((message) => updates(message as NodeStake)) as NodeStake;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeStake create() => NodeStake._();
  @$core.override
  NodeStake createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeStake getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeStake>(create);
  static NodeStake? _defaultInstance;

  /// *
  ///  A limit to the amount of stake considered for consensus weight.
  ///  <p>
  ///  The amount of stake (whether accepting rewards or not) assigned to a
  ///  node that exceeds this limit SHALL NOT be considered for
  ///  consensus weight calculation.<br/>
  ///  If stake to _reward_ for a node exceeds this threshold, then all
  ///  accounts staking to that node SHALL receive a lower reward rate in
  ///  proportion to the excess stake.
  @$pb.TagNumber(1)
  $fixnum.Int64 get maxStake => $_getI64(0);
  @$pb.TagNumber(1)
  set maxStake($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMaxStake() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxStake() => $_clearField(1);

  /// *
  ///  A minimum amount of HBAR staked to a node to receive rewards.
  ///  <p>
  ///  If the amount of stake (whether accepting rewards or not) assigned to
  ///  a node at the start of a staking period is less than this threshold,
  ///  then no rewards SHALL be paid to that node or to any accounts
  ///  staking to that node.
  @$pb.TagNumber(2)
  $fixnum.Int64 get minStake => $_getI64(1);
  @$pb.TagNumber(2)
  set minStake($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinStake() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinStake() => $_clearField(2);

  /// *
  ///  A node identifier.<br/>
  ///  This value uniquely identifies this node within the
  ///  network address book.
  @$pb.TagNumber(3)
  $fixnum.Int64 get nodeId => $_getI64(2);
  @$pb.TagNumber(3)
  set nodeId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNodeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearNodeId() => $_clearField(3);

  /// *
  ///  The rate of rewards, in tinybar per HBAR, for the staking reward
  ///  period that just ended.
  @$pb.TagNumber(4)
  $fixnum.Int64 get rewardRate => $_getI64(3);
  @$pb.TagNumber(4)
  set rewardRate($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRewardRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearRewardRate() => $_clearField(4);

  /// *
  ///  A consensus weight assigned to this node for the next staking period.
  @$pb.TagNumber(5)
  $fixnum.Int64 get stake => $_getI64(4);
  @$pb.TagNumber(5)
  set stake($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStake() => $_has(4);
  @$pb.TagNumber(5)
  void clearStake() => $_clearField(5);

  /// *
  ///  The total amount staked to this node, while declining rewards.
  ///  <p>
  ///  This SHALL be the total staked amount, in tinybar, that is staked to
  ///  this node with the value of the `decline_reward` set.<br/>
  ///  This value MUST be calculated at the beginning of the staking period.
  @$pb.TagNumber(6)
  $fixnum.Int64 get stakeNotRewarded => $_getI64(5);
  @$pb.TagNumber(6)
  set stakeNotRewarded($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStakeNotRewarded() => $_has(5);
  @$pb.TagNumber(6)
  void clearStakeNotRewarded() => $_clearField(6);

  /// *
  ///  The total amount staked to this node, while accepting rewards.
  ///  <p>
  ///  This SHALL be the total staked amount, in tinybar, that is staked to
  ///  this node with the value of the `decline_reward` not set.<br/>
  ///  This value MUST be calculated at the beginning of the staking period.
  @$pb.TagNumber(7)
  $fixnum.Int64 get stakeRewarded => $_getI64(6);
  @$pb.TagNumber(7)
  set stakeRewarded($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStakeRewarded() => $_has(6);
  @$pb.TagNumber(7)
  void clearStakeRewarded() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
