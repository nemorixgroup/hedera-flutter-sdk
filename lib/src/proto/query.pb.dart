// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from query.proto.

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

enum Query_Query {
  getByKey,
  getBySolidityID,
  contractCallLocal,
  contractGetInfo,
  contractGetBytecode,
  contractGetRecords,
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
///  A query transaction.<br/>
///  This message is serialized to bytes and those bytes are signed by the
///  submitter, with the signature included in the QueryHeader for the query
///  request.
class Query extends $pb.GeneratedMessage {
  factory Query({
    $0.GetByKeyQuery? getByKey,
    $1.GetBySolidityIDQuery? getBySolidityID,
    $2.ContractCallLocalQuery? contractCallLocal,
    $3.ContractGetInfoQuery? contractGetInfo,
    $4.ContractGetBytecodeQuery? contractGetBytecode,
    @$core.Deprecated('This field is deprecated.')
    $5.ContractGetRecordsQuery? contractGetRecords,
    $6.CryptoGetAccountBalanceQuery? cryptogetAccountBalance,
    $7.CryptoGetAccountRecordsQuery? cryptoGetAccountRecords,
    $8.CryptoGetInfoQuery? cryptoGetInfo,
    @$core.Deprecated('This field is deprecated.')
    $9.CryptoGetLiveHashQuery? cryptoGetLiveHash,
    @$core.Deprecated('This field is deprecated.')
    $10.CryptoGetStakersQuery? cryptoGetProxyStakers,
    $11.FileGetContentsQuery? fileGetContents,
    $12.FileGetInfoQuery? fileGetInfo,
    $13.TransactionGetReceiptQuery? transactionGetReceipt,
    $14.TransactionGetRecordQuery? transactionGetRecord,
    $15.TransactionGetFastRecordQuery? transactionGetFastRecord,
    $16.ConsensusGetTopicInfoQuery? consensusGetTopicInfo,
    $17.NetworkGetVersionInfoQuery? networkGetVersionInfo,
    $18.TokenGetInfoQuery? tokenGetInfo,
    $19.ScheduleGetInfoQuery? scheduleGetInfo,
    @$core.Deprecated('This field is deprecated.')
    $20.TokenGetAccountNftInfosQuery? tokenGetAccountNftInfos,
    $21.TokenGetNftInfoQuery? tokenGetNftInfo,
    @$core.Deprecated('This field is deprecated.')
    $22.TokenGetNftInfosQuery? tokenGetNftInfos,
    @$core.Deprecated('This field is deprecated.')
    $23.NetworkGetExecutionTimeQuery? networkGetExecutionTime,
    $24.GetAccountDetailsQuery? accountDetails,
  }) {
    final result = create();
    if (getByKey != null) result.getByKey = getByKey;
    if (getBySolidityID != null) result.getBySolidityID = getBySolidityID;
    if (contractCallLocal != null) result.contractCallLocal = contractCallLocal;
    if (contractGetInfo != null) result.contractGetInfo = contractGetInfo;
    if (contractGetBytecode != null)
      result.contractGetBytecode = contractGetBytecode;
    if (contractGetRecords != null)
      result.contractGetRecords = contractGetRecords;
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

  Query._();

  factory Query.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Query.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Query_Query> _Query_QueryByTag = {
    1: Query_Query.getByKey,
    2: Query_Query.getBySolidityID,
    3: Query_Query.contractCallLocal,
    4: Query_Query.contractGetInfo,
    5: Query_Query.contractGetBytecode,
    6: Query_Query.contractGetRecords,
    7: Query_Query.cryptogetAccountBalance,
    8: Query_Query.cryptoGetAccountRecords,
    9: Query_Query.cryptoGetInfo,
    10: Query_Query.cryptoGetLiveHash,
    11: Query_Query.cryptoGetProxyStakers,
    12: Query_Query.fileGetContents,
    13: Query_Query.fileGetInfo,
    14: Query_Query.transactionGetReceipt,
    15: Query_Query.transactionGetRecord,
    16: Query_Query.transactionGetFastRecord,
    50: Query_Query.consensusGetTopicInfo,
    51: Query_Query.networkGetVersionInfo,
    52: Query_Query.tokenGetInfo,
    53: Query_Query.scheduleGetInfo,
    54: Query_Query.tokenGetAccountNftInfos,
    55: Query_Query.tokenGetNftInfo,
    56: Query_Query.tokenGetNftInfos,
    57: Query_Query.networkGetExecutionTime,
    58: Query_Query.accountDetails,
    0: Query_Query.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Query',
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
      50,
      51,
      52,
      53,
      54,
      55,
      56,
      57,
      58
    ])
    ..aOM<$0.GetByKeyQuery>(1, _omitFieldNames ? '' : 'getByKey',
        protoName: 'getByKey', subBuilder: $0.GetByKeyQuery.create)
    ..aOM<$1.GetBySolidityIDQuery>(2, _omitFieldNames ? '' : 'getBySolidityID',
        protoName: 'getBySolidityID',
        subBuilder: $1.GetBySolidityIDQuery.create)
    ..aOM<$2.ContractCallLocalQuery>(
        3, _omitFieldNames ? '' : 'contractCallLocal',
        protoName: 'contractCallLocal',
        subBuilder: $2.ContractCallLocalQuery.create)
    ..aOM<$3.ContractGetInfoQuery>(4, _omitFieldNames ? '' : 'contractGetInfo',
        protoName: 'contractGetInfo',
        subBuilder: $3.ContractGetInfoQuery.create)
    ..aOM<$4.ContractGetBytecodeQuery>(
        5, _omitFieldNames ? '' : 'contractGetBytecode',
        protoName: 'contractGetBytecode',
        subBuilder: $4.ContractGetBytecodeQuery.create)
    ..aOM<$5.ContractGetRecordsQuery>(
        6, _omitFieldNames ? '' : 'ContractGetRecords',
        protoName: 'ContractGetRecords',
        subBuilder: $5.ContractGetRecordsQuery.create)
    ..aOM<$6.CryptoGetAccountBalanceQuery>(
        7, _omitFieldNames ? '' : 'cryptogetAccountBalance',
        protoName: 'cryptogetAccountBalance',
        subBuilder: $6.CryptoGetAccountBalanceQuery.create)
    ..aOM<$7.CryptoGetAccountRecordsQuery>(
        8, _omitFieldNames ? '' : 'cryptoGetAccountRecords',
        protoName: 'cryptoGetAccountRecords',
        subBuilder: $7.CryptoGetAccountRecordsQuery.create)
    ..aOM<$8.CryptoGetInfoQuery>(9, _omitFieldNames ? '' : 'cryptoGetInfo',
        protoName: 'cryptoGetInfo', subBuilder: $8.CryptoGetInfoQuery.create)
    ..aOM<$9.CryptoGetLiveHashQuery>(
        10, _omitFieldNames ? '' : 'cryptoGetLiveHash',
        protoName: 'cryptoGetLiveHash',
        subBuilder: $9.CryptoGetLiveHashQuery.create)
    ..aOM<$10.CryptoGetStakersQuery>(
        11, _omitFieldNames ? '' : 'cryptoGetProxyStakers',
        protoName: 'cryptoGetProxyStakers',
        subBuilder: $10.CryptoGetStakersQuery.create)
    ..aOM<$11.FileGetContentsQuery>(
        12, _omitFieldNames ? '' : 'fileGetContents',
        protoName: 'fileGetContents',
        subBuilder: $11.FileGetContentsQuery.create)
    ..aOM<$12.FileGetInfoQuery>(13, _omitFieldNames ? '' : 'fileGetInfo',
        protoName: 'fileGetInfo', subBuilder: $12.FileGetInfoQuery.create)
    ..aOM<$13.TransactionGetReceiptQuery>(
        14, _omitFieldNames ? '' : 'transactionGetReceipt',
        protoName: 'transactionGetReceipt',
        subBuilder: $13.TransactionGetReceiptQuery.create)
    ..aOM<$14.TransactionGetRecordQuery>(
        15, _omitFieldNames ? '' : 'transactionGetRecord',
        protoName: 'transactionGetRecord',
        subBuilder: $14.TransactionGetRecordQuery.create)
    ..aOM<$15.TransactionGetFastRecordQuery>(
        16, _omitFieldNames ? '' : 'transactionGetFastRecord',
        protoName: 'transactionGetFastRecord',
        subBuilder: $15.TransactionGetFastRecordQuery.create)
    ..aOM<$16.ConsensusGetTopicInfoQuery>(
        50, _omitFieldNames ? '' : 'consensusGetTopicInfo',
        protoName: 'consensusGetTopicInfo',
        subBuilder: $16.ConsensusGetTopicInfoQuery.create)
    ..aOM<$17.NetworkGetVersionInfoQuery>(
        51, _omitFieldNames ? '' : 'networkGetVersionInfo',
        protoName: 'networkGetVersionInfo',
        subBuilder: $17.NetworkGetVersionInfoQuery.create)
    ..aOM<$18.TokenGetInfoQuery>(52, _omitFieldNames ? '' : 'tokenGetInfo',
        protoName: 'tokenGetInfo', subBuilder: $18.TokenGetInfoQuery.create)
    ..aOM<$19.ScheduleGetInfoQuery>(
        53, _omitFieldNames ? '' : 'scheduleGetInfo',
        protoName: 'scheduleGetInfo',
        subBuilder: $19.ScheduleGetInfoQuery.create)
    ..aOM<$20.TokenGetAccountNftInfosQuery>(
        54, _omitFieldNames ? '' : 'tokenGetAccountNftInfos',
        protoName: 'tokenGetAccountNftInfos',
        subBuilder: $20.TokenGetAccountNftInfosQuery.create)
    ..aOM<$21.TokenGetNftInfoQuery>(
        55, _omitFieldNames ? '' : 'tokenGetNftInfo',
        protoName: 'tokenGetNftInfo',
        subBuilder: $21.TokenGetNftInfoQuery.create)
    ..aOM<$22.TokenGetNftInfosQuery>(
        56, _omitFieldNames ? '' : 'tokenGetNftInfos',
        protoName: 'tokenGetNftInfos',
        subBuilder: $22.TokenGetNftInfosQuery.create)
    ..aOM<$23.NetworkGetExecutionTimeQuery>(
        57, _omitFieldNames ? '' : 'networkGetExecutionTime',
        protoName: 'networkGetExecutionTime',
        subBuilder: $23.NetworkGetExecutionTimeQuery.create)
    ..aOM<$24.GetAccountDetailsQuery>(
        58, _omitFieldNames ? '' : 'accountDetails',
        protoName: 'accountDetails',
        subBuilder: $24.GetAccountDetailsQuery.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Query clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Query copyWith(void Function(Query) updates) =>
      super.copyWith((message) => updates(message as Query)) as Query;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Query create() => Query._();
  @$core.override
  Query createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Query getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Query>(create);
  static Query? _defaultInstance;

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
  @$pb.TagNumber(50)
  @$pb.TagNumber(51)
  @$pb.TagNumber(52)
  @$pb.TagNumber(53)
  @$pb.TagNumber(54)
  @$pb.TagNumber(55)
  @$pb.TagNumber(56)
  @$pb.TagNumber(57)
  @$pb.TagNumber(58)
  Query_Query whichQuery() => _Query_QueryByTag[$_whichOneof(0)]!;
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
  @$pb.TagNumber(50)
  @$pb.TagNumber(51)
  @$pb.TagNumber(52)
  @$pb.TagNumber(53)
  @$pb.TagNumber(54)
  @$pb.TagNumber(55)
  @$pb.TagNumber(56)
  @$pb.TagNumber(57)
  @$pb.TagNumber(58)
  void clearQuery() => $_clearField($_whichOneof(0));

  /// *
  ///  Get all entities associated with a given key.
  @$pb.TagNumber(1)
  $0.GetByKeyQuery get getByKey => $_getN(0);
  @$pb.TagNumber(1)
  set getByKey($0.GetByKeyQuery value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGetByKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearGetByKey() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.GetByKeyQuery ensureGetByKey() => $_ensure(0);

  /// *
  ///  Get an Hedera identifier associated with an identifier in EVM
  ///  "Solidity" form.<br/>
  ///  Most often used in smart contracts to find an Hedera account,
  ///  file, or contract identifier to pass to a system contract or
  ///  precompile.
  @$pb.TagNumber(2)
  $1.GetBySolidityIDQuery get getBySolidityID => $_getN(1);
  @$pb.TagNumber(2)
  set getBySolidityID($1.GetBySolidityIDQuery value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGetBySolidityID() => $_has(1);
  @$pb.TagNumber(2)
  void clearGetBySolidityID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.GetBySolidityIDQuery ensureGetBySolidityID() => $_ensure(1);

  /// *
  ///  Call a function of a smart contract.<br/>
  ///  This call is executed exclusively on the node to which it is
  ///  submitted, and is much less expensive than a `contractCall`
  ///  transaction.
  @$pb.TagNumber(3)
  $2.ContractCallLocalQuery get contractCallLocal => $_getN(2);
  @$pb.TagNumber(3)
  set contractCallLocal($2.ContractCallLocalQuery value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasContractCallLocal() => $_has(2);
  @$pb.TagNumber(3)
  void clearContractCallLocal() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.ContractCallLocalQuery ensureContractCallLocal() => $_ensure(2);

  /// *
  ///  Get information about a smart contract.
  @$pb.TagNumber(4)
  $3.ContractGetInfoQuery get contractGetInfo => $_getN(3);
  @$pb.TagNumber(4)
  set contractGetInfo($3.ContractGetInfoQuery value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasContractGetInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearContractGetInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.ContractGetInfoQuery ensureContractGetInfo() => $_ensure(3);

  /// *
  ///  Get runtime bytecode used by a smart contract.
  @$pb.TagNumber(5)
  $4.ContractGetBytecodeQuery get contractGetBytecode => $_getN(4);
  @$pb.TagNumber(5)
  set contractGetBytecode($4.ContractGetBytecodeQuery value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasContractGetBytecode() => $_has(4);
  @$pb.TagNumber(5)
  void clearContractGetBytecode() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.ContractGetBytecodeQuery ensureContractGetBytecode() => $_ensure(4);

  /// *
  ///  This query is unsupported and SHALL fail.<br/>
  ///  Requests for this information MUST be directed to a mirror node.
  ///  <p>
  ///  Get Records of a smart contract.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $5.ContractGetRecordsQuery get contractGetRecords => $_getN(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set contractGetRecords($5.ContractGetRecordsQuery value) =>
      $_setField(6, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasContractGetRecords() => $_has(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearContractGetRecords() => $_clearField(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $5.ContractGetRecordsQuery ensureContractGetRecords() => $_ensure(5);

  /// *
  ///  Get the current HBAR balance of an Hedera account or smart contract.
  @$pb.TagNumber(7)
  $6.CryptoGetAccountBalanceQuery get cryptogetAccountBalance => $_getN(6);
  @$pb.TagNumber(7)
  set cryptogetAccountBalance($6.CryptoGetAccountBalanceQuery value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCryptogetAccountBalance() => $_has(6);
  @$pb.TagNumber(7)
  void clearCryptogetAccountBalance() => $_clearField(7);
  @$pb.TagNumber(7)
  $6.CryptoGetAccountBalanceQuery ensureCryptogetAccountBalance() =>
      $_ensure(6);

  /// *
  ///  Get records of all "recent" transactions for which a specified
  ///  account is the effective payer.
  @$pb.TagNumber(8)
  $7.CryptoGetAccountRecordsQuery get cryptoGetAccountRecords => $_getN(7);
  @$pb.TagNumber(8)
  set cryptoGetAccountRecords($7.CryptoGetAccountRecordsQuery value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCryptoGetAccountRecords() => $_has(7);
  @$pb.TagNumber(8)
  void clearCryptoGetAccountRecords() => $_clearField(8);
  @$pb.TagNumber(8)
  $7.CryptoGetAccountRecordsQuery ensureCryptoGetAccountRecords() =>
      $_ensure(7);

  /// *
  ///  Get information about an account, including the balance.<br/>
  ///  This does not get the list of account records.
  @$pb.TagNumber(9)
  $8.CryptoGetInfoQuery get cryptoGetInfo => $_getN(8);
  @$pb.TagNumber(9)
  set cryptoGetInfo($8.CryptoGetInfoQuery value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCryptoGetInfo() => $_has(8);
  @$pb.TagNumber(9)
  void clearCryptoGetInfo() => $_clearField(9);
  @$pb.TagNumber(9)
  $8.CryptoGetInfoQuery ensureCryptoGetInfo() => $_ensure(8);

  /// *
  ///  This query is unsupported and SHALL fail.<br/>
  ///  Requests for this information MUST be directed to a mirror node.
  ///  <p>
  ///  Get a single livehash from a single account, if present.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $9.CryptoGetLiveHashQuery get cryptoGetLiveHash => $_getN(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set cryptoGetLiveHash($9.CryptoGetLiveHashQuery value) =>
      $_setField(10, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasCryptoGetLiveHash() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearCryptoGetLiveHash() => $_clearField(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $9.CryptoGetLiveHashQuery ensureCryptoGetLiveHash() => $_ensure(9);

  /// *
  ///  This query is unsupported and SHALL fail.<br/>
  ///  Requests for this information MUST be directed to a mirror node.
  ///  <p>
  ///  Get all the accounts that are proxy staking to this account.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $10.CryptoGetStakersQuery get cryptoGetProxyStakers => $_getN(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  set cryptoGetProxyStakers($10.CryptoGetStakersQuery value) =>
      $_setField(11, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.bool hasCryptoGetProxyStakers() => $_has(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  void clearCryptoGetProxyStakers() => $_clearField(11);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $10.CryptoGetStakersQuery ensureCryptoGetProxyStakers() => $_ensure(10);

  /// *
  ///  Get the content of a file.
  @$pb.TagNumber(12)
  $11.FileGetContentsQuery get fileGetContents => $_getN(11);
  @$pb.TagNumber(12)
  set fileGetContents($11.FileGetContentsQuery value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasFileGetContents() => $_has(11);
  @$pb.TagNumber(12)
  void clearFileGetContents() => $_clearField(12);
  @$pb.TagNumber(12)
  $11.FileGetContentsQuery ensureFileGetContents() => $_ensure(11);

  /// *
  ///  Get metadata for a file.
  @$pb.TagNumber(13)
  $12.FileGetInfoQuery get fileGetInfo => $_getN(12);
  @$pb.TagNumber(13)
  set fileGetInfo($12.FileGetInfoQuery value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasFileGetInfo() => $_has(12);
  @$pb.TagNumber(13)
  void clearFileGetInfo() => $_clearField(13);
  @$pb.TagNumber(13)
  $12.FileGetInfoQuery ensureFileGetInfo() => $_ensure(12);

  /// *
  ///  Get a receipt for a transaction.<br/>
  ///  This only returns a receipt if the transaction is "recent", which
  ///  is typically within the previous 180 seconds (3 minutes).
  @$pb.TagNumber(14)
  $13.TransactionGetReceiptQuery get transactionGetReceipt => $_getN(13);
  @$pb.TagNumber(14)
  set transactionGetReceipt($13.TransactionGetReceiptQuery value) =>
      $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasTransactionGetReceipt() => $_has(13);
  @$pb.TagNumber(14)
  void clearTransactionGetReceipt() => $_clearField(14);
  @$pb.TagNumber(14)
  $13.TransactionGetReceiptQuery ensureTransactionGetReceipt() => $_ensure(13);

  /// *
  ///  Get a record for a transaction.
  ///  This only returns a record if the transaction is "available", which
  ///  is typically within the previous 1 hour.
  @$pb.TagNumber(15)
  $14.TransactionGetRecordQuery get transactionGetRecord => $_getN(14);
  @$pb.TagNumber(15)
  set transactionGetRecord($14.TransactionGetRecordQuery value) =>
      $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasTransactionGetRecord() => $_has(14);
  @$pb.TagNumber(15)
  void clearTransactionGetRecord() => $_clearField(15);
  @$pb.TagNumber(15)
  $14.TransactionGetRecordQuery ensureTransactionGetRecord() => $_ensure(14);

  /// *
  ///  Get a record for a transaction.
  ///  This only returns a record if the transaction is "recent", which
  ///  is typically within the previous 180 seconds (3 minutes).
  @$pb.TagNumber(16)
  $15.TransactionGetFastRecordQuery get transactionGetFastRecord => $_getN(15);
  @$pb.TagNumber(16)
  set transactionGetFastRecord($15.TransactionGetFastRecordQuery value) =>
      $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasTransactionGetFastRecord() => $_has(15);
  @$pb.TagNumber(16)
  void clearTransactionGetFastRecord() => $_clearField(16);
  @$pb.TagNumber(16)
  $15.TransactionGetFastRecordQuery ensureTransactionGetFastRecord() =>
      $_ensure(15);

  /// *
  ///  Get metadata for a consensus topic.
  @$pb.TagNumber(50)
  $16.ConsensusGetTopicInfoQuery get consensusGetTopicInfo => $_getN(16);
  @$pb.TagNumber(50)
  set consensusGetTopicInfo($16.ConsensusGetTopicInfoQuery value) =>
      $_setField(50, value);
  @$pb.TagNumber(50)
  $core.bool hasConsensusGetTopicInfo() => $_has(16);
  @$pb.TagNumber(50)
  void clearConsensusGetTopicInfo() => $_clearField(50);
  @$pb.TagNumber(50)
  $16.ConsensusGetTopicInfoQuery ensureConsensusGetTopicInfo() => $_ensure(16);

  /// *
  ///  Get the versions of Hedera Services and the HAPI API deployed on
  ///  the responding consensus node.
  @$pb.TagNumber(51)
  $17.NetworkGetVersionInfoQuery get networkGetVersionInfo => $_getN(17);
  @$pb.TagNumber(51)
  set networkGetVersionInfo($17.NetworkGetVersionInfoQuery value) =>
      $_setField(51, value);
  @$pb.TagNumber(51)
  $core.bool hasNetworkGetVersionInfo() => $_has(17);
  @$pb.TagNumber(51)
  void clearNetworkGetVersionInfo() => $_clearField(51);
  @$pb.TagNumber(51)
  $17.NetworkGetVersionInfoQuery ensureNetworkGetVersionInfo() => $_ensure(17);

  /// *
  ///  Get metadata for a token.
  @$pb.TagNumber(52)
  $18.TokenGetInfoQuery get tokenGetInfo => $_getN(18);
  @$pb.TagNumber(52)
  set tokenGetInfo($18.TokenGetInfoQuery value) => $_setField(52, value);
  @$pb.TagNumber(52)
  $core.bool hasTokenGetInfo() => $_has(18);
  @$pb.TagNumber(52)
  void clearTokenGetInfo() => $_clearField(52);
  @$pb.TagNumber(52)
  $18.TokenGetInfoQuery ensureTokenGetInfo() => $_ensure(18);

  /// *
  ///  Get metadata for a schedule.<br/>
  ///  A schedule is a request to execute a transaction at a future
  ///  time.
  @$pb.TagNumber(53)
  $19.ScheduleGetInfoQuery get scheduleGetInfo => $_getN(19);
  @$pb.TagNumber(53)
  set scheduleGetInfo($19.ScheduleGetInfoQuery value) => $_setField(53, value);
  @$pb.TagNumber(53)
  $core.bool hasScheduleGetInfo() => $_has(19);
  @$pb.TagNumber(53)
  void clearScheduleGetInfo() => $_clearField(53);
  @$pb.TagNumber(53)
  $19.ScheduleGetInfoQuery ensureScheduleGetInfo() => $_ensure(19);

  /// *
  ///  This query is unsupported and SHALL fail.<br/>
  ///  Requests for this information MUST be directed to a mirror node.
  ///  <p>
  ///  Get a list of non-fungible/unique tokens associated with an account.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(54)
  $20.TokenGetAccountNftInfosQuery get tokenGetAccountNftInfos => $_getN(20);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(54)
  set tokenGetAccountNftInfos($20.TokenGetAccountNftInfosQuery value) =>
      $_setField(54, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(54)
  $core.bool hasTokenGetAccountNftInfos() => $_has(20);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(54)
  void clearTokenGetAccountNftInfos() => $_clearField(54);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(54)
  $20.TokenGetAccountNftInfosQuery ensureTokenGetAccountNftInfos() =>
      $_ensure(20);

  /// *
  ///  Get metadata for a specific, serial numbered, non-fungible/unique
  ///  token (NFT).
  @$pb.TagNumber(55)
  $21.TokenGetNftInfoQuery get tokenGetNftInfo => $_getN(21);
  @$pb.TagNumber(55)
  set tokenGetNftInfo($21.TokenGetNftInfoQuery value) => $_setField(55, value);
  @$pb.TagNumber(55)
  $core.bool hasTokenGetNftInfo() => $_has(21);
  @$pb.TagNumber(55)
  void clearTokenGetNftInfo() => $_clearField(55);
  @$pb.TagNumber(55)
  $21.TokenGetNftInfoQuery ensureTokenGetNftInfo() => $_ensure(21);

  /// *
  ///  This query is unsupported and SHALL fail.<br/>
  ///  Requests for this information MUST be directed to a mirror node.
  ///  <p>
  ///  Get metadata for all non-fungible/unique tokens (NFTs) of a single
  ///  type within a range of indices (0-based count of minted tokens).
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(56)
  $22.TokenGetNftInfosQuery get tokenGetNftInfos => $_getN(22);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(56)
  set tokenGetNftInfos($22.TokenGetNftInfosQuery value) =>
      $_setField(56, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(56)
  $core.bool hasTokenGetNftInfos() => $_has(22);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(56)
  void clearTokenGetNftInfos() => $_clearField(56);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(56)
  $22.TokenGetNftInfosQuery ensureTokenGetNftInfos() => $_ensure(22);

  /// *
  ///  This query is unsupported and SHALL fail.<br/>
  ///  Requests for this information MUST be directed to a mirror node.
  ///  <p>
  ///  Get the execution time for a recent transaction.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(57)
  $23.NetworkGetExecutionTimeQuery get networkGetExecutionTime => $_getN(23);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(57)
  set networkGetExecutionTime($23.NetworkGetExecutionTimeQuery value) =>
      $_setField(57, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(57)
  $core.bool hasNetworkGetExecutionTime() => $_has(23);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(57)
  void clearNetworkGetExecutionTime() => $_clearField(57);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(57)
  $23.NetworkGetExecutionTimeQuery ensureNetworkGetExecutionTime() =>
      $_ensure(23);

  /// *
  ///  Get detail metadata for an account.
  @$pb.TagNumber(58)
  $24.GetAccountDetailsQuery get accountDetails => $_getN(24);
  @$pb.TagNumber(58)
  set accountDetails($24.GetAccountDetailsQuery value) => $_setField(58, value);
  @$pb.TagNumber(58)
  $core.bool hasAccountDetails() => $_has(24);
  @$pb.TagNumber(58)
  void clearAccountDetails() => $_clearField(58);
  @$pb.TagNumber(58)
  $24.GetAccountDetailsQuery ensureAccountDetails() => $_ensure(24);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
