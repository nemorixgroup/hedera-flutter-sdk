// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from file_append.proto.

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
///  A transaction body for an `appendContent` transaction.<br/>
///  This transaction body provides a mechanism to append content to a "file" in
///  network state. Hedera transactions are limited in size, but there are many
///  uses for in-state byte arrays (e.g. smart contract bytecode) which require
///  more than may fit within a single transaction. The `appendFile` transaction
///  exists to support these requirements. The typical pattern is to create a
///  file, append more data until the full content is stored, verify the file is
///  correct, then update the file entry with any final metadata changes (e.g.
///  adding threshold keys and removing the initial upload key).
///
///  Each append transaction MUST remain within the total transaction size limit
///  for the network (typically 6144 bytes).<br/>
///  The total size of a file MUST remain within the maximum file size limit for
///  the network (typically 1048576 bytes).
///
///  #### Signature Requirements
///  Append transactions MUST have signatures from _all_ keys in the `KeyList`
///  assigned to the `keys` field of the file.<br/>
///  See the [File Service](#FileService) specification for a detailed
///  explanation of the signature requirements for all file transactions.
///
///  ### Block Stream Effects
///  None
class FileAppendTransactionBody extends $pb.GeneratedMessage {
  factory FileAppendTransactionBody({
    $0.FileID? fileID,
    $core.List<$core.int>? contents,
  }) {
    final result = create();
    if (fileID != null) result.fileID = fileID;
    if (contents != null) result.contents = contents;
    return result;
  }

  FileAppendTransactionBody._();

  factory FileAppendTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileAppendTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileAppendTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.FileID>(2, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $0.FileID.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'contents', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileAppendTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileAppendTransactionBody copyWith(
          void Function(FileAppendTransactionBody) updates) =>
      super.copyWith((message) => updates(message as FileAppendTransactionBody))
          as FileAppendTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileAppendTransactionBody create() => FileAppendTransactionBody._();
  @$core.override
  FileAppendTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileAppendTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileAppendTransactionBody>(create);
  static FileAppendTransactionBody? _defaultInstance;

  /// *
  ///  A file identifier.<br/>
  ///  This identifies the file to which the `contents` will be appended.
  ///  <p>
  ///  This field is REQUIRED.<br/>
  ///  The identified file MUST exist.<br/>
  ///  The identified file MUST NOT be larger than the current maximum file
  ///  size limit.<br/>
  ///  The identified file MUST NOT be deleted.<br/>
  ///  The identified file MUST NOT be immutable.
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

  /// *
  ///  An array of bytes to append.<br/>
  ///  <p>
  ///  This content SHALL be appended to the identified file if this
  ///  transaction succeeds.<br/>
  ///  This field is REQUIRED.<br/>
  ///  This field MUST NOT be empty.
  @$pb.TagNumber(4)
  $core.List<$core.int> get contents => $_getN(1);
  @$pb.TagNumber(4)
  set contents($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(4)
  $core.bool hasContents() => $_has(1);
  @$pb.TagNumber(4)
  void clearContents() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
