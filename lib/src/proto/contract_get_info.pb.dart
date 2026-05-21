// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from contract_get_info.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'duration.pb.dart' as $4;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;
import 'timestamp.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Request detailed information about a smart contract.
class ContractGetInfoQuery extends $pb.GeneratedMessage {
  factory ContractGetInfoQuery({
    $0.QueryHeader? header,
    $1.ContractID? contractID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (contractID != null) result.contractID = contractID;
    return result;
  }

  ContractGetInfoQuery._();

  factory ContractGetInfoQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractGetInfoQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractGetInfoQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.ContractID>(2, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $1.ContractID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetInfoQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetInfoQuery copyWith(void Function(ContractGetInfoQuery) updates) =>
      super.copyWith((message) => updates(message as ContractGetInfoQuery))
          as ContractGetInfoQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractGetInfoQuery create() => ContractGetInfoQuery._();
  @$core.override
  ContractGetInfoQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractGetInfoQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractGetInfoQuery>(create);
  static ContractGetInfoQuery? _defaultInstance;

  /// *
  ///  Standard information sent with every query operation.<br/>
  ///  This includes the signed payment and what kind of response is requested
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $0.QueryHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.QueryHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.QueryHeader ensureHeader() => $_ensure(0);

  /// *
  ///  A smart contract ID.
  ///  <p>
  ///  The network SHALL return information for this smart contract,
  ///  if successful.
  @$pb.TagNumber(2)
  $1.ContractID get contractID => $_getN(1);
  @$pb.TagNumber(2)
  set contractID($1.ContractID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasContractID() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.ContractID ensureContractID() => $_ensure(1);
}

class ContractGetInfoResponse_ContractInfo extends $pb.GeneratedMessage {
  factory ContractGetInfoResponse_ContractInfo({
    $1.ContractID? contractID,
    $1.AccountID? accountID,
    $core.String? contractAccountID,
    $1.Key? adminKey,
    $3.Timestamp? expirationTime,
    $4.Duration? autoRenewPeriod,
    $fixnum.Int64? storage,
    $core.String? memo,
    $fixnum.Int64? balance,
    $core.bool? deleted,
    @$core.Deprecated('This field is deprecated.')
    $core.Iterable<$1.TokenRelationship>? tokenRelationships,
    $core.List<$core.int>? ledgerId,
    $1.AccountID? autoRenewAccountId,
    $core.int? maxAutomaticTokenAssociations,
    $1.StakingInfo? stakingInfo,
  }) {
    final result = create();
    if (contractID != null) result.contractID = contractID;
    if (accountID != null) result.accountID = accountID;
    if (contractAccountID != null) result.contractAccountID = contractAccountID;
    if (adminKey != null) result.adminKey = adminKey;
    if (expirationTime != null) result.expirationTime = expirationTime;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (storage != null) result.storage = storage;
    if (memo != null) result.memo = memo;
    if (balance != null) result.balance = balance;
    if (deleted != null) result.deleted = deleted;
    if (tokenRelationships != null)
      result.tokenRelationships.addAll(tokenRelationships);
    if (ledgerId != null) result.ledgerId = ledgerId;
    if (autoRenewAccountId != null)
      result.autoRenewAccountId = autoRenewAccountId;
    if (maxAutomaticTokenAssociations != null)
      result.maxAutomaticTokenAssociations = maxAutomaticTokenAssociations;
    if (stakingInfo != null) result.stakingInfo = stakingInfo;
    return result;
  }

  ContractGetInfoResponse_ContractInfo._();

  factory ContractGetInfoResponse_ContractInfo.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractGetInfoResponse_ContractInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractGetInfoResponse.ContractInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.ContractID>(1, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $1.ContractID.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..aOS(3, _omitFieldNames ? '' : 'contractAccountID',
        protoName: 'contractAccountID')
    ..aOM<$1.Key>(4, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $1.Key.create)
    ..aOM<$3.Timestamp>(5, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $3.Timestamp.create)
    ..aOM<$4.Duration>(6, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $4.Duration.create)
    ..aInt64(7, _omitFieldNames ? '' : 'storage')
    ..aOS(8, _omitFieldNames ? '' : 'memo')
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(10, _omitFieldNames ? '' : 'deleted')
    ..pPM<$1.TokenRelationship>(11, _omitFieldNames ? '' : 'tokenRelationships',
        protoName: 'tokenRelationships',
        subBuilder: $1.TokenRelationship.create)
    ..a<$core.List<$core.int>>(
        12, _omitFieldNames ? '' : 'ledgerId', $pb.PbFieldType.OY)
    ..aOM<$1.AccountID>(13, _omitFieldNames ? '' : 'autoRenewAccountId',
        subBuilder: $1.AccountID.create)
    ..aI(14, _omitFieldNames ? '' : 'maxAutomaticTokenAssociations')
    ..aOM<$1.StakingInfo>(15, _omitFieldNames ? '' : 'stakingInfo',
        subBuilder: $1.StakingInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetInfoResponse_ContractInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetInfoResponse_ContractInfo copyWith(
          void Function(ContractGetInfoResponse_ContractInfo) updates) =>
      super.copyWith((message) =>
              updates(message as ContractGetInfoResponse_ContractInfo))
          as ContractGetInfoResponse_ContractInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractGetInfoResponse_ContractInfo create() =>
      ContractGetInfoResponse_ContractInfo._();
  @$core.override
  ContractGetInfoResponse_ContractInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractGetInfoResponse_ContractInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ContractGetInfoResponse_ContractInfo>(create);
  static ContractGetInfoResponse_ContractInfo? _defaultInstance;

  /// *
  ///  The ID of the smart contract requested in the query.
  @$pb.TagNumber(1)
  $1.ContractID get contractID => $_getN(0);
  @$pb.TagNumber(1)
  set contractID($1.ContractID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasContractID() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractID() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.ContractID ensureContractID() => $_ensure(0);

  /// *
  ///  The Account ID for the account entry associated with this
  ///  smart contract.
  @$pb.TagNumber(2)
  $1.AccountID get accountID => $_getN(1);
  @$pb.TagNumber(2)
  set accountID($1.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.AccountID ensureAccountID() => $_ensure(1);

  /// *
  ///  The "Solidity" form contract ID.<br/>
  ///  This is a hexadecimal string form of the 20-byte EVM address
  ///  of the contract.
  @$pb.TagNumber(3)
  $core.String get contractAccountID => $_getSZ(2);
  @$pb.TagNumber(3)
  set contractAccountID($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasContractAccountID() => $_has(2);
  @$pb.TagNumber(3)
  void clearContractAccountID() => $_clearField(3);

  /// *
  ///  The key that MUST sign any transaction to update or modify this
  ///  smart contract.
  ///  <p>
  ///  If this value is null, or is an empty `KeyList` then the contract
  ///  CANNOT be deleted, modified, or updated, but MAY still expire.
  @$pb.TagNumber(4)
  $1.Key get adminKey => $_getN(3);
  @$pb.TagNumber(4)
  set adminKey($1.Key value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAdminKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdminKey() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Key ensureAdminKey() => $_ensure(3);

  /// *
  ///  The point in time at which this contract will expire.
  @$pb.TagNumber(5)
  $3.Timestamp get expirationTime => $_getN(4);
  @$pb.TagNumber(5)
  set expirationTime($3.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExpirationTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpirationTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureExpirationTime() => $_ensure(4);

  /// *
  ///  The duration, in seconds, for which the contract lifetime will be
  ///  automatically extended upon expiration, provide sufficient HBAR is
  ///  available at that time to pay the renewal fee.<br/>
  ///  See `auto_renew_account_id` for additional conditions.
  @$pb.TagNumber(6)
  $4.Duration get autoRenewPeriod => $_getN(5);
  @$pb.TagNumber(6)
  set autoRenewPeriod($4.Duration value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAutoRenewPeriod() => $_has(5);
  @$pb.TagNumber(6)
  void clearAutoRenewPeriod() => $_clearField(6);
  @$pb.TagNumber(6)
  $4.Duration ensureAutoRenewPeriod() => $_ensure(5);

  /// *
  ///  The amount of storage used by this smart contract.
  @$pb.TagNumber(7)
  $fixnum.Int64 get storage => $_getI64(6);
  @$pb.TagNumber(7)
  set storage($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStorage() => $_has(6);
  @$pb.TagNumber(7)
  void clearStorage() => $_clearField(7);

  /// *
  ///  A short description of this smart contract.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(8)
  $core.String get memo => $_getSZ(7);
  @$pb.TagNumber(8)
  set memo($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMemo() => $_has(7);
  @$pb.TagNumber(8)
  void clearMemo() => $_clearField(8);

  /// *
  ///  The current HBAR balance, in tinybar, of the smart contract account.
  @$pb.TagNumber(9)
  $fixnum.Int64 get balance => $_getI64(8);
  @$pb.TagNumber(9)
  set balance($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBalance() => $_has(8);
  @$pb.TagNumber(9)
  void clearBalance() => $_clearField(9);

  /// *
  ///  A flag indicating that this contract is deleted.
  @$pb.TagNumber(10)
  $core.bool get deleted => $_getBF(9);
  @$pb.TagNumber(10)
  set deleted($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDeleted() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeleted() => $_clearField(10);

  /// *
  ///  Because <a href="https://hips.hedera.com/hip/hip-367">HIP-367</a>,
  ///  which allows an account to be associated to an unlimited number of
  ///  tokens, it became necessary to only provide this information from
  ///  a Mirror Node.<br/>
  ///  The list of tokens associated to this contract.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $pb.PbList<$1.TokenRelationship> get tokenRelationships => $_getList(10);

  /// *
  ///  The ledger ID of the network that generated this response.
  ///  <p>
  ///  This value SHALL identify the distributed ledger that responded to
  ///  this query.
  @$pb.TagNumber(12)
  $core.List<$core.int> get ledgerId => $_getN(11);
  @$pb.TagNumber(12)
  set ledgerId($core.List<$core.int> value) => $_setBytes(11, value);
  @$pb.TagNumber(12)
  $core.bool hasLedgerId() => $_has(11);
  @$pb.TagNumber(12)
  void clearLedgerId() => $_clearField(12);

  /// *
  ///  An account designated to pay the renewal fee upon automatic renewal
  ///  of this contract.
  ///  <p>
  ///  If this is not set, or is set to an account with zero HBAR
  ///  available, the HBAR balance of the contract, if available,
  ///  SHALL be used to pay the renewal fee.
  @$pb.TagNumber(13)
  $1.AccountID get autoRenewAccountId => $_getN(12);
  @$pb.TagNumber(13)
  set autoRenewAccountId($1.AccountID value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasAutoRenewAccountId() => $_has(12);
  @$pb.TagNumber(13)
  void clearAutoRenewAccountId() => $_clearField(13);
  @$pb.TagNumber(13)
  $1.AccountID ensureAutoRenewAccountId() => $_ensure(12);

  /// *
  ///  The maximum number of tokens that the contract can be
  ///  associated to automatically.
  @$pb.TagNumber(14)
  $core.int get maxAutomaticTokenAssociations => $_getIZ(13);
  @$pb.TagNumber(14)
  set maxAutomaticTokenAssociations($core.int value) =>
      $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasMaxAutomaticTokenAssociations() => $_has(13);
  @$pb.TagNumber(14)
  void clearMaxAutomaticTokenAssociations() => $_clearField(14);

  /// *
  ///  Staking information for this contract.
  @$pb.TagNumber(15)
  $1.StakingInfo get stakingInfo => $_getN(14);
  @$pb.TagNumber(15)
  set stakingInfo($1.StakingInfo value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasStakingInfo() => $_has(14);
  @$pb.TagNumber(15)
  void clearStakingInfo() => $_clearField(15);
  @$pb.TagNumber(15)
  $1.StakingInfo ensureStakingInfo() => $_ensure(14);
}

/// *
///  Information returned in response to a "get info" query for a smart contract.
class ContractGetInfoResponse extends $pb.GeneratedMessage {
  factory ContractGetInfoResponse({
    $2.ResponseHeader? header,
    ContractGetInfoResponse_ContractInfo? contractInfo,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (contractInfo != null) result.contractInfo = contractInfo;
    return result;
  }

  ContractGetInfoResponse._();

  factory ContractGetInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractGetInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractGetInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<ContractGetInfoResponse_ContractInfo>(
        2, _omitFieldNames ? '' : 'contractInfo',
        protoName: 'contractInfo',
        subBuilder: ContractGetInfoResponse_ContractInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetInfoResponse copyWith(
          void Function(ContractGetInfoResponse) updates) =>
      super.copyWith((message) => updates(message as ContractGetInfoResponse))
          as ContractGetInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractGetInfoResponse create() => ContractGetInfoResponse._();
  @$core.override
  ContractGetInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractGetInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractGetInfoResponse>(create);
  static ContractGetInfoResponse? _defaultInstance;

  /// *
  ///  The standard response information for queries.<br/>
  ///  This includes the values requested in the `QueryHeader`
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $2.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($2.ResponseHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.ResponseHeader ensureHeader() => $_ensure(0);

  /// *
  ///  The information, as requested, for a smart contract.
  ///  A state proof MAY be generated for this value.
  @$pb.TagNumber(2)
  ContractGetInfoResponse_ContractInfo get contractInfo => $_getN(1);
  @$pb.TagNumber(2)
  set contractInfo(ContractGetInfoResponse_ContractInfo value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasContractInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  ContractGetInfoResponse_ContractInfo ensureContractInfo() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
