// This is a generated file - do not edit.
//
// Generated from schedule_service.proto.

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

import 'query.pb.dart' as $2;
import 'response.pb.dart' as $3;
import 'transaction.pb.dart' as $0;
import 'transaction_response.pb.dart' as $1;

export 'schedule_service.pb.dart';

/// *
///  Transactions and queries for the Schedule Service.<br/>
///  The Schedule Service enables transactions to be submitted without all
///  required signatures and offers a `scheduleSign` transaction to provide
///  additional signatures independently after the schedule is created. The
///  scheduled transaction may be executed immediately when all required
///  signatures are present, or at expiration if "long term" schedules
///  are enabled in network configuration.
///
///  ### Execution
///  Scheduled transactions SHALL be executed under the following conditions.
///  1. If "long term" schedules are enabled and `wait_for_expiry` is set for
///     that schedule then the transaction SHALL NOT be executed before the
///     network consensus time matches or exceeds the `expiration_time` field
///     for that schedule.
///  1. If "long term" schedules are enabled and `wait_for_expiry` is _not_ set
///     for that schedule, then the transaction SHALL be executed when all
///     signatures required by the scheduled transaction are active for that
///     schedule. This MAY be immediately after the `scheduleCreate` or a
///     subsequent `scheduleSign` transaction, or MAY be at expiration if
///     the signature requirements are met at that time.
///  1. If "long term" schedules are _disabled_, then the scheduled transaction
///     SHALL be executed immediately after all signature requirements for the
///     scheduled transaction are met during the `scheduleCreate` or a subsequent
///     `scheduleSign` transaction. The scheduled transaction SHALL NOT be
///     on expiration when "long term" schedules are disabled.
///
///  A schedule SHALL remain in state and MAY be queried with a `getScheduleInfo`
///  transaction after execution, until the schedule expires.<br/>
///  When network consensus time matches or exceeds the `expiration_time` for
///  a schedule, that schedule SHALL be removed from state, whether it has
///  executed or not.<br/>
///  If "long term" schedules are _disabled_, the maximum expiration time SHALL
///  be the consensus time of the `scheduleCreate` transaction extended by
///  the network configuration value `ledger.scheduleTxExpiryTimeSecs`.
///
///  ### Block Stream Effects
///  When a scheduled transaction is executed, the timestamp in the transaction
///  identifier for that transaction SHALL be 1 nanosecond after the consensus
///  timestamp for the transaction that resulted in its execution. If execution
///  occurred at expiration, that transaction may be almost any transaction,
///  including another scheduled transaction that executed at expiration.<br/>
///  The transaction identifier for a scheduled transaction that is executed
///  SHALL have the `scheduled` flag set and SHALL inherit the `accountID` and
///  `transactionValidStart` values from the `scheduleCreate` that created the
///  schedule.<br/>
///  The `scheduleRef` property of the record for a scheduled transaction SHALL
///  be populated with the schedule identifier of the schedule that executed.
@$pb.GrpcServiceName('proto.ScheduleService')
class ScheduleServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ScheduleServiceClient(super.channel, {super.options, super.interceptors});

  /// *
  ///  Create a new Schedule.
  ///  <p>
  ///  If all signature requirements are met with this transaction, the
  ///  scheduled transaction MAY execute immediately.
  $grpc.ResponseFuture<$1.TransactionResponse> createSchedule(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createSchedule, request, options: options);
  }

  /// *
  ///  Add signatures to an existing schedule.
  ///  <p>
  ///  Signatures on this transaction SHALL be added to the set of active
  ///  signatures on the schedule, and MAY result in execution of the
  ///  scheduled transaction if all signature requirements are met.
  $grpc.ResponseFuture<$1.TransactionResponse> signSchedule(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$signSchedule, request, options: options);
  }

  /// *
  ///  Mark an existing schedule deleted.
  ///  <p>
  ///  Once deleted a schedule SHALL NOT be executed and any subsequent
  ///  `scheduleSign` transaction SHALL fail.
  $grpc.ResponseFuture<$1.TransactionResponse> deleteSchedule(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteSchedule, request, options: options);
  }

  /// *
  ///  Retrieve the metadata for a schedule.
  $grpc.ResponseFuture<$3.Response> getScheduleInfo(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getScheduleInfo, request, options: options);
  }

  // method descriptors

  static final _$createSchedule =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.ScheduleService/createSchedule',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$signSchedule =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.ScheduleService/signSchedule',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$deleteSchedule =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.ScheduleService/deleteSchedule',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$getScheduleInfo = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.ScheduleService/getScheduleInfo',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
}

@$pb.GrpcServiceName('proto.ScheduleService')
abstract class ScheduleServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.ScheduleService';

  ScheduleServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'createSchedule',
        createSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'signSchedule',
        signSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'deleteSchedule',
        deleteSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getScheduleInfo',
        getScheduleInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
  }

  $async.Future<$1.TransactionResponse> createSchedule_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return createSchedule($call, await $request);
  }

  $async.Future<$1.TransactionResponse> createSchedule(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> signSchedule_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return signSchedule($call, await $request);
  }

  $async.Future<$1.TransactionResponse> signSchedule(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> deleteSchedule_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return deleteSchedule($call, await $request);
  }

  $async.Future<$1.TransactionResponse> deleteSchedule(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$3.Response> getScheduleInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getScheduleInfo($call, await $request);
  }

  $async.Future<$3.Response> getScheduleInfo(
      $grpc.ServiceCall call, $2.Query request);
}
