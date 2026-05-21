// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from auxiliary/hints/hints_preprocessing_vote.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../state/hints/hints_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A transaction body to publish a node's vote for the results of
///  aggregating the hinTS keys for a specified construction id. The
///  node can either give their explicit aggregation results, or
///  delegate their vote to another node's results.
class HintsPreprocessingVoteTransactionBody extends $pb.GeneratedMessage {
  factory HintsPreprocessingVoteTransactionBody({
    $fixnum.Int64? constructionId,
    $0.PreprocessingVote? vote,
  }) {
    final result = create();
    if (constructionId != null) result.constructionId = constructionId;
    if (vote != null) result.vote = vote;
    return result;
  }

  HintsPreprocessingVoteTransactionBody._();

  factory HintsPreprocessingVoteTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HintsPreprocessingVoteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HintsPreprocessingVoteTransactionBody',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.services.auxiliary.hints'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'constructionId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.PreprocessingVote>(2, _omitFieldNames ? '' : 'vote',
        subBuilder: $0.PreprocessingVote.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsPreprocessingVoteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsPreprocessingVoteTransactionBody copyWith(
          void Function(HintsPreprocessingVoteTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as HintsPreprocessingVoteTransactionBody))
          as HintsPreprocessingVoteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HintsPreprocessingVoteTransactionBody create() =>
      HintsPreprocessingVoteTransactionBody._();
  @$core.override
  HintsPreprocessingVoteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HintsPreprocessingVoteTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          HintsPreprocessingVoteTransactionBody>(create);
  static HintsPreprocessingVoteTransactionBody? _defaultInstance;

  /// *
  ///  The id of the hinTS construction this vote is for. Because
  ///  the network only ever performs one construction a time, this
  ///  is somewhat redundant, but included to detect any strange
  ///  edge cases where a node is so far behind it votes on the wrong
  ///  construction.
  @$pb.TagNumber(1)
  $fixnum.Int64 get constructionId => $_getI64(0);
  @$pb.TagNumber(1)
  set constructionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConstructionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConstructionId() => $_clearField(1);

  /// *
  ///  The vote the node is casting for the aggregation of the hints
  ///  in the given construction (which should be ongoing).
  @$pb.TagNumber(2)
  $0.PreprocessingVote get vote => $_getN(1);
  @$pb.TagNumber(2)
  set vote($0.PreprocessingVote value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVote() => $_has(1);
  @$pb.TagNumber(2)
  void clearVote() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.PreprocessingVote ensureVote() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
