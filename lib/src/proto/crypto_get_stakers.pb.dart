// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from crypto_get_stakers.proto.

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

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Get all the accounts that are proxy staking to this account. For each of
///  them, give the amount currently staked. This was never implemented.
@$core.Deprecated('This message is deprecated')
class CryptoGetStakersQuery extends $pb.GeneratedMessage {
  factory CryptoGetStakersQuery({
    $0.QueryHeader? header,
    $1.AccountID? accountID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountID != null) result.accountID = accountID;
    return result;
  }

  CryptoGetStakersQuery._();

  factory CryptoGetStakersQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetStakersQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetStakersQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetStakersQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetStakersQuery copyWith(
          void Function(CryptoGetStakersQuery) updates) =>
      super.copyWith((message) => updates(message as CryptoGetStakersQuery))
          as CryptoGetStakersQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetStakersQuery create() => CryptoGetStakersQuery._();
  @$core.override
  CryptoGetStakersQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetStakersQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetStakersQuery>(create);
  static CryptoGetStakersQuery? _defaultInstance;

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
  ///  The Account ID for which the records should be retrieved
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
}

/// *
///  information about a single account that is proxy staking
@$core.Deprecated('This message is deprecated')
class ProxyStaker extends $pb.GeneratedMessage {
  factory ProxyStaker({
    $1.AccountID? accountID,
    $fixnum.Int64? amount,
  }) {
    final result = create();
    if (accountID != null) result.accountID = accountID;
    if (amount != null) result.amount = amount;
    return result;
  }

  ProxyStaker._();

  factory ProxyStaker.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProxyStaker.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProxyStaker',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.AccountID>(1, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..aInt64(2, _omitFieldNames ? '' : 'amount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProxyStaker clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProxyStaker copyWith(void Function(ProxyStaker) updates) =>
      super.copyWith((message) => updates(message as ProxyStaker))
          as ProxyStaker;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProxyStaker create() => ProxyStaker._();
  @$core.override
  ProxyStaker createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProxyStaker getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProxyStaker>(create);
  static ProxyStaker? _defaultInstance;

  /// *
  ///  The Account ID that is proxy staking
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
  ///  The number of hbars that are currently proxy staked
  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => $_clearField(2);
}

/// *
///  All of the accounts proxy staking to a given account, and the amounts proxy
///  staked
@$core.Deprecated('This message is deprecated')
class AllProxyStakers extends $pb.GeneratedMessage {
  factory AllProxyStakers({
    $1.AccountID? accountID,
    $core.Iterable<ProxyStaker>? proxyStaker,
  }) {
    final result = create();
    if (accountID != null) result.accountID = accountID;
    if (proxyStaker != null) result.proxyStaker.addAll(proxyStaker);
    return result;
  }

  AllProxyStakers._();

  factory AllProxyStakers.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AllProxyStakers.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AllProxyStakers',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.AccountID>(1, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..pPM<ProxyStaker>(2, _omitFieldNames ? '' : 'proxyStaker',
        protoName: 'proxyStaker', subBuilder: ProxyStaker.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AllProxyStakers clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AllProxyStakers copyWith(void Function(AllProxyStakers) updates) =>
      super.copyWith((message) => updates(message as AllProxyStakers))
          as AllProxyStakers;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllProxyStakers create() => AllProxyStakers._();
  @$core.override
  AllProxyStakers createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AllProxyStakers getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AllProxyStakers>(create);
  static AllProxyStakers? _defaultInstance;

  /// *
  ///  The Account ID that is being proxy staked to
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
  ///  Each of the proxy staking accounts, and the amount they are proxy staking
  @$pb.TagNumber(2)
  $pb.PbList<ProxyStaker> get proxyStaker => $_getList(1);
}

/// *
///  Response when the client sends the node CryptoGetStakersQuery
@$core.Deprecated('This message is deprecated')
class CryptoGetStakersResponse extends $pb.GeneratedMessage {
  factory CryptoGetStakersResponse({
    $2.ResponseHeader? header,
    AllProxyStakers? stakers,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (stakers != null) result.stakers = stakers;
    return result;
  }

  CryptoGetStakersResponse._();

  factory CryptoGetStakersResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetStakersResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetStakersResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<AllProxyStakers>(3, _omitFieldNames ? '' : 'stakers',
        subBuilder: AllProxyStakers.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetStakersResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetStakersResponse copyWith(
          void Function(CryptoGetStakersResponse) updates) =>
      super.copyWith((message) => updates(message as CryptoGetStakersResponse))
          as CryptoGetStakersResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetStakersResponse create() => CryptoGetStakersResponse._();
  @$core.override
  CryptoGetStakersResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetStakersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetStakersResponse>(create);
  static CryptoGetStakersResponse? _defaultInstance;

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
  ///  List of accounts proxy staking to this account, and the amount each is
  ///  currently proxy staking
  @$pb.TagNumber(3)
  AllProxyStakers get stakers => $_getN(1);
  @$pb.TagNumber(3)
  set stakers(AllProxyStakers value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStakers() => $_has(1);
  @$pb.TagNumber(3)
  void clearStakers() => $_clearField(3);
  @$pb.TagNumber(3)
  AllProxyStakers ensureStakers() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
