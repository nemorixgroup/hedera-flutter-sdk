// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from auxiliary/hints/hints_partial_signature.proto.

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
///  A transaction body to publish a node's hinTS partial signature on
///  a particular message for a certain construction id.
class HintsPartialSignatureTransactionBody extends $pb.GeneratedMessage {
  factory HintsPartialSignatureTransactionBody({
    $fixnum.Int64? constructionId,
    $core.List<$core.int>? message,
    $core.List<$core.int>? partialSignature,
  }) {
    final result = create();
    if (constructionId != null) result.constructionId = constructionId;
    if (message != null) result.message = message;
    if (partialSignature != null) result.partialSignature = partialSignature;
    return result;
  }

  HintsPartialSignatureTransactionBody._();

  factory HintsPartialSignatureTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HintsPartialSignatureTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HintsPartialSignatureTransactionBody',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.services.auxiliary.hints'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'constructionId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'message', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'partialSignature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsPartialSignatureTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsPartialSignatureTransactionBody copyWith(
          void Function(HintsPartialSignatureTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as HintsPartialSignatureTransactionBody))
          as HintsPartialSignatureTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HintsPartialSignatureTransactionBody create() =>
      HintsPartialSignatureTransactionBody._();
  @$core.override
  HintsPartialSignatureTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HintsPartialSignatureTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          HintsPartialSignatureTransactionBody>(create);
  static HintsPartialSignatureTransactionBody? _defaultInstance;

  /// *
  ///  The id of the hinTS construction this partial signature applies to.
  ///  (The size of the target roster for this construction implies what
  ///  hinTS party id the submitting node has in the construction; and
  ///  hence also what weight the node's signature has.)
  @$pb.TagNumber(1)
  $fixnum.Int64 get constructionId => $_getI64(0);
  @$pb.TagNumber(1)
  set constructionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConstructionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConstructionId() => $_clearField(1);

  /// *
  ///  The message being signed.
  @$pb.TagNumber(2)
  $core.List<$core.int> get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  /// *
  ///  The node's partial signature on the message.
  @$pb.TagNumber(3)
  $core.List<$core.int> get partialSignature => $_getN(2);
  @$pb.TagNumber(3)
  set partialSignature($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPartialSignature() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartialSignature() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
