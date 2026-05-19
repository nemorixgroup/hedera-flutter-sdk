// This is a generated file - do not edit.
//
// Generated from network_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'query.pb.dart' as $0;
import 'response.pb.dart' as $1;
import 'transaction.pb.dart' as $2;
import 'transaction_response.pb.dart' as $3;

export 'network_service.pb.dart';

/// *
///  Basic "network information" queries.
///
///  This service supports queries for the active services and API versions,
///  and a query for account details.
@$pb.GrpcServiceName('proto.NetworkService')
class NetworkServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  NetworkServiceClient(super.channel, {super.options, super.interceptors});

  /// *
  ///  Retrieve the active versions of Hedera Services and API messages.
  $grpc.ResponseFuture<$1.Response> getVersionInfo(
    $0.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getVersionInfo, request, options: options);
  }

  /// *
  ///  Request detail information about an account.
  ///  <p>
  ///  The returned information SHALL include balance and allowances.<br/>
  ///  The returned information SHALL NOT include a list of account records.
  $grpc.ResponseFuture<$1.Response> getAccountDetails(
    $0.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAccountDetails, request, options: options);
  }

  /// *
  ///  Retrieve the time, in nanoseconds, spent in direct processing for one or
  ///  more recent transactions.
  ///  <p>
  ///  For each transaction identifier provided, if that transaction is
  ///  sufficiently recent (that is, it is within the range of the
  ///  configuration value `stats.executionTimesToTrack`), the node SHALL
  ///  return the time, in nanoseconds, spent to directly process that
  ///  transaction (that is, excluding time to reach consensus).<br/>
  ///  Note that because each node processes every transaction for the Hedera
  ///  network, this query MAY be sent to any node.
  ///  <p>
  ///  <blockquote>Important<blockquote>
  ///  This query is obsolete, not supported, and SHALL fail with a pre-check
  ///  result of `NOT_SUPPORTED`.</blockquote></blockquote>
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$1.Response> getExecutionTime(
    $0.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getExecutionTime, request, options: options);
  }

  /// *
  ///  Submit a transaction that wraps another transaction which will
  ///  skip most validation.
  ///  <p>
  ///  <blockquote>Important<blockquote>
  ///  This query is obsolete, not supported, and SHALL fail with a pre-check
  ///  result of `NOT_SUPPORTED`.
  ///  </blockquote></blockquote>
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$3.TransactionResponse> uncheckedSubmit(
    $2.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$uncheckedSubmit, request, options: options);
  }

  // method descriptors

  static final _$getVersionInfo = $grpc.ClientMethod<$0.Query, $1.Response>(
      '/proto.NetworkService/getVersionInfo',
      ($0.Query value) => value.writeToBuffer(),
      $1.Response.fromBuffer);
  static final _$getAccountDetails = $grpc.ClientMethod<$0.Query, $1.Response>(
      '/proto.NetworkService/getAccountDetails',
      ($0.Query value) => value.writeToBuffer(),
      $1.Response.fromBuffer);
  static final _$getExecutionTime = $grpc.ClientMethod<$0.Query, $1.Response>(
      '/proto.NetworkService/getExecutionTime',
      ($0.Query value) => value.writeToBuffer(),
      $1.Response.fromBuffer);
  static final _$uncheckedSubmit =
      $grpc.ClientMethod<$2.Transaction, $3.TransactionResponse>(
          '/proto.NetworkService/uncheckedSubmit',
          ($2.Transaction value) => value.writeToBuffer(),
          $3.TransactionResponse.fromBuffer);
}

@$pb.GrpcServiceName('proto.NetworkService')
abstract class NetworkServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.NetworkService';

  NetworkServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Query, $1.Response>(
        'getVersionInfo',
        getVersionInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Query.fromBuffer(value),
        ($1.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Query, $1.Response>(
        'getAccountDetails',
        getAccountDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Query.fromBuffer(value),
        ($1.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Query, $1.Response>(
        'getExecutionTime',
        getExecutionTime_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Query.fromBuffer(value),
        ($1.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Transaction, $3.TransactionResponse>(
        'uncheckedSubmit',
        uncheckedSubmit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Transaction.fromBuffer(value),
        ($3.TransactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.Response> getVersionInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Query> $request) async {
    return getVersionInfo($call, await $request);
  }

  $async.Future<$1.Response> getVersionInfo(
      $grpc.ServiceCall call, $0.Query request);

  $async.Future<$1.Response> getAccountDetails_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Query> $request) async {
    return getAccountDetails($call, await $request);
  }

  $async.Future<$1.Response> getAccountDetails(
      $grpc.ServiceCall call, $0.Query request);

  $async.Future<$1.Response> getExecutionTime_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Query> $request) async {
    return getExecutionTime($call, await $request);
  }

  $async.Future<$1.Response> getExecutionTime(
      $grpc.ServiceCall call, $0.Query request);

  $async.Future<$3.TransactionResponse> uncheckedSubmit_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Transaction> $request) async {
    return uncheckedSubmit($call, await $request);
  }

  $async.Future<$3.TransactionResponse> uncheckedSubmit(
      $grpc.ServiceCall call, $2.Transaction request);
}
