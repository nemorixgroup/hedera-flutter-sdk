// This is a generated file - do not edit.
//
// Generated from response.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'consensus_get_topic_info.pb.dart' as $16;
import 'contract_call_local.pb.dart' as $2;
import 'contract_get_bytecode.pb.dart' as $4;
import 'contract_get_info.pb.dart' as $3;
import 'contract_get_records.pb.dart' as $5;
import 'crypto_get_account_balance.pb.dart' as $6;
import 'crypto_get_account_records.pb.dart' as $7;
import 'crypto_get_info.pb.dart' as $8;
import 'crypto_get_live_hash.pb.dart' as $9;
import 'crypto_get_stakers.pb.dart' as $10;
import 'file_get_contents.pb.dart' as $11;
import 'file_get_info.pb.dart' as $12;
import 'get_account_details.pb.dart' as $24;
import 'get_by_key.pb.dart' as $0;
import 'get_by_solidity_id.pb.dart' as $1;
import 'network_get_execution_time.pb.dart' as $23;
import 'network_get_version_info.pb.dart' as $17;
import 'schedule_get_info.pb.dart' as $19;
import 'token_get_account_nft_infos.pb.dart' as $20;
import 'token_get_info.pb.dart' as $18;
import 'token_get_nft_info.pb.dart' as $21;
import 'token_get_nft_infos.pb.dart' as $22;
import 'transaction_get_fast_record.pb.dart' as $15;
import 'transaction_get_receipt.pb.dart' as $13;
import 'transaction_get_record.pb.dart' as $14;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum Response_Response {
  getByKey,
  getBySolidityID,
  contractCallLocal,
  contractGetInfo,
  contractGetBytecodeResponse,
  contractGetRecordsResponse,
  cryptogetAccountBalance,
  cryptoGetAccountRecords,
  cryptoGetInfo,
  cryptoGetLiveHash,
  cryptoGetProxyStakers,
  fileGetContents,
  fileGetInfo,
  transactionGetReceipt,
  transactionGetRecord,
  transactionGetFastRecord,
  consensusGetTopicInfo,
  networkGetVersionInfo,
  tokenGetInfo,
  scheduleGetInfo,
  tokenGetAccountNftInfos,
  tokenGetNftInfo,
  tokenGetNftInfos,
  networkGetExecutionTime,
  accountDetails,
  notSet
}

/// *
///  A single query response.
///
///  Each query MUST define its specific response type.<br/>
///  Each query response MUST include both the information request and a
///  `ResponseHeader`.<br/>
///  All possible query response types MUST be listed here in a `oneof`.
class Response extends $pb.GeneratedMessage {
  factory Response({
    $0.GetByKeyResponse? getByKey,
    $1.GetBySolidityIDResponse? getBySolidityID,
    $2.ContractCallLocalResponse? contractCallLocal,
    $3.ContractGetInfoResponse? contractGetInfo,
    $4.ContractGetBytecodeResponse? contractGetBytecodeResponse,
    $5.ContractGetRecordsResponse? contractGetRecordsResponse,
    $6.CryptoGetAccountBalanceResponse? cryptogetAccountBalance,
    $7.CryptoGetAccountRecordsResponse? cryptoGetAccountRecords,
    $8.CryptoGetInfoResponse? cryptoGetInfo,
    $9.CryptoGetLiveHashResponse? cryptoGetLiveHash,
    $10.CryptoGetStakersResponse? cryptoGetProxyStakers,
    $11.FileGetContentsResponse? fileGetContents,
    $12.FileGetInfoResponse? fileGetInfo,
    $13.TransactionGetReceiptResponse? transactionGetReceipt,
    $14.TransactionGetRecordResponse? transactionGetRecord,
    $15.TransactionGetFastRecordResponse? transactionGetFastRecord,
    $16.ConsensusGetTopicInfoResponse? consensusGetTopicInfo,
    $17.NetworkGetVersionInfoResponse? networkGetVersionInfo,
    $18.TokenGetInfoResponse? tokenGetInfo,
    $19.ScheduleGetInfoResponse? scheduleGetInfo,
    $20.TokenGetAccountNftInfosResponse? tokenGetAccountNftInfos,
    $21.TokenGetNftInfoResponse? tokenGetNftInfo,
    $22.TokenGetNftInfosResponse? tokenGetNftInfos,
    $23.NetworkGetExecutionTimeResponse? networkGetExecutionTime,
    $24.GetAccountDetailsResponse? accountDetails,
  }) {
    final result = create();
    if (getByKey != null) result.getByKey = getByKey;
    if (getBySolidityID != null) result.getBySolidityID = getBySolidityID;
    if (contractCallLocal != null) result.contractCallLocal = contractCallLocal;
    if (contractGetInfo != null) result.contractGetInfo = contractGetInfo;
    if (contractGetBytecodeResponse != null)
      result.contractGetBytecodeResponse = contractGetBytecodeResponse;
    if (contractGetRecordsResponse != null)
      result.contractGetRecordsResponse = contractGetRecordsResponse;
    if (cryptogetAccountBalance != null)
      result.cryptogetAccountBalance = cryptogetAccountBalance;
    if (cryptoGetAccountRecords != null)
      result.cryptoGetAccountRecords = cryptoGetAccountRecords;
    if (cryptoGetInfo != null) result.cryptoGetInfo = cryptoGetInfo;
    if (cryptoGetLiveHash != null) result.cryptoGetLiveHash = cryptoGetLiveHash;
    if (cryptoGetProxyStakers != null)
      result.cryptoGetProxyStakers = cryptoGetProxyStakers;
    if (fileGetContents != null) result.fileGetContents = fileGetContents;
    if (fileGetInfo != null) result.fileGetInfo = fileGetInfo;
    if (transactionGetReceipt != null)
      result.transactionGetReceipt = transactionGetReceipt;
    if (transactionGetRecord != null)
      result.transactionGetRecord = transactionGetRecord;
    if (transactionGetFastRecord != null)
      result.transactionGetFastRecord = transactionGetFastRecord;
    if (consensusGetTopicInfo != null)
      result.consensusGetTopicInfo = consensusGetTopicInfo;
    if (networkGetVersionInfo != null)
      result.networkGetVersionInfo = networkGetVersionInfo;
    if (tokenGetInfo != null) result.tokenGetInfo = tokenGetInfo;
    if (scheduleGetInfo != null) result.scheduleGetInfo = scheduleGetInfo;
    if (tokenGetAccountNftInfos != null)
      result.tokenGetAccountNftInfos = tokenGetAccountNftInfos;
    if (tokenGetNftInfo != null) result.tokenGetNftInfo = tokenGetNftInfo;
    if (tokenGetNftInfos != null) result.tokenGetNftInfos = tokenGetNftInfos;
    if (networkGetExecutionTime != null)
      result.networkGetExecutionTime = networkGetExecutionTime;
    if (accountDetails != null) result.accountDetails = accountDetails;
    return result;
  }

  Response._();

  factory Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Response_Response> _Response_ResponseByTag =
      {
    1: Response_Response.getByKey,
    2: Response_Response.getBySolidityID,
    3: Response_Response.contractCallLocal,
    4: Response_Response.contractGetInfo,
    5: Response_Response.contractGetBytecodeResponse,
    6: Response_Response.contractGetRecordsResponse,
    7: Response_Response.cryptogetAccountBalance,
    8: Response_Response.cryptoGetAccountRecords,
    9: Response_Response.cryptoGetInfo,
    10: Response_Response.cryptoGetLiveHash,
    11: Response_Response.cryptoGetProxyStakers,
    12: Response_Response.fileGetContents,
    13: Response_Response.fileGetInfo,
    14: Response_Response.transactionGetReceipt,
    15: Response_Response.transactionGetRecord,
    16: Response_Response.transactionGetFastRecord,
    150: Response_Response.consensusGetTopicInfo,
    151: Response_Response.networkGetVersionInfo,
    152: Response_Response.tokenGetInfo,
    153: Response_Response.scheduleGetInfo,
    154: Response_Response.tokenGetAccountNftInfos,
    155: Response_Response.tokenGetNftInfo,
    156: Response_Response.tokenGetNftInfos,
    157: Response_Response.networkGetExecutionTime,
    158: Response_Response.accountDetails,
    0: Response_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      150,
      151,
      152,
      153,
      154,
      155,
      156,
      157,
      158
    ])
    ..aOM<$0.GetByKeyResponse>(1, _omitFieldNames ? '' : 'getByKey',
        protoName: 'getByKey', subBuilder: $0.GetByKeyResponse.create)
    ..aOM<$1.GetBySolidityIDResponse>(
        2, _omitFieldNames ? '' : 'getBySolidityID',
        protoName: 'getBySolidityID',
        subBuilder: $1.GetBySolidityIDResponse.create)
    ..aOM<$2.ContractCallLocalResponse>(
        3, _omitFieldNames ? '' : 'contractCallLocal',
        protoName: 'contractCallLocal',
        subBuilder: $2.ContractCallLocalResponse.create)
    ..aOM<$3.ContractGetInfoResponse>(
        4, _omitFieldNames ? '' : 'contractGetInfo',
        protoName: 'contractGetInfo',
        subBuilder: $3.ContractGetInfoResponse.create)
    ..aOM<$4.ContractGetBytecodeResponse>(
        5, _omitFieldNames ? '' : 'contractGetBytecodeResponse',
        protoName: 'contractGetBytecodeResponse',
        subBuilder: $4.ContractGetBytecodeResponse.create)
    ..aOM<$5.ContractGetRecordsResponse>(
        6, _omitFieldNames ? '' : 'contractGetRecordsResponse',
        protoName: 'contractGetRecordsResponse',
        subBuilder: $5.ContractGetRecordsResponse.create)
    ..aOM<$6.CryptoGetAccountBalanceResponse>(
        7, _omitFieldNames ? '' : 'cryptogetAccountBalance',
        protoName: 'cryptogetAccountBalance',
        subBuilder: $6.CryptoGetAccountBalanceResponse.create)
    ..aOM<$7.CryptoGetAccountRecordsResponse>(
        8, _omitFieldNames ? '' : 'cryptoGetAccountRecords',
        protoName: 'cryptoGetAccountRecords',
        subBuilder: $7.CryptoGetAccountRecordsResponse.create)
    ..aOM<$8.CryptoGetInfoResponse>(9, _omitFieldNames ? '' : 'cryptoGetInfo',
        protoName: 'cryptoGetInfo', subBuilder: $8.CryptoGetInfoResponse.create)
    ..aOM<$9.CryptoGetLiveHashResponse>(
        10, _omitFieldNames ? '' : 'cryptoGetLiveHash',
        protoName: 'cryptoGetLiveHash',
        subBuilder: $9.CryptoGetLiveHashResponse.create)
    ..aOM<$10.CryptoGetStakersResponse>(
        11, _omitFieldNames ? '' : 'cryptoGetProxyStakers',
        protoName: 'cryptoGetProxyStakers',
        subBuilder: $10.CryptoGetStakersResponse.create)
    ..aOM<$11.FileGetContentsResponse>(
        12, _omitFieldNames ? '' : 'fileGetContents',
        protoName: 'fileGetContents',
        subBuilder: $11.FileGetContentsResponse.create)
    ..aOM<$12.FileGetInfoResponse>(13, _omitFieldNames ? '' : 'fileGetInfo',
        protoName: 'fileGetInfo', subBuilder: $12.FileGetInfoResponse.create)
    ..aOM<$13.TransactionGetReceiptResponse>(
        14, _omitFieldNames ? '' : 'transactionGetReceipt',
        protoName: 'transactionGetReceipt',
        subBuilder: $13.TransactionGetReceiptResponse.create)
    ..aOM<$14.TransactionGetRecordResponse>(
        15, _omitFieldNames ? '' : 'transactionGetRecord',
        protoName: 'transactionGetRecord',
        subBuilder: $14.TransactionGetRecordResponse.create)
    ..aOM<$15.TransactionGetFastRecordResponse>(
        16, _omitFieldNames ? '' : 'transactionGetFastRecord',
        protoName: 'transactionGetFastRecord',
        subBuilder: $15.TransactionGetFastRecordResponse.create)
    ..aOM<$16.ConsensusGetTopicInfoResponse>(
        150, _omitFieldNames ? '' : 'consensusGetTopicInfo',
        protoName: 'consensusGetTopicInfo',
        subBuilder: $16.ConsensusGetTopicInfoResponse.create)
    ..aOM<$17.NetworkGetVersionInfoResponse>(
        151, _omitFieldNames ? '' : 'networkGetVersionInfo',
        protoName: 'networkGetVersionInfo',
        subBuilder: $17.NetworkGetVersionInfoResponse.create)
    ..aOM<$18.TokenGetInfoResponse>(152, _omitFieldNames ? '' : 'tokenGetInfo',
        protoName: 'tokenGetInfo', subBuilder: $18.TokenGetInfoResponse.create)
    ..aOM<$19.ScheduleGetInfoResponse>(
        153, _omitFieldNames ? '' : 'scheduleGetInfo',
        protoName: 'scheduleGetInfo',
        subBuilder: $19.ScheduleGetInfoResponse.create)
    ..aOM<$20.TokenGetAccountNftInfosResponse>(
        154, _omitFieldNames ? '' : 'tokenGetAccountNftInfos',
        protoName: 'tokenGetAccountNftInfos',
        subBuilder: $20.TokenGetAccountNftInfosResponse.create)
    ..aOM<$21.TokenGetNftInfoResponse>(
        155, _omitFieldNames ? '' : 'tokenGetNftInfo',
        protoName: 'tokenGetNftInfo',
        subBuilder: $21.TokenGetNftInfoResponse.create)
    ..aOM<$22.TokenGetNftInfosResponse>(
        156, _omitFieldNames ? '' : 'tokenGetNftInfos',
        protoName: 'tokenGetNftInfos',
        subBuilder: $22.TokenGetNftInfosResponse.create)
    ..aOM<$23.NetworkGetExecutionTimeResponse>(
        157, _omitFieldNames ? '' : 'networkGetExecutionTime',
        protoName: 'networkGetExecutionTime',
        subBuilder: $23.NetworkGetExecutionTimeResponse.create)
    ..aOM<$24.GetAccountDetailsResponse>(
        158, _omitFieldNames ? '' : 'accountDetails',
        protoName: 'accountDetails',
        subBuilder: $24.GetAccountDetailsResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Response copyWith(void Function(Response) updates) =>
      super.copyWith((message) => updates(message as Response)) as Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  @$core.override
  Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(150)
  @$pb.TagNumber(151)
  @$pb.TagNumber(152)
  @$pb.TagNumber(153)
  @$pb.TagNumber(154)
  @$pb.TagNumber(155)
  @$pb.TagNumber(156)
  @$pb.TagNumber(157)
  @$pb.TagNumber(158)
  Response_Response whichResponse() =>
      _Response_ResponseByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(150)
  @$pb.TagNumber(151)
  @$pb.TagNumber(152)
  @$pb.TagNumber(153)
  @$pb.TagNumber(154)
  @$pb.TagNumber(155)
  @$pb.TagNumber(156)
  @$pb.TagNumber(157)
  @$pb.TagNumber(158)
  void clearResponse() => $_clearField($_whichOneof(0));

  /// *
  ///  A response for a query requesting all accounts, claims, files, and
  ///  smart contract instances whose associated keys include the given Key.
  ///  <p>
  ///  > This query is no longer supported.
  @$pb.TagNumber(1)
  $0.GetByKeyResponse get getByKey => $_getN(0);
  @$pb.TagNumber(1)
  set getByKey($0.GetByKeyResponse value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGetByKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearGetByKey() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.GetByKeyResponse ensureGetByKey() => $_ensure(0);

  /// *
  ///  A response for a query requesting Contract, Account, and File
  ///  identifiers for a smart contract, given a Solidity identifier.
  @$pb.TagNumber(2)
  $1.GetBySolidityIDResponse get getBySolidityID => $_getN(1);
  @$pb.TagNumber(2)
  set getBySolidityID($1.GetBySolidityIDResponse value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGetBySolidityID() => $_has(1);
  @$pb.TagNumber(2)
  void clearGetBySolidityID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.GetBySolidityIDResponse ensureGetBySolidityID() => $_ensure(1);

  /// *
  ///  A response for a _local_ call to a query function of a given smart
  ///  contract, providing function parameter inputs as needed.
  ///  <p>
  ///  > This call is only performed on the local node. It is _not_ a
  ///  > network consensus result.
  @$pb.TagNumber(3)
  $2.ContractCallLocalResponse get contractCallLocal => $_getN(2);
  @$pb.TagNumber(3)
  set contractCallLocal($2.ContractCallLocalResponse value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasContractCallLocal() => $_has(2);
  @$pb.TagNumber(3)
  void clearContractCallLocal() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.ContractCallLocalResponse ensureContractCallLocal() => $_ensure(2);

  /// *
  ///  A response for a query requesting detailed information about
  ///  a smart contract.
  @$pb.TagNumber(4)
  $3.ContractGetInfoResponse get contractGetInfo => $_getN(3);
  @$pb.TagNumber(4)
  set contractGetInfo($3.ContractGetInfoResponse value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasContractGetInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearContractGetInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.ContractGetInfoResponse ensureContractGetInfo() => $_ensure(3);

  /// *
  ///  A response for a query requesting the current bytecode for
  ///  a smart contract.
  @$pb.TagNumber(5)
  $4.ContractGetBytecodeResponse get contractGetBytecodeResponse => $_getN(4);
  @$pb.TagNumber(5)
  set contractGetBytecodeResponse($4.ContractGetBytecodeResponse value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasContractGetBytecodeResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearContractGetBytecodeResponse() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.ContractGetBytecodeResponse ensureContractGetBytecodeResponse() =>
      $_ensure(4);

  /// *
  ///  A response for a query requesting records of all transactions
  ///  against the given contract in the last 25 hours.
  ///  <p>
  ///  > This query is no longer supported.
  @$pb.TagNumber(6)
  $5.ContractGetRecordsResponse get contractGetRecordsResponse => $_getN(5);
  @$pb.TagNumber(6)
  set contractGetRecordsResponse($5.ContractGetRecordsResponse value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasContractGetRecordsResponse() => $_has(5);
  @$pb.TagNumber(6)
  void clearContractGetRecordsResponse() => $_clearField(6);
  @$pb.TagNumber(6)
  $5.ContractGetRecordsResponse ensureContractGetRecordsResponse() =>
      $_ensure(5);

  /// *
  ///  A response for a query requesting the HBAR balance of an account
  ///  or contract.
  @$pb.TagNumber(7)
  $6.CryptoGetAccountBalanceResponse get cryptogetAccountBalance => $_getN(6);
  @$pb.TagNumber(7)
  set cryptogetAccountBalance($6.CryptoGetAccountBalanceResponse value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCryptogetAccountBalance() => $_has(6);
  @$pb.TagNumber(7)
  void clearCryptogetAccountBalance() => $_clearField(7);
  @$pb.TagNumber(7)
  $6.CryptoGetAccountBalanceResponse ensureCryptogetAccountBalance() =>
      $_ensure(6);

  /// *
  ///  A response for a query requesting records of all "recent"
  ///  transactions for which the specified account is the effective payer.
  @$pb.TagNumber(8)
  $7.CryptoGetAccountRecordsResponse get cryptoGetAccountRecords => $_getN(7);
  @$pb.TagNumber(8)
  set cryptoGetAccountRecords($7.CryptoGetAccountRecordsResponse value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCryptoGetAccountRecords() => $_has(7);
  @$pb.TagNumber(8)
  void clearCryptoGetAccountRecords() => $_clearField(8);
  @$pb.TagNumber(8)
  $7.CryptoGetAccountRecordsResponse ensureCryptoGetAccountRecords() =>
      $_ensure(7);

  /// *
  ///  A response for a query requesting information for an account.<br/>
  ///  This query includes balance, but not allowances or token
  ///  relationships.
  @$pb.TagNumber(9)
  $8.CryptoGetInfoResponse get cryptoGetInfo => $_getN(8);
  @$pb.TagNumber(9)
  set cryptoGetInfo($8.CryptoGetInfoResponse value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCryptoGetInfo() => $_has(8);
  @$pb.TagNumber(9)
  void clearCryptoGetInfo() => $_clearField(9);
  @$pb.TagNumber(9)
  $8.CryptoGetInfoResponse ensureCryptoGetInfo() => $_ensure(8);

  /// *
  ///  A response for a query requesting detail for a specific live hash
  ///  associated to a specific account.
  ///  <p>
  ///  > This query is no longer supported.
  @$pb.TagNumber(10)
  $9.CryptoGetLiveHashResponse get cryptoGetLiveHash => $_getN(9);
  @$pb.TagNumber(10)
  set cryptoGetLiveHash($9.CryptoGetLiveHashResponse value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasCryptoGetLiveHash() => $_has(9);
  @$pb.TagNumber(10)
  void clearCryptoGetLiveHash() => $_clearField(10);
  @$pb.TagNumber(10)
  $9.CryptoGetLiveHashResponse ensureCryptoGetLiveHash() => $_ensure(9);

  /// *
  ///  A response for a query requesting all the accounts that are proxy
  ///  staking to this account.
  ///  <p>
  ///  > This query is no longer supported.
  @$pb.TagNumber(11)
  $10.CryptoGetStakersResponse get cryptoGetProxyStakers => $_getN(10);
  @$pb.TagNumber(11)
  set cryptoGetProxyStakers($10.CryptoGetStakersResponse value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasCryptoGetProxyStakers() => $_has(10);
  @$pb.TagNumber(11)
  void clearCryptoGetProxyStakers() => $_clearField(11);
  @$pb.TagNumber(11)
  $10.CryptoGetStakersResponse ensureCryptoGetProxyStakers() => $_ensure(10);

  /// *
  ///  A response for a query requesting the content of a file in the
  ///  Hedera File Service (HFS).
  @$pb.TagNumber(12)
  $11.FileGetContentsResponse get fileGetContents => $_getN(11);
  @$pb.TagNumber(12)
  set fileGetContents($11.FileGetContentsResponse value) =>
      $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasFileGetContents() => $_has(11);
  @$pb.TagNumber(12)
  void clearFileGetContents() => $_clearField(12);
  @$pb.TagNumber(12)
  $11.FileGetContentsResponse ensureFileGetContents() => $_ensure(11);

  /// *
  ///  A response for a query requesting file metadata from the
  ///  Hedera File Service (HFS).
  @$pb.TagNumber(13)
  $12.FileGetInfoResponse get fileGetInfo => $_getN(12);
  @$pb.TagNumber(13)
  set fileGetInfo($12.FileGetInfoResponse value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasFileGetInfo() => $_has(12);
  @$pb.TagNumber(13)
  void clearFileGetInfo() => $_clearField(13);
  @$pb.TagNumber(13)
  $12.FileGetInfoResponse ensureFileGetInfo() => $_ensure(12);

  /// *
  ///  A response for a query requesting the post-consensus (final)
  ///  result of a transaction.
  @$pb.TagNumber(14)
  $13.TransactionGetReceiptResponse get transactionGetReceipt => $_getN(13);
  @$pb.TagNumber(14)
  set transactionGetReceipt($13.TransactionGetReceiptResponse value) =>
      $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasTransactionGetReceipt() => $_has(13);
  @$pb.TagNumber(14)
  void clearTransactionGetReceipt() => $_clearField(14);
  @$pb.TagNumber(14)
  $13.TransactionGetReceiptResponse ensureTransactionGetReceipt() =>
      $_ensure(13);

  /// *
  ///  A response for a query requesting a transaction record; the detail
  ///  changes completed in response to a transaction.
  @$pb.TagNumber(15)
  $14.TransactionGetRecordResponse get transactionGetRecord => $_getN(14);
  @$pb.TagNumber(15)
  set transactionGetRecord($14.TransactionGetRecordResponse value) =>
      $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasTransactionGetRecord() => $_has(14);
  @$pb.TagNumber(15)
  void clearTransactionGetRecord() => $_clearField(15);
  @$pb.TagNumber(15)
  $14.TransactionGetRecordResponse ensureTransactionGetRecord() => $_ensure(14);

  /// *
  ///  A response for a query requesting a very recent transaction record.
  ///  <p>
  ///  > This query is no longer supported.
  @$pb.TagNumber(16)
  $15.TransactionGetFastRecordResponse get transactionGetFastRecord =>
      $_getN(15);
  @$pb.TagNumber(16)
  set transactionGetFastRecord($15.TransactionGetFastRecordResponse value) =>
      $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasTransactionGetFastRecord() => $_has(15);
  @$pb.TagNumber(16)
  void clearTransactionGetFastRecord() => $_clearField(16);
  @$pb.TagNumber(16)
  $15.TransactionGetFastRecordResponse ensureTransactionGetFastRecord() =>
      $_ensure(15);

  /// *
  ///  A response for a query requesting the current state of a topic for
  ///  the Hedera Consensus Service (HCS).
  @$pb.TagNumber(150)
  $16.ConsensusGetTopicInfoResponse get consensusGetTopicInfo => $_getN(16);
  @$pb.TagNumber(150)
  set consensusGetTopicInfo($16.ConsensusGetTopicInfoResponse value) =>
      $_setField(150, value);
  @$pb.TagNumber(150)
  $core.bool hasConsensusGetTopicInfo() => $_has(16);
  @$pb.TagNumber(150)
  void clearConsensusGetTopicInfo() => $_clearField(150);
  @$pb.TagNumber(150)
  $16.ConsensusGetTopicInfoResponse ensureConsensusGetTopicInfo() =>
      $_ensure(16);

  /// *
  ///  A response for a query requesting the deployed versions of Hedera
  ///  Services and the API definitions in semantic version format
  @$pb.TagNumber(151)
  $17.NetworkGetVersionInfoResponse get networkGetVersionInfo => $_getN(17);
  @$pb.TagNumber(151)
  set networkGetVersionInfo($17.NetworkGetVersionInfoResponse value) =>
      $_setField(151, value);
  @$pb.TagNumber(151)
  $core.bool hasNetworkGetVersionInfo() => $_has(17);
  @$pb.TagNumber(151)
  void clearNetworkGetVersionInfo() => $_clearField(151);
  @$pb.TagNumber(151)
  $17.NetworkGetVersionInfoResponse ensureNetworkGetVersionInfo() =>
      $_ensure(17);

  /// *
  ///  A response for a query requesting metadata for a specific Token.
  @$pb.TagNumber(152)
  $18.TokenGetInfoResponse get tokenGetInfo => $_getN(18);
  @$pb.TagNumber(152)
  set tokenGetInfo($18.TokenGetInfoResponse value) => $_setField(152, value);
  @$pb.TagNumber(152)
  $core.bool hasTokenGetInfo() => $_has(18);
  @$pb.TagNumber(152)
  void clearTokenGetInfo() => $_clearField(152);
  @$pb.TagNumber(152)
  $18.TokenGetInfoResponse ensureTokenGetInfo() => $_ensure(18);

  /// *
  ///  A response for a query requesting detail for a scheduled transaction.
  @$pb.TagNumber(153)
  $19.ScheduleGetInfoResponse get scheduleGetInfo => $_getN(19);
  @$pb.TagNumber(153)
  set scheduleGetInfo($19.ScheduleGetInfoResponse value) =>
      $_setField(153, value);
  @$pb.TagNumber(153)
  $core.bool hasScheduleGetInfo() => $_has(19);
  @$pb.TagNumber(153)
  void clearScheduleGetInfo() => $_clearField(153);
  @$pb.TagNumber(153)
  $19.ScheduleGetInfoResponse ensureScheduleGetInfo() => $_ensure(19);

  /// *
  ///  A response for a query requesting detail for a subset of individual
  ///  non-fungible/unique tokens owned by an account.<br/>
  ///  The requested tokens are selected by a list index, which is based
  ///  on the order in which the tokens were added to the account.
  @$pb.TagNumber(154)
  $20.TokenGetAccountNftInfosResponse get tokenGetAccountNftInfos => $_getN(20);
  @$pb.TagNumber(154)
  set tokenGetAccountNftInfos($20.TokenGetAccountNftInfosResponse value) =>
      $_setField(154, value);
  @$pb.TagNumber(154)
  $core.bool hasTokenGetAccountNftInfos() => $_has(20);
  @$pb.TagNumber(154)
  void clearTokenGetAccountNftInfos() => $_clearField(154);
  @$pb.TagNumber(154)
  $20.TokenGetAccountNftInfosResponse ensureTokenGetAccountNftInfos() =>
      $_ensure(20);

  /// *
  ///  A response for a query requesting detail for a specific
  ///  non-fungible/unique token selected by both token identifier and
  ///  serial number.
  @$pb.TagNumber(155)
  $21.TokenGetNftInfoResponse get tokenGetNftInfo => $_getN(21);
  @$pb.TagNumber(155)
  set tokenGetNftInfo($21.TokenGetNftInfoResponse value) =>
      $_setField(155, value);
  @$pb.TagNumber(155)
  $core.bool hasTokenGetNftInfo() => $_has(21);
  @$pb.TagNumber(155)
  void clearTokenGetNftInfo() => $_clearField(155);
  @$pb.TagNumber(155)
  $21.TokenGetNftInfoResponse ensureTokenGetNftInfo() => $_ensure(21);

  /// *
  ///  A response for a query requesting detail for a subset of individual
  ///  non-fungible/unique tokens.<br/>
  ///  The requested tokens are selected by a list index, which is based
  ///  on the order in which the tokens were minted.
  @$pb.TagNumber(156)
  $22.TokenGetNftInfosResponse get tokenGetNftInfos => $_getN(22);
  @$pb.TagNumber(156)
  set tokenGetNftInfos($22.TokenGetNftInfosResponse value) =>
      $_setField(156, value);
  @$pb.TagNumber(156)
  $core.bool hasTokenGetNftInfos() => $_has(22);
  @$pb.TagNumber(156)
  void clearTokenGetNftInfos() => $_clearField(156);
  @$pb.TagNumber(156)
  $22.TokenGetNftInfosResponse ensureTokenGetNftInfos() => $_ensure(22);

  /// *
  ///  A response for a query requesting the time, in nanoseconds, spent
  ///  in direct processing for one or more recent transactions.
  ///  <p>
  ///  > This query is no longer supported.
  @$pb.TagNumber(157)
  $23.NetworkGetExecutionTimeResponse get networkGetExecutionTime => $_getN(23);
  @$pb.TagNumber(157)
  set networkGetExecutionTime($23.NetworkGetExecutionTimeResponse value) =>
      $_setField(157, value);
  @$pb.TagNumber(157)
  $core.bool hasNetworkGetExecutionTime() => $_has(23);
  @$pb.TagNumber(157)
  void clearNetworkGetExecutionTime() => $_clearField(157);
  @$pb.TagNumber(157)
  $23.NetworkGetExecutionTimeResponse ensureNetworkGetExecutionTime() =>
      $_ensure(23);

  /// *
  ///  A response for a query requesting detail information
  ///  about an account.
  ///  <p>
  ///  This query is a privileged query and "system" account authorization
  ///  is REQUIRED for this query.
  @$pb.TagNumber(158)
  $24.GetAccountDetailsResponse get accountDetails => $_getN(24);
  @$pb.TagNumber(158)
  set accountDetails($24.GetAccountDetailsResponse value) =>
      $_setField(158, value);
  @$pb.TagNumber(158)
  $core.bool hasAccountDetails() => $_has(24);
  @$pb.TagNumber(158)
  void clearAccountDetails() => $_clearField(158);
  @$pb.TagNumber(158)
  $24.GetAccountDetailsResponse ensureAccountDetails() => $_ensure(24);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
