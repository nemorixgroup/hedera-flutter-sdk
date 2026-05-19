// This is a generated file - do not edit.
//
// Generated from crypto_service.proto.

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

export 'crypto_service.pb.dart';

/// *
///  Transactions and queries for the Hedera Crypto Service.
@$pb.GrpcServiceName('proto.CryptoService')
class CryptoServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  CryptoServiceClient(super.channel, {super.options, super.interceptors});

  /// *
  ///  Create a new account by submitting the transaction
  $grpc.ResponseFuture<$1.TransactionResponse> createAccount(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createAccount, request, options: options);
  }

  /// *
  ///  Update an account by submitting the transaction
  $grpc.ResponseFuture<$1.TransactionResponse> updateAccount(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateAccount, request, options: options);
  }

  /// *
  ///  Initiate a transfer by submitting the transaction
  $grpc.ResponseFuture<$1.TransactionResponse> cryptoTransfer(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cryptoTransfer, request, options: options);
  }

  /// *
  ///  Delete an account by submitting the transaction
  $grpc.ResponseFuture<$1.TransactionResponse> cryptoDelete(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cryptoDelete, request, options: options);
  }

  /// *
  ///  Add one or more approved allowances for spenders to transfer the paying
  ///  account's hbar or tokens.
  $grpc.ResponseFuture<$1.TransactionResponse> approveAllowances(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$approveAllowances, request, options: options);
  }

  /// *
  ///  Delete one or more of the specific approved NFT serial numbers on an
  ///  owner account.
  $grpc.ResponseFuture<$1.TransactionResponse> deleteAllowances(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteAllowances, request, options: options);
  }

  /// *
  ///  Add a livehash
  ///  <blockquote>Important<blockquote>
  ///  This transaction is obsolete, not supported, and SHALL fail with a
  ///  pre-check result of `NOT_SUPPORTED`.</blockquote></blockquote>
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$1.TransactionResponse> addLiveHash(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$addLiveHash, request, options: options);
  }

  /// *
  ///  Delete a livehash
  ///  <blockquote>Important<blockquote>
  ///  This transaction is obsolete, not supported, and SHALL fail with a
  ///  pre-check result of `NOT_SUPPORTED`.</blockquote></blockquote>
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$1.TransactionResponse> deleteLiveHash(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteLiveHash, request, options: options);
  }

  /// *
  ///  Retrieve a livehash for an account
  ///  <blockquote>Important<blockquote>
  ///  This query is obsolete, not supported, and SHALL fail with a pre-check
  ///  result of `NOT_SUPPORTED`.</blockquote></blockquote>
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$3.Response> getLiveHash(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getLiveHash, request, options: options);
  }

  /// *
  ///  Return all transactions in the last 180s of consensus time for which
  ///  the given account was the effective payer **and** network property
  ///  `ledger.keepRecordsInState` was `true`.
  $grpc.ResponseFuture<$3.Response> getAccountRecords(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAccountRecords, request, options: options);
  }

  /// *
  ///  Retrieve the balance of an account
  $grpc.ResponseFuture<$3.Response> cryptoGetBalance(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cryptoGetBalance, request, options: options);
  }

  /// *
  ///  Retrieve the metadata of an account
  $grpc.ResponseFuture<$3.Response> getAccountInfo(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAccountInfo, request, options: options);
  }

  /// *
  ///  Retrieve the latest receipt for a transaction that is either awaiting
  ///  consensus, or reached consensus in the last 180 seconds
  $grpc.ResponseFuture<$3.Response> getTransactionReceipts(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTransactionReceipts, request,
        options: options);
  }

  /// *
  ///  Retrieve the record of a transaction that is either awaiting consensus,
  ///  or reached consensus in the last 180 seconds
  $grpc.ResponseFuture<$3.Response> getTxRecordByTxID(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTxRecordByTxID, request, options: options);
  }

  // method descriptors

  static final _$createAccount =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.CryptoService/createAccount',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$updateAccount =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.CryptoService/updateAccount',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$cryptoTransfer =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.CryptoService/cryptoTransfer',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$cryptoDelete =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.CryptoService/cryptoDelete',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$approveAllowances =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.CryptoService/approveAllowances',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$deleteAllowances =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.CryptoService/deleteAllowances',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$addLiveHash =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.CryptoService/addLiveHash',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$deleteLiveHash =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.CryptoService/deleteLiveHash',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$getLiveHash = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.CryptoService/getLiveHash',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$getAccountRecords = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.CryptoService/getAccountRecords',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$cryptoGetBalance = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.CryptoService/cryptoGetBalance',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$getAccountInfo = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.CryptoService/getAccountInfo',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$getTransactionReceipts =
      $grpc.ClientMethod<$2.Query, $3.Response>(
          '/proto.CryptoService/getTransactionReceipts',
          ($2.Query value) => value.writeToBuffer(),
          $3.Response.fromBuffer);
  static final _$getTxRecordByTxID = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.CryptoService/getTxRecordByTxID',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
}

@$pb.GrpcServiceName('proto.CryptoService')
abstract class CryptoServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.CryptoService';

  CryptoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'createAccount',
        createAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'updateAccount',
        updateAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'cryptoTransfer',
        cryptoTransfer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'cryptoDelete',
        cryptoDelete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'approveAllowances',
        approveAllowances_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'deleteAllowances',
        deleteAllowances_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'addLiveHash',
        addLiveHash_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'deleteLiveHash',
        deleteLiveHash_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getLiveHash',
        getLiveHash_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getAccountRecords',
        getAccountRecords_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'cryptoGetBalance',
        cryptoGetBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getAccountInfo',
        getAccountInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getTransactionReceipts',
        getTransactionReceipts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getTxRecordByTxID',
        getTxRecordByTxID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
  }

  $async.Future<$1.TransactionResponse> createAccount_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return createAccount($call, await $request);
  }

  $async.Future<$1.TransactionResponse> createAccount(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> updateAccount_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return updateAccount($call, await $request);
  }

  $async.Future<$1.TransactionResponse> updateAccount(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> cryptoTransfer_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return cryptoTransfer($call, await $request);
  }

  $async.Future<$1.TransactionResponse> cryptoTransfer(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> cryptoDelete_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return cryptoDelete($call, await $request);
  }

  $async.Future<$1.TransactionResponse> cryptoDelete(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> approveAllowances_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return approveAllowances($call, await $request);
  }

  $async.Future<$1.TransactionResponse> approveAllowances(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> deleteAllowances_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return deleteAllowances($call, await $request);
  }

  $async.Future<$1.TransactionResponse> deleteAllowances(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> addLiveHash_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return addLiveHash($call, await $request);
  }

  $async.Future<$1.TransactionResponse> addLiveHash(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> deleteLiveHash_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return deleteLiveHash($call, await $request);
  }

  $async.Future<$1.TransactionResponse> deleteLiveHash(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$3.Response> getLiveHash_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getLiveHash($call, await $request);
  }

  $async.Future<$3.Response> getLiveHash(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> getAccountRecords_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getAccountRecords($call, await $request);
  }

  $async.Future<$3.Response> getAccountRecords(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> cryptoGetBalance_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return cryptoGetBalance($call, await $request);
  }

  $async.Future<$3.Response> cryptoGetBalance(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> getAccountInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getAccountInfo($call, await $request);
  }

  $async.Future<$3.Response> getAccountInfo(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> getTransactionReceipts_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getTransactionReceipts($call, await $request);
  }

  $async.Future<$3.Response> getTransactionReceipts(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> getTxRecordByTxID_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getTxRecordByTxID($call, await $request);
  }

  $async.Future<$3.Response> getTxRecordByTxID(
      $grpc.ServiceCall call, $2.Query request);
}
