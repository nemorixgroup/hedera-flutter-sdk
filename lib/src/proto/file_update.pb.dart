// This is a generated file - do not edit.
//
// Generated from file_update.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $2;

import 'basic_types.pb.dart' as $0;
import 'timestamp.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Update the metadata, and/or replace the content, of a file in the
///  Hedera File Service (HFS).
///
///  Any field which is not set (i.e. is null) in this message, other than
///  `fileID`, SHALL be ignored.<br/>
///  If the `keys` list for the identified file is an empty `KeyList`, then
///  this message MUST NOT set any field except `expirationTime`.
///
///  #### Signature Requirements
///  Every `Key` in the `keys` list for the identified file MUST sign this
///  transaction, if any field other than `expirationTime` is to be updated.<br/>
///  If the `keys` list for the identified file is an empty `KeyList` (because
///  this file was previously created or updated to have an empty `KeyList`),
///  then the file is considered immutable and this message MUST NOT set any
///  field except `expirationTime`.<br/>
///  See the [File Service](#FileService) specification for a detailed
///  explanation of the signature requirements for all file transactions.
///
///  ### Block Stream Effects
///  None
class FileUpdateTransactionBody extends $pb.GeneratedMessage {
  factory FileUpdateTransactionBody({
    $0.FileID? fileID,
    $1.Timestamp? expirationTime,
    $0.KeyList? keys,
    $core.List<$core.int>? contents,
    $2.StringValue? memo,
  }) {
    final result = create();
    if (fileID != null) result.fileID = fileID;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (keys != null) result.keys = keys;
    if (contents != null) result.contents = contents;
    if (memo != null) result.memo = memo;
    return result;
  }

  FileUpdateTransactionBody._();

  factory FileUpdateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileUpdateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileUpdateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.FileID>(1, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $0.FileID.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $1.Timestamp.create)
    ..aOM<$0.KeyList>(3, _omitFieldNames ? '' : 'keys',
        subBuilder: $0.KeyList.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'contents', $pb.PbFieldType.OY)
    ..aOM<$2.StringValue>(5, _omitFieldNames ? '' : 'memo',
        subBuilder: $2.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileUpdateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileUpdateTransactionBody copyWith(
          void Function(FileUpdateTransactionBody) updates) =>
      super.copyWith((message) => updates(message as FileUpdateTransactionBody))
          as FileUpdateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileUpdateTransactionBody create() => FileUpdateTransactionBody._();
  @$core.override
  FileUpdateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileUpdateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileUpdateTransactionBody>(create);
  static FileUpdateTransactionBody? _defaultInstance;

  /// *
  ///  A file identifier for the file to update.
  ///  <p>
  ///  This field is REQUIRED.
  @$pb.TagNumber(1)
  $0.FileID get fileID => $_getN(0);
  @$pb.TagNumber(1)
  set fileID($0.FileID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFileID() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FileID ensureFileID() => $_ensure(0);

  /// *
  ///  An expiration timestamp.
  ///  <p>
  ///  If set, this value MUST be strictly later than the existing
  ///  `expirationTime` value, or else it will be ignored.<br/>
  ///  If set, this value SHALL replace the existing `expirationTime`.<br/>
  ///  If this field is the only field set, then this transaction SHALL NOT
  ///  require any signature other than the `payer` for the transaction.<br/>
  ///  When the network consensus time exceeds the then-current
  ///  `expirationTime`, the network SHALL expire the file.
  @$pb.TagNumber(2)
  $1.Timestamp get expirationTime => $_getN(1);
  @$pb.TagNumber(2)
  set expirationTime($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExpirationTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpirationTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureExpirationTime() => $_ensure(1);

  /// *
  ///  The new list of keys that "own" this file.
  ///  <p>
  ///  If set, every key in this `KeyList` MUST sign this transaction.<br/>
  ///  If set, every key in the _previous_ `KeyList` MUST _also_
  ///  sign this transaction.<br/>
  ///  If this value is an empty `KeyList`, then the file SHALL be immutable
  ///  after completion of this transaction.
  @$pb.TagNumber(3)
  $0.KeyList get keys => $_getN(2);
  @$pb.TagNumber(3)
  set keys($0.KeyList value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKeys() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeys() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.KeyList ensureKeys() => $_ensure(2);

  /// *
  ///  An array of bytes.
  ///  <p>
  ///  This value, if set, SHALL _replace_ the existing file content.
  ///  If this value is set to an empty byte array, the content of the file
  ///  SHALL be unchanged.
  @$pb.TagNumber(4)
  $core.List<$core.int> get contents => $_getN(3);
  @$pb.TagNumber(4)
  set contents($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasContents() => $_has(3);
  @$pb.TagNumber(4)
  void clearContents() => $_clearField(4);

  /// *
  ///  A short description of this file.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(5)
  $2.StringValue get memo => $_getN(4);
  @$pb.TagNumber(5)
  set memo($2.StringValue value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMemo() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemo() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.StringValue ensureMemo() => $_ensure(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
