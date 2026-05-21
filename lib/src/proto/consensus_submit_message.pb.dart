// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from consensus_submit_message.proto.

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
///  Consensus message "chunk" detail.<br/>
///  This message carries information describing the way in which a message
///  submitted for consensus is broken into multiple fragments to fit within
///  network transaction size limits.
///
///  The use of multiple message fragments is RECOMMENDED for any message
///  greater than 4KiB in total size.
///
///  ### Block Stream Effects
///  None
class ConsensusMessageChunkInfo extends $pb.GeneratedMessage {
  factory ConsensusMessageChunkInfo({
    $0.TransactionID? initialTransactionID,
    $core.int? total,
    $core.int? number,
  }) {
    final result = create();
    if (initialTransactionID != null)
      result.initialTransactionID = initialTransactionID;
    if (total != null) result.total = total;
    if (number != null) result.number = number;
    return result;
  }

  ConsensusMessageChunkInfo._();

  factory ConsensusMessageChunkInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConsensusMessageChunkInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConsensusMessageChunkInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TransactionID>(1, _omitFieldNames ? '' : 'initialTransactionID',
        protoName: 'initialTransactionID', subBuilder: $0.TransactionID.create)
    ..aI(2, _omitFieldNames ? '' : 'total')
    ..aI(3, _omitFieldNames ? '' : 'number')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusMessageChunkInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusMessageChunkInfo copyWith(
          void Function(ConsensusMessageChunkInfo) updates) =>
      super.copyWith((message) => updates(message as ConsensusMessageChunkInfo))
          as ConsensusMessageChunkInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsensusMessageChunkInfo create() => ConsensusMessageChunkInfo._();
  @$core.override
  ConsensusMessageChunkInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConsensusMessageChunkInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConsensusMessageChunkInfo>(create);
  static ConsensusMessageChunkInfo? _defaultInstance;

  /// *
  ///  The TransactionID of the first chunk.
  ///  <p>
  ///  This MUST be set for every chunk in a fragmented message.
  @$pb.TagNumber(1)
  $0.TransactionID get initialTransactionID => $_getN(0);
  @$pb.TagNumber(1)
  set initialTransactionID($0.TransactionID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInitialTransactionID() => $_has(0);
  @$pb.TagNumber(1)
  void clearInitialTransactionID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TransactionID ensureInitialTransactionID() => $_ensure(0);

  /// *
  ///  The total number of chunks in the message.
  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => $_clearField(2);

  /// *
  ///  The sequence number (from 1 to total) of the current chunk
  ///  in the message.
  @$pb.TagNumber(3)
  $core.int get number => $_getIZ(2);
  @$pb.TagNumber(3)
  set number($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumber() => $_clearField(3);
}

/// *
///  Submit a message for consensus.<br/>
///  This transaction adds a new entry to the "end" of a topic, and provides
///  the core function of the consensus service.
///
///  Valid and authorized messages on valid topics SHALL be ordered by the
///  consensus service, published in the block stream, and available to all
///  subscribers on this topic via the mirror nodes.<br/>
///  If this transaction succeeds the resulting `TransactionReceipt` SHALL contain
///  the latest `topicSequenceNumber` and `topicRunningHash` for the topic.<br/>
///  If the topic `submitKey` is set, and not an empty `KeyList`, then that key
///  MUST sign this transaction.
///
///  ### Block Stream Effects
///  None
class ConsensusSubmitMessageTransactionBody extends $pb.GeneratedMessage {
  factory ConsensusSubmitMessageTransactionBody({
    $0.TopicID? topicID,
    $core.List<$core.int>? message,
    ConsensusMessageChunkInfo? chunkInfo,
  }) {
    final result = create();
    if (topicID != null) result.topicID = topicID;
    if (message != null) result.message = message;
    if (chunkInfo != null) result.chunkInfo = chunkInfo;
    return result;
  }

  ConsensusSubmitMessageTransactionBody._();

  factory ConsensusSubmitMessageTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConsensusSubmitMessageTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConsensusSubmitMessageTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TopicID>(1, _omitFieldNames ? '' : 'topicID',
        protoName: 'topicID', subBuilder: $0.TopicID.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'message', $pb.PbFieldType.OY)
    ..aOM<ConsensusMessageChunkInfo>(3, _omitFieldNames ? '' : 'chunkInfo',
        protoName: 'chunkInfo', subBuilder: ConsensusMessageChunkInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusSubmitMessageTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConsensusSubmitMessageTransactionBody copyWith(
          void Function(ConsensusSubmitMessageTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as ConsensusSubmitMessageTransactionBody))
          as ConsensusSubmitMessageTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsensusSubmitMessageTransactionBody create() =>
      ConsensusSubmitMessageTransactionBody._();
  @$core.override
  ConsensusSubmitMessageTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConsensusSubmitMessageTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConsensusSubmitMessageTransactionBody>(create);
  static ConsensusSubmitMessageTransactionBody? _defaultInstance;

  /// *
  ///  Topic to submit message to.
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

  /// *
  ///  A message to be submitted.
  ///  <p>
  ///  This Transaction (including signatures) MUST be less than 6KiB.<br/>
  ///  Messages SHOULD be less than 4KiB. A "chunked" message MAY be submitted
  ///  if a message larger than this is required.
  @$pb.TagNumber(2)
  $core.List<$core.int> get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  /// *
  ///  Information for the current "chunk" in a fragmented message.
  ///  <p>
  ///  This value is REQUIRED if the full `message` is submitted in two or
  ///  more fragments due to transaction size limits.<br/>
  ///  If the message is submitted in a single transaction, then this
  ///  field SHOULD NOT be set.
  @$pb.TagNumber(3)
  ConsensusMessageChunkInfo get chunkInfo => $_getN(2);
  @$pb.TagNumber(3)
  set chunkInfo(ConsensusMessageChunkInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasChunkInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearChunkInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  ConsensusMessageChunkInfo ensureChunkInfo() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
