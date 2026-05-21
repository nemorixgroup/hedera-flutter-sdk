// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from state/hints/hints_types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $1;

import '../../timestamp.pb.dart' as $0;
import 'hints_types.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'hints_types.pbenum.dart';

/// *
///  The id of a party in a hinTS scheme with a certain
///  number of parties.
class HintsPartyId extends $pb.GeneratedMessage {
  factory HintsPartyId({
    $core.int? partyId,
    $core.int? numParties,
  }) {
    final result = create();
    if (partyId != null) result.partyId = partyId;
    if (numParties != null) result.numParties = numParties;
    return result;
  }

  HintsPartyId._();

  factory HintsPartyId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HintsPartyId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HintsPartyId',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.hints'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'partyId', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'numParties', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsPartyId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsPartyId copyWith(void Function(HintsPartyId) updates) =>
      super.copyWith((message) => updates(message as HintsPartyId))
          as HintsPartyId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HintsPartyId create() => HintsPartyId._();
  @$core.override
  HintsPartyId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HintsPartyId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HintsPartyId>(create);
  static HintsPartyId? _defaultInstance;

  /// *
  ///  The party id, in the range [0, num_parties).
  @$pb.TagNumber(1)
  $core.int get partyId => $_getIZ(0);
  @$pb.TagNumber(1)
  set partyId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartyId() => $_clearField(1);

  /// *
  ///  The number of parties in the hinTS scheme.
  @$pb.TagNumber(2)
  $core.int get numParties => $_getIZ(1);
  @$pb.TagNumber(2)
  set numParties($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNumParties() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumParties() => $_clearField(2);
}

/// *
///  A set of hinTS keys submitted by a node.
class HintsKeySet extends $pb.GeneratedMessage {
  factory HintsKeySet({
    $fixnum.Int64? nodeId,
    $0.Timestamp? adoptionTime,
    $core.List<$core.int>? key,
    $core.List<$core.int>? nextKey,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (adoptionTime != null) result.adoptionTime = adoptionTime;
    if (key != null) result.key = key;
    if (nextKey != null) result.nextKey = nextKey;
    return result;
  }

  HintsKeySet._();

  factory HintsKeySet.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HintsKeySet.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HintsKeySet',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.hints'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'nodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'adoptionTime',
        subBuilder: $0.Timestamp.create)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'nextKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsKeySet clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsKeySet copyWith(void Function(HintsKeySet) updates) =>
      super.copyWith((message) => updates(message as HintsKeySet))
          as HintsKeySet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HintsKeySet create() => HintsKeySet._();
  @$core.override
  HintsKeySet createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HintsKeySet getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HintsKeySet>(create);
  static HintsKeySet? _defaultInstance;

  /// *
  ///  The id of the node submitting these keys.
  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  /// *
  ///  The consensus time at which the network adopted the active
  ///  hinTS key in this set.
  @$pb.TagNumber(2)
  $0.Timestamp get adoptionTime => $_getN(1);
  @$pb.TagNumber(2)
  set adoptionTime($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAdoptionTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdoptionTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureAdoptionTime() => $_ensure(1);

  /// *
  ///  The party's active hinTS key.
  @$pb.TagNumber(3)
  $core.List<$core.int> get key => $_getN(2);
  @$pb.TagNumber(3)
  set key($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => $_clearField(3);

  /// *
  ///  If set, the new hinTS key the node wants to use when
  ///  the next construction begins.
  @$pb.TagNumber(4)
  $core.List<$core.int> get nextKey => $_getN(3);
  @$pb.TagNumber(4)
  set nextKey($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNextKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearNextKey() => $_clearField(4);
}

/// *
///  The output of the hinTS preprocessing algorithm; that is, a
///  linear-size aggregation key and a succinct verification key.
class PreprocessedKeys extends $pb.GeneratedMessage {
  factory PreprocessedKeys({
    $core.List<$core.int>? aggregationKey,
    $core.List<$core.int>? verificationKey,
  }) {
    final result = create();
    if (aggregationKey != null) result.aggregationKey = aggregationKey;
    if (verificationKey != null) result.verificationKey = verificationKey;
    return result;
  }

  PreprocessedKeys._();

  factory PreprocessedKeys.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PreprocessedKeys.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PreprocessedKeys',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.hints'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'aggregationKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'verificationKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreprocessedKeys clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreprocessedKeys copyWith(void Function(PreprocessedKeys) updates) =>
      super.copyWith((message) => updates(message as PreprocessedKeys))
          as PreprocessedKeys;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreprocessedKeys create() => PreprocessedKeys._();
  @$core.override
  PreprocessedKeys createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PreprocessedKeys getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PreprocessedKeys>(create);
  static PreprocessedKeys? _defaultInstance;

  /// *
  ///  The aggregation key for the hinTS scheme
  @$pb.TagNumber(1)
  $core.List<$core.int> get aggregationKey => $_getN(0);
  @$pb.TagNumber(1)
  set aggregationKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAggregationKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearAggregationKey() => $_clearField(1);

  /// *
  ///  The succinct verification key for the hinTS scheme.
  @$pb.TagNumber(2)
  $core.List<$core.int> get verificationKey => $_getN(1);
  @$pb.TagNumber(2)
  set verificationKey($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVerificationKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerificationKey() => $_clearField(2);
}

/// *
///  The id for a node's vote for the output of the
///  preprocessing output of a hinTS construction.
class PreprocessingVoteId extends $pb.GeneratedMessage {
  factory PreprocessingVoteId({
    $fixnum.Int64? constructionId,
    $fixnum.Int64? nodeId,
  }) {
    final result = create();
    if (constructionId != null) result.constructionId = constructionId;
    if (nodeId != null) result.nodeId = nodeId;
    return result;
  }

  PreprocessingVoteId._();

  factory PreprocessingVoteId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PreprocessingVoteId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PreprocessingVoteId',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.hints'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'constructionId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'nodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreprocessingVoteId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreprocessingVoteId copyWith(void Function(PreprocessingVoteId) updates) =>
      super.copyWith((message) => updates(message as PreprocessingVoteId))
          as PreprocessingVoteId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreprocessingVoteId create() => PreprocessingVoteId._();
  @$core.override
  PreprocessingVoteId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PreprocessingVoteId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PreprocessingVoteId>(create);
  static PreprocessingVoteId? _defaultInstance;

  /// *
  ///  The construction this vote is connected to.
  @$pb.TagNumber(1)
  $fixnum.Int64 get constructionId => $_getI64(0);
  @$pb.TagNumber(1)
  set constructionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConstructionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConstructionId() => $_clearField(1);

  /// *
  ///  The id of the node submitting the vote.
  @$pb.TagNumber(2)
  $fixnum.Int64 get nodeId => $_getI64(1);
  @$pb.TagNumber(2)
  set nodeId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => $_clearField(2);
}

enum PreprocessingVote_Vote { preprocessedKeys, congruentNodeId, notSet }

/// *
///  A node's vote for the consensus output of a hinTS preprocessing
///  algorithm.
class PreprocessingVote extends $pb.GeneratedMessage {
  factory PreprocessingVote({
    PreprocessedKeys? preprocessedKeys,
    $fixnum.Int64? congruentNodeId,
  }) {
    final result = create();
    if (preprocessedKeys != null) result.preprocessedKeys = preprocessedKeys;
    if (congruentNodeId != null) result.congruentNodeId = congruentNodeId;
    return result;
  }

  PreprocessingVote._();

  factory PreprocessingVote.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PreprocessingVote.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PreprocessingVote_Vote>
      _PreprocessingVote_VoteByTag = {
    1: PreprocessingVote_Vote.preprocessedKeys,
    2: PreprocessingVote_Vote.congruentNodeId,
    0: PreprocessingVote_Vote.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PreprocessingVote',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.hints'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PreprocessedKeys>(1, _omitFieldNames ? '' : 'preprocessedKeys',
        subBuilder: PreprocessedKeys.create)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'congruentNodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreprocessingVote clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreprocessingVote copyWith(void Function(PreprocessingVote) updates) =>
      super.copyWith((message) => updates(message as PreprocessingVote))
          as PreprocessingVote;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreprocessingVote create() => PreprocessingVote._();
  @$core.override
  PreprocessingVote createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PreprocessingVote getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PreprocessingVote>(create);
  static PreprocessingVote? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  PreprocessingVote_Vote whichVote() =>
      _PreprocessingVote_VoteByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearVote() => $_clearField($_whichOneof(0));

  /// *
  ///  The preprocessed keys this node is voting for.
  @$pb.TagNumber(1)
  PreprocessedKeys get preprocessedKeys => $_getN(0);
  @$pb.TagNumber(1)
  set preprocessedKeys(PreprocessedKeys value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPreprocessedKeys() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreprocessedKeys() => $_clearField(1);
  @$pb.TagNumber(1)
  PreprocessedKeys ensurePreprocessedKeys() => $_ensure(0);

  /// *
  ///  The id of any node that already voted for the exact keys
  ///  that this node wanted to vote for.
  @$pb.TagNumber(2)
  $fixnum.Int64 get congruentNodeId => $_getI64(1);
  @$pb.TagNumber(2)
  set congruentNodeId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCongruentNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCongruentNodeId() => $_clearField(2);
}

/// *
///  A node's hinTS party id.
class NodePartyId extends $pb.GeneratedMessage {
  factory NodePartyId({
    $fixnum.Int64? nodeId,
    $core.int? partyId,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (partyId != null) result.partyId = partyId;
    return result;
  }

  NodePartyId._();

  factory NodePartyId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodePartyId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodePartyId',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.hints'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'nodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(2, _omitFieldNames ? '' : 'partyId', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodePartyId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodePartyId copyWith(void Function(NodePartyId) updates) =>
      super.copyWith((message) => updates(message as NodePartyId))
          as NodePartyId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodePartyId create() => NodePartyId._();
  @$core.override
  NodePartyId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodePartyId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodePartyId>(create);
  static NodePartyId? _defaultInstance;

  /// *
  ///  The node id.
  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  /// *
  ///  The party id.
  @$pb.TagNumber(2)
  $core.int get partyId => $_getIZ(1);
  @$pb.TagNumber(2)
  set partyId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPartyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartyId() => $_clearField(2);
}

/// *
///  The information constituting the hinTS scheme Hiero TSS.
class HintsScheme extends $pb.GeneratedMessage {
  factory HintsScheme({
    PreprocessedKeys? preprocessedKeys,
    $core.Iterable<NodePartyId>? nodePartyIds,
  }) {
    final result = create();
    if (preprocessedKeys != null) result.preprocessedKeys = preprocessedKeys;
    if (nodePartyIds != null) result.nodePartyIds.addAll(nodePartyIds);
    return result;
  }

  HintsScheme._();

  factory HintsScheme.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HintsScheme.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HintsScheme',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.hints'),
      createEmptyInstance: create)
    ..aOM<PreprocessedKeys>(1, _omitFieldNames ? '' : 'preprocessedKeys',
        subBuilder: PreprocessedKeys.create)
    ..pPM<NodePartyId>(2, _omitFieldNames ? '' : 'nodePartyIds',
        subBuilder: NodePartyId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsScheme clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsScheme copyWith(void Function(HintsScheme) updates) =>
      super.copyWith((message) => updates(message as HintsScheme))
          as HintsScheme;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HintsScheme create() => HintsScheme._();
  @$core.override
  HintsScheme createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HintsScheme getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HintsScheme>(create);
  static HintsScheme? _defaultInstance;

  /// *
  ///  The aggregation and verification keys for the scheme.
  @$pb.TagNumber(1)
  PreprocessedKeys get preprocessedKeys => $_getN(0);
  @$pb.TagNumber(1)
  set preprocessedKeys(PreprocessedKeys value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPreprocessedKeys() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreprocessedKeys() => $_clearField(1);
  @$pb.TagNumber(1)
  PreprocessedKeys ensurePreprocessedKeys() => $_ensure(0);

  /// *
  ///  The final party ids assigned to each node in the target roster.
  @$pb.TagNumber(2)
  $pb.PbList<NodePartyId> get nodePartyIds => $_getList(1);
}

enum HintsConstruction_PreprocessingState {
  gracePeriodEndTime,
  preprocessingStartTime,
  hintsScheme,
  notSet
}

/// *
///  A summary of progress in constructing a hinTS scheme.
class HintsConstruction extends $pb.GeneratedMessage {
  factory HintsConstruction({
    $fixnum.Int64? constructionId,
    $core.List<$core.int>? sourceRosterHash,
    $core.List<$core.int>? targetRosterHash,
    $0.Timestamp? gracePeriodEndTime,
    $0.Timestamp? preprocessingStartTime,
    HintsScheme? hintsScheme,
  }) {
    final result = create();
    if (constructionId != null) result.constructionId = constructionId;
    if (sourceRosterHash != null) result.sourceRosterHash = sourceRosterHash;
    if (targetRosterHash != null) result.targetRosterHash = targetRosterHash;
    if (gracePeriodEndTime != null)
      result.gracePeriodEndTime = gracePeriodEndTime;
    if (preprocessingStartTime != null)
      result.preprocessingStartTime = preprocessingStartTime;
    if (hintsScheme != null) result.hintsScheme = hintsScheme;
    return result;
  }

  HintsConstruction._();

  factory HintsConstruction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HintsConstruction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, HintsConstruction_PreprocessingState>
      _HintsConstruction_PreprocessingStateByTag = {
    4: HintsConstruction_PreprocessingState.gracePeriodEndTime,
    5: HintsConstruction_PreprocessingState.preprocessingStartTime,
    6: HintsConstruction_PreprocessingState.hintsScheme,
    0: HintsConstruction_PreprocessingState.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HintsConstruction',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.hints'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 6])
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'constructionId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'sourceRosterHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'targetRosterHash', $pb.PbFieldType.OY)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'gracePeriodEndTime',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'preprocessingStartTime',
        subBuilder: $0.Timestamp.create)
    ..aOM<HintsScheme>(6, _omitFieldNames ? '' : 'hintsScheme',
        subBuilder: HintsScheme.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsConstruction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsConstruction copyWith(void Function(HintsConstruction) updates) =>
      super.copyWith((message) => updates(message as HintsConstruction))
          as HintsConstruction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HintsConstruction create() => HintsConstruction._();
  @$core.override
  HintsConstruction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HintsConstruction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HintsConstruction>(create);
  static HintsConstruction? _defaultInstance;

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  HintsConstruction_PreprocessingState whichPreprocessingState() =>
      _HintsConstruction_PreprocessingStateByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearPreprocessingState() => $_clearField($_whichOneof(0));

  /// *
  ///  The id of the construction.
  @$pb.TagNumber(1)
  $fixnum.Int64 get constructionId => $_getI64(0);
  @$pb.TagNumber(1)
  set constructionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConstructionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConstructionId() => $_clearField(1);

  /// *
  ///  The hash of the roster whose weights are used to determine when
  ///  the >=1/3 weight signing threshold is reached.
  @$pb.TagNumber(2)
  $core.List<$core.int> get sourceRosterHash => $_getN(1);
  @$pb.TagNumber(2)
  set sourceRosterHash($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSourceRosterHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceRosterHash() => $_clearField(2);

  /// *
  ///  The hash of the roster whose weights are used to determine when
  ///  the >2/3 weight availability threshold is reached.
  @$pb.TagNumber(3)
  $core.List<$core.int> get targetRosterHash => $_getN(2);
  @$pb.TagNumber(3)
  set targetRosterHash($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetRosterHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetRosterHash() => $_clearField(3);

  /// *
  ///  If the network is still gathering hinTS keys for this construction,
  ///  the time at which honest nodes should stop waiting for tardy
  ///  publications and begin preprocessing as soon as there are valid
  ///  hinTS keys for nodes with >2/3 weight in the target roster.
  @$pb.TagNumber(4)
  $0.Timestamp get gracePeriodEndTime => $_getN(3);
  @$pb.TagNumber(4)
  set gracePeriodEndTime($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasGracePeriodEndTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearGracePeriodEndTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureGracePeriodEndTime() => $_ensure(3);

  /// *
  ///  If the network has gathered enough hinTS keys for this construction
  ///  to begin preprocessing, the cutoff time by which keys must have been
  ///  adopted to be included as input to the preprocessing algorithm.
  @$pb.TagNumber(5)
  $0.Timestamp get preprocessingStartTime => $_getN(4);
  @$pb.TagNumber(5)
  set preprocessingStartTime($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPreprocessingStartTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearPreprocessingStartTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensurePreprocessingStartTime() => $_ensure(4);

  /// *
  ///  If set, the completed hinTS scheme.
  @$pb.TagNumber(6)
  HintsScheme get hintsScheme => $_getN(5);
  @$pb.TagNumber(6)
  set hintsScheme(HintsScheme value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasHintsScheme() => $_has(5);
  @$pb.TagNumber(6)
  void clearHintsScheme() => $_clearField(6);
  @$pb.TagNumber(6)
  HintsScheme ensureHintsScheme() => $_ensure(5);
}

/// *
///  The state of a CRS construction.
class CRSState extends $pb.GeneratedMessage {
  factory CRSState({
    $core.List<$core.int>? crs,
    CRSStage? stage,
    $1.UInt64Value? nextContributingNodeId,
    $0.Timestamp? contributionEndTime,
  }) {
    final result = create();
    if (crs != null) result.crs = crs;
    if (stage != null) result.stage = stage;
    if (nextContributingNodeId != null)
      result.nextContributingNodeId = nextContributingNodeId;
    if (contributionEndTime != null)
      result.contributionEndTime = contributionEndTime;
    return result;
  }

  CRSState._();

  factory CRSState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CRSState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CRSState',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.hints'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'crs', $pb.PbFieldType.OY)
    ..aE<CRSStage>(2, _omitFieldNames ? '' : 'stage',
        enumValues: CRSStage.values)
    ..aOM<$1.UInt64Value>(3, _omitFieldNames ? '' : 'nextContributingNodeId',
        subBuilder: $1.UInt64Value.create)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'contributionEndTime',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CRSState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CRSState copyWith(void Function(CRSState) updates) =>
      super.copyWith((message) => updates(message as CRSState)) as CRSState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CRSState create() => CRSState._();
  @$core.override
  CRSState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CRSState getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRSState>(create);
  static CRSState? _defaultInstance;

  /// *
  ///  The bytes of the CRS. Based on the CRSStage, this may be the initial CRS
  ///  or the final CRS.
  @$pb.TagNumber(1)
  $core.List<$core.int> get crs => $_getN(0);
  @$pb.TagNumber(1)
  set crs($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCrs() => $_has(0);
  @$pb.TagNumber(1)
  void clearCrs() => $_clearField(1);

  /// *
  ///  The stage of the CRS construction.
  @$pb.TagNumber(2)
  CRSStage get stage => $_getN(1);
  @$pb.TagNumber(2)
  set stage(CRSStage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStage() => $_has(1);
  @$pb.TagNumber(2)
  void clearStage() => $_clearField(2);

  /// *
  ///  The id of the next node that should contribute to the CRS. This is used
  ///  to ensure that all nodes contribute to the CRS in a round-robin fashion.
  ///  If this is null, then all nodes in the network have contributed to the CRS.
  @$pb.TagNumber(3)
  $1.UInt64Value get nextContributingNodeId => $_getN(2);
  @$pb.TagNumber(3)
  set nextContributingNodeId($1.UInt64Value value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasNextContributingNodeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextContributingNodeId() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.UInt64Value ensureNextContributingNodeId() => $_ensure(2);

  /// *
  ///  The time at which the network should stop waiting for the node's contributions
  ///  and move on to the next node in the round-robin fashion.
  @$pb.TagNumber(4)
  $0.Timestamp get contributionEndTime => $_getN(3);
  @$pb.TagNumber(4)
  set contributionEndTime($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasContributionEndTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearContributionEndTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureContributionEndTime() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
