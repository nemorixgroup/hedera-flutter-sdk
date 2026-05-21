// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from event/state_signature_transaction.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  An signature of a state snapshot gossiped to other nodes.
///  Each node SHALL hash the root of the merkle tree of a state snapshot every
///  round. Once this hash is calculated, it SHOULD be signed with the nodes
///  private signing key. This signature, together with the hash SHOULD be added
///  to an event as a StateSignatureTransaction.
class StateSignatureTransaction extends $pb.GeneratedMessage {
  factory StateSignatureTransaction({
    $fixnum.Int64? round,
    $core.List<$core.int>? signature,
    $core.List<$core.int>? hash,
  }) {
    final result = create();
    if (round != null) result.round = round;
    if (signature != null) result.signature = signature;
    if (hash != null) result.hash = hash;
    return result;
  }

  StateSignatureTransaction._();

  factory StateSignatureTransaction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StateSignatureTransaction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StateSignatureTransaction',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.platform.event'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'round')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StateSignatureTransaction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StateSignatureTransaction copyWith(
          void Function(StateSignatureTransaction) updates) =>
      super.copyWith((message) => updates(message as StateSignatureTransaction))
          as StateSignatureTransaction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StateSignatureTransaction create() => StateSignatureTransaction._();
  @$core.override
  StateSignatureTransaction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StateSignatureTransaction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StateSignatureTransaction>(create);
  static StateSignatureTransaction? _defaultInstance;

  /// *
  ///  The round number corresponding to the round number of the state snapshot
  ///  being signed.<br/>
  ///  This number MUST be greater than 0.
  @$pb.TagNumber(1)
  $fixnum.Int64 get round => $_getI64(0);
  @$pb.TagNumber(1)
  set round($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRound() => $_has(0);
  @$pb.TagNumber(1)
  void clearRound() => $_clearField(1);

  /// *
  ///  The signature of state snapshot hash.<br/>
  ///  This signature MUST be a RSA signature with a maximum length of 384 bytes.<br/>
  ///  The signature algorithm used MUST be RSASSA-PKCS1-v1_5 with SHA-384.
  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => $_clearField(2);

  /// *
  ///  The hash of the state snapshot being signed.<br/>
  ///  This hash MUST be a SHA-384 hash.
  @$pb.TagNumber(3)
  $core.List<$core.int> get hash => $_getN(2);
  @$pb.TagNumber(3)
  set hash($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearHash() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
