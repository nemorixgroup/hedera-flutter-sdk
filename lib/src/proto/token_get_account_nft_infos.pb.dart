// This is a generated file - do not edit.
//
// Generated from token_get_account_nft_infos.proto.

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
import 'token_get_nft_info.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Deleted and unsupported.
///
///  This query is not implemented and any query of this type submitted
///  SHALL return a `NOT_SUPPORTED` response code.
class TokenGetAccountNftInfosQuery extends $pb.GeneratedMessage {
  factory TokenGetAccountNftInfosQuery({
    $0.QueryHeader? header,
    $1.AccountID? accountID,
    $fixnum.Int64? start,
    $fixnum.Int64? end,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountID != null) result.accountID = accountID;
    if (start != null) result.start = start;
    if (end != null) result.end = end;
    return result;
  }

  TokenGetAccountNftInfosQuery._();

  factory TokenGetAccountNftInfosQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenGetAccountNftInfosQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenGetAccountNftInfosQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..aInt64(3, _omitFieldNames ? '' : 'start')
    ..aInt64(4, _omitFieldNames ? '' : 'end')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetAccountNftInfosQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetAccountNftInfosQuery copyWith(
          void Function(TokenGetAccountNftInfosQuery) updates) =>
      super.copyWith(
              (message) => updates(message as TokenGetAccountNftInfosQuery))
          as TokenGetAccountNftInfosQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenGetAccountNftInfosQuery create() =>
      TokenGetAccountNftInfosQuery._();
  @$core.override
  TokenGetAccountNftInfosQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenGetAccountNftInfosQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenGetAccountNftInfosQuery>(create);
  static TokenGetAccountNftInfosQuery? _defaultInstance;

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
  ///  The Account for which information is requested
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
  ///  Specifies the start index (inclusive) of the range of NFTs to query for.
  ///  Value must be in the range [0; ownedNFTs-1]
  @$pb.TagNumber(3)
  $fixnum.Int64 get start => $_getI64(2);
  @$pb.TagNumber(3)
  set start($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearStart() => $_clearField(3);

  /// *
  ///  Specifies the end index (exclusive) of the range of NFTs to query for.
  ///  Value must be in the range (start; ownedNFTs]
  @$pb.TagNumber(4)
  $fixnum.Int64 get end => $_getI64(3);
  @$pb.TagNumber(4)
  set end($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnd() => $_clearField(4);
}

/// *
///  Deleted and unsupported.
class TokenGetAccountNftInfosResponse extends $pb.GeneratedMessage {
  factory TokenGetAccountNftInfosResponse({
    $2.ResponseHeader? header,
    $core.Iterable<$3.TokenNftInfo>? nfts,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (nfts != null) result.nfts.addAll(nfts);
    return result;
  }

  TokenGetAccountNftInfosResponse._();

  factory TokenGetAccountNftInfosResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenGetAccountNftInfosResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenGetAccountNftInfosResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..pPM<$3.TokenNftInfo>(2, _omitFieldNames ? '' : 'nfts',
        subBuilder: $3.TokenNftInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetAccountNftInfosResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetAccountNftInfosResponse copyWith(
          void Function(TokenGetAccountNftInfosResponse) updates) =>
      super.copyWith(
              (message) => updates(message as TokenGetAccountNftInfosResponse))
          as TokenGetAccountNftInfosResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenGetAccountNftInfosResponse create() =>
      TokenGetAccountNftInfosResponse._();
  @$core.override
  TokenGetAccountNftInfosResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenGetAccountNftInfosResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenGetAccountNftInfosResponse>(
          create);
  static TokenGetAccountNftInfosResponse? _defaultInstance;

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
  ///  List of NFTs associated to the account
  @$pb.TagNumber(2)
  $pb.PbList<$3.TokenNftInfo> get nfts => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
