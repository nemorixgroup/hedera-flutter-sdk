// This is a generated file - do not edit.
//
// Generated from transaction_get_fast_record.proto.

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
///  Get the tx record of a transaction, given its transaction ID.
///
///  Once a transaction reaches consensus, then information about whether it
///  succeeded or failed will be available until the end of the receipt period.
///  Before and after the receipt period, and for a transaction that was never
///  submitted, the receipt is unknown.<br/>
///  This query is free (the payment field is left empty).
@$core.Deprecated('This message is deprecated')
class TransactionGetFastRecordQuery extends $pb.GeneratedMessage {
  factory TransactionGetFastRecordQuery({
    $0.QueryHeader? header,
    $1.TransactionID? transactionID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (transactionID != null) result.transactionID = transactionID;
    return result;
  }

  TransactionGetFastRecordQuery._();

  factory TransactionGetFastRecordQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionGetFastRecordQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionGetFastRecordQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.TransactionID>(2, _omitFieldNames ? '' : 'transactionID',
        protoName: 'transactionID', subBuilder: $1.TransactionID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetFastRecordQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetFastRecordQuery copyWith(
          void Function(TransactionGetFastRecordQuery) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionGetFastRecordQuery))
          as TransactionGetFastRecordQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionGetFastRecordQuery create() =>
      TransactionGetFastRecordQuery._();
  @$core.override
  TransactionGetFastRecordQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionGetFastRecordQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionGetFastRecordQuery>(create);
  static TransactionGetFastRecordQuery? _defaultInstance;

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
  ///  The ID of the transaction for which the record is requested.
  @$pb.TagNumber(2)
  $1.TransactionID get transactionID => $_getN(1);
  @$pb.TagNumber(2)
  set transactionID($1.TransactionID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTransactionID() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.TransactionID ensureTransactionID() => $_ensure(1);
}

/// *
///  Response when the client sends the node TransactionGetFastRecordQuery.
///  If it created a new entity (account, file, or smart contract instance) then
///  one of the three ID fields will be filled in with the ID of the new entity.
///  Sometimes a single transaction will create more than one new entity, such
///  as when a new contract instance is created, and this also creates the new
///  account that it owned by that instance.
@$core.Deprecated('This message is deprecated')
class TransactionGetFastRecordResponse extends $pb.GeneratedMessage {
  factory TransactionGetFastRecordResponse({
    $2.ResponseHeader? header,
    $3.TransactionRecord? transactionRecord,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (transactionRecord != null) result.transactionRecord = transactionRecord;
    return result;
  }

  TransactionGetFastRecordResponse._();

  factory TransactionGetFastRecordResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionGetFastRecordResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionGetFastRecordResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<$3.TransactionRecord>(2, _omitFieldNames ? '' : 'transactionRecord',
        protoName: 'transactionRecord', subBuilder: $3.TransactionRecord.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetFastRecordResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetFastRecordResponse copyWith(
          void Function(TransactionGetFastRecordResponse) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionGetFastRecordResponse))
          as TransactionGetFastRecordResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionGetFastRecordResponse create() =>
      TransactionGetFastRecordResponse._();
  @$core.override
  TransactionGetFastRecordResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionGetFastRecordResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionGetFastRecordResponse>(
          create);
  static TransactionGetFastRecordResponse? _defaultInstance;

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
  ///  The requested transaction records
  @$pb.TagNumber(2)
  $3.TransactionRecord get transactionRecord => $_getN(1);
  @$pb.TagNumber(2)
  set transactionRecord($3.TransactionRecord value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTransactionRecord() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionRecord() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.TransactionRecord ensureTransactionRecord() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
