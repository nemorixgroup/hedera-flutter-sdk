// This is a generated file - do not edit.
//
// Generated from freeze_service.proto.

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

export 'freeze_service.pb.dart';

/// *
///  A service to manage network "freeze" events.
///
///  This service provides a facility to prepare for network upgrades, halt network processing,
///  perform network software upgrades, and automatically restart the network following an upgrade.
@$pb.GrpcServiceName('proto.FreezeService')
class FreezeServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  FreezeServiceClient(super.channel, {super.options, super.interceptors});

  /// *
  ///  Freeze, cancel, or prepare a freeze.
  ///  This single transaction performs all of the functions supported
  ///  by the network freeze service. These functions include actions to
  ///  prepare an upgrade, prepare a telemetry upgrade, freeze the network,
  ///  freeze the network for upgrade, or abort a scheduled freeze.
  ///  <p>
  ///  The actual freeze action SHALL be determined by the `freeze_type` field
  ///  of the `FreezeTransactionBody`.<br/>
  ///  The transaction body MUST be a `FreezeTransactionBody`.
  $grpc.ResponseFuture<$1.TransactionResponse> freeze(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$freeze, request, options: options);
  }

  // method descriptors

  static final _$freeze =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.FreezeService/freeze',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
}

@$pb.GrpcServiceName('proto.FreezeService')
abstract class FreezeServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.FreezeService';

  FreezeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'freeze',
        freeze_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.TransactionResponse> freeze_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return freeze($call, await $request);
  }

  $async.Future<$1.TransactionResponse> freeze(
      $grpc.ServiceCall call, $0.Transaction request);
}
