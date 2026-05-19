// This is a generated file - do not edit.
//
// Generated from consensus_get_topic_info.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'consensus_topic_info.pb.dart' as $3;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Retrieve the latest state of a topic.
///
///  This method is unrestricted and allowed on any topic by any payer
///  account.<br/>
///  A query for a deleted topic MAY succeed if the topic is within the
///  "autorenew grace period".<br/>
///  A query for a topic removed from state SHALL NOT succeed.
class ConsensusGetTopicInfoQuery extends $pb.GeneratedMessage {
  factory ConsensusGetTopicInfoQuery({
    $0.QueryHeader? header,
    $1.TopicID? topicID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (topicID != null) result.topicID = topicID;
    return result;
  }

  ConsensusGetTopicInfoQuery._();

  factory ConsensusGetTopicInfoQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConsensusGetTopicInfoQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConsensusGetTopicInfoQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.TopicID>(2, _omitFieldNames ? '' : 'topicID',
        protoName: 'topicID', subBuilder: $1.TopicID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusGetTopicInfoQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusGetTopicInfoQuery copyWith(
          void Function(ConsensusGetTopicInfoQuery) updates) =>
      super.copyWith(
              (message) => updates(message as ConsensusGetTopicInfoQuery))
          as ConsensusGetTopicInfoQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsensusGetTopicInfoQuery create() => ConsensusGetTopicInfoQuery._();
  @$core.override
  ConsensusGetTopicInfoQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConsensusGetTopicInfoQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConsensusGetTopicInfoQuery>(create);
  static ConsensusGetTopicInfoQuery? _defaultInstance;

  /// *
  ///  Standard information sent with every query operation.<br/>
  ///  This includes the signed payment and what kind of response is requested
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $0.QueryHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.QueryHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.QueryHeader ensureHeader() => $_ensure(0);

  /// *
  ///  A topic ID.
  ///  <p>
  ///  The network SHALL return information for this topic, if successful.
  @$pb.TagNumber(2)
  $1.TopicID get topicID => $_getN(1);
  @$pb.TagNumber(2)
  set topicID($1.TopicID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTopicID() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.TopicID ensureTopicID() => $_ensure(1);
}

/// *
///  Query response to describe the current state of a topic in the Hedera
///  Consensus Service(HCS).
class ConsensusGetTopicInfoResponse extends $pb.GeneratedMessage {
  factory ConsensusGetTopicInfoResponse({
    $2.ResponseHeader? header,
    $1.TopicID? topicID,
    $3.ConsensusTopicInfo? topicInfo,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (topicID != null) result.topicID = topicID;
    if (topicInfo != null) result.topicInfo = topicInfo;
    return result;
  }

  ConsensusGetTopicInfoResponse._();

  factory ConsensusGetTopicInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConsensusGetTopicInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConsensusGetTopicInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<$1.TopicID>(2, _omitFieldNames ? '' : 'topicID',
        protoName: 'topicID', subBuilder: $1.TopicID.create)
    ..aOM<$3.ConsensusTopicInfo>(5, _omitFieldNames ? '' : 'topicInfo',
        protoName: 'topicInfo', subBuilder: $3.ConsensusTopicInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusGetTopicInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusGetTopicInfoResponse copyWith(
          void Function(ConsensusGetTopicInfoResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ConsensusGetTopicInfoResponse))
          as ConsensusGetTopicInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsensusGetTopicInfoResponse create() =>
      ConsensusGetTopicInfoResponse._();
  @$core.override
  ConsensusGetTopicInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConsensusGetTopicInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConsensusGetTopicInfoResponse>(create);
  static ConsensusGetTopicInfoResponse? _defaultInstance;

  /// *
  ///  The standard response information for queries.<br/>
  ///  This includes the values requested in the `QueryHeader`
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $2.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($2.ResponseHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.ResponseHeader ensureHeader() => $_ensure(0);

  /// *
  ///  The ID of the topic requested in the query.
  @$pb.TagNumber(2)
  $1.TopicID get topicID => $_getN(1);
  @$pb.TagNumber(2)
  set topicID($1.TopicID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTopicID() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.TopicID ensureTopicID() => $_ensure(1);

  /// *
  ///  Information describing the current state of the topic.
  @$pb.TagNumber(5)
  $3.ConsensusTopicInfo get topicInfo => $_getN(2);
  @$pb.TagNumber(5)
  set topicInfo($3.ConsensusTopicInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasTopicInfo() => $_has(2);
  @$pb.TagNumber(5)
  void clearTopicInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.ConsensusTopicInfo ensureTopicInfo() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
