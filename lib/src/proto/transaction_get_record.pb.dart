// This is a generated file - do not edit.
//
// Generated from transaction_get_record.proto.

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
///  Request for a `TransactionGetRecord` (a.k.a. `getTxRecordByTxID`) query.
///  <p>
///  A transaction record SHALL be available after the network reaches
///  consensus and completes execution for a transaction.<br/>
///  A transaction record SHALL NOT be available after the end of the network
///  configured "record cache duration".
///
///  <dl>
///    <dt>What is the "first" transaction?</dt>
///    <dd>The "first" transaction SHALL be the the transaction with
///        the earliest consensus time and a status that is neither
///        `INVALID_NODE_ACCOUNT` nor `INVALID_PAYER_SIGNATURE`.<br/>
///        If no transaction is found meeting this status criteria, the
///        "first" transaction SHALL be the transaction with the earliest
///        consensus time.</dd>
///   <dt>What is a "child" transaction?</dt>
///   <dd>A "child" transaction is any transaction created in the process of
///       completing another transaction. These are most common with a smart
///       contract call, where a call to a contract may initiate one or more
///       additional transactions to complete a complex process.</dd>
///  </dl>
class TransactionGetRecordQuery extends $pb.GeneratedMessage {
  factory TransactionGetRecordQuery({
    $0.QueryHeader? header,
    $1.TransactionID? transactionID,
    $core.bool? includeDuplicates,
    $core.bool? includeChildRecords,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (transactionID != null) result.transactionID = transactionID;
    if (includeDuplicates != null) result.includeDuplicates = includeDuplicates;
    if (includeChildRecords != null)
      result.includeChildRecords = includeChildRecords;
    return result;
  }

  TransactionGetRecordQuery._();

  factory TransactionGetRecordQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionGetRecordQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionGetRecordQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.TransactionID>(2, _omitFieldNames ? '' : 'transactionID',
        protoName: 'transactionID', subBuilder: $1.TransactionID.create)
    ..aOB(3, _omitFieldNames ? '' : 'includeDuplicates',
        protoName: 'includeDuplicates')
    ..aOB(4, _omitFieldNames ? '' : 'includeChildRecords')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetRecordQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetRecordQuery copyWith(
          void Function(TransactionGetRecordQuery) updates) =>
      super.copyWith((message) => updates(message as TransactionGetRecordQuery))
          as TransactionGetRecordQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionGetRecordQuery create() => TransactionGetRecordQuery._();
  @$core.override
  TransactionGetRecordQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionGetRecordQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionGetRecordQuery>(create);
  static TransactionGetRecordQuery? _defaultInstance;

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
  ///  A transaction identifier.
  ///  <p>
  ///  This MUST contain the full identifier, as submitted, for the
  ///  transaction to query.
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

  /// *
  ///  A flag to request duplicates.
  ///  <p>
  ///  If set, every transaction record within the record cache duration that
  ///  matches the requested transaction identifier SHALL be returned.<br/>
  ///  If not set, duplicate transactions SHALL NOT be returned.<br/>
  ///  If not set, only the record for the first matching transaction to
  ///  reach consensus SHALL be returned.
  @$pb.TagNumber(3)
  $core.bool get includeDuplicates => $_getBF(2);
  @$pb.TagNumber(3)
  set includeDuplicates($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIncludeDuplicates() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncludeDuplicates() => $_clearField(3);

  /// *
  ///  A flag to request "child" records.
  ///  <p>
  ///  If set, the response SHALL include records for each child transaction
  ///  executed as part of the requested parent transaction.<br/>
  ///  If not set, the response SHALL NOT include any records for child
  ///  transactions.
  @$pb.TagNumber(4)
  $core.bool get includeChildRecords => $_getBF(3);
  @$pb.TagNumber(4)
  set includeChildRecords($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIncludeChildRecords() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncludeChildRecords() => $_clearField(4);
}

/// *
///  Response message for a `getTxRecordByTxID` query.
///
///  The `transactionRecord` field SHALL return the record for the "first"
///  transaction that matches the transaction identifier requested.<br/>
///  If records for duplicate transactions are requested, those duplicate
///  records SHALL be present in the `duplicateTransactionReceipts` list.<br/>
///  If records for child transactions are requested, those child records SHALL
///  be present in the `child_transaction_records` list.<br/>
///  A state proof MAY be provided for this response; provided the record is
///  still available from the consensus nodes.
///
///  <dl>
///    <dt>What is the "first" transaction?</dt>
///    <dd>The "first" transaction receipt SHALL be the receipt for the
///        first transaction with status that is neither
///        `INVALID_NODE_ACCOUNT` nor `INVALID_PAYER_SIGNATURE`.<br/>
///        If no transaction is found meeting the status criteria, the
///        "first" transaction SHALL be the first transaction by
///        consensus time.</dd>
///   <dt>What is a "child" transaction?</dt>
///   <dd>A "child" transaction is any transaction created in the process of
///       completing another transaction. These are most common with a smart
///       contract call, where a call to a contract may initiate one or more
///       additional transactions to complete a complex process.</dd>
///  </dl>
class TransactionGetRecordResponse extends $pb.GeneratedMessage {
  factory TransactionGetRecordResponse({
    $2.ResponseHeader? header,
    $3.TransactionRecord? transactionRecord,
    $core.Iterable<$3.TransactionRecord>? duplicateTransactionRecords,
    $core.Iterable<$3.TransactionRecord>? childTransactionRecords,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (transactionRecord != null) result.transactionRecord = transactionRecord;
    if (duplicateTransactionRecords != null)
      result.duplicateTransactionRecords.addAll(duplicateTransactionRecords);
    if (childTransactionRecords != null)
      result.childTransactionRecords.addAll(childTransactionRecords);
    return result;
  }

  TransactionGetRecordResponse._();

  factory TransactionGetRecordResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionGetRecordResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionGetRecordResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<$3.TransactionRecord>(3, _omitFieldNames ? '' : 'transactionRecord',
        protoName: 'transactionRecord', subBuilder: $3.TransactionRecord.create)
    ..pPM<$3.TransactionRecord>(
        4, _omitFieldNames ? '' : 'duplicateTransactionRecords',
        protoName: 'duplicateTransactionRecords',
        subBuilder: $3.TransactionRecord.create)
    ..pPM<$3.TransactionRecord>(
        5, _omitFieldNames ? '' : 'childTransactionRecords',
        subBuilder: $3.TransactionRecord.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetRecordResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetRecordResponse copyWith(
          void Function(TransactionGetRecordResponse) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionGetRecordResponse))
          as TransactionGetRecordResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionGetRecordResponse create() =>
      TransactionGetRecordResponse._();
  @$core.override
  TransactionGetRecordResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionGetRecordResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionGetRecordResponse>(create);
  static TransactionGetRecordResponse? _defaultInstance;

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
  ///  A transaction record.
  ///  <p>
  ///  This SHALL be the record for the "first" transaction that matches
  ///  the transaction identifier requested.<br/>
  ///  If the identified transaction has not reached consensus, this
  ///  record SHALL have a `status` of `UNKNOWN`.<br/>
  ///  If the identified transaction reached consensus prior to the
  ///  current configured record cache duration, this record SHALL
  ///  have a `status` of `UNKNOWN`.
  @$pb.TagNumber(3)
  $3.TransactionRecord get transactionRecord => $_getN(1);
  @$pb.TagNumber(3)
  set transactionRecord($3.TransactionRecord value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTransactionRecord() => $_has(1);
  @$pb.TagNumber(3)
  void clearTransactionRecord() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.TransactionRecord ensureTransactionRecord() => $_ensure(1);

  /// *
  ///  A list of duplicate transaction records.
  ///  <p>
  ///  If the request set the `includeDuplicates` flat, this list SHALL
  ///  include the records for each duplicate transaction associated to the
  ///  requested transaction identifier.
  ///  If the request did not set the `includeDuplicates` flag, this list
  ///  SHALL be empty.<br/>
  ///  If the `transactionRecord` status is `UNKNOWN`, this list
  ///  SHALL be empty.<br/>
  ///  This list SHALL be in order by consensus timestamp.
  @$pb.TagNumber(4)
  $pb.PbList<$3.TransactionRecord> get duplicateTransactionRecords =>
      $_getList(2);

  /// *
  ///  A list of records for all child transactions spawned by the requested
  ///  transaction.
  ///  <p>
  ///  If the request set the `include_child_records` flag, this list SHALL
  ///  include records for each child transaction executed as part of the
  ///  requested parent transaction.<br/>
  ///  If the request did not set the `include_child_records` flag, this
  ///  list SHALL be empty. <br/>
  ///  If the parent transaction did not initiate any child transactions
  ///  this list SHALL be empty.<br/>
  ///  If the `transactionRecord` status is `UNKNOWN`, this list
  ///  SHALL be empty.<br/>
  ///  This list SHALL be in order by consensus timestamp.
  @$pb.TagNumber(5)
  $pb.PbList<$3.TransactionRecord> get childTransactionRecords => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
