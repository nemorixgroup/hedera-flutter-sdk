// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from transaction_contents.proto.

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
///  A combination transaction bytes and a map of signatures.<br/>
///  This message contains a serialized `TransactionBody` in a byte array
///  and a `SignatureMap` that contains all of the signatures offered to
///  authenticate the transaction.
///
///  ### Block Stream Effects
///  This content is recorded in the record stream exactly as received.
class SignedTransaction extends $pb.GeneratedMessage {
  factory SignedTransaction({
    $core.List<$core.int>? bodyBytes,
    $0.SignatureMap? sigMap,
  }) {
    final result = create();
    if (bodyBytes != null) result.bodyBytes = bodyBytes;
    if (sigMap != null) result.sigMap = sigMap;
    return result;
  }

  SignedTransaction._();

  factory SignedTransaction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SignedTransaction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SignedTransaction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'bodyBytes', $pb.PbFieldType.OY,
        protoName: 'bodyBytes')
    ..aOM<$0.SignatureMap>(2, _omitFieldNames ? '' : 'sigMap',
        protoName: 'sigMap', subBuilder: $0.SignatureMap.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignedTransaction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignedTransaction copyWith(void Function(SignedTransaction) updates) =>
      super.copyWith((message) => updates(message as SignedTransaction))
          as SignedTransaction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignedTransaction create() => SignedTransaction._();
  @$core.override
  SignedTransaction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SignedTransaction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SignedTransaction>(create);
  static SignedTransaction? _defaultInstance;

  /// *
  ///  A byte array containing a serialized `TransactionBody`.
  ///  <p>
  ///  This content is what the signatures in `sigMap` MUST sign.
  @$pb.TagNumber(1)
  $core.List<$core.int> get bodyBytes => $_getN(0);
  @$pb.TagNumber(1)
  set bodyBytes($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBodyBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBodyBytes() => $_clearField(1);

  /// *
  ///  A set of cryptographic signatures.
  ///  <p>
  ///  This set MUST contain all signatures required to authenticate
  ///  and authorize the transaction.<br/>
  ///  This set MAY contain additional signatures.
  @$pb.TagNumber(2)
  $0.SignatureMap get sigMap => $_getN(1);
  @$pb.TagNumber(2)
  set sigMap($0.SignatureMap value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSigMap() => $_has(1);
  @$pb.TagNumber(2)
  void clearSigMap() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.SignatureMap ensureSigMap() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
