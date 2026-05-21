// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from auxiliary/tss/tss_vote.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A transaction body to vote on the validity of Threshold Signature Scheme
///  (TSS) Messages for a candidate roster.
///
///  - A `TssVoteTransactionBody` MUST identify the hash of the roster containing
///    the node generating this TssVote
///  - A `TssVoteTransactionBody` MUST identify the hash of the roster that the
///    TSS messages is for
///   - If the candidate roster has received enough yes votes, the candidate
///     roster SHALL be adopted.
///   - Switching to the candidate roster MUST not happen until enough nodes have
///     voted that they have verified a threshold number of TSS messages from the
///     active roster.
///   - A vote consists of a bit vector of message statuses where each bit
///     corresponds to the order of TssMessages as they have come through
///     consensus.
///   - The threshold for votes to adopt a candidate roster SHALL be at least 1/3
///     of the consensus weight of the active roster to ensure that at least 1
///     honest node has validated the TSS key material.
class TssVoteTransactionBody extends $pb.GeneratedMessage {
  factory TssVoteTransactionBody({
    $core.List<$core.int>? sourceRosterHash,
    $core.List<$core.int>? targetRosterHash,
    $core.List<$core.int>? ledgerId,
    $core.List<$core.int>? nodeSignature,
    $core.List<$core.int>? tssVote,
  }) {
    final result = create();
    if (sourceRosterHash != null) result.sourceRosterHash = sourceRosterHash;
    if (targetRosterHash != null) result.targetRosterHash = targetRosterHash;
    if (ledgerId != null) result.ledgerId = ledgerId;
    if (nodeSignature != null) result.nodeSignature = nodeSignature;
    if (tssVote != null) result.tssVote = tssVote;
    return result;
  }

  TssVoteTransactionBody._();

  factory TssVoteTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TssVoteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TssVoteTransactionBody',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.services.auxiliary.tss'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'sourceRosterHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'targetRosterHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'ledgerId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'nodeSignature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'tssVote', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TssVoteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TssVoteTransactionBody copyWith(
          void Function(TssVoteTransactionBody) updates) =>
      super.copyWith((message) => updates(message as TssVoteTransactionBody))
          as TssVoteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TssVoteTransactionBody create() => TssVoteTransactionBody._();
  @$core.override
  TssVoteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TssVoteTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TssVoteTransactionBody>(create);
  static TssVoteTransactionBody? _defaultInstance;

  /// *
  ///  A hash of the roster containing the node generating this TssVote.
  @$pb.TagNumber(1)
  $core.List<$core.int> get sourceRosterHash => $_getN(0);
  @$pb.TagNumber(1)
  set sourceRosterHash($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceRosterHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceRosterHash() => $_clearField(1);

  /// *
  ///  A hash of the roster that this TssVote is for.
  @$pb.TagNumber(2)
  $core.List<$core.int> get targetRosterHash => $_getN(1);
  @$pb.TagNumber(2)
  set targetRosterHash($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTargetRosterHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetRosterHash() => $_clearField(2);

  /// *
  ///  An identifier (and public key) computed from the TssMessages for the target
  ///  roster.
  @$pb.TagNumber(3)
  $core.List<$core.int> get ledgerId => $_getN(2);
  @$pb.TagNumber(3)
  set ledgerId($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLedgerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearLedgerId() => $_clearField(3);

  /// *
  ///  A signature produced by the node.
  ///  <p>
  ///  This signature SHALL be produced using the node RSA signing key to sign
  ///  the ledger_id.<br/>
  ///  This signature SHALL be used to establish a chain of trust in the ledger id.
  @$pb.TagNumber(4)
  $core.List<$core.int> get nodeSignature => $_getN(3);
  @$pb.TagNumber(4)
  set nodeSignature($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNodeSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearNodeSignature() => $_clearField(4);

  /// *
  ///  A bit vector of message statuses.
  ///  <p>
  ///  #### Example
  ///  <ul><li>The least significant bit of byte[0] SHALL be the 0th item in the sequence.</li>
  ///      <li>The most significant bit of byte[0] SHALL be the 7th item in the sequence.</li>
  ///      <li>The least significant bit of byte[1] SHALL be the 8th item in the sequence.</li>
  ///      <li>The most significant bit of byte[1] SHALL be the 15th item in the sequence.</li>
  ///  </ul>
  ///  A bit SHALL be set if the `TssMessage` for the `TssMessageTransaction`
  ///  with a sequence number matching that bit index has been
  ///  received, and is valid.<br/>
  ///  A bit SHALL NOT be set if the `TssMessage` has not been received or was
  ///  received but not valid.
  @$pb.TagNumber(5)
  $core.List<$core.int> get tssVote => $_getN(4);
  @$pb.TagNumber(5)
  set tssVote($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTssVote() => $_has(4);
  @$pb.TagNumber(5)
  void clearTssVote() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
