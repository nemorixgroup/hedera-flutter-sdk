// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from transaction_record.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $2;
import 'contract_types.pb.dart' as $3;
import 'custom_fees.pb.dart' as $4;
import 'timestamp.pb.dart' as $1;
import 'transaction_receipt.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum TransactionRecord_Body { contractCallResult, contractCreateResult, notSet }

enum TransactionRecord_Entropy { prngBytes, prngNumber, notSet }

/// *
///  Response when the client sends the node TransactionGetRecordResponse
class TransactionRecord extends $pb.GeneratedMessage {
  factory TransactionRecord({
    $0.TransactionReceipt? receipt,
    $core.List<$core.int>? transactionHash,
    $1.Timestamp? consensusTimestamp,
    $2.TransactionID? transactionID,
    $core.String? memo,
    $fixnum.Int64? transactionFee,
    $3.ContractFunctionResult? contractCallResult,
    $3.ContractFunctionResult? contractCreateResult,
    $2.TransferList? transferList,
    $core.Iterable<$2.TokenTransferList>? tokenTransferLists,
    $2.ScheduleID? scheduleRef,
    $core.Iterable<$4.AssessedCustomFee>? assessedCustomFees,
    $core.Iterable<$2.TokenAssociation>? automaticTokenAssociations,
    $1.Timestamp? parentConsensusTimestamp,
    $core.List<$core.int>? alias,
    $core.List<$core.int>? ethereumHash,
    $core.Iterable<$2.AccountAmount>? paidStakingRewards,
    $core.List<$core.int>? prngBytes,
    $core.int? prngNumber,
    $core.List<$core.int>? evmAddress,
    $core.Iterable<PendingAirdropRecord>? newPendingAirdrops,
  }) {
    final result = create();
    if (receipt != null) result.receipt = receipt;
    if (transactionHash != null) result.transactionHash = transactionHash;
    if (consensusTimestamp != null)
      result.consensusTimestamp = consensusTimestamp;
    if (transactionID != null) result.transactionID = transactionID;
    if (memo != null) result.memo = memo;
    if (transactionFee != null) result.transactionFee = transactionFee;
    if (contractCallResult != null)
      result.contractCallResult = contractCallResult;
    if (contractCreateResult != null)
      result.contractCreateResult = contractCreateResult;
    if (transferList != null) result.transferList = transferList;
    if (tokenTransferLists != null)
      result.tokenTransferLists.addAll(tokenTransferLists);
    if (scheduleRef != null) result.scheduleRef = scheduleRef;
    if (assessedCustomFees != null)
      result.assessedCustomFees.addAll(assessedCustomFees);
    if (automaticTokenAssociations != null)
      result.automaticTokenAssociations.addAll(automaticTokenAssociations);
    if (parentConsensusTimestamp != null)
      result.parentConsensusTimestamp = parentConsensusTimestamp;
    if (alias != null) result.alias = alias;
    if (ethereumHash != null) result.ethereumHash = ethereumHash;
    if (paidStakingRewards != null)
      result.paidStakingRewards.addAll(paidStakingRewards);
    if (prngBytes != null) result.prngBytes = prngBytes;
    if (prngNumber != null) result.prngNumber = prngNumber;
    if (evmAddress != null) result.evmAddress = evmAddress;
    if (newPendingAirdrops != null)
      result.newPendingAirdrops.addAll(newPendingAirdrops);
    return result;
  }

  TransactionRecord._();

  factory TransactionRecord.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionRecord.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TransactionRecord_Body>
      _TransactionRecord_BodyByTag = {
    7: TransactionRecord_Body.contractCallResult,
    8: TransactionRecord_Body.contractCreateResult,
    0: TransactionRecord_Body.notSet
  };
  static const $core.Map<$core.int, TransactionRecord_Entropy>
      _TransactionRecord_EntropyByTag = {
    19: TransactionRecord_Entropy.prngBytes,
    20: TransactionRecord_Entropy.prngNumber,
    0: TransactionRecord_Entropy.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionRecord',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [7, 8])
    ..oo(1, [19, 20])
    ..aOM<$0.TransactionReceipt>(1, _omitFieldNames ? '' : 'receipt',
        subBuilder: $0.TransactionReceipt.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'transactionHash', $pb.PbFieldType.OY,
        protoName: 'transactionHash')
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'consensusTimestamp',
        protoName: 'consensusTimestamp', subBuilder: $1.Timestamp.create)
    ..aOM<$2.TransactionID>(4, _omitFieldNames ? '' : 'transactionID',
        protoName: 'transactionID', subBuilder: $2.TransactionID.create)
    ..aOS(5, _omitFieldNames ? '' : 'memo')
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'transactionFee', $pb.PbFieldType.OU6,
        protoName: 'transactionFee', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$3.ContractFunctionResult>(
        7, _omitFieldNames ? '' : 'contractCallResult',
        protoName: 'contractCallResult',
        subBuilder: $3.ContractFunctionResult.create)
    ..aOM<$3.ContractFunctionResult>(
        8, _omitFieldNames ? '' : 'contractCreateResult',
        protoName: 'contractCreateResult',
        subBuilder: $3.ContractFunctionResult.create)
    ..aOM<$2.TransferList>(10, _omitFieldNames ? '' : 'transferList',
        protoName: 'transferList', subBuilder: $2.TransferList.create)
    ..pPM<$2.TokenTransferList>(11, _omitFieldNames ? '' : 'tokenTransferLists',
        protoName: 'tokenTransferLists',
        subBuilder: $2.TokenTransferList.create)
    ..aOM<$2.ScheduleID>(12, _omitFieldNames ? '' : 'scheduleRef',
        protoName: 'scheduleRef', subBuilder: $2.ScheduleID.create)
    ..pPM<$4.AssessedCustomFee>(13, _omitFieldNames ? '' : 'assessedCustomFees',
        subBuilder: $4.AssessedCustomFee.create)
    ..pPM<$2.TokenAssociation>(
        14, _omitFieldNames ? '' : 'automaticTokenAssociations',
        subBuilder: $2.TokenAssociation.create)
    ..aOM<$1.Timestamp>(15, _omitFieldNames ? '' : 'parentConsensusTimestamp',
        subBuilder: $1.Timestamp.create)
    ..a<$core.List<$core.int>>(
        16, _omitFieldNames ? '' : 'alias', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        17, _omitFieldNames ? '' : 'ethereumHash', $pb.PbFieldType.OY)
    ..pPM<$2.AccountAmount>(18, _omitFieldNames ? '' : 'paidStakingRewards',
        subBuilder: $2.AccountAmount.create)
    ..a<$core.List<$core.int>>(
        19, _omitFieldNames ? '' : 'prngBytes', $pb.PbFieldType.OY)
    ..aI(20, _omitFieldNames ? '' : 'prngNumber')
    ..a<$core.List<$core.int>>(
        21, _omitFieldNames ? '' : 'evmAddress', $pb.PbFieldType.OY)
    ..pPM<PendingAirdropRecord>(22, _omitFieldNames ? '' : 'newPendingAirdrops',
        subBuilder: PendingAirdropRecord.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionRecord clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionRecord copyWith(void Function(TransactionRecord) updates) =>
      super.copyWith((message) => updates(message as TransactionRecord))
          as TransactionRecord;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionRecord create() => TransactionRecord._();
  @$core.override
  TransactionRecord createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionRecord getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionRecord>(create);
  static TransactionRecord? _defaultInstance;

  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  TransactionRecord_Body whichBody() =>
      _TransactionRecord_BodyByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearBody() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  TransactionRecord_Entropy whichEntropy() =>
      _TransactionRecord_EntropyByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  void clearEntropy() => $_clearField($_whichOneof(1));

  /// *
  ///  A transaction receipt.
  ///  <p>
  ///  This SHALL report consensus status (reach consensus, failed,
  ///  unknown) and the ID of any new entity (i.e. account, file,
  ///  contract, schedule, etc...) created.
  @$pb.TagNumber(1)
  $0.TransactionReceipt get receipt => $_getN(0);
  @$pb.TagNumber(1)
  set receipt($0.TransactionReceipt value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasReceipt() => $_has(0);
  @$pb.TagNumber(1)
  void clearReceipt() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TransactionReceipt ensureReceipt() => $_ensure(0);

  /// *
  ///  A transaction hash value.
  ///  <p>
  ///  This SHALL be the hash of the Transaction that executed and
  ///  SHALL NOT be the hash of any Transaction that failed for
  ///  having a duplicate TransactionID.
  @$pb.TagNumber(2)
  $core.List<$core.int> get transactionHash => $_getN(1);
  @$pb.TagNumber(2)
  set transactionHash($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTransactionHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionHash() => $_clearField(2);

  /// *
  ///  A consensus timestamp.
  ///  <p>
  ///  This SHALL be null if the transaction did not reach consensus yet.
  @$pb.TagNumber(3)
  $1.Timestamp get consensusTimestamp => $_getN(2);
  @$pb.TagNumber(3)
  set consensusTimestamp($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasConsensusTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsensusTimestamp() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureConsensusTimestamp() => $_ensure(2);

  /// *
  ///  A transaction identifier to the transaction associated to this record.
  @$pb.TagNumber(4)
  $2.TransactionID get transactionID => $_getN(3);
  @$pb.TagNumber(4)
  set transactionID($2.TransactionID value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTransactionID() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransactionID() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.TransactionID ensureTransactionID() => $_ensure(3);

  /// *
  ///  A transaction memo.<br/>
  ///  This is the memo that was submitted as part of the transaction.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(5)
  $core.String get memo => $_getSZ(4);
  @$pb.TagNumber(5)
  set memo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMemo() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemo() => $_clearField(5);

  /// *
  ///  A transaction fee charged.
  ///  <p>
  ///  This SHALL be the actual transaction fee charged.<br/>
  ///  This MAY NOT match the original `transactionFee` value
  ///  from the `TransactionBody`.
  @$pb.TagNumber(6)
  $fixnum.Int64 get transactionFee => $_getI64(5);
  @$pb.TagNumber(6)
  set transactionFee($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTransactionFee() => $_has(5);
  @$pb.TagNumber(6)
  void clearTransactionFee() => $_clearField(6);

  /// *
  ///  A contract call result.<br/>
  ///  A record of the value returned by the smart contract function (if
  ///  it completed and didn't fail) from a `ContractCallTransaction`.
  @$pb.TagNumber(7)
  $3.ContractFunctionResult get contractCallResult => $_getN(6);
  @$pb.TagNumber(7)
  set contractCallResult($3.ContractFunctionResult value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasContractCallResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearContractCallResult() => $_clearField(7);
  @$pb.TagNumber(7)
  $3.ContractFunctionResult ensureContractCallResult() => $_ensure(6);

  /// *
  ///  A contract creation result.<br/>
  ///  A record of the value returned by the smart contract constructor (if
  ///  it completed and didn't fail) from a `ContractCreateTransaction`.
  @$pb.TagNumber(8)
  $3.ContractFunctionResult get contractCreateResult => $_getN(7);
  @$pb.TagNumber(8)
  set contractCreateResult($3.ContractFunctionResult value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasContractCreateResult() => $_has(7);
  @$pb.TagNumber(8)
  void clearContractCreateResult() => $_clearField(8);
  @$pb.TagNumber(8)
  $3.ContractFunctionResult ensureContractCreateResult() => $_ensure(7);

  /// *
  ///  A transfer list for this transaction.<br/>
  ///  This is a list of all HBAR transfers completed for this transaction.
  ///  <p>
  ///  This MAY include fees, transfers performed by the transaction,
  ///  transfers initiated by a smart contract it calls, or the creation
  ///  of threshold records that it triggers.
  @$pb.TagNumber(10)
  $2.TransferList get transferList => $_getN(8);
  @$pb.TagNumber(10)
  set transferList($2.TransferList value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasTransferList() => $_has(8);
  @$pb.TagNumber(10)
  void clearTransferList() => $_clearField(10);
  @$pb.TagNumber(10)
  $2.TransferList ensureTransferList() => $_ensure(8);

  /// *
  ///  A token transfer list for this transaction.<br/>
  ///  This is a list of all non-HBAR token transfers
  ///  completed for this transaction.<br/>
  @$pb.TagNumber(11)
  $pb.PbList<$2.TokenTransferList> get tokenTransferLists => $_getList(9);

  /// *
  ///  A schedule reference.<br/>
  ///  The reference to a schedule ID for the schedule that initiated this
  ///  transaction, if this this transaction record represents a scheduled
  ///  transaction.
  @$pb.TagNumber(12)
  $2.ScheduleID get scheduleRef => $_getN(10);
  @$pb.TagNumber(12)
  set scheduleRef($2.ScheduleID value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasScheduleRef() => $_has(10);
  @$pb.TagNumber(12)
  void clearScheduleRef() => $_clearField(12);
  @$pb.TagNumber(12)
  $2.ScheduleID ensureScheduleRef() => $_ensure(10);

  /// *
  ///  A list of all custom fees that were assessed during a CryptoTransfer.
  ///  <p>
  ///  These SHALL be paid if the transaction status resolved to SUCCESS.
  @$pb.TagNumber(13)
  $pb.PbList<$4.AssessedCustomFee> get assessedCustomFees => $_getList(11);

  /// *
  ///  A list of all token associations implicitly or automatically
  ///  created while handling this transaction.
  @$pb.TagNumber(14)
  $pb.PbList<$2.TokenAssociation> get automaticTokenAssociations =>
      $_getList(12);

  /// *
  ///  A consensus timestamp for a child record.
  ///  <p>
  ///  This SHALL be the consensus timestamp of a user transaction that
  ///  spawned an internal child transaction.
  @$pb.TagNumber(15)
  $1.Timestamp get parentConsensusTimestamp => $_getN(13);
  @$pb.TagNumber(15)
  set parentConsensusTimestamp($1.Timestamp value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasParentConsensusTimestamp() => $_has(13);
  @$pb.TagNumber(15)
  void clearParentConsensusTimestamp() => $_clearField(15);
  @$pb.TagNumber(15)
  $1.Timestamp ensureParentConsensusTimestamp() => $_ensure(13);

  /// *
  ///  A new account alias.<br/>
  ///  <p>
  ///  This is the new alias assigned to an account created as part
  ///  of a CryptoCreate transaction triggered by a user transaction
  ///  with a (previously unused) alias.
  @$pb.TagNumber(16)
  $core.List<$core.int> get alias => $_getN(14);
  @$pb.TagNumber(16)
  set alias($core.List<$core.int> value) => $_setBytes(14, value);
  @$pb.TagNumber(16)
  $core.bool hasAlias() => $_has(14);
  @$pb.TagNumber(16)
  void clearAlias() => $_clearField(16);

  /// *
  ///  A keccak256 hash of the ethereumData.
  ///  <p>
  ///  This field SHALL only be populated for EthereumTransaction.
  @$pb.TagNumber(17)
  $core.List<$core.int> get ethereumHash => $_getN(15);
  @$pb.TagNumber(17)
  set ethereumHash($core.List<$core.int> value) => $_setBytes(15, value);
  @$pb.TagNumber(17)
  $core.bool hasEthereumHash() => $_has(15);
  @$pb.TagNumber(17)
  void clearEthereumHash() => $_clearField(17);

  /// *
  ///  A list of staking rewards paid.
  ///  <p>
  ///  This SHALL be a list accounts with the corresponding staking
  ///  rewards paid as a result of this transaction.
  @$pb.TagNumber(18)
  $pb.PbList<$2.AccountAmount> get paidStakingRewards => $_getList(16);

  /// *
  ///  A pseudorandom 384-bit sequence.
  ///  <p>
  ///  This SHALL be returned in the record of a UtilPrng transaction
  ///  with no output range,
  @$pb.TagNumber(19)
  $core.List<$core.int> get prngBytes => $_getN(17);
  @$pb.TagNumber(19)
  set prngBytes($core.List<$core.int> value) => $_setBytes(17, value);
  @$pb.TagNumber(19)
  $core.bool hasPrngBytes() => $_has(17);
  @$pb.TagNumber(19)
  void clearPrngBytes() => $_clearField(19);

  /// *
  ///  A pseudorandom 32-bit integer.<br/>
  ///  <p>
  ///  This SHALL be returned in the record of a PRNG transaction with
  ///  an output range specified.
  @$pb.TagNumber(20)
  $core.int get prngNumber => $_getIZ(18);
  @$pb.TagNumber(20)
  set prngNumber($core.int value) => $_setSignedInt32(18, value);
  @$pb.TagNumber(20)
  $core.bool hasPrngNumber() => $_has(18);
  @$pb.TagNumber(20)
  void clearPrngNumber() => $_clearField(20);

  /// *
  ///  A new default EVM address for an account created by
  ///  this transaction.
  ///  <p>
  ///  This field SHALL be populated only when the EVM address is not
  ///  specified in the related transaction body.
  @$pb.TagNumber(21)
  $core.List<$core.int> get evmAddress => $_getN(19);
  @$pb.TagNumber(21)
  set evmAddress($core.List<$core.int> value) => $_setBytes(19, value);
  @$pb.TagNumber(21)
  $core.bool hasEvmAddress() => $_has(19);
  @$pb.TagNumber(21)
  void clearEvmAddress() => $_clearField(21);

  /// *
  ///  A list of pending token airdrops.
  ///  <p>
  ///  Each pending airdrop SHALL represent a single requested transfer
  ///  from a sending account to a recipient account.<br/>
  ///  These pending transfers are issued unilaterally by the sending
  ///  account, and MUST be claimed by the recipient account before
  ///  the transfer SHALL complete.<br/>
  ///  A sender MAY cancel a pending airdrop before it is claimed.<br/>
  ///  An airdrop transaction SHALL emit a pending airdrop when the
  ///  recipient has no available automatic association slots available
  ///  or when the recipient has set `receiver_sig_required`.
  @$pb.TagNumber(22)
  $pb.PbList<PendingAirdropRecord> get newPendingAirdrops => $_getList(20);
}

/// *
///  A record of a new pending airdrop.
class PendingAirdropRecord extends $pb.GeneratedMessage {
  factory PendingAirdropRecord({
    $2.PendingAirdropId? pendingAirdropId,
    $2.PendingAirdropValue? pendingAirdropValue,
  }) {
    final result = create();
    if (pendingAirdropId != null) result.pendingAirdropId = pendingAirdropId;
    if (pendingAirdropValue != null)
      result.pendingAirdropValue = pendingAirdropValue;
    return result;
  }

  PendingAirdropRecord._();

  factory PendingAirdropRecord.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PendingAirdropRecord.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PendingAirdropRecord',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.PendingAirdropId>(1, _omitFieldNames ? '' : 'pendingAirdropId',
        subBuilder: $2.PendingAirdropId.create)
    ..aOM<$2.PendingAirdropValue>(
        2, _omitFieldNames ? '' : 'pendingAirdropValue',
        subBuilder: $2.PendingAirdropValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PendingAirdropRecord clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PendingAirdropRecord copyWith(void Function(PendingAirdropRecord) updates) =>
      super.copyWith((message) => updates(message as PendingAirdropRecord))
          as PendingAirdropRecord;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PendingAirdropRecord create() => PendingAirdropRecord._();
  @$core.override
  PendingAirdropRecord createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PendingAirdropRecord getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PendingAirdropRecord>(create);
  static PendingAirdropRecord? _defaultInstance;

  /// *
  ///  A unique, composite, identifier for a pending airdrop.
  ///  <p>
  ///  This field is REQUIRED.
  @$pb.TagNumber(1)
  $2.PendingAirdropId get pendingAirdropId => $_getN(0);
  @$pb.TagNumber(1)
  set pendingAirdropId($2.PendingAirdropId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPendingAirdropId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPendingAirdropId() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.PendingAirdropId ensurePendingAirdropId() => $_ensure(0);

  /// *
  ///  A single pending airdrop amount.
  ///  <p>
  ///  If the pending airdrop is for a fungible/common token this field
  ///  is REQUIRED and SHALL be the current amount of tokens offered.<br/>
  ///  If the pending airdrop is for a non-fungible/unique token,
  ///  this field SHALL NOT be set.
  @$pb.TagNumber(2)
  $2.PendingAirdropValue get pendingAirdropValue => $_getN(1);
  @$pb.TagNumber(2)
  set pendingAirdropValue($2.PendingAirdropValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPendingAirdropValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearPendingAirdropValue() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PendingAirdropValue ensurePendingAirdropValue() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
