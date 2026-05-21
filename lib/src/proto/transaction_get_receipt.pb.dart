// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from transaction_get_receipt.proto.

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
import 'transaction_receipt.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A query to retrieve a transaction receipt.
///  This query retrieves the post-consensus (final) result of a transaction.
///  A transaction receipt may not be available if queried too early
///  (less than 5-10 seconds), or too late (more than 3 minutes). If a receipt
///  is available, it contains basic transaction results. A query to a mirror
///  node (or other archival system) is required to obtain full detail for a
///  transaction, or any result after the basic receipt time period.
///
///  This query is "free". The payment field in the header MUST be empty.<br/>
///  If a receipt is not available, the response SHALL be `UNKNOWN`.<br/>
///  A transaction receipt SHALL be available after the network reaches
///  consensus for a transaction.<br/>
///  A transaction receipt SHALL NOT be available after the end of the network
///  configured "receipt period", typically three(3) minutes.
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
class TransactionGetReceiptQuery extends $pb.GeneratedMessage {
  factory TransactionGetReceiptQuery({
    $0.QueryHeader? header,
    $1.TransactionID? transactionID,
    $core.bool? includeDuplicates,
    $core.bool? includeChildReceipts,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (transactionID != null) result.transactionID = transactionID;
    if (includeDuplicates != null) result.includeDuplicates = includeDuplicates;
    if (includeChildReceipts != null)
      result.includeChildReceipts = includeChildReceipts;
    return result;
  }

  TransactionGetReceiptQuery._();

  factory TransactionGetReceiptQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionGetReceiptQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionGetReceiptQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.TransactionID>(2, _omitFieldNames ? '' : 'transactionID',
        protoName: 'transactionID', subBuilder: $1.TransactionID.create)
    ..aOB(3, _omitFieldNames ? '' : 'includeDuplicates',
        protoName: 'includeDuplicates')
    ..aOB(4, _omitFieldNames ? '' : 'includeChildReceipts')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetReceiptQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetReceiptQuery copyWith(
          void Function(TransactionGetReceiptQuery) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionGetReceiptQuery))
          as TransactionGetReceiptQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionGetReceiptQuery create() => TransactionGetReceiptQuery._();
  @$core.override
  TransactionGetReceiptQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionGetReceiptQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionGetReceiptQuery>(create);
  static TransactionGetReceiptQuery? _defaultInstance;

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
  ///  If set, every transaction receipt within the receipt period that
  ///  matches the requested transaction identifier SHALL be returned.<br/>
  ///  If not set, duplicate transactions SHALL NOT be returned.<br/>
  ///  If not set, only the receipt for the first matching transaction to
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
  ///  A flag to request "child" receipts.
  ///  <p>
  ///  If set, the response SHALL include receipts for each child transaction
  ///  executed as part of the requested parent transaction.<br/>
  ///  If not set, the response SHALL NOT include any receipts for child
  ///  transactions.
  @$pb.TagNumber(4)
  $core.bool get includeChildReceipts => $_getBF(3);
  @$pb.TagNumber(4)
  set includeChildReceipts($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIncludeChildReceipts() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncludeChildReceipts() => $_clearField(4);
}

/// *
///  Response message for a `getTransactionReceipts` query.
///
///  The `receipt` field SHALL return the receipt for the "first" transaction
///  that matches the transaction identifier requested.<br/>
///  If receipts for duplicate transactions are requested, those duplicate
///  receipts SHALL be present in the `duplicateTransactionReceipts` list.<br/>
///  If receipts for child transactions are requested, those child receipts
///  SHALL be present in the `child_transaction_receipts` list.<br/>
///  A state proof SHALL NOT be provided for this response; transaction receipts
///  are not retained in network state.
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
class TransactionGetReceiptResponse extends $pb.GeneratedMessage {
  factory TransactionGetReceiptResponse({
    $2.ResponseHeader? header,
    $3.TransactionReceipt? receipt,
    $core.Iterable<$3.TransactionReceipt>? duplicateTransactionReceipts,
    $core.Iterable<$3.TransactionReceipt>? childTransactionReceipts,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (receipt != null) result.receipt = receipt;
    if (duplicateTransactionReceipts != null)
      result.duplicateTransactionReceipts.addAll(duplicateTransactionReceipts);
    if (childTransactionReceipts != null)
      result.childTransactionReceipts.addAll(childTransactionReceipts);
    return result;
  }

  TransactionGetReceiptResponse._();

  factory TransactionGetReceiptResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionGetReceiptResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionGetReceiptResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<$3.TransactionReceipt>(2, _omitFieldNames ? '' : 'receipt',
        subBuilder: $3.TransactionReceipt.create)
    ..pPM<$3.TransactionReceipt>(
        4, _omitFieldNames ? '' : 'duplicateTransactionReceipts',
        protoName: 'duplicateTransactionReceipts',
        subBuilder: $3.TransactionReceipt.create)
    ..pPM<$3.TransactionReceipt>(
        5, _omitFieldNames ? '' : 'childTransactionReceipts',
        subBuilder: $3.TransactionReceipt.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetReceiptResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionGetReceiptResponse copyWith(
          void Function(TransactionGetReceiptResponse) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionGetReceiptResponse))
          as TransactionGetReceiptResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionGetReceiptResponse create() =>
      TransactionGetReceiptResponse._();
  @$core.override
  TransactionGetReceiptResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionGetReceiptResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionGetReceiptResponse>(create);
  static TransactionGetReceiptResponse? _defaultInstance;

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
  ///  A transaction receipt.
  ///  <p>
  ///  This SHALL be the receipt for the "first" transaction that matches
  ///  the transaction identifier requested.<br/>
  ///  If the identified transaction has not reached consensus, this receipt
  ///  SHALL have a `status` of `UNKNOWN`.<br/>
  ///  If the identified transaction reached consensus prior to the current
  ///  configured receipt period (typically the last 180 seconds), this receipt
  ///  SHALL have a `status` of `UNKNOWN`.
  @$pb.TagNumber(2)
  $3.TransactionReceipt get receipt => $_getN(1);
  @$pb.TagNumber(2)
  set receipt($3.TransactionReceipt value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReceipt() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceipt() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.TransactionReceipt ensureReceipt() => $_ensure(1);

  /// *
  ///  A list of duplicate transaction receipts.
  ///  <p>
  ///  If the request set the `includeDuplicates` flat, this list SHALL
  ///  include the receipts for each duplicate transaction associated to the
  ///  requested transaction identifier.
  ///  If the request did not set the `includeDuplicates` flag, this list
  ///  SHALL be empty.<br/>
  ///  If the `receipt` status is `UNKNOWN`, this list SHALL be empty.<br/>
  ///  This list SHALL be in order by consensus timestamp.
  @$pb.TagNumber(4)
  $pb.PbList<$3.TransactionReceipt> get duplicateTransactionReceipts =>
      $_getList(2);

  /// *
  ///  A list of receipts for all child transactions spawned by the requested
  ///  transaction.
  ///  <p>
  ///  If the request set the `include_child_receipts` flag, this list SHALL
  ///  include receipts for each child transaction executed as part of the
  ///  requested parent transaction.<br/>
  ///  If the request did not set the `include_child_receipts` flag, this
  ///  list SHALL be empty. <br/>
  ///  If the parent transaction did not initiate any child transactions
  ///  this list SHALL be empty.<br/>
  ///  If the `receipt` status is `UNKNOWN`, this list SHALL be empty.<br/>
  ///  This list SHALL be in order by consensus timestamp.
  @$pb.TagNumber(5)
  $pb.PbList<$3.TransactionReceipt> get childTransactionReceipts =>
      $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
