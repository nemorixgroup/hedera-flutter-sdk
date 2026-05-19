// This is a generated file - do not edit.
//
// Generated from consensus_delete_topic.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Delete a topic.
///
///  Once deleted, subsequent transactions or queries for that topic SHALL NOT
///  succeed.<br/>
///  If adminKey is set on the topic, this transaction MUST be signed by that
///  key.<br/>
///  If adminKey is not set on the topic, this transaction SHALL fail with a
///  response code of `UNAUTHORIZED`. A topic without an adminKey cannot be
///  deleted (but MAY expire).
///
///  ### Block Stream Effects
///  None
class ConsensusDeleteTopicTransactionBody extends $pb.GeneratedMessage {
  factory ConsensusDeleteTopicTransactionBody({
    $0.TopicID? topicID,
  }) {
    final result = create();
    if (topicID != null) result.topicID = topicID;
    return result;
  }

  ConsensusDeleteTopicTransactionBody._();

  factory ConsensusDeleteTopicTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConsensusDeleteTopicTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConsensusDeleteTopicTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TopicID>(1, _omitFieldNames ? '' : 'topicID',
        protoName: 'topicID', subBuilder: $0.TopicID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusDeleteTopicTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusDeleteTopicTransactionBody copyWith(
          void Function(ConsensusDeleteTopicTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as ConsensusDeleteTopicTransactionBody))
          as ConsensusDeleteTopicTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsensusDeleteTopicTransactionBody create() =>
      ConsensusDeleteTopicTransactionBody._();
  @$core.override
  ConsensusDeleteTopicTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConsensusDeleteTopicTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConsensusDeleteTopicTransactionBody>(create);
  static ConsensusDeleteTopicTransactionBody? _defaultInstance;

  /// *
  ///  Topic to be deleted.
  @$pb.TagNumber(1)
  $0.TopicID get topicID => $_getN(0);
  @$pb.TagNumber(1)
  set topicID($0.TopicID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTopicID() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TopicID ensureTopicID() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
