// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from state/history/history_types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A set of proof keys for a node; that is, the key the node is
///  currently using and the key it wants to use in assembling the
///  next address book in the ledger id's chain of trust.
class ProofKeySet extends $pb.GeneratedMessage {
  factory ProofKeySet({
    $0.Timestamp? adoptionTime,
    $core.List<$core.int>? key,
    $core.List<$core.int>? nextKey,
  }) {
    final result = create();
    if (adoptionTime != null) result.adoptionTime = adoptionTime;
    if (key != null) result.key = key;
    if (nextKey != null) result.nextKey = nextKey;
    return result;
  }

  ProofKeySet._();

  factory ProofKeySet.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProofKeySet.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProofKeySet',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.history'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'adoptionTime',
        subBuilder: $0.Timestamp.create)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'nextKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProofKeySet clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProofKeySet copyWith(void Function(ProofKeySet) updates) =>
      super.copyWith((message) => updates(message as ProofKeySet))
          as ProofKeySet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProofKeySet create() => ProofKeySet._();
  @$core.override
  ProofKeySet createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProofKeySet getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProofKeySet>(create);
  static ProofKeySet? _defaultInstance;

  /// *
  ///  The consensus time when the network adopted the active
  ///  proof key in this set. An adoption time that is sufficiently
  ///  tardy relative to the latest assembly start time may result
  ///  in the node's key being omitted from the address book.
  @$pb.TagNumber(2)
  $0.Timestamp get adoptionTime => $_getN(0);
  @$pb.TagNumber(2)
  set adoptionTime($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAdoptionTime() => $_has(0);
  @$pb.TagNumber(2)
  void clearAdoptionTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureAdoptionTime() => $_ensure(0);

  /// *
  ///  The proof key the node is using.
  @$pb.TagNumber(3)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(3)
  set key($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(3)
  void clearKey() => $_clearField(3);

  /// *
  ///  If set, the proof key the node wants to start using in the
  ///  address book.
  @$pb.TagNumber(4)
  $core.List<$core.int> get nextKey => $_getN(2);
  @$pb.TagNumber(4)
  set nextKey($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(4)
  $core.bool hasNextKey() => $_has(2);
  @$pb.TagNumber(4)
  void clearNextKey() => $_clearField(4);
}

/// *
///  A record of the proof key a node had in a particular address
///  book. Necessary to keep at each point history so that nodes
///  can verify the correct key was used to sign in transitions
///  starting from the current address book; no matter how keys
///  have been rotated from the time the address book was created.
class ProofKey extends $pb.GeneratedMessage {
  factory ProofKey({
    $fixnum.Int64? nodeId,
    $core.List<$core.int>? key,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (key != null) result.key = key;
    return result;
  }

  ProofKey._();

  factory ProofKey.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProofKey.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProofKey',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.history'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'nodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProofKey clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProofKey copyWith(void Function(ProofKey) updates) =>
      super.copyWith((message) => updates(message as ProofKey)) as ProofKey;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProofKey create() => ProofKey._();
  @$core.override
  ProofKey createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProofKey getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProofKey>(create);
  static ProofKey? _defaultInstance;

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
  ///  The key.
  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => $_clearField(2);
}

/// *
///  A piece of new history in the form of an address book hash and
///  associated metadata.
class History extends $pb.GeneratedMessage {
  factory History({
    $core.List<$core.int>? addressBookHash,
    $core.List<$core.int>? metadata,
  }) {
    final result = create();
    if (addressBookHash != null) result.addressBookHash = addressBookHash;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  History._();

  factory History.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory History.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'History',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.history'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'addressBookHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  History clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  History copyWith(void Function(History) updates) =>
      super.copyWith((message) => updates(message as History)) as History;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static History create() => History._();
  @$core.override
  History createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static History getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<History>(create);
  static History? _defaultInstance;

  /// *
  ///  The address book hash of the new history.
  @$pb.TagNumber(1)
  $core.List<$core.int> get addressBookHash => $_getN(0);
  @$pb.TagNumber(1)
  set addressBookHash($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAddressBookHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddressBookHash() => $_clearField(1);

  /// *
  ///  The metadata associated to the address book.
  @$pb.TagNumber(2)
  $core.List<$core.int> get metadata => $_getN(1);
  @$pb.TagNumber(2)
  set metadata($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadata() => $_clearField(2);
}

/// *
///  A proof that some address book history belongs to the ledger id's
///  chain of trust.
class HistoryProof extends $pb.GeneratedMessage {
  factory HistoryProof({
    $core.List<$core.int>? sourceAddressBookHash,
    $core.Iterable<ProofKey>? targetProofKeys,
    History? targetHistory,
    $core.List<$core.int>? proof,
  }) {
    final result = create();
    if (sourceAddressBookHash != null)
      result.sourceAddressBookHash = sourceAddressBookHash;
    if (targetProofKeys != null) result.targetProofKeys.addAll(targetProofKeys);
    if (targetHistory != null) result.targetHistory = targetHistory;
    if (proof != null) result.proof = proof;
    return result;
  }

  HistoryProof._();

  factory HistoryProof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HistoryProof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HistoryProof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.history'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'sourceAddressBookHash', $pb.PbFieldType.OY)
    ..pPM<ProofKey>(2, _omitFieldNames ? '' : 'targetProofKeys',
        subBuilder: ProofKey.create)
    ..aOM<History>(3, _omitFieldNames ? '' : 'targetHistory',
        subBuilder: History.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'proof', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProof copyWith(void Function(HistoryProof) updates) =>
      super.copyWith((message) => updates(message as HistoryProof))
          as HistoryProof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryProof create() => HistoryProof._();
  @$core.override
  HistoryProof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HistoryProof getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HistoryProof>(create);
  static HistoryProof? _defaultInstance;

  /// *
  ///  The hash of the source address book.
  @$pb.TagNumber(1)
  $core.List<$core.int> get sourceAddressBookHash => $_getN(0);
  @$pb.TagNumber(1)
  set sourceAddressBookHash($core.List<$core.int> value) =>
      $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceAddressBookHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceAddressBookHash() => $_clearField(1);

  /// *
  ///  The proof keys for the target address book, needed to keep
  ///  constructing proofs after adopting the target address book's
  ///  roster at a handoff.
  @$pb.TagNumber(2)
  $pb.PbList<ProofKey> get targetProofKeys => $_getList(1);

  /// *
  ///  The target history of the proof.
  @$pb.TagNumber(3)
  History get targetHistory => $_getN(2);
  @$pb.TagNumber(3)
  set targetHistory(History value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetHistory() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetHistory() => $_clearField(3);
  @$pb.TagNumber(3)
  History ensureTargetHistory() => $_ensure(2);

  /// *
  ///  The proof of chain of trust from the ledger id.
  @$pb.TagNumber(4)
  $core.List<$core.int> get proof => $_getN(3);
  @$pb.TagNumber(4)
  set proof($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasProof() => $_has(3);
  @$pb.TagNumber(4)
  void clearProof() => $_clearField(4);
}

enum HistoryProofConstruction_ProofState {
  gracePeriodEndTime,
  assemblyStartTime,
  targetProof,
  failureReason,
  notSet
}

/// *
///  Summary of the status of constructing a metadata proof, necessary to
///  ensure deterministic construction ending in a roster with sufficient
///  weight to enact its own constructions.
class HistoryProofConstruction extends $pb.GeneratedMessage {
  factory HistoryProofConstruction({
    $fixnum.Int64? constructionId,
    $core.List<$core.int>? sourceRosterHash,
    HistoryProof? sourceProof,
    $core.List<$core.int>? targetRosterHash,
    $0.Timestamp? gracePeriodEndTime,
    $0.Timestamp? assemblyStartTime,
    HistoryProof? targetProof,
    $core.String? failureReason,
  }) {
    final result = create();
    if (constructionId != null) result.constructionId = constructionId;
    if (sourceRosterHash != null) result.sourceRosterHash = sourceRosterHash;
    if (sourceProof != null) result.sourceProof = sourceProof;
    if (targetRosterHash != null) result.targetRosterHash = targetRosterHash;
    if (gracePeriodEndTime != null)
      result.gracePeriodEndTime = gracePeriodEndTime;
    if (assemblyStartTime != null) result.assemblyStartTime = assemblyStartTime;
    if (targetProof != null) result.targetProof = targetProof;
    if (failureReason != null) result.failureReason = failureReason;
    return result;
  }

  HistoryProofConstruction._();

  factory HistoryProofConstruction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HistoryProofConstruction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, HistoryProofConstruction_ProofState>
      _HistoryProofConstruction_ProofStateByTag = {
    5: HistoryProofConstruction_ProofState.gracePeriodEndTime,
    6: HistoryProofConstruction_ProofState.assemblyStartTime,
    7: HistoryProofConstruction_ProofState.targetProof,
    8: HistoryProofConstruction_ProofState.failureReason,
    0: HistoryProofConstruction_ProofState.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HistoryProofConstruction',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.history'),
      createEmptyInstance: create)
    ..oo(0, [5, 6, 7, 8])
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'constructionId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'sourceRosterHash', $pb.PbFieldType.OY)
    ..aOM<HistoryProof>(3, _omitFieldNames ? '' : 'sourceProof',
        subBuilder: HistoryProof.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'targetRosterHash', $pb.PbFieldType.OY)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'gracePeriodEndTime',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(6, _omitFieldNames ? '' : 'assemblyStartTime',
        subBuilder: $0.Timestamp.create)
    ..aOM<HistoryProof>(7, _omitFieldNames ? '' : 'targetProof',
        subBuilder: HistoryProof.create)
    ..aOS(8, _omitFieldNames ? '' : 'failureReason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProofConstruction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProofConstruction copyWith(
          void Function(HistoryProofConstruction) updates) =>
      super.copyWith((message) => updates(message as HistoryProofConstruction))
          as HistoryProofConstruction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryProofConstruction create() => HistoryProofConstruction._();
  @$core.override
  HistoryProofConstruction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HistoryProofConstruction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HistoryProofConstruction>(create);
  static HistoryProofConstruction? _defaultInstance;

  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  HistoryProofConstruction_ProofState whichProofState() =>
      _HistoryProofConstruction_ProofStateByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearProofState() => $_clearField($_whichOneof(0));

  /// *
  ///  The construction id.
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
  ///  certain thresholds are during construction.
  @$pb.TagNumber(2)
  $core.List<$core.int> get sourceRosterHash => $_getN(1);
  @$pb.TagNumber(2)
  set sourceRosterHash($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSourceRosterHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceRosterHash() => $_clearField(2);

  /// *
  ///  If set, the proof that the address book of the source roster belongs
  ///  to the the ledger id's chain of trust; if not set, the source roster's
  ///  address book must *be* the ledger id.
  @$pb.TagNumber(3)
  HistoryProof get sourceProof => $_getN(2);
  @$pb.TagNumber(3)
  set sourceProof(HistoryProof value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSourceProof() => $_has(2);
  @$pb.TagNumber(3)
  void clearSourceProof() => $_clearField(3);
  @$pb.TagNumber(3)
  HistoryProof ensureSourceProof() => $_ensure(2);

  /// *
  ///  The hash of the roster whose weights are used to assess progress
  ///  toward obtaining proof keys for parties that hold at least a
  ///  strong minority of the stake in that roster.
  @$pb.TagNumber(4)
  $core.List<$core.int> get targetRosterHash => $_getN(3);
  @$pb.TagNumber(4)
  set targetRosterHash($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTargetRosterHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetRosterHash() => $_clearField(4);

  /// *
  ///  If the network is still gathering proof keys for this
  ///  construction, the next time at which nodes should stop waiting
  ///  for tardy proof keys and assembly the history to be proven as
  ///  soon as it has the associated metadata and proof keys for nodes
  ///  with >2/3 weight in the target roster.
  @$pb.TagNumber(5)
  $0.Timestamp get gracePeriodEndTime => $_getN(4);
  @$pb.TagNumber(5)
  set gracePeriodEndTime($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasGracePeriodEndTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearGracePeriodEndTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureGracePeriodEndTime() => $_ensure(4);

  /// *
  ///  If the network has gathered enough proof keys to assemble the
  ///  history for this construction, the cutoff time at which those
  ///  keys must have been adopted to be included in the final history.
  @$pb.TagNumber(6)
  $0.Timestamp get assemblyStartTime => $_getN(5);
  @$pb.TagNumber(6)
  set assemblyStartTime($0.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAssemblyStartTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearAssemblyStartTime() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureAssemblyStartTime() => $_ensure(5);

  /// *
  ///  When this construction is complete, the recursive proof that
  ///  the target roster's address book and associated metadata belong
  ///  to the ledger id's chain of trust.
  @$pb.TagNumber(7)
  HistoryProof get targetProof => $_getN(6);
  @$pb.TagNumber(7)
  set targetProof(HistoryProof value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasTargetProof() => $_has(6);
  @$pb.TagNumber(7)
  void clearTargetProof() => $_clearField(7);
  @$pb.TagNumber(7)
  HistoryProof ensureTargetProof() => $_ensure(6);

  /// *
  ///  If set, the reason the construction failed.
  @$pb.TagNumber(8)
  $core.String get failureReason => $_getSZ(7);
  @$pb.TagNumber(8)
  set failureReason($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFailureReason() => $_has(7);
  @$pb.TagNumber(8)
  void clearFailureReason() => $_clearField(8);
}

/// *
///  A construction-scoped node id.
class ConstructionNodeId extends $pb.GeneratedMessage {
  factory ConstructionNodeId({
    $fixnum.Int64? constructionId,
    $fixnum.Int64? nodeId,
  }) {
    final result = create();
    if (constructionId != null) result.constructionId = constructionId;
    if (nodeId != null) result.nodeId = nodeId;
    return result;
  }

  ConstructionNodeId._();

  factory ConstructionNodeId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConstructionNodeId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructionNodeId',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.history'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'constructionId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'nodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructionNodeId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructionNodeId copyWith(void Function(ConstructionNodeId) updates) =>
      super.copyWith((message) => updates(message as ConstructionNodeId))
          as ConstructionNodeId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructionNodeId create() => ConstructionNodeId._();
  @$core.override
  ConstructionNodeId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConstructionNodeId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConstructionNodeId>(create);
  static ConstructionNodeId? _defaultInstance;

  /// *
  ///  The unique id of a history proof construction.
  @$pb.TagNumber(1)
  $fixnum.Int64 get constructionId => $_getI64(0);
  @$pb.TagNumber(1)
  set constructionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConstructionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConstructionId() => $_clearField(1);

  /// *
  ///  The unique id of a node.
  @$pb.TagNumber(2)
  $fixnum.Int64 get nodeId => $_getI64(1);
  @$pb.TagNumber(2)
  set nodeId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => $_clearField(2);
}

enum HistoryProofVote_Vote { proof, congruentNodeId, notSet }

/// *
///  A node's vote for a particular history proof; either by explicitly
///  giving the proof, or by identifying a node that already voted for it.
class HistoryProofVote extends $pb.GeneratedMessage {
  factory HistoryProofVote({
    HistoryProof? proof,
    $fixnum.Int64? congruentNodeId,
  }) {
    final result = create();
    if (proof != null) result.proof = proof;
    if (congruentNodeId != null) result.congruentNodeId = congruentNodeId;
    return result;
  }

  HistoryProofVote._();

  factory HistoryProofVote.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HistoryProofVote.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, HistoryProofVote_Vote>
      _HistoryProofVote_VoteByTag = {
    1: HistoryProofVote_Vote.proof,
    2: HistoryProofVote_Vote.congruentNodeId,
    0: HistoryProofVote_Vote.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HistoryProofVote',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.history'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<HistoryProof>(1, _omitFieldNames ? '' : 'proof',
        subBuilder: HistoryProof.create)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'congruentNodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProofVote clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProofVote copyWith(void Function(HistoryProofVote) updates) =>
      super.copyWith((message) => updates(message as HistoryProofVote))
          as HistoryProofVote;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryProofVote create() => HistoryProofVote._();
  @$core.override
  HistoryProofVote createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HistoryProofVote getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HistoryProofVote>(create);
  static HistoryProofVote? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  HistoryProofVote_Vote whichVote() =>
      _HistoryProofVote_VoteByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearVote() => $_clearField($_whichOneof(0));

  /// *
  ///  The history proof the submitting node is voting for.
  @$pb.TagNumber(1)
  HistoryProof get proof => $_getN(0);
  @$pb.TagNumber(1)
  set proof(HistoryProof value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProof() => $_has(0);
  @$pb.TagNumber(1)
  void clearProof() => $_clearField(1);
  @$pb.TagNumber(1)
  HistoryProof ensureProof() => $_ensure(0);

  /// *
  ///  The id of another node that already voted for the exact proof
  ///  the submitting node is voting for.
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
///  A node's signature blessing some new history.
class HistorySignature extends $pb.GeneratedMessage {
  factory HistorySignature({
    History? history,
    $core.List<$core.int>? signature,
  }) {
    final result = create();
    if (history != null) result.history = history;
    if (signature != null) result.signature = signature;
    return result;
  }

  HistorySignature._();

  factory HistorySignature.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HistorySignature.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HistorySignature',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.history'),
      createEmptyInstance: create)
    ..aOM<History>(1, _omitFieldNames ? '' : 'history',
        subBuilder: History.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistorySignature clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistorySignature copyWith(void Function(HistorySignature) updates) =>
      super.copyWith((message) => updates(message as HistorySignature))
          as HistorySignature;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistorySignature create() => HistorySignature._();
  @$core.override
  HistorySignature createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HistorySignature getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HistorySignature>(create);
  static HistorySignature? _defaultInstance;

  /// *
  ///  The new history the node is signing.
  @$pb.TagNumber(1)
  History get history => $_getN(0);
  @$pb.TagNumber(1)
  set history(History value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHistory() => $_has(0);
  @$pb.TagNumber(1)
  void clearHistory() => $_clearField(1);
  @$pb.TagNumber(1)
  History ensureHistory() => $_ensure(0);

  /// *
  ///  The node's signature on the canonical serialization of
  ///  the new history.
  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => $_clearField(2);
}

/// *
///  A signature on some new history recorded at a certain time.
class RecordedHistorySignature extends $pb.GeneratedMessage {
  factory RecordedHistorySignature({
    $0.Timestamp? signingTime,
    HistorySignature? historySignature,
  }) {
    final result = create();
    if (signingTime != null) result.signingTime = signingTime;
    if (historySignature != null) result.historySignature = historySignature;
    return result;
  }

  RecordedHistorySignature._();

  factory RecordedHistorySignature.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecordedHistorySignature.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecordedHistorySignature',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.state.history'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'signingTime',
        subBuilder: $0.Timestamp.create)
    ..aOM<HistorySignature>(2, _omitFieldNames ? '' : 'historySignature',
        subBuilder: HistorySignature.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordedHistorySignature clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordedHistorySignature copyWith(
          void Function(RecordedHistorySignature) updates) =>
      super.copyWith((message) => updates(message as RecordedHistorySignature))
          as RecordedHistorySignature;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordedHistorySignature create() => RecordedHistorySignature._();
  @$core.override
  RecordedHistorySignature createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecordedHistorySignature getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecordedHistorySignature>(create);
  static RecordedHistorySignature? _defaultInstance;

  /// *
  ///  The time at which the signature was recorded.
  @$pb.TagNumber(1)
  $0.Timestamp get signingTime => $_getN(0);
  @$pb.TagNumber(1)
  set signingTime($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSigningTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearSigningTime() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureSigningTime() => $_ensure(0);

  /// *
  ///  The signature on some new history.
  @$pb.TagNumber(2)
  HistorySignature get historySignature => $_getN(1);
  @$pb.TagNumber(2)
  set historySignature(HistorySignature value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasHistorySignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearHistorySignature() => $_clearField(2);
  @$pb.TagNumber(2)
  HistorySignature ensureHistorySignature() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
