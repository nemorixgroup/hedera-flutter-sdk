// This is a generated file - do not edit.
//
// Generated from network_get_execution_time.proto.

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
///  Retrieve the time, in nanoseconds, spent in direct processing for one
///  or more recent transactions.
///
///  For each transaction identifier provided, if that transaction is
///  sufficiently recent (that is, it is within the range of the configuration
///  value `stats.executionTimesToTrack`), the node SHALL return the time, in
///  nanoseconds, spent to directly process that transaction.<br/>
///  This time will generally correspond to the time spent in a `handle` call
///  within the workflow.
///
///  Note that because each node processes every transaction for the Hedera
///  network, this query MAY be sent to any node, and results MAY be different
///  between different nodes.
@$core.Deprecated('This message is deprecated')
class NetworkGetExecutionTimeQuery extends $pb.GeneratedMessage {
  factory NetworkGetExecutionTimeQuery({
    $0.QueryHeader? header,
    $core.Iterable<$1.TransactionID>? transactionIds,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (transactionIds != null) result.transactionIds.addAll(transactionIds);
    return result;
  }

  NetworkGetExecutionTimeQuery._();

  factory NetworkGetExecutionTimeQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NetworkGetExecutionTimeQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NetworkGetExecutionTimeQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..pPM<$1.TransactionID>(2, _omitFieldNames ? '' : 'transactionIds',
        subBuilder: $1.TransactionID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkGetExecutionTimeQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkGetExecutionTimeQuery copyWith(
          void Function(NetworkGetExecutionTimeQuery) updates) =>
      super.copyWith(
              (message) => updates(message as NetworkGetExecutionTimeQuery))
          as NetworkGetExecutionTimeQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkGetExecutionTimeQuery create() =>
      NetworkGetExecutionTimeQuery._();
  @$core.override
  NetworkGetExecutionTimeQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NetworkGetExecutionTimeQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NetworkGetExecutionTimeQuery>(create);
  static NetworkGetExecutionTimeQuery? _defaultInstance;

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
  ///  A list of transaction identifiers to query.
  ///  <p>
  ///  All of the queried transaction identifiers MUST have execution time
  ///  available. If any identifier does not have available execution time,
  ///  the query SHALL fail with an `INVALID_TRANSACTION_ID` response.
  @$pb.TagNumber(2)
  $pb.PbList<$1.TransactionID> get transactionIds => $_getList(1);
}

/// *
///  A response to a `networkGetExecutionTime` query.
@$core.Deprecated('This message is deprecated')
class NetworkGetExecutionTimeResponse extends $pb.GeneratedMessage {
  factory NetworkGetExecutionTimeResponse({
    $2.ResponseHeader? header,
    $core.Iterable<$fixnum.Int64>? executionTimes,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (executionTimes != null) result.executionTimes.addAll(executionTimes);
    return result;
  }

  NetworkGetExecutionTimeResponse._();

  factory NetworkGetExecutionTimeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NetworkGetExecutionTimeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NetworkGetExecutionTimeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'executionTimes', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkGetExecutionTimeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkGetExecutionTimeResponse copyWith(
          void Function(NetworkGetExecutionTimeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as NetworkGetExecutionTimeResponse))
          as NetworkGetExecutionTimeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkGetExecutionTimeResponse create() =>
      NetworkGetExecutionTimeResponse._();
  @$core.override
  NetworkGetExecutionTimeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NetworkGetExecutionTimeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NetworkGetExecutionTimeResponse>(
          create);
  static NetworkGetExecutionTimeResponse? _defaultInstance;

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
  ///  A list of execution times, in nanoseconds.
  ///  <p>
  ///  This list SHALL be in the same order as the transaction
  ///  identifiers were presented in the query.
  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get executionTimes => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
