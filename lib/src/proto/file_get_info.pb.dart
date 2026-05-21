// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from file_get_info.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;
import 'timestamp.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Query to request file metadata from the Hedera File Service (HFS).<br/>
///  This query requests all of the information _about_ a file, but none of the
///  _content_ of a file. A client should submit a `fileGetContents` query to
///  view the content of a file. File content _may_ also be available from a
///  block node or mirror node, generally at lower cost.
///
///  File metadata SHALL be available for active files and deleted files.<br/>
///  The size of a deleted file SHALL be `0` and the content SHALL be empty.
class FileGetInfoQuery extends $pb.GeneratedMessage {
  factory FileGetInfoQuery({
    $0.QueryHeader? header,
    $1.FileID? fileID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (fileID != null) result.fileID = fileID;
    return result;
  }

  FileGetInfoQuery._();

  factory FileGetInfoQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileGetInfoQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileGetInfoQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.FileID>(2, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $1.FileID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetInfoQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetInfoQuery copyWith(void Function(FileGetInfoQuery) updates) =>
      super.copyWith((message) => updates(message as FileGetInfoQuery))
          as FileGetInfoQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileGetInfoQuery create() => FileGetInfoQuery._();
  @$core.override
  FileGetInfoQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileGetInfoQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileGetInfoQuery>(create);
  static FileGetInfoQuery? _defaultInstance;

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

class FileGetInfoResponse_FileInfo extends $pb.GeneratedMessage {
  factory FileGetInfoResponse_FileInfo({
    $1.FileID? fileID,
    $fixnum.Int64? size,
    $3.Timestamp? expirationTime,
    $core.bool? deleted,
    $1.KeyList? keys,
    $core.String? memo,
    $core.List<$core.int>? ledgerId,
  }) {
    final result = create();
    if (fileID != null) result.fileID = fileID;
    if (size != null) result.size = size;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (deleted != null) result.deleted = deleted;
    if (keys != null) result.keys = keys;
    if (memo != null) result.memo = memo;
    if (ledgerId != null) result.ledgerId = ledgerId;
    return result;
  }

  FileGetInfoResponse_FileInfo._();

  factory FileGetInfoResponse_FileInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileGetInfoResponse_FileInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileGetInfoResponse.FileInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.FileID>(1, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $1.FileID.create)
    ..aInt64(2, _omitFieldNames ? '' : 'size')
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $3.Timestamp.create)
    ..aOB(4, _omitFieldNames ? '' : 'deleted')
    ..aOM<$1.KeyList>(5, _omitFieldNames ? '' : 'keys',
        subBuilder: $1.KeyList.create)
    ..aOS(6, _omitFieldNames ? '' : 'memo')
    ..a<$core.List<$core.int>>(
        7, _omitFieldNames ? '' : 'ledgerId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetInfoResponse_FileInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetInfoResponse_FileInfo copyWith(
          void Function(FileGetInfoResponse_FileInfo) updates) =>
      super.copyWith(
              (message) => updates(message as FileGetInfoResponse_FileInfo))
          as FileGetInfoResponse_FileInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileGetInfoResponse_FileInfo create() =>
      FileGetInfoResponse_FileInfo._();
  @$core.override
  FileGetInfoResponse_FileInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileGetInfoResponse_FileInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileGetInfoResponse_FileInfo>(create);
  static FileGetInfoResponse_FileInfo? _defaultInstance;

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
  ///  A size, in bytes, for the file.
  @$pb.TagNumber(2)
  $fixnum.Int64 get size => $_getI64(1);
  @$pb.TagNumber(2)
  set size($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);

  /// *
  ///  An expiration timestamp.
  ///  <p>
  ///  The file SHALL NOT expire before the network consensus time
  ///  exceeds this value.<br/>
  ///  The file SHALL expire after the network consensus time
  ///  exceeds this value.<br/>
  @$pb.TagNumber(3)
  $3.Timestamp get expirationTime => $_getN(2);
  @$pb.TagNumber(3)
  set expirationTime($3.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExpirationTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpirationTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureExpirationTime() => $_ensure(2);

  /// *
  ///  A flag indicating this file is deleted.
  ///  <p>
  ///  A deleted file SHALL have a size `0` and empty content.
  @$pb.TagNumber(4)
  $core.bool get deleted => $_getBF(3);
  @$pb.TagNumber(4)
  set deleted($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDeleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleted() => $_clearField(4);

  /// *
  ///  A KeyList listing all keys that "own" the file.
  ///  <p>
  ///  All keys in this list MUST sign a transaction to append to the
  ///  file content, or to modify file metadata.<br/>
  ///  At least _one_ key in this list MUST sign a transaction to delete
  ///  this file.<br/>
  ///  If this is an empty `KeyList`, the file is immutable, cannot be
  ///  modified or deleted, but MAY expire. A `fileUpdate` transaction MAY
  ///  extend the expiration time for an immutable file.
  @$pb.TagNumber(5)
  $1.KeyList get keys => $_getN(4);
  @$pb.TagNumber(5)
  set keys($1.KeyList value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasKeys() => $_has(4);
  @$pb.TagNumber(5)
  void clearKeys() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.KeyList ensureKeys() => $_ensure(4);

  /// *
  ///  A short description for this file.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(6)
  $core.String get memo => $_getSZ(5);
  @$pb.TagNumber(6)
  set memo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMemo() => $_has(5);
  @$pb.TagNumber(6)
  void clearMemo() => $_clearField(6);

  /// *
  ///  A ledger identifier for the responding network.
  ///  <p>
  ///  This value SHALL identify the distributed ledger that responded to
  ///  this query.
  @$pb.TagNumber(7)
  $core.List<$core.int> get ledgerId => $_getN(6);
  @$pb.TagNumber(7)
  set ledgerId($core.List<$core.int> value) => $_setBytes(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLedgerId() => $_has(6);
  @$pb.TagNumber(7)
  void clearLedgerId() => $_clearField(7);
}

/// *
///  A response to a query for the metadata of a file in the HFS.
class FileGetInfoResponse extends $pb.GeneratedMessage {
  factory FileGetInfoResponse({
    $2.ResponseHeader? header,
    FileGetInfoResponse_FileInfo? fileInfo,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (fileInfo != null) result.fileInfo = fileInfo;
    return result;
  }

  FileGetInfoResponse._();

  factory FileGetInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileGetInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileGetInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<FileGetInfoResponse_FileInfo>(2, _omitFieldNames ? '' : 'fileInfo',
        protoName: 'fileInfo', subBuilder: FileGetInfoResponse_FileInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileGetInfoResponse copyWith(void Function(FileGetInfoResponse) updates) =>
      super.copyWith((message) => updates(message as FileGetInfoResponse))
          as FileGetInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileGetInfoResponse create() => FileGetInfoResponse._();
  @$core.override
  FileGetInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileGetInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileGetInfoResponse>(create);
  static FileGetInfoResponse? _defaultInstance;

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
  ///  A combination of fields from the requested file metadata.
  ///  <p>
  ///  This SHALL NOT be set if the identified file does not exist
  ///  or has expired.
  @$pb.TagNumber(2)
  FileGetInfoResponse_FileInfo get fileInfo => $_getN(1);
  @$pb.TagNumber(2)
  set fileInfo(FileGetInfoResponse_FileInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFileInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  FileGetInfoResponse_FileInfo ensureFileInfo() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
