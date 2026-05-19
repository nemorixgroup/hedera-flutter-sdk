// This is a generated file - do not edit.
//
// Generated from consensus_service.proto.

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

export 'consensus_service.pb.dart';

/// *
///  The Hedera Consensus Service (HCS) provides the ability for a Hashgraph to
///  provide aBFT consensus as to the order and validity of messages submitted to
///  a *topic*, as well as a *consensus timestamp* for those messages.
@$pb.GrpcServiceName('proto.ConsensusService')
class ConsensusServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ConsensusServiceClient(super.channel, {super.options, super.interceptors});

  /// *
  ///  Create an HCS topic.
  ///  <p>
  ///  On success, the resulting TransactionReceipt SHALL contain the newly
  ///  created TopicId.<br/>
  ///  If the `adminKey` is set on the topic, this transaction MUST be signed
  ///  by that key.<br/>
  ///  If the `adminKey` is _not_ set on the topic, this transaction MUST NOT
  ///  set an `autoRenewAccount`. The new topic will be immutable and must be
  ///  renewed manually.<br/>
  ///  If the `autoRenewAccount` is set on the topic, this transaction MUST be
  ///  signed by that account.<br/>
  ///  <p>
  ///  The request body MUST be a
  ///  [ConsensusCreateTopicTransactionBody](#proto.ConsensusCreateTopicTransactionBody)
  $grpc.ResponseFuture<$1.TransactionResponse> createTopic(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createTopic, request, options: options);
  }

  /// *
  ///  Update an HCS topic.
  ///  <p>
  ///  If the `adminKey` is not set on the topic, this transaction MUST extend
  ///  the `expirationTime` and MUST NOT modify any other field.<br/>
  ///  If the `adminKey` is set on the topic, this transaction MUST be signed
  ///  by that key.<br/>
  ///  If this transaction sets a new `adminKey`, this transaction MUST be
  ///  signed by <strong>_both_</strong> keys, the pre-update `adminKey` and
  ///  the post-update `adminKey`.<br/>
  ///  If this transaction sets a new, non-null, `autoRenewAccount`, the newly
  ///  set account MUST sign this transaction.<br/>
  ///  <p>
  ///  The request body MUST be a
  ///  [ConsensusUpdateTopicTransactionBody](#proto.ConsensusUpdateTopicTransactionBody)
  $grpc.ResponseFuture<$1.TransactionResponse> updateTopic(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateTopic, request, options: options);
  }

  /// *
  ///  Delete an HCS topic.
  ///  <p>
  ///  If this transaction succeeds, all subsequent transactions referencing
  ///  the deleted topic SHALL fail.<br/>
  ///  The `adminKey` MUST be set on the topic and this transaction MUST be
  ///  signed by that key.<br/>
  ///  If the `adminKey` is not set on the topic, this transaction SHALL fail
  ///  with a response code of `UNAUTHORIZED`. A topic without an `adminKey`
  ///  cannot be deleted, but MAY expire.<br/>
  ///  <p>
  ///  The request body MUST be a
  ///  [ConsensusDeleteTopicTransactionBody](#proto.ConsensusDeleteTopicTransactionBody)
  $grpc.ResponseFuture<$1.TransactionResponse> deleteTopic(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteTopic, request, options: options);
  }

  /// *
  ///  Submit a message to an HCS topic.
  ///  <p>
  ///  Valid and authorized messages on valid topics will be ordered by the
  ///  consensus service, published in the block stream, and available to all
  ///  subscribers on this topic via the mirror nodes.<br/>
  ///  If this transaction succeeds the resulting TransactionReceipt SHALL
  ///  contain the latest topicSequenceNumber and topicRunningHash for the
  ///  topic.<br/>
  ///  If the topic has a `submitKey` then that key MUST sign this
  ///  transaction.<br/>
  ///  <p>
  ///  The request body MUST be a
  ///  [ConsensusSubmitMessageTransactionBody](#proto.ConsensusSubmitMessageTransactionBody)
  $grpc.ResponseFuture<$1.TransactionResponse> submitMessage(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$submitMessage, request, options: options);
  }

  /// *
  ///  Retrieve the latest state of a topic. This method is unrestricted and
  ///  allowed on any topic by any payer account.
  ///  <p>
  ///  The request body MUST be a
  ///  [ConsensusGetTopicInfoQuery](#proto.ConsensusGetTopicInfoQuery)<br/>
  ///  The response body SHALL be a
  ///  [ConsensusGetTopicInfoResponse](#proto.ConsensusGetTopicInfoResponse)
  $grpc.ResponseFuture<$3.Response> getTopicInfo(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTopicInfo, request, options: options);
  }

  // method descriptors

  static final _$createTopic =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.ConsensusService/createTopic',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$updateTopic =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.ConsensusService/updateTopic',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$deleteTopic =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.ConsensusService/deleteTopic',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$submitMessage =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.ConsensusService/submitMessage',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$getTopicInfo = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.ConsensusService/getTopicInfo',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
}

@$pb.GrpcServiceName('proto.ConsensusService')
abstract class ConsensusServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.ConsensusService';

  ConsensusServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'createTopic',
        createTopic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'updateTopic',
        updateTopic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'deleteTopic',
        deleteTopic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'submitMessage',
        submitMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getTopicInfo',
        getTopicInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
  }

  $async.Future<$1.TransactionResponse> createTopic_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return createTopic($call, await $request);
  }

  $async.Future<$1.TransactionResponse> createTopic(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> updateTopic_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return updateTopic($call, await $request);
  }

  $async.Future<$1.TransactionResponse> updateTopic(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> deleteTopic_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return deleteTopic($call, await $request);
  }

  $async.Future<$1.TransactionResponse> deleteTopic(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> submitMessage_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return submitMessage($call, await $request);
  }

  $async.Future<$1.TransactionResponse> submitMessage(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$3.Response> getTopicInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getTopicInfo($call, await $request);
  }

  $async.Future<$3.Response> getTopicInfo(
      $grpc.ServiceCall call, $2.Query request);
}
