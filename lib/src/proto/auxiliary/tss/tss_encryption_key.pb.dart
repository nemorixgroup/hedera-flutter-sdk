// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from auxiliary/tss/tss_encryption_key.proto.

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
///  A transaction body for sending the public TSS encryption key.
class TssEncryptionKeyTransactionBody extends $pb.GeneratedMessage {
  factory TssEncryptionKeyTransactionBody({
    $core.List<$core.int>? publicTssEncryptionKey,
  }) {
    final result = create();
    if (publicTssEncryptionKey != null)
      result.publicTssEncryptionKey = publicTssEncryptionKey;
    return result;
  }

  TssEncryptionKeyTransactionBody._();

  factory TssEncryptionKeyTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TssEncryptionKeyTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TssEncryptionKeyTransactionBody',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.services.auxiliary.tss'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'publicTssEncryptionKey', $pb.PbFieldType.OY,
        protoName: 'publicTssEncryptionKey')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TssEncryptionKeyTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TssEncryptionKeyTransactionBody copyWith(
          void Function(TssEncryptionKeyTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TssEncryptionKeyTransactionBody))
          as TssEncryptionKeyTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TssEncryptionKeyTransactionBody create() =>
      TssEncryptionKeyTransactionBody._();
  @$core.override
  TssEncryptionKeyTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TssEncryptionKeyTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TssEncryptionKeyTransactionBody>(
          create);
  static TssEncryptionKeyTransactionBody? _defaultInstance;

  /// *
  ///  The raw bytes of the public TSS encryption key of the node sending the transaction.
  ///  <p>
  ///  This value MUST be set.<br/>
  ///  This value MUST NOT be empty.<br/>
  @$pb.TagNumber(1)
  $core.List<$core.int> get publicTssEncryptionKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicTssEncryptionKey($core.List<$core.int> value) =>
      $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPublicTssEncryptionKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicTssEncryptionKey() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
