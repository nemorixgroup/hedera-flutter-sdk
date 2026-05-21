// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from auxiliary/history/history_proof_key_publication.proto.

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
///  A transaction body to publish a node's history proof key.
class HistoryProofKeyPublicationTransactionBody extends $pb.GeneratedMessage {
  factory HistoryProofKeyPublicationTransactionBody({
    $core.List<$core.int>? proofKey,
  }) {
    final result = create();
    if (proofKey != null) result.proofKey = proofKey;
    return result;
  }

  HistoryProofKeyPublicationTransactionBody._();

  factory HistoryProofKeyPublicationTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HistoryProofKeyPublicationTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HistoryProofKeyPublicationTransactionBody',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'com.hedera.hapi.services.auxiliary.history'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'proofKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProofKeyPublicationTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryProofKeyPublicationTransactionBody copyWith(
          void Function(HistoryProofKeyPublicationTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as HistoryProofKeyPublicationTransactionBody))
          as HistoryProofKeyPublicationTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryProofKeyPublicationTransactionBody create() =>
      HistoryProofKeyPublicationTransactionBody._();
  @$core.override
  HistoryProofKeyPublicationTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HistoryProofKeyPublicationTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          HistoryProofKeyPublicationTransactionBody>(create);
  static HistoryProofKeyPublicationTransactionBody? _defaultInstance;

  /// *
  ///  The proof key the submitting node intends to use when
  ///  contributing signatures for use in proving history
  ///  belongs to the chain of trust for the ledger id.
  @$pb.TagNumber(1)
  $core.List<$core.int> get proofKey => $_getN(0);
  @$pb.TagNumber(1)
  set proofKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProofKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearProofKey() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
