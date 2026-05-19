// This is a generated file - do not edit.
//
// Generated from file_service.proto.

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

export 'file_service.pb.dart';

/// *
///  Service gRPC definitions for the Hedera File Service (HFS).
///
///  #### Signature Requirements
///  The HFS manages file authorization differently, depending on type of file
///  transaction, and this can be surprising.<br/>
///  The core element of file authorization is the `keys` field,
///  which is a `KeyList`; a list of individual `Key` messages, each of which
///  may represent a simple or complex key.<br/>
///  The file service transactions treat this list differently.<br/>
///  A `fileCreate`, `fileAppend`, or `fileUpdate` MUST have a valid signature
///  from _each_ key in the list.<br/>
///  A `fileDelete` MUST have a valid signature from _at least one_ key in
///  the list. This is different, and allows a file "owned" by many entities
///  to be deleted by any one of those entities. A deleted file cannot be
///  restored, so it is important to consider this when assigning keys for
///  a file.<br/>
///  If any of the keys in a `KeyList` are complex, the full requirements of
///  each complex key must be met to count as a "valid signature" for that key.
///  A complex key structure (i.e. a `ThresholdKey`, or `KeyList`, possibly
///  including additional `ThresholdKey` or `KeyList` descendants) may be
///  assigned as the sole entry in a file `keys` field to ensure all transactions
///  have the same signature requirements.
@$pb.GrpcServiceName('proto.FileService')
class FileServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  FileServiceClient(super.channel, {super.options, super.interceptors});

  /// *
  ///  Create a file in HFS.
  $grpc.ResponseFuture<$1.TransactionResponse> createFile(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createFile, request, options: options);
  }

  /// *
  ///  Update a file in HFS.
  $grpc.ResponseFuture<$1.TransactionResponse> updateFile(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateFile, request, options: options);
  }

  /// *
  ///  Delete a file in HFS.<br/>
  ///  The content of a file deleted in this manner is completely removed
  ///  from network state, but the file metadata remains.
  $grpc.ResponseFuture<$1.TransactionResponse> deleteFile(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  /// *
  ///  Append content to a file in HFS.
  $grpc.ResponseFuture<$1.TransactionResponse> appendContent(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$appendContent, request, options: options);
  }

  /// *
  ///  Retrieve the content of a file in HFS.<br/>
  ///  Note that this query retrieves _only_ the file content, not any of
  ///  the metadata for the file.
  $grpc.ResponseFuture<$3.Response> getFileContent(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getFileContent, request, options: options);
  }

  /// *
  ///  Retrieve the metadata for a file in HFS.<br/>
  ///  Note that this query does not retrieve the file _content_.
  $grpc.ResponseFuture<$3.Response> getFileInfo(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getFileInfo, request, options: options);
  }

  /// *
  ///  Delete a "regular" file without "owner" authorization.<br/>
  ///  This transaction _does not_ require signatures for the keys in
  ///  the file `keys` list, but must be signed by a "privileged" account.
  ///  <p>
  ///  This transaction SHALL NOT accept a file identifier for
  ///  a "system" file.<br/>
  ///  This transaction SHALL NOT remove the _content_ of the file from state.
  ///  This permits use of the `systemUndelete` to reverse this action if
  ///  performed in error.
  ///  <p>
  ///  This is a privileged transaction, and only accounts 2-59 are permitted
  ///  to call this function, by default. The actual restriction is in the
  ///  `api-permission.properties` file in the consensus node configuration.
  $grpc.ResponseFuture<$1.TransactionResponse> systemDelete(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$systemDelete, request, options: options);
  }

  /// *
  ///  Undelete a "regular" file.
  ///  This transaction must be signed by a "privileged" account.<br/>
  ///  <p>
  ///  This transaction SHALL NOT accept a file identifier for
  ///  a "system" file.<br/>
  ///  The file identified SHOULD have been previously deleted.<br/>
  ///  This transaction SHALL NOT recover the _content_ of a file unless that
  ///  file was deleted with a `systemDelete` transaction. The _content_ of a
  ///  file deleted with a `fileDelete` transaction is not retained in state.
  ///  <p>
  ///  This is a privileged transaction, and only accounts 2-60 are permitted
  ///  to call this function, by default. The actual restriction is in the
  ///  `api-permission.properties` file in the consensus node configuration.
  $grpc.ResponseFuture<$1.TransactionResponse> systemUndelete(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$systemUndelete, request, options: options);
  }

  // method descriptors

  static final _$createFile =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.FileService/createFile',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$updateFile =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.FileService/updateFile',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$deleteFile =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.FileService/deleteFile',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$appendContent =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.FileService/appendContent',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$getFileContent = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.FileService/getFileContent',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$getFileInfo = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.FileService/getFileInfo',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$systemDelete =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.FileService/systemDelete',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$systemUndelete =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.FileService/systemUndelete',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
}

@$pb.GrpcServiceName('proto.FileService')
abstract class FileServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.FileService';

  FileServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'createFile',
        createFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'updateFile',
        updateFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'deleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'appendContent',
        appendContent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getFileContent',
        getFileContent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getFileInfo',
        getFileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
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
  }

  $async.Future<$1.TransactionResponse> createFile_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return createFile($call, await $request);
  }

  $async.Future<$1.TransactionResponse> createFile(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> updateFile_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return updateFile($call, await $request);
  }

  $async.Future<$1.TransactionResponse> updateFile(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> deleteFile_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return deleteFile($call, await $request);
  }

  $async.Future<$1.TransactionResponse> deleteFile(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> appendContent_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return appendContent($call, await $request);
  }

  $async.Future<$1.TransactionResponse> appendContent(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$3.Response> getFileContent_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getFileContent($call, await $request);
  }

  $async.Future<$3.Response> getFileContent(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> getFileInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getFileInfo($call, await $request);
  }

  $async.Future<$3.Response> getFileInfo(
      $grpc.ServiceCall call, $2.Query request);

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
}
