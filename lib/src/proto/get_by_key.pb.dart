// This is a generated file - do not edit.
//
// Generated from get_by_key.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'crypto_add_live_hash.pb.dart' as $2;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Query all accounts, claims, files, and smart contract instances whose
///  associated keys include the given Key.
///
///  > This query is no longer supported.
@$core.Deprecated('This message is deprecated')
class GetByKeyQuery extends $pb.GeneratedMessage {
  factory GetByKeyQuery({
    $0.QueryHeader? header,
    $1.Key? key,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (key != null) result.key = key;
    return result;
  }

  GetByKeyQuery._();

  factory GetByKeyQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetByKeyQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetByKeyQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.Key>(2, _omitFieldNames ? '' : 'key', subBuilder: $1.Key.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetByKeyQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetByKeyQuery copyWith(void Function(GetByKeyQuery) updates) =>
      super.copyWith((message) => updates(message as GetByKeyQuery))
          as GetByKeyQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByKeyQuery create() => GetByKeyQuery._();
  @$core.override
  GetByKeyQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetByKeyQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetByKeyQuery>(create);
  static GetByKeyQuery? _defaultInstance;

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
  ///  The key to search for. It MUST NOT contain a contractID nor
  ///  a ThresholdKey.
  @$pb.TagNumber(2)
  $1.Key get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($1.Key value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Key ensureKey() => $_ensure(1);
}

enum EntityID_Entity { accountID, liveHash, fileID, contractID, notSet }

/// *
///  The ID for a single entity (account, livehash, file, or smart contract)
///
///  > The query that defines this message is no longer supported.
@$core.Deprecated('This message is deprecated')
class EntityID extends $pb.GeneratedMessage {
  factory EntityID({
    $1.AccountID? accountID,
    $2.LiveHash? liveHash,
    $1.FileID? fileID,
    $1.ContractID? contractID,
  }) {
    final result = create();
    if (accountID != null) result.accountID = accountID;
    if (liveHash != null) result.liveHash = liveHash;
    if (fileID != null) result.fileID = fileID;
    if (contractID != null) result.contractID = contractID;
    return result;
  }

  EntityID._();

  factory EntityID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EntityID_Entity> _EntityID_EntityByTag = {
    1: EntityID_Entity.accountID,
    2: EntityID_Entity.liveHash,
    3: EntityID_Entity.fileID,
    4: EntityID_Entity.contractID,
    0: EntityID_Entity.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<$1.AccountID>(1, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..aOM<$2.LiveHash>(2, _omitFieldNames ? '' : 'liveHash',
        protoName: 'liveHash', subBuilder: $2.LiveHash.create)
    ..aOM<$1.FileID>(3, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $1.FileID.create)
    ..aOM<$1.ContractID>(4, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $1.ContractID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityID copyWith(void Function(EntityID) updates) =>
      super.copyWith((message) => updates(message as EntityID)) as EntityID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityID create() => EntityID._();
  @$core.override
  EntityID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntityID>(create);
  static EntityID? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  EntityID_Entity whichEntity() => _EntityID_EntityByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearEntity() => $_clearField($_whichOneof(0));

  /// *
  ///  The Account ID for the cryptocurrency account
  @$pb.TagNumber(1)
  $1.AccountID get accountID => $_getN(0);
  @$pb.TagNumber(1)
  set accountID($1.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountID() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountID() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.AccountID ensureAccountID() => $_ensure(0);

  /// *
  ///  A uniquely identifying livehash of an account
  @$pb.TagNumber(2)
  $2.LiveHash get liveHash => $_getN(1);
  @$pb.TagNumber(2)
  set liveHash($2.LiveHash value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLiveHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearLiveHash() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.LiveHash ensureLiveHash() => $_ensure(1);

  /// *
  ///  The file ID of the file
  @$pb.TagNumber(3)
  $1.FileID get fileID => $_getN(2);
  @$pb.TagNumber(3)
  set fileID($1.FileID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFileID() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileID() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.FileID ensureFileID() => $_ensure(2);

  /// *
  ///  The smart contract ID that identifies instance
  @$pb.TagNumber(4)
  $1.ContractID get contractID => $_getN(3);
  @$pb.TagNumber(4)
  set contractID($1.ContractID value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasContractID() => $_has(3);
  @$pb.TagNumber(4)
  void clearContractID() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.ContractID ensureContractID() => $_ensure(3);
}

/// *
///  Response when the client sends the node GetByKeyQuery
///
///  > This query is no longer supported.
@$core.Deprecated('This message is deprecated')
class GetByKeyResponse extends $pb.GeneratedMessage {
  factory GetByKeyResponse({
    $3.ResponseHeader? header,
    $core.Iterable<EntityID>? entities,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (entities != null) result.entities.addAll(entities);
    return result;
  }

  GetByKeyResponse._();

  factory GetByKeyResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetByKeyResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetByKeyResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$3.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $3.ResponseHeader.create)
    ..pPM<EntityID>(2, _omitFieldNames ? '' : 'entities',
        subBuilder: EntityID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetByKeyResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetByKeyResponse copyWith(void Function(GetByKeyResponse) updates) =>
      super.copyWith((message) => updates(message as GetByKeyResponse))
          as GetByKeyResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByKeyResponse create() => GetByKeyResponse._();
  @$core.override
  GetByKeyResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetByKeyResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetByKeyResponse>(create);
  static GetByKeyResponse? _defaultInstance;

  /// *
  ///  The standard response information for queries.<br/>
  ///  This includes the values requested in the `QueryHeader`
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $3.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($3.ResponseHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.ResponseHeader ensureHeader() => $_ensure(0);

  /// *
  ///  The list of entities that include this public key in their
  ///  associated Key list
  @$pb.TagNumber(2)
  $pb.PbList<EntityID> get entities => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
