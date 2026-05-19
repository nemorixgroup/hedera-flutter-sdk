// This is a generated file - do not edit.
//
// Generated from transaction_receipt.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;
import 'exchange_rate.pb.dart' as $1;
import 'response_code.pbenum.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  The summary of a transaction's result so far.<br/>
///  If the transaction has not reached consensus, this result will
///  be necessarily incomplete.
///
///  Most items in this object are only set for specific transactions.
///  Those values SHALL be unset for all other transactions.
class TransactionReceipt extends $pb.GeneratedMessage {
  factory TransactionReceipt({
    $2.ResponseCodeEnum? status,
    $0.AccountID? accountID,
    $0.FileID? fileID,
    $0.ContractID? contractID,
    $1.ExchangeRateSet? exchangeRate,
    $0.TopicID? topicID,
    $fixnum.Int64? topicSequenceNumber,
    $core.List<$core.int>? topicRunningHash,
    $fixnum.Int64? topicRunningHashVersion,
    $0.TokenID? tokenID,
    $fixnum.Int64? newTotalSupply,
    $0.ScheduleID? scheduleID,
    $0.TransactionID? scheduledTransactionID,
    $core.Iterable<$fixnum.Int64>? serialNumbers,
    $fixnum.Int64? nodeId,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (accountID != null) result.accountID = accountID;
    if (fileID != null) result.fileID = fileID;
    if (contractID != null) result.contractID = contractID;
    if (exchangeRate != null) result.exchangeRate = exchangeRate;
    if (topicID != null) result.topicID = topicID;
    if (topicSequenceNumber != null)
      result.topicSequenceNumber = topicSequenceNumber;
    if (topicRunningHash != null) result.topicRunningHash = topicRunningHash;
    if (topicRunningHashVersion != null)
      result.topicRunningHashVersion = topicRunningHashVersion;
    if (tokenID != null) result.tokenID = tokenID;
    if (newTotalSupply != null) result.newTotalSupply = newTotalSupply;
    if (scheduleID != null) result.scheduleID = scheduleID;
    if (scheduledTransactionID != null)
      result.scheduledTransactionID = scheduledTransactionID;
    if (serialNumbers != null) result.serialNumbers.addAll(serialNumbers);
    if (nodeId != null) result.nodeId = nodeId;
    return result;
  }

  TransactionReceipt._();

  factory TransactionReceipt.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionReceipt.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionReceipt',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aE<$2.ResponseCodeEnum>(1, _omitFieldNames ? '' : 'status',
        enumValues: $2.ResponseCodeEnum.values)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $0.AccountID.create)
    ..aOM<$0.FileID>(3, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $0.FileID.create)
    ..aOM<$0.ContractID>(4, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $0.ContractID.create)
    ..aOM<$1.ExchangeRateSet>(5, _omitFieldNames ? '' : 'exchangeRate',
        protoName: 'exchangeRate', subBuilder: $1.ExchangeRateSet.create)
    ..aOM<$0.TopicID>(6, _omitFieldNames ? '' : 'topicID',
        protoName: 'topicID', subBuilder: $0.TopicID.create)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'topicSequenceNumber', $pb.PbFieldType.OU6,
        protoName: 'topicSequenceNumber', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'topicRunningHash', $pb.PbFieldType.OY,
        protoName: 'topicRunningHash')
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'topicRunningHashVersion',
        $pb.PbFieldType.OU6,
        protoName: 'topicRunningHashVersion',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.TokenID>(10, _omitFieldNames ? '' : 'tokenID',
        protoName: 'tokenID', subBuilder: $0.TokenID.create)
    ..a<$fixnum.Int64>(
        11, _omitFieldNames ? '' : 'newTotalSupply', $pb.PbFieldType.OU6,
        protoName: 'newTotalSupply', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.ScheduleID>(12, _omitFieldNames ? '' : 'scheduleID',
        protoName: 'scheduleID', subBuilder: $0.ScheduleID.create)
    ..aOM<$0.TransactionID>(13, _omitFieldNames ? '' : 'scheduledTransactionID',
        protoName: 'scheduledTransactionID',
        subBuilder: $0.TransactionID.create)
    ..p<$fixnum.Int64>(
        14, _omitFieldNames ? '' : 'serialNumbers', $pb.PbFieldType.K6,
        protoName: 'serialNumbers')
    ..a<$fixnum.Int64>(15, _omitFieldNames ? '' : 'nodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionReceipt clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionReceipt copyWith(void Function(TransactionReceipt) updates) =>
      super.copyWith((message) => updates(message as TransactionReceipt))
          as TransactionReceipt;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionReceipt create() => TransactionReceipt._();
  @$core.override
  TransactionReceipt createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionReceipt getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionReceipt>(create);
  static TransactionReceipt? _defaultInstance;

  /// *
  ///  The consensus status of the transaction.
  ///  <p>
  ///  This SHALL be `UNKNOWN` if consensus has not been reached.<br/>
  ///  This SHALL be `UNKNOWN` if the associated transaction did not have
  ///  a valid payer signature.
  @$pb.TagNumber(1)
  $2.ResponseCodeEnum get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($2.ResponseCodeEnum value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  /// *
  ///  In the receipt of a `CryptoCreate`, the id of the newly created account.
  @$pb.TagNumber(2)
  $0.AccountID get accountID => $_getN(1);
  @$pb.TagNumber(2)
  set accountID($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureAccountID() => $_ensure(1);

  /// *
  ///  In the receipt of a `FileCreate`, the id of the newly created file.
  @$pb.TagNumber(3)
  $0.FileID get fileID => $_getN(2);
  @$pb.TagNumber(3)
  set fileID($0.FileID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFileID() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileID() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.FileID ensureFileID() => $_ensure(2);

  /// *
  ///  In the receipt of a `ContractCreate`, the id of the newly created
  ///  contract.
  @$pb.TagNumber(4)
  $0.ContractID get contractID => $_getN(3);
  @$pb.TagNumber(4)
  set contractID($0.ContractID value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasContractID() => $_has(3);
  @$pb.TagNumber(4)
  void clearContractID() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.ContractID ensureContractID() => $_ensure(3);

  /// *
  ///  The exchange rates in effect when the transaction reached consensus.
  @$pb.TagNumber(5)
  $1.ExchangeRateSet get exchangeRate => $_getN(4);
  @$pb.TagNumber(5)
  set exchangeRate($1.ExchangeRateSet value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExchangeRate() => $_has(4);
  @$pb.TagNumber(5)
  void clearExchangeRate() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.ExchangeRateSet ensureExchangeRate() => $_ensure(4);

  /// *
  ///  In the receipt of a `ConsensusCreateTopic`, the id of the newly
  ///  created topic.
  @$pb.TagNumber(6)
  $0.TopicID get topicID => $_getN(5);
  @$pb.TagNumber(6)
  set topicID($0.TopicID value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTopicID() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopicID() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.TopicID ensureTopicID() => $_ensure(5);

  /// *
  ///  In the receipt of a `ConsensusSubmitMessage`, the new sequence
  ///  number for the topic that received the message.
  @$pb.TagNumber(7)
  $fixnum.Int64 get topicSequenceNumber => $_getI64(6);
  @$pb.TagNumber(7)
  set topicSequenceNumber($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTopicSequenceNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearTopicSequenceNumber() => $_clearField(7);

  /// *
  ///  In the receipt of a `ConsensusSubmitMessage`, the new running hash of
  ///  the topic that received the message.<br/>
  ///  <p>
  ///  The inputs to the topic running hash have changed over time.<br/>
  ///  This 48-byte field is the output of a SHA-384 digest with input data
  ///  determined by the value of the `topicRunningHashVersion` field.<br/>
  ///  All new transactions SHALL use `topicRunningHashVersion` `3`.<br/>
  ///  The bytes of each uint64 or uint32 encoded for the hash input MUST be
  ///  in Big-Endian format.
  ///  <p>
  ///  <hr style="margin: 0.2em 5em 0.2em 5em; height: 0.5em; border-style: solid none solid none; border-width: 2px;"/>
  ///  <p>
  ///  The most recent version is denoted by `topicRunningHashVersion = 3`.
  ///  <p>
  ///  This version SHALL include, in order
  ///  <ol>
  ///   <li>The previous running hash of the topic (48 bytes)</li>
  ///   <li>The `topic_running_hash_version` field (8 bytes)</li>
  ///   <li>The payer account's shard (8 bytes)</li>
  ///   <li>The payer account's realm (8 bytes)</li>
  ///   <li>The payer account's number (8 bytes)</li>
  ///   <li>The topic's shard (8 bytes)</li>
  ///   <li>The topic's realm (8 bytes)</li>
  ///   <li>The topic's number (8 bytes)</li>
  ///   <li>The number of seconds since the epoch when the
  ///       `ConsensusSubmitMessage` reached consensus (8 bytes)</li>
  ///   <li>The number of nanoseconds within the second when the
  ///       `ConsensusSubmitMessage` reached consensus (4 bytes)</li>
  ///   <li>The `topic_sequence_number` field (8 bytes)</li>
  ///   <li>The output of a SHA-384 digest of the message bytes from the
  ///       `ConsensusSubmitMessage` (48 bytes)</li>
  ///  </ol>
  ///  <hr style="margin: 0.2em 5em 0.2em 5em; height: 0.5em; border-style: solid none solid none; border-width: 2px;"/>
  ///  <p>
  ///  The next older version is denoted by `topicRunningHashVersion = 2`.
  ///  <p>
  ///  This version SHALL include, in order
  ///  <ol>
  ///   <li>The previous running hash of the topic (48 bytes)</li>
  ///   <li>The `topic_running_hash_version` field (8 bytes)</li>
  ///   <li>The topic's shard (8 bytes)</li>
  ///   <li>The topic's realm (8 bytes)</li>
  ///   <li>The topic's number (8 bytes)</li>
  ///   <li>The number of seconds since the epoch when the
  ///       `ConsensusSubmitMessage` reached consensus (8 bytes)</li>
  ///   <li>The number of nanoseconds within the second when the
  ///       `ConsensusSubmitMessage` reached consensus (4 bytes)</li>
  ///   <li>The `topic_sequence_number` field (8 bytes)</li>
  ///   <li>The output of a SHA-384 digest of the message bytes from the
  ///       `ConsensusSubmitMessage` (48 bytes)</li>
  ///  </ol>
  ///  <hr style="margin: 0.2em 5em 0.2em 5em; height: 0.5em; border-style: solid none solid none; border-width: 2px;"/>
  ///  <p>
  ///  The original version, used at genesis, is denoted
  ///  by `topicRunningHashVersion = 1` or `topicRunningHashVersion = 0`.
  ///  <p>
  ///  This version SHALL include, in order
  ///  <ol>
  ///   <li>The previous running hash of the topic (48 bytes)</li>
  ///   <li>The topic's shard (8 bytes)</li>
  ///   <li>The topic's realm (8 bytes)</li>
  ///   <li>The topic's number (8 bytes)</li>
  ///   <li>The number of seconds since the epoch when the
  ///       `ConsensusSubmitMessage` reached consensus (8 bytes)</li>
  ///   <li>The number of nanoseconds within the second when the
  ///       `ConsensusSubmitMessage` reached consensus (4 bytes)</li>
  ///   <li>The `topic_sequence_number` field (8 bytes)</li>
  ///   <li>The message bytes from the `ConsensusSubmitMessage`
  ///       (variable)</li>
  ///  </ol>
  @$pb.TagNumber(8)
  $core.List<$core.int> get topicRunningHash => $_getN(7);
  @$pb.TagNumber(8)
  set topicRunningHash($core.List<$core.int> value) => $_setBytes(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTopicRunningHash() => $_has(7);
  @$pb.TagNumber(8)
  void clearTopicRunningHash() => $_clearField(8);

  /// *
  ///  In the receipt of a `ConsensusSubmitMessage`, the version of the
  ///  SHA-384 digest inputs used to update the running hash.
  @$pb.TagNumber(9)
  $fixnum.Int64 get topicRunningHashVersion => $_getI64(8);
  @$pb.TagNumber(9)
  set topicRunningHashVersion($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTopicRunningHashVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearTopicRunningHashVersion() => $_clearField(9);

  /// *
  ///  In the receipt of a `CreateToken`, the id of the newly created token
  @$pb.TagNumber(10)
  $0.TokenID get tokenID => $_getN(9);
  @$pb.TagNumber(10)
  set tokenID($0.TokenID value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasTokenID() => $_has(9);
  @$pb.TagNumber(10)
  void clearTokenID() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.TokenID ensureTokenID() => $_ensure(9);

  /// *
  ///  In the receipt of `TokenMint`, `TokenWipe`, or `TokenBurn`.<br/>
  ///  For non-unique tokens, the current total supply of that token.<br/>
  ///  For unique tokens,the total number of NFTs issued for that token.
  @$pb.TagNumber(11)
  $fixnum.Int64 get newTotalSupply => $_getI64(10);
  @$pb.TagNumber(11)
  set newTotalSupply($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasNewTotalSupply() => $_has(10);
  @$pb.TagNumber(11)
  void clearNewTotalSupply() => $_clearField(11);

  /// *
  ///  In the receipt of a `ScheduleCreate`, the id of the newly created
  ///  Scheduled Entity
  @$pb.TagNumber(12)
  $0.ScheduleID get scheduleID => $_getN(11);
  @$pb.TagNumber(12)
  set scheduleID($0.ScheduleID value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasScheduleID() => $_has(11);
  @$pb.TagNumber(12)
  void clearScheduleID() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.ScheduleID ensureScheduleID() => $_ensure(11);

  /// *
  ///  In the receipt of a `ScheduleCreate` or `ScheduleSign` that enables the
  ///  scheduled transaction to execute immediately, the `TransactionID` that
  ///  should be used to query for the receipt or record of the scheduled
  ///  transaction that was executed.
  @$pb.TagNumber(13)
  $0.TransactionID get scheduledTransactionID => $_getN(12);
  @$pb.TagNumber(13)
  set scheduledTransactionID($0.TransactionID value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasScheduledTransactionID() => $_has(12);
  @$pb.TagNumber(13)
  void clearScheduledTransactionID() => $_clearField(13);
  @$pb.TagNumber(13)
  $0.TransactionID ensureScheduledTransactionID() => $_ensure(12);

  /// *
  ///  In the receipt of a `TokenMint` for non-fungible/unique tokens,
  ///  the serial numbers of the newly created tokens.
  @$pb.TagNumber(14)
  $pb.PbList<$fixnum.Int64> get serialNumbers => $_getList(13);

  /// *
  ///  An affected node identifier.<br/>
  ///  In the receipt of a NodeCreate, the id of the newly created node.
  ///  <p>
  ///  This value SHALL be set following a `createNode` transaction.<br/>
  ///  This value SHALL NOT be set following any other transaction.
  @$pb.TagNumber(15)
  $fixnum.Int64 get nodeId => $_getI64(14);
  @$pb.TagNumber(15)
  set nodeId($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(15)
  $core.bool hasNodeId() => $_has(14);
  @$pb.TagNumber(15)
  void clearNodeId() => $_clearField(15);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
