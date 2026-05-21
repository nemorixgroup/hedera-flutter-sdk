// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from file_create.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Create a new file.
///
///  If successful, the new file SHALL contain the (possibly empty) content
///  provided in the `contents` field.<br/>
///  When the current consensus time exceeds the `expirationTime` value, the
///  network SHALL expire the file, and MAY archive the state entry.
///
///  #### Signature Requirements
///  The HFS manages file authorization in a manner that can be confusing.
///  The core element of file authorization is the `keys` field,
///  which is a `KeyList`; a list of individual `Key` messages, each of which
///  may represent a simple or complex key.<br/>
///  The file service transactions treat this list differently.<br/>
///  A `fileCreate`, `fileAppend`, or `fileUpdate` MUST have a valid signature
///  from _each_ key in the list.<br/>
///  A `fileDelete` MUST have a valid signature from _at least one_ key in
///  the list. This is different, and allows a file "owned" by many entities
///  to be deleted by any one of those entities. A deleted file cannot be
///  restored, so it is important to consider this when assigning keys for
///  a file.<br/>
///  If any of the keys in a `KeyList` are complex, the full requirements of
///  each complex key must be met to count as a "valid signature" for that key.
///  A complex key structure (i.e. a `ThresholdKey`, or `KeyList`, possibly
///  including additional `ThresholdKey` or `KeyList` descendants) may be
///  assigned as the sole entry in a file `keys` field to ensure all transactions
///  have the same signature requirements.
///
///  If the `keys` field is an empty `KeyList`, then the file SHALL be immutable
///  and the only transaction permitted to modify that file SHALL be a
///  `fileUpdate` transaction with _only_ the `expirationTime` set.
///
///  #### Shard and Realm
///  The current API ignores shardID and realmID. All files are created in
///  shard 0 and realm 0. Future versions of the API may support multiple
///  realms and multiple shards.
///
///  ### Block Stream Effects
///  After the file is created, the FileID for it SHALL be returned in the
///  transaction receipt, and SHALL be recorded in the transaction record.
class FileCreateTransactionBody extends $pb.GeneratedMessage {
  factory FileCreateTransactionBody({
    $0.Timestamp? expirationTime,
    $1.KeyList? keys,
    $core.List<$core.int>? contents,
    $1.ShardID? shardID,
    $1.RealmID? realmID,
    @$core.Deprecated('This field is deprecated.') $1.Key? newRealmAdminKey,
    $core.String? memo,
  }) {
    final result = create();
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (keys != null) result.keys = keys;
    if (contents != null) result.contents = contents;
    if (shardID != null) result.shardID = shardID;
    if (realmID != null) result.realmID = realmID;
    if (newRealmAdminKey != null) result.newRealmAdminKey = newRealmAdminKey;
    if (memo != null) result.memo = memo;
    return result;
  }

  FileCreateTransactionBody._();

  factory FileCreateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileCreateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileCreateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $0.Timestamp.create)
    ..aOM<$1.KeyList>(3, _omitFieldNames ? '' : 'keys',
        subBuilder: $1.KeyList.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'contents', $pb.PbFieldType.OY)
    ..aOM<$1.ShardID>(5, _omitFieldNames ? '' : 'shardID',
        protoName: 'shardID', subBuilder: $1.ShardID.create)
    ..aOM<$1.RealmID>(6, _omitFieldNames ? '' : 'realmID',
        protoName: 'realmID', subBuilder: $1.RealmID.create)
    ..aOM<$1.Key>(7, _omitFieldNames ? '' : 'newRealmAdminKey',
        protoName: 'newRealmAdminKey', subBuilder: $1.Key.create)
    ..aOS(8, _omitFieldNames ? '' : 'memo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileCreateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileCreateTransactionBody copyWith(
          void Function(FileCreateTransactionBody) updates) =>
      super.copyWith((message) => updates(message as FileCreateTransactionBody))
          as FileCreateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileCreateTransactionBody create() => FileCreateTransactionBody._();
  @$core.override
  FileCreateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileCreateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileCreateTransactionBody>(create);
  static FileCreateTransactionBody? _defaultInstance;

  /// *
  ///  An expiration timestamp.
  ///  <p>
  ///  When the network consensus time exceeds this value, the network
  ///  SHALL expire the file.
  @$pb.TagNumber(2)
  $0.Timestamp get expirationTime => $_getN(0);
  @$pb.TagNumber(2)
  set expirationTime($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExpirationTime() => $_has(0);
  @$pb.TagNumber(2)
  void clearExpirationTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureExpirationTime() => $_ensure(0);

  /// *
  ///  A list of keys that represent file "owners".
  ///  <p>
  ///  Every `Key` in this list MUST sign this `fileCreate` transaction, as
  ///  well as any `fileUpdate` or `fileAppend` that modifies this file.<br/>
  ///  At least one `Key` in this list MUST sign any `fileDelete` transaction
  ///  to delete this file.<br/>
  ///  If this `KeyList` is empty, the file SHALL be created immutable and the
  ///  only field that may be changed subsequently is the `expirationTime`.
  ///  An immutable file cannot be deleted except with a `systemDelete`
  ///  transaction, or by expiration.
  @$pb.TagNumber(3)
  $1.KeyList get keys => $_getN(1);
  @$pb.TagNumber(3)
  set keys($1.KeyList value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKeys() => $_has(1);
  @$pb.TagNumber(3)
  void clearKeys() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.KeyList ensureKeys() => $_ensure(1);

  /// *
  ///  A byte array of file content.
  ///  <p>
  ///  The file SHALL be created with initial content equal to this field.
  @$pb.TagNumber(4)
  $core.List<$core.int> get contents => $_getN(2);
  @$pb.TagNumber(4)
  set contents($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(4)
  $core.bool hasContents() => $_has(2);
  @$pb.TagNumber(4)
  void clearContents() => $_clearField(4);

  /// *
  ///  A shard in which this file is created
  @$pb.TagNumber(5)
  $1.ShardID get shardID => $_getN(3);
  @$pb.TagNumber(5)
  set shardID($1.ShardID value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasShardID() => $_has(3);
  @$pb.TagNumber(5)
  void clearShardID() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.ShardID ensureShardID() => $_ensure(3);

  /// *
  ///  A realm in which this file is created.
  ///  <p>
  ///  The shard number for this realm MUST match the value in `shardID`.<br/>
  ///  Currently, this MUST be `0` for both fields.<br/>
  ///  If the desired realm is `0.0`, this SHOULD NOT be set.
  @$pb.TagNumber(6)
  $1.RealmID get realmID => $_getN(4);
  @$pb.TagNumber(6)
  set realmID($1.RealmID value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRealmID() => $_has(4);
  @$pb.TagNumber(6)
  void clearRealmID() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.RealmID ensureRealmID() => $_ensure(4);

  /// *
  ///  The "create realm" was never enabled, and
  ///  should not be possible on file creation.<br/>
  ///  An admin key for a new realm, if one is created.
  ///  Added deprecated tag 2024-05.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $1.Key get newRealmAdminKey => $_getN(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  set newRealmAdminKey($1.Key value) => $_setField(7, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $core.bool hasNewRealmAdminKey() => $_has(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  void clearNewRealmAdminKey() => $_clearField(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $1.Key ensureNewRealmAdminKey() => $_ensure(5);

  /// *
  ///  A short description of this file.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(8)
  $core.String get memo => $_getSZ(6);
  @$pb.TagNumber(8)
  set memo($core.String value) => $_setString(6, value);
  @$pb.TagNumber(8)
  $core.bool hasMemo() => $_has(6);
  @$pb.TagNumber(8)
  void clearMemo() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
