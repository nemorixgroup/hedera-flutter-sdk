// This is a generated file - do not edit.
//
// Generated from crypto_get_account_records.proto.

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
import 'transaction_record.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Request records of all "recent" transactions for which the specified
///  account is the effective payer.
class CryptoGetAccountRecordsQuery extends $pb.GeneratedMessage {
  factory CryptoGetAccountRecordsQuery({
    $0.QueryHeader? header,
    $1.AccountID? accountID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountID != null) result.accountID = accountID;
    return result;
  }

  CryptoGetAccountRecordsQuery._();

  factory CryptoGetAccountRecordsQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetAccountRecordsQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetAccountRecordsQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetAccountRecordsQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetAccountRecordsQuery copyWith(
          void Function(CryptoGetAccountRecordsQuery) updates) =>
      super.copyWith(
              (message) => updates(message as CryptoGetAccountRecordsQuery))
          as CryptoGetAccountRecordsQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetAccountRecordsQuery create() =>
      CryptoGetAccountRecordsQuery._();
  @$core.override
  CryptoGetAccountRecordsQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetAccountRecordsQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetAccountRecordsQuery>(create);
  static CryptoGetAccountRecordsQuery? _defaultInstance;

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
  ///  An account identifier.<br/>
  ///  This identifies the account to use when filtering the
  ///  transaction record lists.
  ///  <p>
  ///  This field is REQUIRED.
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
///  Return records of all "recent" transactions for which the specified
///  account is the effective payer.
class CryptoGetAccountRecordsResponse extends $pb.GeneratedMessage {
  factory CryptoGetAccountRecordsResponse({
    $2.ResponseHeader? header,
    $1.AccountID? accountID,
    $core.Iterable<$3.TransactionRecord>? records,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountID != null) result.accountID = accountID;
    if (records != null) result.records.addAll(records);
    return result;
  }

  CryptoGetAccountRecordsResponse._();

  factory CryptoGetAccountRecordsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetAccountRecordsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetAccountRecordsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..pPM<$3.TransactionRecord>(3, _omitFieldNames ? '' : 'records',
        subBuilder: $3.TransactionRecord.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetAccountRecordsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetAccountRecordsResponse copyWith(
          void Function(CryptoGetAccountRecordsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CryptoGetAccountRecordsResponse))
          as CryptoGetAccountRecordsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetAccountRecordsResponse create() =>
      CryptoGetAccountRecordsResponse._();
  @$core.override
  CryptoGetAccountRecordsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetAccountRecordsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetAccountRecordsResponse>(
          create);
  static CryptoGetAccountRecordsResponse? _defaultInstance;

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
  ///  An account identifier.<br/>
  ///  This identifies the account used when filtering the
  ///  transaction record lists.
  ///  <p>
  ///  This field SHALL match the requested account identifier.
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
  ///  A list of records.
  ///  <p>
  ///  This list SHALL contain all available and "recent" records in which
  ///  the account identified in the `accountID` field acted as effective payer.
  @$pb.TagNumber(3)
  $pb.PbList<$3.TransactionRecord> get records => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
