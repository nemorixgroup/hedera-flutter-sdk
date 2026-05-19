// This is a generated file - do not edit.
//
// Generated from smart_contract_service.proto.

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

export 'smart_contract_service.pb.dart';

/// *
///  The Hedera Smart Contract Service (HSCS) provides an interface to an EVM
///  compatible environment to create, store, manage, and execute smart contract
///  calls. Smart Contracts implement useful and often highly complex
///  interactions between individuals, systems, and the distributed ledger.
@$pb.GrpcServiceName('proto.SmartContractService')
class SmartContractServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  SmartContractServiceClient(super.channel,
      {super.options, super.interceptors});

  /// *
  ///  Create a new smart contract.
  ///  <p>
  ///  If this transaction succeeds, the `ContractID` for the new smart
  ///  contract SHALL be set in the transaction receipt.<br/>
  ///  The contract is defined by the initial bytecode (or `initcode`).
  ///  The `initcode` SHALL be provided either in a previously created file,
  ///  or in the transaction body itself for very small contracts.<br/>
  ///  As part of contract creation, the constructor defined for the new
  ///  smart contract SHALL run with the parameters provided in
  ///  the `constructorParameters` field.<br/>
  ///  The gas to "power" that constructor MUST be provided via the `gas`
  ///  field, and SHALL be charged to the payer for this transaction.<br/>
  ///  If the contract _constructor_ stores information, it is charged gas for
  ///  that storage. There is a separate fee in HBAR to maintain that storage
  ///  until the expiration, and that fee SHALL be added to this transaction
  ///  as part of the _transaction fee_, rather than gas.
  $grpc.ResponseFuture<$1.TransactionResponse> createContract(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createContract, request, options: options);
  }

  /// *
  ///  Modify a smart contract.<br/>
  ///  Any change other than updating the expiration time requires that the
  ///  contract be modifiable (has a valid `adminKey`) and that the
  ///  transaction be signed by the `adminKey`
  ///  <p>
  ///  Fields _not set_ on the request SHALL NOT be modified.
  $grpc.ResponseFuture<$1.TransactionResponse> updateContract(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateContract, request, options: options);
  }

  /// *
  ///  Call a function of a given smart contract, providing function parameter
  ///  inputs as needed.
  ///  <p>
  ///  Resource ("gas") charges SHALL include all relevant fees incurred by
  ///  the contract execution, including any storage required.<br/>
  ///  The total transaction fee SHALL incorporate all of the "gas" actually
  ///  consumed as well as the standard fees for transaction handling,
  ///  data transfers, signature verification, etc...
  $grpc.ResponseFuture<$1.TransactionResponse> contractCallMethod(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$contractCallMethod, request, options: options);
  }

  /// *
  ///  Call a query function of a given smart contract, providing
  ///  function parameter inputs as needed.<br/>
  ///  This is performed locally on the particular node that the client is
  ///  communicating with. Executing the call locally is faster and less
  ///  costly, but imposes certain restrictions.
  ///  <p>
  ///  The call MUST NOT change the state of the contract instance. This also
  ///  precludes any expenditure or transfer of HBAR or other tokens.<br/>
  ///  The call SHALL NOT have a separate consensus timestamp.<br/>
  ///  The call SHALL NOT generate a record nor a receipt.<br/>
  ///  The response SHALL contain the output returned by the function call.<br/>
  ///  <p>
  ///  This is generally useful for calling accessor functions which read
  ///  (query) state without changes or side effects. Any contract call that
  ///  would use the `STATICCALL` opcode MAY be called via contract call local
  ///  with performance and cost benefits.
  ///  <p>
  ///  Unlike a ContractCall transaction, the node SHALL always consume the
  ///  _entire_ amount of offered "gas" in determining the fee for this query,
  ///  so accurate gas estimation is important.
  $grpc.ResponseFuture<$3.Response> contractCallLocalMethod(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$contractCallLocalMethod, request,
        options: options);
  }

  /// *
  ///  A standard query to obtain detailed information for a smart contract.
  $grpc.ResponseFuture<$3.Response> getContractInfo(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getContractInfo, request, options: options);
  }

  /// *
  ///  A standard query to read the current bytecode for a smart contract.
  $grpc.ResponseFuture<$3.Response> contractGetBytecode(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$contractGetBytecode, request, options: options);
  }

  /// *
  ///  A standard query to obtain account and contract identifiers for a smart
  ///  contract, given the Solidity identifier for that contract.
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$3.Response> getBySolidityID(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getBySolidityID, request, options: options);
  }

  /// *
  ///  <blockquote>This query is no longer supported.</blockquote>
  ///  This query always returned an empty record list.
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$3.Response> getTxRecordByContractID(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTxRecordByContractID, request,
        options: options);
  }

  /// *
  ///  Delete a smart contract, and transfer any remaining HBAR balance
  ///  to a designated account.
  ///  <p>
  ///  If this call succeeds then all subsequent calls to that smart
  ///  contract SHALL fail.<br/>
  $grpc.ResponseFuture<$1.TransactionResponse> deleteContract(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteContract, request, options: options);
  }

  /// *
  ///  Delete a smart contract, as a system-initiated deletion, this
  ///  SHALL NOT transfer balances.
  ///  <blockquote>
  ///  This call is an administrative function of the Hedera network, and
  ///  SHALL require network administration authorization.<br/>
  ///  This transaction MUST be signed by one of the network administration
  ///  accounts (typically `0.0.2` through `0.0.59`, as defined in the
  ///  `api-permission.properties` file).
  ///  </blockquote>
  ///  If this call succeeds then all subsequent calls to that smart
  ///  contract SHALL fail.<br/>
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$1.TransactionResponse> systemDelete(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$systemDelete, request, options: options);
  }

  /// *
  ///  Un-Delete a smart contract, returning it (mostly) to its state
  ///  prior to deletion.
  ///  <p>
  ///  The contract to be restored MUST have been deleted via `systemDelete`.
  ///  If the contract was deleted via `deleteContract`, it
  ///  SHALL NOT be recoverable.
  ///  <blockquote>
  ///  This call is an administrative function of the Hedera network, and
  ///  SHALL require network administration authorization.<br/>
  ///  This transaction MUST be signed by one of the network administration
  ///  accounts (typically `0.0.2` through `0.0.59`, as defined in the
  ///  `api-permission.properties` file).
  ///  </blockquote>
  ///  If this call succeeds then subsequent calls to that smart
  ///  contract MAY succeed.<br/>
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$1.TransactionResponse> systemUndelete(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$systemUndelete, request, options: options);
  }

  /// *
  ///  Make an Ethereum transaction "call" with all data in Ethereum formats,
  ///  including the contract alias.
  ///  <p>
  ///  Call data MAY be in the transaction, or stored within a "File".<br/>
  ///  The caller MAY offer additional gas above what is offered in the call
  ///  data, but MAY be charged up to 80% of that value if the amount required
  ///  is less than this "floor" amount.
  $grpc.ResponseFuture<$1.TransactionResponse> callEthereum(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$callEthereum, request, options: options);
  }

  // method descriptors

  static final _$createContract =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.SmartContractService/createContract',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$updateContract =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.SmartContractService/updateContract',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$contractCallMethod =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.SmartContractService/contractCallMethod',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$contractCallLocalMethod =
      $grpc.ClientMethod<$2.Query, $3.Response>(
          '/proto.SmartContractService/contractCallLocalMethod',
          ($2.Query value) => value.writeToBuffer(),
          $3.Response.fromBuffer);
  static final _$getContractInfo = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.SmartContractService/getContractInfo',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$contractGetBytecode =
      $grpc.ClientMethod<$2.Query, $3.Response>(
          '/proto.SmartContractService/ContractGetBytecode',
          ($2.Query value) => value.writeToBuffer(),
          $3.Response.fromBuffer);
  static final _$getBySolidityID = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.SmartContractService/getBySolidityID',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$getTxRecordByContractID =
      $grpc.ClientMethod<$2.Query, $3.Response>(
          '/proto.SmartContractService/getTxRecordByContractID',
          ($2.Query value) => value.writeToBuffer(),
          $3.Response.fromBuffer);
  static final _$deleteContract =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.SmartContractService/deleteContract',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$systemDelete =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.SmartContractService/systemDelete',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$systemUndelete =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.SmartContractService/systemUndelete',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$callEthereum =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.SmartContractService/callEthereum',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
}

@$pb.GrpcServiceName('proto.SmartContractService')
abstract class SmartContractServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.SmartContractService';

  SmartContractServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'createContract',
        createContract_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'updateContract',
        updateContract_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'contractCallMethod',
        contractCallMethod_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'contractCallLocalMethod',
        contractCallLocalMethod_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getContractInfo',
        getContractInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'ContractGetBytecode',
        contractGetBytecode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getBySolidityID',
        getBySolidityID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getTxRecordByContractID',
        getTxRecordByContractID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'deleteContract',
        deleteContract_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'systemDelete',
        systemDelete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'systemUndelete',
        systemUndelete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'callEthereum',
        callEthereum_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.TransactionResponse> createContract_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return createContract($call, await $request);
  }

  $async.Future<$1.TransactionResponse> createContract(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> updateContract_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return updateContract($call, await $request);
  }

  $async.Future<$1.TransactionResponse> updateContract(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> contractCallMethod_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return contractCallMethod($call, await $request);
  }

  $async.Future<$1.TransactionResponse> contractCallMethod(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$3.Response> contractCallLocalMethod_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return contractCallLocalMethod($call, await $request);
  }

  $async.Future<$3.Response> contractCallLocalMethod(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> getContractInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getContractInfo($call, await $request);
  }

  $async.Future<$3.Response> getContractInfo(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> contractGetBytecode_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return contractGetBytecode($call, await $request);
  }

  $async.Future<$3.Response> contractGetBytecode(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> getBySolidityID_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getBySolidityID($call, await $request);
  }

  $async.Future<$3.Response> getBySolidityID(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> getTxRecordByContractID_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getTxRecordByContractID($call, await $request);
  }

  $async.Future<$3.Response> getTxRecordByContractID(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$1.TransactionResponse> deleteContract_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return deleteContract($call, await $request);
  }

  $async.Future<$1.TransactionResponse> deleteContract(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> systemDelete_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return systemDelete($call, await $request);
  }

  $async.Future<$1.TransactionResponse> systemDelete(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> systemUndelete_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return systemUndelete($call, await $request);
  }

  $async.Future<$1.TransactionResponse> systemUndelete(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> callEthereum_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return callEthereum($call, await $request);
  }

  $async.Future<$1.TransactionResponse> callEthereum(
      $grpc.ServiceCall call, $0.Transaction request);
}
