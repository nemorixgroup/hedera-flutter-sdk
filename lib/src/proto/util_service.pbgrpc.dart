// This is a generated file - do not edit.
//
// Generated from util_service.proto.

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

import 'transaction.pb.dart' as $0;
import 'transaction_response.pb.dart' as $1;

export 'util_service.pb.dart';

/// *
///  The Utility Service provides a pseudo-random number generator.
///
///  The single gRPC call defined for this service simply reports a single
///  pseudo-random number in the transaction record. That value may either
///  be a 32-bit integer within a requested range, or a 384-bit byte array.
///
///  ### Block Stream Effects
///  The requested value is reported exclusively in a `UtilPrngOutput` message.
@$pb.GrpcServiceName('proto.UtilService')
class UtilServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  UtilServiceClient(super.channel, {super.options, super.interceptors});

  /// *
  ///  Generate a pseudo-random value.
  ///  <p>
  ///  The request body MUST be a
  ///  [UtilPrngTransactionBody](#proto.UtilPrngTransactionBody)
  $grpc.ResponseFuture<$1.TransactionResponse> prng(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$prng, request, options: options);
  }

  /// *
  ///  Execute a batch of transactions atomically.
  ///  <p>
  ///  All transactions in the batch will be executed in order, and if any
  ///  transaction fails, the entire batch will fail.
  $grpc.ResponseFuture<$1.TransactionResponse> atomicBatch(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$atomicBatch, request, options: options);
  }

  // method descriptors

  static final _$prng =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.UtilService/prng',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$atomicBatch =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.UtilService/atomicBatch',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
}

@$pb.GrpcServiceName('proto.UtilService')
abstract class UtilServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.UtilService';

  UtilServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'prng',
        prng_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'atomicBatch',
        atomicBatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.TransactionResponse> prng_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return prng($call, await $request);
  }

  $async.Future<$1.TransactionResponse> prng(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> atomicBatch_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return atomicBatch($call, await $request);
  }

  $async.Future<$1.TransactionResponse> atomicBatch(
      $grpc.ServiceCall call, $0.Transaction request);
}
