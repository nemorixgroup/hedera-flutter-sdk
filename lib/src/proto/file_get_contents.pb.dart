// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from file_get_contents.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A query request to the Hedera File Service (HFS) for file content.<br/>
///  This query requests the content of a file, but none of the information
///  _about_ a file. A client should submit a `fileGetInfo` query to view
///  information about a file.<br/>
///  File content may also be available from a block node or mirror node,
///  generally at lower cost.
class FileGetContentsQuery extends $pb.GeneratedMessage {
  factory FileGetContentsQuery({
    $0.QueryHeader? header,
    $1.FileID? fileID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (fileID != null) result.fileID = fileID;
    return result;
  }

  FileGetContentsQuery._();

  factory FileGetContentsQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileGetContentsQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileGetContentsQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.FileID>(2, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $1.FileID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetContentsQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetContentsQuery copyWith(void Function(FileGetContentsQuery) updates) =>
      super.copyWith((message) => updates(message as FileGetContentsQuery))
          as FileGetContentsQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileGetContentsQuery create() => FileGetContentsQuery._();
  @$core.override
  FileGetContentsQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileGetContentsQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileGetContentsQuery>(create);
  static FileGetContentsQuery? _defaultInstance;

  /// *
  ///  Standard information sent with every query operation.<br/>
  ///  This includes the signed payment and what kind of response is requested
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $0.QueryHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.QueryHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.QueryHeader ensureHeader() => $_ensure(0);

  /// *
  ///  A file identifier.
  ///  <p>
  ///  This MUST be the identifier of a file that exists in HFS.<br/>
  ///  This value SHALL identify the file to be queried.
  @$pb.TagNumber(2)
  $1.FileID get fileID => $_getN(1);
  @$pb.TagNumber(2)
  set fileID($1.FileID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFileID() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.FileID ensureFileID() => $_ensure(1);
}

class FileGetContentsResponse_FileContents extends $pb.GeneratedMessage {
  factory FileGetContentsResponse_FileContents({
    $1.FileID? fileID,
    $core.List<$core.int>? contents,
  }) {
    final result = create();
    if (fileID != null) result.fileID = fileID;
    if (contents != null) result.contents = contents;
    return result;
  }

  FileGetContentsResponse_FileContents._();

  factory FileGetContentsResponse_FileContents.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileGetContentsResponse_FileContents.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileGetContentsResponse.FileContents',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.FileID>(1, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $1.FileID.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'contents', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetContentsResponse_FileContents clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetContentsResponse_FileContents copyWith(
          void Function(FileGetContentsResponse_FileContents) updates) =>
      super.copyWith((message) =>
              updates(message as FileGetContentsResponse_FileContents))
          as FileGetContentsResponse_FileContents;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileGetContentsResponse_FileContents create() =>
      FileGetContentsResponse_FileContents._();
  @$core.override
  FileGetContentsResponse_FileContents createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileGetContentsResponse_FileContents getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          FileGetContentsResponse_FileContents>(create);
  static FileGetContentsResponse_FileContents? _defaultInstance;

  /// *
  ///  A file identifier.
  ///  <p>
  ///  This SHALL be the identifier of a file that exists in HFS.<br/>
  ///  This value SHALL identify the file that was queried.
  @$pb.TagNumber(1)
  $1.FileID get fileID => $_getN(0);
  @$pb.TagNumber(1)
  set fileID($1.FileID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFileID() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileID() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.FileID ensureFileID() => $_ensure(0);

  /// *
  ///  A byte array of file content.
  ///  <p>
  ///  This SHALL contain the full content of the requested file.<br/>
  ///  This SHALL be empty if, and only if, the file content is empty.
  @$pb.TagNumber(2)
  $core.List<$core.int> get contents => $_getN(1);
  @$pb.TagNumber(2)
  set contents($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContents() => $_has(1);
  @$pb.TagNumber(2)
  void clearContents() => $_clearField(2);
}

/// *
///  A response to a query for the content of a file in the
///  Hedera File Service (HFS).
///
///  This message SHALL contain the full content of the requested file, but
///  SHALL NOT contain any metadata.
class FileGetContentsResponse extends $pb.GeneratedMessage {
  factory FileGetContentsResponse({
    $2.ResponseHeader? header,
    FileGetContentsResponse_FileContents? fileContents,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (fileContents != null) result.fileContents = fileContents;
    return result;
  }

  FileGetContentsResponse._();

  factory FileGetContentsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileGetContentsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileGetContentsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<FileGetContentsResponse_FileContents>(
        2, _omitFieldNames ? '' : 'fileContents',
        protoName: 'fileContents',
        subBuilder: FileGetContentsResponse_FileContents.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetContentsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetContentsResponse copyWith(
          void Function(FileGetContentsResponse) updates) =>
      super.copyWith((message) => updates(message as FileGetContentsResponse))
          as FileGetContentsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileGetContentsResponse create() => FileGetContentsResponse._();
  @$core.override
  FileGetContentsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileGetContentsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileGetContentsResponse>(create);
  static FileGetContentsResponse? _defaultInstance;

  /// *
  ///  The standard response information for queries.<br/>
  ///  This includes the values requested in the `QueryHeader`
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $2.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($2.ResponseHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.ResponseHeader ensureHeader() => $_ensure(0);

  /// *
  ///  A combination of File identifier and content bytes.
  ///  <p>
  ///  This SHALL NOT be set if the file does not exist.<br/>
  ///  The network MAY generate a state proof for this field.
  @$pb.TagNumber(2)
  FileGetContentsResponse_FileContents get fileContents => $_getN(1);
  @$pb.TagNumber(2)
  set fileContents(FileGetContentsResponse_FileContents value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFileContents() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileContents() => $_clearField(2);
  @$pb.TagNumber(2)
  FileGetContentsResponse_FileContents ensureFileContents() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
