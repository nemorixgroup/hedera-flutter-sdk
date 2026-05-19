// This is a generated file - do not edit.
//
// Generated from address_book_service.proto.

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

export 'address_book_service.pb.dart';

/// *
///  The Address Book service provides the ability for Hedera network node
///  administrators to add, update, and remove consensus nodes. This addition,
///  update, or removal of a consensus node requires governing council approval,
///  but each node operator may update their own operational attributes without
///  additional approval, reducing overhead for routine operations.
///
///  Most operations are `privileged operations` and require governing council
///  approval.
///
///  ### For a node creation transaction.
///  - The node operator SHALL create a `createNode` transaction.
///     - The node operator MUST sign this transaction with the `Key`
///       set as the `admin_key` for the new `Node`.
///     - The node operator SHALL deliver the signed transaction to the Hedera
///       council representative.
///     - The Hedera council representative SHALL arrange for council members to
///       review and sign the transaction.
///     - Once sufficient council members have signed the transaction, the
///       Hedera council representative SHALL submit the transaction to the
///       network.
///  - Upon receipt of a valid and signed node creation transaction the network
///    software SHALL
///     - Validate the threshold signature for the Hedera governing council
///     - Validate the signature of the `Key` provided as the new `admin_key`
///       for the `Node`.
///     - Create the new node in state, this new node SHALL NOT be active in the
///       network at this time.
///     - When executing the next `freeze` transaction with `freeze_type` set to
///       `PREPARE_UPGRADE`, update network configuration and bring the
///       new node to an active status within the network. The node to be added
///       SHALL be active in the network following this upgrade.
///
///  ### For a node deletion transaction.
///  - The node operator or Hedera council representative SHALL create a
///    `deleteNode` transaction.
///     - If the node operator creates the transaction
///        - The node operator MUST sign this transaction with the `Key`
///          set as the `admin_key` for the existing `Node`.
///        - The node operator SHALL deliver the signed transaction to the Hedera
///          council representative.
///     - The Hedera council representative SHALL arrange for council members to
///       review and sign the transaction.
///     - Once sufficient council members have signed the transaction, the
///       Hedera council representative SHALL submit the transaction to the
///       network.
///  - Upon receipt of a valid and signed node deletion transaction the network
///    software SHALL
///     - Validate the signature for the Hedera governing council
///     - Remove the existing node from network state. The node SHALL still
///       be active in the network at this time.
///     - When executing the next `freeze` transaction with `freeze_type` set to
///       `PREPARE_UPGRADE`, update network configuration and remove the
///       node to be deleted from the network. The node to be deleted SHALL NOT
///       be active in the network following this upgrade.
///
///  ### For a node update transaction.
///  - The node operator SHALL create an `updateNode` transaction.
///     - The node operator MUST sign this transaction with the active `key`
///       assigned as the `admin_key`.
///     - The node operator SHALL submit the transaction to the
///       network.  Hedera council approval SHALL NOT be sought for this
///       transaction
///  - Upon receipt of a valid and signed node update transaction the network
///    software SHALL
///     - If the transaction modifies the value of the "node account",
///        - Validate the signature of the active `key` for the account
///          assigned as the _current_ "node account".
///        - Validate the signature of the active `key` for the account to be
///          assigned as the _new_ "node account".
///     - Modify the node information held in network state with the changes
///       requested in the update transaction. The node changes SHALL NOT be
///       applied to network configuration, and SHALL NOT affect network
///       operation at this time.
///     - When executing the next `freeze` transaction with `freeze_type` set to
///       `PREPARE_UPGRADE`, update network configuration according to the
///       modified information in network state. The requested changes SHALL
///       affect network operation following this upgrade.
@$pb.GrpcServiceName('proto.AddressBookService')
class AddressBookServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  AddressBookServiceClient(super.channel, {super.options, super.interceptors});

  /// *
  ///  A transaction to create a new consensus node in the network
  ///  address book.
  ///  <p>
  ///  This transaction, once complete, SHALL add a new consensus node to the
  ///  network state.<br/>
  ///  The new consensus node SHALL remain in state, but SHALL NOT participate
  ///  in network consensus until the network updates the network configuration.
  ///  <p>
  ///  Hedera governing council authorization is REQUIRED for this transaction.
  $grpc.ResponseFuture<$1.TransactionResponse> createNode(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createNode, request, options: options);
  }

  /// *
  ///  A transaction to remove a consensus node from the network address
  ///  book.
  ///  <p>
  ///  This transaction, once complete, SHALL remove the identified consensus
  ///  node from the network state.
  ///  <p>
  ///  Hedera governing council authorization is REQUIRED for this transaction.
  $grpc.ResponseFuture<$1.TransactionResponse> deleteNode(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteNode, request, options: options);
  }

  /// *
  ///  A transaction to update an existing consensus node from the network
  ///  address book.
  ///  <p>
  ///  This transaction, once complete, SHALL modify the identified consensus
  ///  node state as requested.
  ///  <p>
  ///  This transaction is authorized by the node operator
  $grpc.ResponseFuture<$1.TransactionResponse> updateNode(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateNode, request, options: options);
  }

  // method descriptors

  static final _$createNode =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.AddressBookService/createNode',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$deleteNode =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.AddressBookService/deleteNode',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$updateNode =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.AddressBookService/updateNode',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
}

@$pb.GrpcServiceName('proto.AddressBookService')
abstract class AddressBookServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.AddressBookService';

  AddressBookServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'createNode',
        createNode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'deleteNode',
        deleteNode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'updateNode',
        updateNode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.TransactionResponse> createNode_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return createNode($call, await $request);
  }

  $async.Future<$1.TransactionResponse> createNode(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> deleteNode_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return deleteNode($call, await $request);
  }

  $async.Future<$1.TransactionResponse> deleteNode(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> updateNode_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return updateNode($call, await $request);
  }

  $async.Future<$1.TransactionResponse> updateNode(
      $grpc.ServiceCall call, $0.Transaction request);
}
