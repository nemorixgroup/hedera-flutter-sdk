// This is a generated file - do not edit.
//
// Generated from token_get_nft_info.proto.

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
import 'response_header.pb.dart' as $3;
import 'timestamp.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Applicable only to tokens of type NON_FUNGIBLE_UNIQUE. Gets info on a NFT for a given TokenID (of
///  type NON_FUNGIBLE_UNIQUE) and serial number
class TokenGetNftInfoQuery extends $pb.GeneratedMessage {
  factory TokenGetNftInfoQuery({
    $0.QueryHeader? header,
    $1.NftID? nftID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (nftID != null) result.nftID = nftID;
    return result;
  }

  TokenGetNftInfoQuery._();

  factory TokenGetNftInfoQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenGetNftInfoQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenGetNftInfoQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.NftID>(2, _omitFieldNames ? '' : 'nftID',
        protoName: 'nftID', subBuilder: $1.NftID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetNftInfoQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetNftInfoQuery copyWith(void Function(TokenGetNftInfoQuery) updates) =>
      super.copyWith((message) => updates(message as TokenGetNftInfoQuery))
          as TokenGetNftInfoQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenGetNftInfoQuery create() => TokenGetNftInfoQuery._();
  @$core.override
  TokenGetNftInfoQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenGetNftInfoQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenGetNftInfoQuery>(create);
  static TokenGetNftInfoQuery? _defaultInstance;

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
  ///  A non-fungible/unique token (NFT) identifier.
  ///  <p>
  ///  This SHALL identify the NFT to query.<br/>
  ///  The identified NFT MUST exist, and MUST NOT be deleted.
  @$pb.TagNumber(2)
  $1.NftID get nftID => $_getN(1);
  @$pb.TagNumber(2)
  set nftID($1.NftID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNftID() => $_has(1);
  @$pb.TagNumber(2)
  void clearNftID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.NftID ensureNftID() => $_ensure(1);
}

/// *
///  Information for one non-fungible/unique token (NFT).
class TokenNftInfo extends $pb.GeneratedMessage {
  factory TokenNftInfo({
    $1.NftID? nftID,
    $1.AccountID? accountID,
    $2.Timestamp? creationTime,
    $core.List<$core.int>? metadata,
    $core.List<$core.int>? ledgerId,
    $1.AccountID? spenderId,
  }) {
    final result = create();
    if (nftID != null) result.nftID = nftID;
    if (accountID != null) result.accountID = accountID;
    if (creationTime != null) result.creationTime = creationTime;
    if (metadata != null) result.metadata = metadata;
    if (ledgerId != null) result.ledgerId = ledgerId;
    if (spenderId != null) result.spenderId = spenderId;
    return result;
  }

  TokenNftInfo._();

  factory TokenNftInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenNftInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenNftInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.NftID>(1, _omitFieldNames ? '' : 'nftID',
        protoName: 'nftID', subBuilder: $1.NftID.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'creationTime',
        protoName: 'creationTime', subBuilder: $2.Timestamp.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'ledgerId', $pb.PbFieldType.OY)
    ..aOM<$1.AccountID>(6, _omitFieldNames ? '' : 'spenderId',
        subBuilder: $1.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenNftInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenNftInfo copyWith(void Function(TokenNftInfo) updates) =>
      super.copyWith((message) => updates(message as TokenNftInfo))
          as TokenNftInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenNftInfo create() => TokenNftInfo._();
  @$core.override
  TokenNftInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenNftInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenNftInfo>(create);
  static TokenNftInfo? _defaultInstance;

  /// *
  ///  A non-fungible/unique token (NFT) identifier.
  ///  <p>
  ///  This SHALL match the NFT requested.<br/>
  @$pb.TagNumber(1)
  $1.NftID get nftID => $_getN(0);
  @$pb.TagNumber(1)
  set nftID($1.NftID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNftID() => $_has(0);
  @$pb.TagNumber(1)
  void clearNftID() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.NftID ensureNftID() => $_ensure(0);

  /// *
  ///  The current owner of the NFT
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
  ///  The effective consensus timestamp at which the NFT was minted
  @$pb.TagNumber(3)
  $2.Timestamp get creationTime => $_getN(2);
  @$pb.TagNumber(3)
  set creationTime($2.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCreationTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreationTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureCreationTime() => $_ensure(2);

  /// *
  ///  Represents the unique metadata of the NFT
  @$pb.TagNumber(4)
  $core.List<$core.int> get metadata => $_getN(3);
  @$pb.TagNumber(4)
  set metadata($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMetadata() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadata() => $_clearField(4);

  /// *
  ///  The ledger ID of the network that generated this response.
  ///  <p>
  ///  This value SHALL identify the distributed ledger that responded to
  ///  this query.
  @$pb.TagNumber(5)
  $core.List<$core.int> get ledgerId => $_getN(4);
  @$pb.TagNumber(5)
  set ledgerId($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLedgerId() => $_has(4);
  @$pb.TagNumber(5)
  void clearLedgerId() => $_clearField(5);

  /// *
  ///  If an allowance is granted for the NFT, its corresponding spender account
  @$pb.TagNumber(6)
  $1.AccountID get spenderId => $_getN(5);
  @$pb.TagNumber(6)
  set spenderId($1.AccountID value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSpenderId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpenderId() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.AccountID ensureSpenderId() => $_ensure(5);
}

/// *
///  UNDOCUMENTED
class TokenGetNftInfoResponse extends $pb.GeneratedMessage {
  factory TokenGetNftInfoResponse({
    $3.ResponseHeader? header,
    TokenNftInfo? nft,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (nft != null) result.nft = nft;
    return result;
  }

  TokenGetNftInfoResponse._();

  factory TokenGetNftInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenGetNftInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenGetNftInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$3.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $3.ResponseHeader.create)
    ..aOM<TokenNftInfo>(2, _omitFieldNames ? '' : 'nft',
        subBuilder: TokenNftInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetNftInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGetNftInfoResponse copyWith(
          void Function(TokenGetNftInfoResponse) updates) =>
      super.copyWith((message) => updates(message as TokenGetNftInfoResponse))
          as TokenGetNftInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenGetNftInfoResponse create() => TokenGetNftInfoResponse._();
  @$core.override
  TokenGetNftInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenGetNftInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenGetNftInfoResponse>(create);
  static TokenGetNftInfoResponse? _defaultInstance;

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
  ///  The information about this NFT
  @$pb.TagNumber(2)
  TokenNftInfo get nft => $_getN(1);
  @$pb.TagNumber(2)
  set nft(TokenNftInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNft() => $_has(1);
  @$pb.TagNumber(2)
  void clearNft() => $_clearField(2);
  @$pb.TagNumber(2)
  TokenNftInfo ensureNft() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
