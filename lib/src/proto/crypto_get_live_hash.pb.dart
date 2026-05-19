// This is a generated file - do not edit.
//
// Generated from crypto_get_live_hash.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'crypto_add_live_hash.pb.dart' as $3;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Request detail for a specific live hash associated to a specific account.
class CryptoGetLiveHashQuery extends $pb.GeneratedMessage {
  factory CryptoGetLiveHashQuery({
    $0.QueryHeader? header,
    $1.AccountID? accountID,
    $core.List<$core.int>? hash,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountID != null) result.accountID = accountID;
    if (hash != null) result.hash = hash;
    return result;
  }

  CryptoGetLiveHashQuery._();

  factory CryptoGetLiveHashQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetLiveHashQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetLiveHashQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetLiveHashQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetLiveHashQuery copyWith(
          void Function(CryptoGetLiveHashQuery) updates) =>
      super.copyWith((message) => updates(message as CryptoGetLiveHashQuery))
          as CryptoGetLiveHashQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetLiveHashQuery create() => CryptoGetLiveHashQuery._();
  @$core.override
  CryptoGetLiveHashQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetLiveHashQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetLiveHashQuery>(create);
  static CryptoGetLiveHashQuery? _defaultInstance;

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
  ///  An account ID.<br/>
  ///  The network SHALL return live hash information for this account,
  ///  if successful.
  @$pb.TagNumber(2)
  $1.AccountID get accountID => $_getN(1);
  @$pb.TagNumber(2)
  set accountID($1.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.AccountID ensureAccountID() => $_ensure(1);

  /// *
  ///  The specific SHA-384 live hash to inspect
  @$pb.TagNumber(3)
  $core.List<$core.int> get hash => $_getN(2);
  @$pb.TagNumber(3)
  set hash($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearHash() => $_clearField(3);
}

/// *
///  Return the full live hash associated to an account, if it is present.
///
///  > Note that to generate a state proof of the _absence_ of a live hash from
///  > an account a transaction MUST retrieve a state proof of the `Account`
///  > with its list of live hashes.
class CryptoGetLiveHashResponse extends $pb.GeneratedMessage {
  factory CryptoGetLiveHashResponse({
    $2.ResponseHeader? header,
    $3.LiveHash? liveHash,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (liveHash != null) result.liveHash = liveHash;
    return result;
  }

  CryptoGetLiveHashResponse._();

  factory CryptoGetLiveHashResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetLiveHashResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetLiveHashResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<$3.LiveHash>(2, _omitFieldNames ? '' : 'liveHash',
        protoName: 'liveHash', subBuilder: $3.LiveHash.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetLiveHashResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetLiveHashResponse copyWith(
          void Function(CryptoGetLiveHashResponse) updates) =>
      super.copyWith((message) => updates(message as CryptoGetLiveHashResponse))
          as CryptoGetLiveHashResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetLiveHashResponse create() => CryptoGetLiveHashResponse._();
  @$core.override
  CryptoGetLiveHashResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetLiveHashResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetLiveHashResponse>(create);
  static CryptoGetLiveHashResponse? _defaultInstance;

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
  ///  The requested live hash, if found.
  @$pb.TagNumber(2)
  $3.LiveHash get liveHash => $_getN(1);
  @$pb.TagNumber(2)
  set liveHash($3.LiveHash value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLiveHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearLiveHash() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.LiveHash ensureLiveHash() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
