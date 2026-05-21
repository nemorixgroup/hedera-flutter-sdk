// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from contract_types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $1;

import 'basic_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A contract "nonce" reference.<br/>
///  This connects a contract and its "nonce" value, and is primarily for use in
///  query responses.  A "nonce" is short for "nonsense" and is usually a value
///  with no particular meaning.
///
///  The nonce of a contract SHALL be incremented when that contract creates
///  another contract.
class ContractNonceInfo extends $pb.GeneratedMessage {
  factory ContractNonceInfo({
    $0.ContractID? contractId,
    $fixnum.Int64? nonce,
  }) {
    final result = create();
    if (contractId != null) result.contractId = contractId;
    if (nonce != null) result.nonce = nonce;
    return result;
  }

  ContractNonceInfo._();

  factory ContractNonceInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractNonceInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractNonceInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.ContractID>(1, _omitFieldNames ? '' : 'contractId',
        subBuilder: $0.ContractID.create)
    ..aInt64(2, _omitFieldNames ? '' : 'nonce')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractNonceInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractNonceInfo copyWith(void Function(ContractNonceInfo) updates) =>
      super.copyWith((message) => updates(message as ContractNonceInfo))
          as ContractNonceInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractNonceInfo create() => ContractNonceInfo._();
  @$core.override
  ContractNonceInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractNonceInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractNonceInfo>(create);
  static ContractNonceInfo? _defaultInstance;

  /// *
  ///  A contract identifier.<br/>
  ///  This refers to the contract that holds this nonce value.
  @$pb.TagNumber(1)
  $0.ContractID get contractId => $_getN(0);
  @$pb.TagNumber(1)
  set contractId($0.ContractID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasContractId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ContractID ensureContractId() => $_ensure(0);

  /// *
  ///  A "nonce" value.
  ///  The current value of the nonce associated with the identified contract.
  @$pb.TagNumber(2)
  $fixnum.Int64 get nonce => $_getI64(1);
  @$pb.TagNumber(2)
  set nonce($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNonce() => $_has(1);
  @$pb.TagNumber(2)
  void clearNonce() => $_clearField(2);
}

/// *
///  EVM log data for a contract call.<br/>
///  The EVM log information produced by a smart contract function call.
///
///  Each contract function call MAY return zero or more log events.
class ContractLoginfo extends $pb.GeneratedMessage {
  factory ContractLoginfo({
    $0.ContractID? contractID,
    $core.List<$core.int>? bloom,
    $core.Iterable<$core.List<$core.int>>? topic,
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (contractID != null) result.contractID = contractID;
    if (bloom != null) result.bloom = bloom;
    if (topic != null) result.topic.addAll(topic);
    if (data != null) result.data = data;
    return result;
  }

  ContractLoginfo._();

  factory ContractLoginfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractLoginfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractLoginfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.ContractID>(1, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $0.ContractID.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'bloom', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'topic', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractLoginfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractLoginfo copyWith(void Function(ContractLoginfo) updates) =>
      super.copyWith((message) => updates(message as ContractLoginfo))
          as ContractLoginfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractLoginfo create() => ContractLoginfo._();
  @$core.override
  ContractLoginfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractLoginfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractLoginfo>(create);
  static ContractLoginfo? _defaultInstance;

  /// *
  ///  A contract identifier.<br/>
  ///  This refers to the contract that generated this log entry.
  @$pb.TagNumber(1)
  $0.ContractID get contractID => $_getN(0);
  @$pb.TagNumber(1)
  set contractID($0.ContractID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasContractID() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ContractID ensureContractID() => $_ensure(0);

  /// *
  ///  A bloom filter.<br/>
  ///  This filter applies to this log entry and indexes the contract log data
  ///  in the full data of the Ethereum block.<br/>
  ///  EIP-7668 proposes to remove bloom filters as they are quite low value
  ///  in practice and separate indexing services are more effective.
  @$pb.TagNumber(2)
  $core.List<$core.int> get bloom => $_getN(1);
  @$pb.TagNumber(2)
  set bloom($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBloom() => $_has(1);
  @$pb.TagNumber(2)
  void clearBloom() => $_clearField(2);

  /// *
  ///  A list of the "topics" in this log entry.<br/>
  ///  The EVM permits up to 4 topics, each of which is 32 bytes (one EVM word).
  ///  <p>
  ///  The first "topic" is special, and MUST contain the keccak256 hash of the
  ///  event signature, if the event is not anonymous.
  @$pb.TagNumber(3)
  $pb.PbList<$core.List<$core.int>> get topic => $_getList(2);

  /// *
  ///  Event data for this log entry.<br/>
  ///  This is binary data consisting of an arbitrary number of 256 bit
  ///  (32 byte) words. The content of that data is determined by the smart
  ///  contract code.<br/>
  @$pb.TagNumber(4)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(4)
  set data($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(4)
  void clearData() => $_clearField(4);
}

/// *
///  A contract function result.<br/>
///  The result returned by a call to a smart contract function. This is part of
///  the response to a ContractCallLocal query, and is in the record for a
///  ContractCall. The ContractCreateInstance transaction record also carries a
///  function result, which is the results of the call to the constructor.
class ContractFunctionResult extends $pb.GeneratedMessage {
  factory ContractFunctionResult({
    $0.ContractID? contractID,
    $core.List<$core.int>? contractCallResult,
    $core.String? errorMessage,
    $core.List<$core.int>? bloom,
    $fixnum.Int64? gasUsed,
    $core.Iterable<ContractLoginfo>? logInfo,
    @$core.Deprecated('This field is deprecated.')
    $core.Iterable<$0.ContractID>? createdContractIDs,
    $1.BytesValue? evmAddress,
    $fixnum.Int64? gas,
    $fixnum.Int64? amount,
    $core.List<$core.int>? functionParameters,
    $0.AccountID? senderId,
    $core.Iterable<ContractNonceInfo>? contractNonces,
    $1.Int64Value? signerNonce,
  }) {
    final result = create();
    if (contractID != null) result.contractID = contractID;
    if (contractCallResult != null)
      result.contractCallResult = contractCallResult;
    if (errorMessage != null) result.errorMessage = errorMessage;
    if (bloom != null) result.bloom = bloom;
    if (gasUsed != null) result.gasUsed = gasUsed;
    if (logInfo != null) result.logInfo.addAll(logInfo);
    if (createdContractIDs != null)
      result.createdContractIDs.addAll(createdContractIDs);
    if (evmAddress != null) result.evmAddress = evmAddress;
    if (gas != null) result.gas = gas;
    if (amount != null) result.amount = amount;
    if (functionParameters != null)
      result.functionParameters = functionParameters;
    if (senderId != null) result.senderId = senderId;
    if (contractNonces != null) result.contractNonces.addAll(contractNonces);
    if (signerNonce != null) result.signerNonce = signerNonce;
    return result;
  }

  ContractFunctionResult._();

  factory ContractFunctionResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractFunctionResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractFunctionResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.ContractID>(1, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $0.ContractID.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'contractCallResult', $pb.PbFieldType.OY,
        protoName: 'contractCallResult')
    ..aOS(3, _omitFieldNames ? '' : 'errorMessage', protoName: 'errorMessage')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'bloom', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'gasUsed', $pb.PbFieldType.OU6,
        protoName: 'gasUsed', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<ContractLoginfo>(6, _omitFieldNames ? '' : 'logInfo',
        protoName: 'logInfo', subBuilder: ContractLoginfo.create)
    ..pPM<$0.ContractID>(7, _omitFieldNames ? '' : 'createdContractIDs',
        protoName: 'createdContractIDs', subBuilder: $0.ContractID.create)
    ..aOM<$1.BytesValue>(9, _omitFieldNames ? '' : 'evmAddress',
        subBuilder: $1.BytesValue.create)
    ..aInt64(10, _omitFieldNames ? '' : 'gas')
    ..aInt64(11, _omitFieldNames ? '' : 'amount')
    ..a<$core.List<$core.int>>(
        12, _omitFieldNames ? '' : 'functionParameters', $pb.PbFieldType.OY,
        protoName: 'functionParameters')
    ..aOM<$0.AccountID>(13, _omitFieldNames ? '' : 'senderId',
        subBuilder: $0.AccountID.create)
    ..pPM<ContractNonceInfo>(14, _omitFieldNames ? '' : 'contractNonces',
        subBuilder: ContractNonceInfo.create)
    ..aOM<$1.Int64Value>(15, _omitFieldNames ? '' : 'signerNonce',
        subBuilder: $1.Int64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractFunctionResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractFunctionResult copyWith(
          void Function(ContractFunctionResult) updates) =>
      super.copyWith((message) => updates(message as ContractFunctionResult))
          as ContractFunctionResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractFunctionResult create() => ContractFunctionResult._();
  @$core.override
  ContractFunctionResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractFunctionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractFunctionResult>(create);
  static ContractFunctionResult? _defaultInstance;

  /// *
  ///  A contract identifier.<br/>
  ///  This identifies the smart contract that defines the function called.
  @$pb.TagNumber(1)
  $0.ContractID get contractID => $_getN(0);
  @$pb.TagNumber(1)
  set contractID($0.ContractID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasContractID() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ContractID ensureContractID() => $_ensure(0);

  /// *
  ///  Result data from the function call.
  ///  <p>
  ///  This SHALL be encoded in RLP bytecode format.
  @$pb.TagNumber(2)
  $core.List<$core.int> get contractCallResult => $_getN(1);
  @$pb.TagNumber(2)
  set contractCallResult($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContractCallResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractCallResult() => $_clearField(2);

  /// *
  ///  Any error message produced by the contract call.
  ///  <p>
  ///  This SHALL be unset if the contract call succeeded.
  @$pb.TagNumber(3)
  $core.String get errorMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorMessage($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasErrorMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMessage() => $_clearField(3);

  /// *
  ///  A bloom filter produced by this contract call.<br/>
  ///  Ethereum uses this bloom filter to search for call results in the
  ///  Ethereum block history. High false positive rates make the bloom
  ///  filters quite limited value.
  @$pb.TagNumber(4)
  $core.List<$core.int> get bloom => $_getN(3);
  @$pb.TagNumber(4)
  set bloom($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBloom() => $_has(3);
  @$pb.TagNumber(4)
  void clearBloom() => $_clearField(4);

  /// *
  ///  A quantity of "gas" used.<br/>
  ///  This represents the resource units expended to execute this
  ///  contract call, and correlates to transaction costs.
  @$pb.TagNumber(5)
  $fixnum.Int64 get gasUsed => $_getI64(4);
  @$pb.TagNumber(5)
  set gasUsed($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGasUsed() => $_has(4);
  @$pb.TagNumber(5)
  void clearGasUsed() => $_clearField(5);

  /// *
  ///  Any Log events produced by this contract call.
  @$pb.TagNumber(6)
  $pb.PbList<ContractLoginfo> get logInfo => $_getList(5);

  /// *
  ///  Replaced by values in transaction records to support
  ///  `CREATE2` calls.<br/>
  ///  <p>
  ///  The list of smart contracts that were created by the function call.<br/>
  ///  The created ids will now _also_ be externalized through internal
  ///  transaction records, where each record has its alias field populated
  ///  with the new contract's EVM address.<br/>
  ///  This is needed for contracts created with CREATE2, which removes the
  ///  trivial relationship between a new contract's Identifier and its
  ///  Solidity address.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $pb.PbList<$0.ContractID> get createdContractIDs => $_getList(6);

  /// *
  ///  A created contract address.<br/>
  ///  If the function created a new contract (e.g. `CREATE2`),
  ///  this is the primary 20-byte EVM address for that contract.
  ///  <p>
  ///  Every contract SHALL have a "base" EVM address that is determined by its
  ///  `shard.realm.num` contract ID.<br/>
  ///  This address is constructed as follows
  ///  <ol>
  ///    <li>The first 4 bytes are the big-endian
  ///        representation of the shard.</li>
  ///    <li>The next 8 bytes are the big-endian
  ///        representation of the realm.</li>
  ///    <li>The final 8 bytes are the big-endian
  ///        representation of the number.</li>
  ///  </ol>
  ///  <p>
  ///  Contracts created via `CREATE2` SHALL have an _additional_, primary,
  ///  address that is derived from the
  ///  <a href="https://eips.ethereum.org/EIPS/eip-1014"><tt>EIP-1014</tt></a>
  ///  specification. This additional address SHALL NOT be directly related to
  ///  the `shard.realm.num` contract ID.<br/>
  ///  It should be emphasized that Contracts created via a `CREATE2` call can
  ///  also be referenced via the same "base" EVM address as described above.
  @$pb.TagNumber(9)
  $1.BytesValue get evmAddress => $_getN(7);
  @$pb.TagNumber(9)
  set evmAddress($1.BytesValue value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasEvmAddress() => $_has(7);
  @$pb.TagNumber(9)
  void clearEvmAddress() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.BytesValue ensureEvmAddress() => $_ensure(7);

  /// *
  ///  The amount of gas available for this call, sometimes referred to as the
  ///  gasLimit.<br/>
  ///  This field SHALL NOT be populated when the associated `TransactionBody`
  ///  in the block stream is a `ContractCreateTransactionBody` or
  ///  a `ContractCallTransactionBody`.
  @$pb.TagNumber(10)
  $fixnum.Int64 get gas => $_getI64(8);
  @$pb.TagNumber(10)
  set gas($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(10)
  $core.bool hasGas() => $_has(8);
  @$pb.TagNumber(10)
  void clearGas() => $_clearField(10);

  /// *
  ///  An amount, in tinybar, sent by this function call.<br/>
  ///  This SHALL be zero(0) if the function called is not `payable`.<br/>
  ///  This field SHALL NOT be populated when the associated `TransactionBody`
  ///  in the block stream is a `ContractCreateTransactionBody` or
  ///  a `ContractCallTransactionBody`.
  @$pb.TagNumber(11)
  $fixnum.Int64 get amount => $_getI64(9);
  @$pb.TagNumber(11)
  set amount($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(11)
  $core.bool hasAmount() => $_has(9);
  @$pb.TagNumber(11)
  void clearAmount() => $_clearField(11);

  /// *
  ///  The smart contract function to call, and the parameters to pass to that
  ///  function.<br/>
  ///  These SHALL be presented in EVM bytecode function call format.<br/>
  ///  This field SHALL NOT be populated when the associated `TransactionBody`
  ///  in the block stream is a `ContractCreateTransactionBody` or
  ///  a `ContractCallTransactionBody`.
  @$pb.TagNumber(12)
  $core.List<$core.int> get functionParameters => $_getN(10);
  @$pb.TagNumber(12)
  set functionParameters($core.List<$core.int> value) => $_setBytes(10, value);
  @$pb.TagNumber(12)
  $core.bool hasFunctionParameters() => $_has(10);
  @$pb.TagNumber(12)
  void clearFunctionParameters() => $_clearField(12);

  /// *
  ///  The account that was the "sender" for this contract call.<br/>
  ///  If this is not set it SHALL be read from the accountId in the
  ///  transactionId for the contract call.<br/>
  ///  This field SHALL NOT be populated when the associated `TransactionBody`
  ///  in the block stream is a `ContractCreateTransactionBody` or
  ///  a `ContractCallTransactionBody`.
  @$pb.TagNumber(13)
  $0.AccountID get senderId => $_getN(11);
  @$pb.TagNumber(13)
  set senderId($0.AccountID value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasSenderId() => $_has(11);
  @$pb.TagNumber(13)
  void clearSenderId() => $_clearField(13);
  @$pb.TagNumber(13)
  $0.AccountID ensureSenderId() => $_ensure(11);

  /// *
  ///  A list of contract account nonce values.<br/>
  ///  This list SHALL contain a nonce value for each contract account modified
  ///  as a result of this contract call. These nonce values SHALL be the value
  ///  after the contract call is completed.
  @$pb.TagNumber(14)
  $pb.PbList<ContractNonceInfo> get contractNonces => $_getList(12);

  /// *
  ///  A nonce value for the "signer account".<br/>
  ///  If the contract call updated the signer nonce for the signer account
  ///  (i.e. by creating another contract), this field SHALL contain the
  ///  updated value.<br/>
  ///  If the signer account nonce was not updated, this field SHALL be `null`.
  @$pb.TagNumber(15)
  $1.Int64Value get signerNonce => $_getN(13);
  @$pb.TagNumber(15)
  set signerNonce($1.Int64Value value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasSignerNonce() => $_has(13);
  @$pb.TagNumber(15)
  void clearSignerNonce() => $_clearField(15);
  @$pb.TagNumber(15)
  $1.Int64Value ensureSignerNonce() => $_ensure(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
