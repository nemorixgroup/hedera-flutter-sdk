// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from auxiliary/history/history_proof_signature.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../state/history/history_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A transaction body to publish a node's signature on a computed
///  history of address book hash and associated metadata. This
///  signature can contribute to a proof that the history belongs to
///  to the chain of trust for the ledger id.
class HistoryProofSignatureTransactionBody extends $pb.GeneratedMessage {
  factory HistoryProofSignatureTransactionBody({
    $fixnum.Int64? constructionId,
    $0.HistorySignature? signature,
  }) {
    final result = create();
    if (constructionId != null) result.constructionId = constructionId;
    if (signature != null) result.signature = signature;
    return result;
  }

  HistoryProofSignatureTransactionBody._();

  factory HistoryProofSignatureTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HistoryProofSignatureTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HistoryProofSignatureTransactionBody',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'com.hedera.hapi.services.auxiliary.history'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'constructionId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.HistorySignature>(2, _omitFieldNames ? '' : 'signature',
        subBuilder: $0.HistorySignature.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProofSignatureTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProofSignatureTransactionBody copyWith(
          void Function(HistoryProofSignatureTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as HistoryProofSignatureTransactionBody))
          as HistoryProofSignatureTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryProofSignatureTransactionBody create() =>
      HistoryProofSignatureTransactionBody._();
  @$core.override
  HistoryProofSignatureTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HistoryProofSignatureTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          HistoryProofSignatureTransactionBody>(create);
  static HistoryProofSignatureTransactionBody? _defaultInstance;

  /// *
  ///  The id of the proof construction this signature is contributing to.
  @$pb.TagNumber(1)
  $fixnum.Int64 get constructionId => $_getI64(0);
  @$pb.TagNumber(1)
  set constructionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConstructionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConstructionId() => $_clearField(1);

  /// *
  ///  This node's signature on its computed history.
  @$pb.TagNumber(2)
  $0.HistorySignature get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($0.HistorySignature value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.HistorySignature ensureSignature() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
