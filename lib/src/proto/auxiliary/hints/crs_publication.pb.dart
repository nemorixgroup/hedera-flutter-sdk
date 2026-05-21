// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from auxiliary/hints/crs_publication.proto.

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
///  A transaction body to publish a node's Common Reference String (CRS) to the network. This is used
///  when node wants to update to reach the final CRS for network to use the hinTS protocol
class CrsPublicationTransactionBody extends $pb.GeneratedMessage {
  factory CrsPublicationTransactionBody({
    $core.List<$core.int>? newCrs,
    $core.List<$core.int>? proof,
  }) {
    final result = create();
    if (newCrs != null) result.newCrs = newCrs;
    if (proof != null) result.proof = proof;
    return result;
  }

  CrsPublicationTransactionBody._();

  factory CrsPublicationTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CrsPublicationTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CrsPublicationTransactionBody',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.services.auxiliary.hints'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'newCrs', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'proof', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CrsPublicationTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CrsPublicationTransactionBody copyWith(
          void Function(CrsPublicationTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as CrsPublicationTransactionBody))
          as CrsPublicationTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CrsPublicationTransactionBody create() =>
      CrsPublicationTransactionBody._();
  @$core.override
  CrsPublicationTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CrsPublicationTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CrsPublicationTransactionBody>(create);
  static CrsPublicationTransactionBody? _defaultInstance;

  /// *
  ///  The party's generated random CRS.
  @$pb.TagNumber(1)
  $core.List<$core.int> get newCrs => $_getN(0);
  @$pb.TagNumber(1)
  set newCrs($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNewCrs() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewCrs() => $_clearField(1);

  /// *
  ///  The party's proof of the CRS update.
  @$pb.TagNumber(2)
  $core.List<$core.int> get proof => $_getN(1);
  @$pb.TagNumber(2)
  set proof($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProof() => $_has(1);
  @$pb.TagNumber(2)
  void clearProof() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
