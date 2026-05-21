// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from file_delete.proto.

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
///  Mark a file as deleted and remove its content from network state.
///
///  The metadata for a deleted file SHALL be retained at least until the
///  expiration time for the file is exceeded.<br/>
///  On completion, the identified file SHALL be marked `deleted`.<br/>
///  On completion, the identified file SHALL have an empty `contents` array.<br/>
///  This transaction SHALL be final and irreversible.<br/>
///
///  #### Signature Requirements
///  At least _one_ key from the `KeyList` in the `keys` field of the
///  identified file MUST sign this transaction.<br/>
///  If the keys field for the identified file is an empty `KeyList` (because that
///  file was previously created or updated to have an empty `KeyList`), then the
///  file is considered immutable and this message SHALL fail as UNAUTHORIZED.
///  See the [File Service](#FileService) specification for a detailed
///  explanation of the signature requirements for all file transactions.
///
///  ### What is a "system" file
///  A "system" file is any file with a file number less than or equal to the
///  current configuration value for `ledger.numReservedSystemEntities`,
///  typically `750`.
///
///  ### Block Stream Effects
///  None
class FileDeleteTransactionBody extends $pb.GeneratedMessage {
  factory FileDeleteTransactionBody({
    $0.FileID? fileID,
  }) {
    final result = create();
    if (fileID != null) result.fileID = fileID;
    return result;
  }

  FileDeleteTransactionBody._();

  factory FileDeleteTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileDeleteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileDeleteTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.FileID>(2, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $0.FileID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileDeleteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileDeleteTransactionBody copyWith(
          void Function(FileDeleteTransactionBody) updates) =>
      super.copyWith((message) => updates(message as FileDeleteTransactionBody))
          as FileDeleteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileDeleteTransactionBody create() => FileDeleteTransactionBody._();
  @$core.override
  FileDeleteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileDeleteTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileDeleteTransactionBody>(create);
  static FileDeleteTransactionBody? _defaultInstance;

  /// *
  ///  A file identifier.<br/>
  ///  This identifies the file to delete.
  ///  <p>
  ///  The identified file MUST NOT be a "system" file.<br/>
  ///  This field is REQUIRED.
  @$pb.TagNumber(2)
  $0.FileID get fileID => $_getN(0);
  @$pb.TagNumber(2)
  set fileID($0.FileID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFileID() => $_has(0);
  @$pb.TagNumber(2)
  void clearFileID() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.FileID ensureFileID() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
