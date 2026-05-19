// This is a generated file - do not edit.
//
// Generated from token_service.proto.

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

export 'token_service.pb.dart';

/// *
///  Transactions and queries for the Token Service
@$pb.GrpcServiceName('proto.TokenService')
class TokenServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  TokenServiceClient(super.channel, {super.options, super.interceptors});

  /// *
  ///  Create a new token.
  $grpc.ResponseFuture<$1.TransactionResponse> createToken(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createToken, request, options: options);
  }

  /// *
  ///  Update a token.
  $grpc.ResponseFuture<$1.TransactionResponse> updateToken(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateToken, request, options: options);
  }

  /// *
  ///  Mint one or more tokens to the treasury account.
  ///  <p>
  ///  This MAY specify a quantity of fungible/common tokens or
  ///  a list of specific non-fungible/unique tokes, but
  ///  MUST NOT specify both.
  $grpc.ResponseFuture<$1.TransactionResponse> mintToken(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$mintToken, request, options: options);
  }

  /// *
  ///  Burn one or more tokens from the treasury account.
  ///  <p>
  ///  This MAY specify a quantity of fungible/common tokens or
  ///  a list of specific non-fungible/unique tokes, but
  ///  MUST NOT specify both.
  $grpc.ResponseFuture<$1.TransactionResponse> burnToken(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$burnToken, request, options: options);
  }

  /// *
  ///  Delete a token.
  $grpc.ResponseFuture<$1.TransactionResponse> deleteToken(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteToken, request, options: options);
  }

  /// *
  ///  Wipe one or more tokens from an identified Account.
  ///  <p>
  ///  This MAY specify a quantity of fungible/common tokens or
  ///  a list of specific non-fungible/unique tokes, but
  ///  MUST NOT specify both.
  $grpc.ResponseFuture<$1.TransactionResponse> wipeTokenAccount(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$wipeTokenAccount, request, options: options);
  }

  /// *
  ///  Freeze the transfer of tokens to or from an identified Account.
  $grpc.ResponseFuture<$1.TransactionResponse> freezeTokenAccount(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$freezeTokenAccount, request, options: options);
  }

  /// *
  ///  Unfreeze the transfer of tokens to or from an identified Account.
  $grpc.ResponseFuture<$1.TransactionResponse> unfreezeTokenAccount(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$unfreezeTokenAccount, request, options: options);
  }

  /// *
  ///  Assert that KYC requirements are met for a specific account with
  ///  respect to a specific token.
  $grpc.ResponseFuture<$1.TransactionResponse> grantKycToTokenAccount(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$grantKycToTokenAccount, request,
        options: options);
  }

  /// *
  ///  Assert that KYC requirements are _not_ met for a specific account with
  ///  respect to a specific token.
  $grpc.ResponseFuture<$1.TransactionResponse> revokeKycFromTokenAccount(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$revokeKycFromTokenAccount, request,
        options: options);
  }

  /// *
  ///  Associate one or more tokens to an account.
  $grpc.ResponseFuture<$1.TransactionResponse> associateTokens(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$associateTokens, request, options: options);
  }

  /// *
  ///  Dissociate one or more tokens from an account.
  $grpc.ResponseFuture<$1.TransactionResponse> dissociateTokens(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$dissociateTokens, request, options: options);
  }

  /// *
  ///  Update the custom fee schedule for a token.
  $grpc.ResponseFuture<$1.TransactionResponse> updateTokenFeeSchedule(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateTokenFeeSchedule, request,
        options: options);
  }

  /// *
  ///  Retrieve the detail characteristics for a token.
  ///  <p>
  ///  This query SHALL return information for the token type as a whole.<br/>
  ///  This query SHALL NOT return information for individual tokens.
  $grpc.ResponseFuture<$3.Response> getTokenInfo(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTokenInfo, request, options: options);
  }

  /// *
  ///  Retrieve the metadata for a specific non-fungible/unique token.<br/>
  ///  The NFT to query is identified by token identifier and serial number.
  ///  <p>
  ///  This query SHALL return token metadata and, if an allowance is defined,
  ///  the designated "spender" account for the queried NFT.
  $grpc.ResponseFuture<$3.Response> getTokenNftInfo(
    $2.Query request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTokenNftInfo, request, options: options);
  }

  /// *
  ///  Pause a token.
  $grpc.ResponseFuture<$1.TransactionResponse> pauseToken(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$pauseToken, request, options: options);
  }

  /// *
  ///  Unpause (resume) a token.
  $grpc.ResponseFuture<$1.TransactionResponse> unpauseToken(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$unpauseToken, request, options: options);
  }

  /// *
  ///  Update multiple non-fungible/unique tokens (NFTs) in a collection.<br/>
  ///  The NFTs are identified by token identifier and one or more
  ///  serial numbers.
  ///  <p>
  ///  This transaction SHALL update NFT metadata only.<br/>
  ///  This transaction MUST be signed by the token `metadata_key`.
  $grpc.ResponseFuture<$1.TransactionResponse> updateNfts(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateNfts, request, options: options);
  }

  /// *
  ///  Reject one or more tokens.
  ///  <p>
  ///  This transaction SHALL transfer the full balance of one or more tokens
  ///  from the requesting account to the treasury for each token.<br/>
  ///  This transfer SHALL NOT charge any custom fee or royalty defined for
  ///  the token(s) to be rejected.<br/>
  ///  ### Effects on success
  ///  <ul>
  ///    <li>If the rejected token is fungible/common, the requesting account
  ///        SHALL have a balance of 0 for the rejected token.<br/>
  ///        The treasury balance SHALL increase by the amount that the
  ///        requesting account decreased.</li>
  ///    <li>If the rejected token is non-fungible/unique the requesting
  ///        account SHALL NOT hold the specific serialized token that
  ///        is rejected.<br/>
  ///        The treasury account SHALL hold each specific serialized token
  ///        that was rejected.</li>
  ///  </li>
  $grpc.ResponseFuture<$1.TransactionResponse> rejectToken(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$rejectToken, request, options: options);
  }

  /// *
  ///  Airdrop one or more tokens to one or more accounts.
  ///  <p>
  ///  This transaction SHALL distribute tokens from the balance of one or
  ///  more sending account(s) to the balance of one or more
  ///  recipient accounts.<br/>
  ///  Accounts SHALL receive the tokens in one of four ways.
  ///  <ul>
  ///    <li>An account already associated to the token to be distributed
  ///        SHALL receive the airdropped tokens immediately to the
  ///        recipient account balance.</li>
  ///    <li>An account with available automatic association slots SHALL
  ///        be automatically associated to the token, and SHALL
  ///        immediately receive the airdropped tokens to the recipient
  ///        account balance.</li>
  ///    <li>An account with "receiver signature required" set SHALL have
  ///        a "Pending Airdrop" created and MUST claim that airdrop with
  ///        a `claimAirdrop` transaction.</li>
  ///    <li>An account with no available automatic association slots SHALL
  ///        have a "Pending Airdrop" created and MUST claim that airdrop
  ///        with a `claimAirdrop` transaction. </li>
  ///  </ul>
  ///  Any airdrop that completes immediately SHALL be irreversible.<br/>
  ///  Any airdrop that results in a "Pending Airdrop" MAY be canceled via
  ///  a `cancelAirdrop` transaction.<br/>
  ///  All transfer fees (including custom fees and royalties), as well as
  ///  the rent cost for the first auto-renewal period for any
  ///  automatic-association slot occupied by the airdropped tokens,
  ///  SHALL be charged to the account submitting this transaction.
  $grpc.ResponseFuture<$1.TransactionResponse> airdropTokens(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$airdropTokens, request, options: options);
  }

  /// *
  ///  Cancel one or more pending airdrops.
  ///  <p>
  ///  This transaction MUST be signed by _each_ account *sending* an
  ///  airdrop to be canceled.
  $grpc.ResponseFuture<$1.TransactionResponse> cancelAirdrop(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cancelAirdrop, request, options: options);
  }

  /// *
  ///  Claim one or more pending airdrops.
  ///  <p>
  ///  This transaction MUST be signed by _each_ account **receiving**
  ///  an airdrop to be claimed.<br>
  ///  If a "Sender" lacks sufficient balance to fulfill the airdrop at
  ///  the time the claim is made, that claim SHALL fail.
  $grpc.ResponseFuture<$1.TransactionResponse> claimAirdrop(
    $0.Transaction request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$claimAirdrop, request, options: options);
  }

  // method descriptors

  static final _$createToken =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/createToken',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$updateToken =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/updateToken',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$mintToken =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/mintToken',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$burnToken =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/burnToken',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$deleteToken =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/deleteToken',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$wipeTokenAccount =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/wipeTokenAccount',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$freezeTokenAccount =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/freezeTokenAccount',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$unfreezeTokenAccount =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/unfreezeTokenAccount',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$grantKycToTokenAccount =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/grantKycToTokenAccount',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$revokeKycFromTokenAccount =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/revokeKycFromTokenAccount',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$associateTokens =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/associateTokens',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$dissociateTokens =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/dissociateTokens',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$updateTokenFeeSchedule =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/updateTokenFeeSchedule',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$getTokenInfo = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.TokenService/getTokenInfo',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$getTokenNftInfo = $grpc.ClientMethod<$2.Query, $3.Response>(
      '/proto.TokenService/getTokenNftInfo',
      ($2.Query value) => value.writeToBuffer(),
      $3.Response.fromBuffer);
  static final _$pauseToken =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/pauseToken',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$unpauseToken =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/unpauseToken',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$updateNfts =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/updateNfts',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$rejectToken =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/rejectToken',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$airdropTokens =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/airdropTokens',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$cancelAirdrop =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/cancelAirdrop',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
  static final _$claimAirdrop =
      $grpc.ClientMethod<$0.Transaction, $1.TransactionResponse>(
          '/proto.TokenService/claimAirdrop',
          ($0.Transaction value) => value.writeToBuffer(),
          $1.TransactionResponse.fromBuffer);
}

@$pb.GrpcServiceName('proto.TokenService')
abstract class TokenServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.TokenService';

  TokenServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'createToken',
        createToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'updateToken',
        updateToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'mintToken',
        mintToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'burnToken',
        burnToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'deleteToken',
        deleteToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'wipeTokenAccount',
        wipeTokenAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'freezeTokenAccount',
        freezeTokenAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'unfreezeTokenAccount',
        unfreezeTokenAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'grantKycToTokenAccount',
        grantKycToTokenAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'revokeKycFromTokenAccount',
        revokeKycFromTokenAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'associateTokens',
        associateTokens_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'dissociateTokens',
        dissociateTokens_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'updateTokenFeeSchedule',
        updateTokenFeeSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getTokenInfo',
        getTokenInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Query, $3.Response>(
        'getTokenNftInfo',
        getTokenNftInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Query.fromBuffer(value),
        ($3.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'pauseToken',
        pauseToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'unpauseToken',
        unpauseToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'updateNfts',
        updateNfts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'rejectToken',
        rejectToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'airdropTokens',
        airdropTokens_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'cancelAirdrop',
        cancelAirdrop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Transaction, $1.TransactionResponse>(
        'claimAirdrop',
        claimAirdrop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value),
        ($1.TransactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.TransactionResponse> createToken_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return createToken($call, await $request);
  }

  $async.Future<$1.TransactionResponse> createToken(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> updateToken_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return updateToken($call, await $request);
  }

  $async.Future<$1.TransactionResponse> updateToken(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> mintToken_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return mintToken($call, await $request);
  }

  $async.Future<$1.TransactionResponse> mintToken(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> burnToken_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return burnToken($call, await $request);
  }

  $async.Future<$1.TransactionResponse> burnToken(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> deleteToken_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return deleteToken($call, await $request);
  }

  $async.Future<$1.TransactionResponse> deleteToken(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> wipeTokenAccount_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return wipeTokenAccount($call, await $request);
  }

  $async.Future<$1.TransactionResponse> wipeTokenAccount(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> freezeTokenAccount_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return freezeTokenAccount($call, await $request);
  }

  $async.Future<$1.TransactionResponse> freezeTokenAccount(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> unfreezeTokenAccount_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return unfreezeTokenAccount($call, await $request);
  }

  $async.Future<$1.TransactionResponse> unfreezeTokenAccount(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> grantKycToTokenAccount_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return grantKycToTokenAccount($call, await $request);
  }

  $async.Future<$1.TransactionResponse> grantKycToTokenAccount(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> revokeKycFromTokenAccount_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return revokeKycFromTokenAccount($call, await $request);
  }

  $async.Future<$1.TransactionResponse> revokeKycFromTokenAccount(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> associateTokens_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return associateTokens($call, await $request);
  }

  $async.Future<$1.TransactionResponse> associateTokens(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> dissociateTokens_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return dissociateTokens($call, await $request);
  }

  $async.Future<$1.TransactionResponse> dissociateTokens(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> updateTokenFeeSchedule_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return updateTokenFeeSchedule($call, await $request);
  }

  $async.Future<$1.TransactionResponse> updateTokenFeeSchedule(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$3.Response> getTokenInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getTokenInfo($call, await $request);
  }

  $async.Future<$3.Response> getTokenInfo(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$3.Response> getTokenNftInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Query> $request) async {
    return getTokenNftInfo($call, await $request);
  }

  $async.Future<$3.Response> getTokenNftInfo(
      $grpc.ServiceCall call, $2.Query request);

  $async.Future<$1.TransactionResponse> pauseToken_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return pauseToken($call, await $request);
  }

  $async.Future<$1.TransactionResponse> pauseToken(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> unpauseToken_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return unpauseToken($call, await $request);
  }

  $async.Future<$1.TransactionResponse> unpauseToken(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> updateNfts_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return updateNfts($call, await $request);
  }

  $async.Future<$1.TransactionResponse> updateNfts(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> rejectToken_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return rejectToken($call, await $request);
  }

  $async.Future<$1.TransactionResponse> rejectToken(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> airdropTokens_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return airdropTokens($call, await $request);
  }

  $async.Future<$1.TransactionResponse> airdropTokens(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> cancelAirdrop_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return cancelAirdrop($call, await $request);
  }

  $async.Future<$1.TransactionResponse> cancelAirdrop(
      $grpc.ServiceCall call, $0.Transaction request);

  $async.Future<$1.TransactionResponse> claimAirdrop_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Transaction> $request) async {
    return claimAirdrop($call, await $request);
  }

  $async.Future<$1.TransactionResponse> claimAirdrop(
      $grpc.ServiceCall call, $0.Transaction request);
}
