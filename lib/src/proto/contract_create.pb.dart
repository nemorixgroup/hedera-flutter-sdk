// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from contract_create.proto.

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
import 'duration.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum ContractCreateTransactionBody_InitcodeSource { fileID, initcode, notSet }

enum ContractCreateTransactionBody_StakedId {
  stakedAccountId,
  stakedNodeId,
  notSet
}

/// *
///  Create a new smart contract.
///
///  If this transaction succeeds, the `ContractID` for the new smart contract
///  SHALL be set in the transaction receipt.<br/>
///  The contract is defined by the initial bytecode (or `initcode`). The
///  `initcode` SHALL be stored either in a previously created file, or in the
///  transaction body itself for very small contracts.
///
///  As part of contract creation, the constructor defined for the new smart
///  contract SHALL run with the parameters provided in the
///  `constructorParameters` field.<br/>
///  The gas to "power" that constructor MUST be provided via the `gas` field,
///  and SHALL be charged to the payer for this transaction.<br/>
///  If the contract _constructor_ stores information, it is charged gas for that
///  storage. There is a separate fee in HBAR to maintain that storage until the
///  expiration, and that fee SHALL be added to this transaction as part of the
///  _transaction fee_, rather than gas.
///
///  ### Block Stream Effects
///  A `CreateContractOutput` message SHALL be emitted for each transaction.
class ContractCreateTransactionBody extends $pb.GeneratedMessage {
  factory ContractCreateTransactionBody({
    $0.FileID? fileID,
    $0.Key? adminKey,
    $fixnum.Int64? gas,
    $fixnum.Int64? initialBalance,
    @$core.Deprecated('This field is deprecated.') $0.AccountID? proxyAccountID,
    $1.Duration? autoRenewPeriod,
    $core.List<$core.int>? constructorParameters,
    $0.ShardID? shardID,
    $0.RealmID? realmID,
    $0.Key? newRealmAdminKey,
    $core.String? memo,
    $core.int? maxAutomaticTokenAssociations,
    $0.AccountID? autoRenewAccountId,
    $core.List<$core.int>? initcode,
    $0.AccountID? stakedAccountId,
    $fixnum.Int64? stakedNodeId,
    $core.bool? declineReward,
  }) {
    final result = create();
    if (fileID != null) result.fileID = fileID;
    if (adminKey != null) result.adminKey = adminKey;
    if (gas != null) result.gas = gas;
    if (initialBalance != null) result.initialBalance = initialBalance;
    if (proxyAccountID != null) result.proxyAccountID = proxyAccountID;
    if (autoRenewPeriod != null) result.autoRenewPeriod = autoRenewPeriod;
    if (constructorParameters != null)
      result.constructorParameters = constructorParameters;
    if (shardID != null) result.shardID = shardID;
    if (realmID != null) result.realmID = realmID;
    if (newRealmAdminKey != null) result.newRealmAdminKey = newRealmAdminKey;
    if (memo != null) result.memo = memo;
    if (maxAutomaticTokenAssociations != null)
      result.maxAutomaticTokenAssociations = maxAutomaticTokenAssociations;
    if (autoRenewAccountId != null)
      result.autoRenewAccountId = autoRenewAccountId;
    if (initcode != null) result.initcode = initcode;
    if (stakedAccountId != null) result.stakedAccountId = stakedAccountId;
    if (stakedNodeId != null) result.stakedNodeId = stakedNodeId;
    if (declineReward != null) result.declineReward = declineReward;
    return result;
  }

  ContractCreateTransactionBody._();

  factory ContractCreateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractCreateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core
      .Map<$core.int, ContractCreateTransactionBody_InitcodeSource>
      _ContractCreateTransactionBody_InitcodeSourceByTag = {
    1: ContractCreateTransactionBody_InitcodeSource.fileID,
    16: ContractCreateTransactionBody_InitcodeSource.initcode,
    0: ContractCreateTransactionBody_InitcodeSource.notSet
  };
  static const $core.Map<$core.int, ContractCreateTransactionBody_StakedId>
      _ContractCreateTransactionBody_StakedIdByTag = {
    17: ContractCreateTransactionBody_StakedId.stakedAccountId,
    18: ContractCreateTransactionBody_StakedId.stakedNodeId,
    0: ContractCreateTransactionBody_StakedId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractCreateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [1, 16])
    ..oo(1, [17, 18])
    ..aOM<$0.FileID>(1, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $0.FileID.create)
    ..aOM<$0.Key>(3, _omitFieldNames ? '' : 'adminKey',
        protoName: 'adminKey', subBuilder: $0.Key.create)
    ..aInt64(4, _omitFieldNames ? '' : 'gas')
    ..aInt64(5, _omitFieldNames ? '' : 'initialBalance',
        protoName: 'initialBalance')
    ..aOM<$0.AccountID>(6, _omitFieldNames ? '' : 'proxyAccountID',
        protoName: 'proxyAccountID', subBuilder: $0.AccountID.create)
    ..aOM<$1.Duration>(8, _omitFieldNames ? '' : 'autoRenewPeriod',
        protoName: 'autoRenewPeriod', subBuilder: $1.Duration.create)
    ..a<$core.List<$core.int>>(
        9, _omitFieldNames ? '' : 'constructorParameters', $pb.PbFieldType.OY,
        protoName: 'constructorParameters')
    ..aOM<$0.ShardID>(10, _omitFieldNames ? '' : 'shardID',
        protoName: 'shardID', subBuilder: $0.ShardID.create)
    ..aOM<$0.RealmID>(11, _omitFieldNames ? '' : 'realmID',
        protoName: 'realmID', subBuilder: $0.RealmID.create)
    ..aOM<$0.Key>(12, _omitFieldNames ? '' : 'newRealmAdminKey',
        protoName: 'newRealmAdminKey', subBuilder: $0.Key.create)
    ..aOS(13, _omitFieldNames ? '' : 'memo')
    ..aI(14, _omitFieldNames ? '' : 'maxAutomaticTokenAssociations')
    ..aOM<$0.AccountID>(15, _omitFieldNames ? '' : 'autoRenewAccountId',
        subBuilder: $0.AccountID.create)
    ..a<$core.List<$core.int>>(
        16, _omitFieldNames ? '' : 'initcode', $pb.PbFieldType.OY)
    ..aOM<$0.AccountID>(17, _omitFieldNames ? '' : 'stakedAccountId',
        subBuilder: $0.AccountID.create)
    ..aInt64(18, _omitFieldNames ? '' : 'stakedNodeId')
    ..aOB(19, _omitFieldNames ? '' : 'declineReward')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractCreateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractCreateTransactionBody copyWith(
          void Function(ContractCreateTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as ContractCreateTransactionBody))
          as ContractCreateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractCreateTransactionBody create() =>
      ContractCreateTransactionBody._();
  @$core.override
  ContractCreateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractCreateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractCreateTransactionBody>(create);
  static ContractCreateTransactionBody? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(16)
  ContractCreateTransactionBody_InitcodeSource whichInitcodeSource() =>
      _ContractCreateTransactionBody_InitcodeSourceByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(16)
  void clearInitcodeSource() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  ContractCreateTransactionBody_StakedId whichStakedId() =>
      _ContractCreateTransactionBody_StakedIdByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  void clearStakedId() => $_clearField($_whichOneof(1));

  /// *
  ///  The source for the smart contract EVM bytecode.
  ///  <p>
  ///  The file containing the smart contract initcode.
  ///  A copy of the contents SHALL be made and held as `bytes`
  ///  in smart contract state.<br/>
  ///  The contract bytecode is limited in size only by the
  ///  network file size limit.
  @$pb.TagNumber(1)
  $0.FileID get fileID => $_getN(0);
  @$pb.TagNumber(1)
  set fileID($0.FileID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFileID() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FileID ensureFileID() => $_ensure(0);

  /// *
  ///  Access control for modification of the smart contract after
  ///  it is created.
  ///  <p>
  ///  If this field is set, that key MUST sign this transaction.<br/>
  ///  If this field is set, that key MUST sign each future transaction to
  ///  update or delete the contract.<br/>
  ///  An updateContract transaction that _only_ extends the topic
  ///  expirationTime (a "manual renewal" transaction) SHALL NOT require
  ///  admin key signature.
  ///  <p>
  ///  A contract without an admin key SHALL be immutable, except for
  ///  expiration and renewal.
  @$pb.TagNumber(3)
  $0.Key get adminKey => $_getN(1);
  @$pb.TagNumber(3)
  set adminKey($0.Key value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAdminKey() => $_has(1);
  @$pb.TagNumber(3)
  void clearAdminKey() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Key ensureAdminKey() => $_ensure(1);

  /// *
  ///  A maximum limit to the amount of gas to use for the constructor call.
  ///  <p>
  ///  The network SHALL charge the greater of the following, but SHALL NOT
  ///  charge more than the value of this field.
  ///  <ol>
  ///    <li>The actual gas consumed by the smart contract
  ///        constructor call.</li>
  ///    <li>`80%` of this value.</li>
  ///  </ol>
  ///  The `80%` factor encourages reasonable estimation, while allowing for
  ///  some overage to ensure successful execution.
  @$pb.TagNumber(4)
  $fixnum.Int64 get gas => $_getI64(2);
  @$pb.TagNumber(4)
  set gas($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(4)
  $core.bool hasGas() => $_has(2);
  @$pb.TagNumber(4)
  void clearGas() => $_clearField(4);

  /// *
  ///  The amount of HBAR to use as an initial balance for the account
  ///  representing the new smart contract.
  ///  <p>
  ///  This value is presented in tinybar
  ///  (10<sup><strong>-</strong>8</sup> HBAR).<br/>
  ///  The HBAR provided here will be withdrawn from the payer account that
  ///  signed this transaction.
  @$pb.TagNumber(5)
  $fixnum.Int64 get initialBalance => $_getI64(3);
  @$pb.TagNumber(5)
  set initialBalance($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(5)
  $core.bool hasInitialBalance() => $_has(3);
  @$pb.TagNumber(5)
  void clearInitialBalance() => $_clearField(5);

  /// *
  ///  Proxy account staking is handled via `staked_id`.
  ///  <p>
  ///  Former field to designate a proxy account for HBAR staking.
  ///  This field MUST NOT be set.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $0.AccountID get proxyAccountID => $_getN(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set proxyAccountID($0.AccountID value) => $_setField(6, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasProxyAccountID() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearProxyAccountID() => $_clearField(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $0.AccountID ensureProxyAccountID() => $_ensure(4);

  /// *
  ///  The initial lifetime, in seconds, for the smart contract, and the number
  ///  of seconds for which the smart contract will be automatically renewed
  ///  upon expiration.
  ///  <p>
  ///  This value MUST be set.<br/>
  ///  This value MUST be greater than the configured MIN_AUTORENEW_PERIOD.<br/>
  ///  This value MUST be less than the configured MAX_AUTORENEW_PERIOD.<br/>
  @$pb.TagNumber(8)
  $1.Duration get autoRenewPeriod => $_getN(5);
  @$pb.TagNumber(8)
  set autoRenewPeriod($1.Duration value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAutoRenewPeriod() => $_has(5);
  @$pb.TagNumber(8)
  void clearAutoRenewPeriod() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Duration ensureAutoRenewPeriod() => $_ensure(5);

  /// *
  ///  An array of bytes containing the EVM-encoded parameters to pass to
  ///  the smart contract constructor defined in the smart contract init
  ///  code provided.
  @$pb.TagNumber(9)
  $core.List<$core.int> get constructorParameters => $_getN(6);
  @$pb.TagNumber(9)
  set constructorParameters($core.List<$core.int> value) =>
      $_setBytes(6, value);
  @$pb.TagNumber(9)
  $core.bool hasConstructorParameters() => $_has(6);
  @$pb.TagNumber(9)
  void clearConstructorParameters() => $_clearField(9);

  /// *
  ///  <blockquote>Review Question<br/>
  ///  <blockquote>Should this be deprecated?<br/>
  ///  It's never been used and probably never should be used...<br/>
  ///  Shard should be determined by the node the transaction is submitted to.
  ///  </blockquote></blockquote>
  ///  <p>
  ///  The shard in which to create the new smart contract.<br/>
  ///  This value is currently ignored.
  @$pb.TagNumber(10)
  $0.ShardID get shardID => $_getN(7);
  @$pb.TagNumber(10)
  set shardID($0.ShardID value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasShardID() => $_has(7);
  @$pb.TagNumber(10)
  void clearShardID() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.ShardID ensureShardID() => $_ensure(7);

  /// *
  ///  <blockquote>Review Question<br/>
  ///  <blockquote>Should this be deprecated?<br/>
  ///  It's never been used and probably never should be used...<br/>
  ///  Realm should be determined by node and network parameters.
  ///  </blockquote></blockquote>
  ///  <p>
  ///  The shard/realm in which to create the new smart contract.<br/>
  ///  This value is currently ignored.
  @$pb.TagNumber(11)
  $0.RealmID get realmID => $_getN(8);
  @$pb.TagNumber(11)
  set realmID($0.RealmID value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasRealmID() => $_has(8);
  @$pb.TagNumber(11)
  void clearRealmID() => $_clearField(11);
  @$pb.TagNumber(11)
  $0.RealmID ensureRealmID() => $_ensure(8);

  /// *
  ///  <blockquote>Review Question<br/>
  ///  <blockquote>Should this be deprecated?<br/>
  ///  It's never been used and probably never should be used...<br/>
  ///  If a realm is used, it must already exist; we shouldn't be creating it
  ///  without a separate transaction.</blockquote></blockquote>
  ///  <p>
  ///  This was intended to provide an admin key for any new realm created
  ///  during the creation of the smart contract.<br/>
  ///  This value is currently ignored. a new realm SHALL NOT be created,
  ///  regardless of the value of `realmID`.
  @$pb.TagNumber(12)
  $0.Key get newRealmAdminKey => $_getN(9);
  @$pb.TagNumber(12)
  set newRealmAdminKey($0.Key value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasNewRealmAdminKey() => $_has(9);
  @$pb.TagNumber(12)
  void clearNewRealmAdminKey() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.Key ensureNewRealmAdminKey() => $_ensure(9);

  /// *
  ///  A short memo for this smart contract.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(13)
  $core.String get memo => $_getSZ(10);
  @$pb.TagNumber(13)
  set memo($core.String value) => $_setString(10, value);
  @$pb.TagNumber(13)
  $core.bool hasMemo() => $_has(10);
  @$pb.TagNumber(13)
  void clearMemo() => $_clearField(13);

  /// *
  ///  The maximum number of tokens that can be auto-associated with this
  ///  smart contract.
  ///  <p>
  ///  If this is less than or equal to `used_auto_associations` (or 0), then
  ///  this contract MUST manually associate with a token before transacting
  ///  in that token.<br/>
  ///  Following HIP-904 This value may also be `-1` to indicate no limit.<br/>
  ///  This value MUST NOT be less than `-1`.
  @$pb.TagNumber(14)
  $core.int get maxAutomaticTokenAssociations => $_getIZ(11);
  @$pb.TagNumber(14)
  set maxAutomaticTokenAssociations($core.int value) =>
      $_setSignedInt32(11, value);
  @$pb.TagNumber(14)
  $core.bool hasMaxAutomaticTokenAssociations() => $_has(11);
  @$pb.TagNumber(14)
  void clearMaxAutomaticTokenAssociations() => $_clearField(14);

  /// *
  ///  The id of an account, in the same shard and realm as this smart
  ///  contract, that has signed this transaction, allowing the network to use
  ///  its balance, when needed, to automatically extend this contract's
  ///  expiration time.
  ///  <p>
  ///  If this field is set, that key MUST sign this transaction.<br/>
  ///  If this field is set, then the network SHALL deduct the necessary fees
  ///  from the designated auto renew account, if that account has sufficient
  ///  balance. If the auto renew account does not have sufficient balance,
  ///  then the fees for contract renewal SHALL be deducted from the HBAR
  ///  balance held by the smart contract.<br/>
  ///  If this field is not set, then all renewal fees SHALL be deducted from
  ///  the HBAR balance held by this contract.
  @$pb.TagNumber(15)
  $0.AccountID get autoRenewAccountId => $_getN(12);
  @$pb.TagNumber(15)
  set autoRenewAccountId($0.AccountID value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasAutoRenewAccountId() => $_has(12);
  @$pb.TagNumber(15)
  void clearAutoRenewAccountId() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.AccountID ensureAutoRenewAccountId() => $_ensure(12);

  /// *
  ///  The source for the smart contract EVM bytecode.
  ///  <p>
  ///  The bytes of the smart contract initcode. A copy of the contents
  ///  SHALL be made and held as `bytes` in smart contract state.<br/>
  ///  This value is limited in length by the network transaction size
  ///  limit. This entire transaction, including all fields and signatures,
  ///  MUST be less than the network transaction size limit.
  @$pb.TagNumber(16)
  $core.List<$core.int> get initcode => $_getN(13);
  @$pb.TagNumber(16)
  set initcode($core.List<$core.int> value) => $_setBytes(13, value);
  @$pb.TagNumber(16)
  $core.bool hasInitcode() => $_has(13);
  @$pb.TagNumber(16)
  void clearInitcode() => $_clearField(16);

  /// *
  ///  An account ID.
  ///  <p>
  ///  This smart contract SHALL stake its HBAR via this account as proxy.
  @$pb.TagNumber(17)
  $0.AccountID get stakedAccountId => $_getN(14);
  @$pb.TagNumber(17)
  set stakedAccountId($0.AccountID value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasStakedAccountId() => $_has(14);
  @$pb.TagNumber(17)
  void clearStakedAccountId() => $_clearField(17);
  @$pb.TagNumber(17)
  $0.AccountID ensureStakedAccountId() => $_ensure(14);

  /// *
  ///  The ID of a network node.
  ///  <p>
  ///  This smart contract SHALL stake its HBAR to this node.
  ///  <p>
  ///  <blockquote>Note: node IDs do fluctuate as node operators change.
  ///  Most contracts are immutable, and a contract staking to an invalid
  ///  node ID SHALL NOT participate in staking. Immutable contracts MAY
  ///  find it more reliable to use a proxy account for staking
  ///  (via `staked_account_id`) to enable updating the _effective_ staking
  ///  node ID when necessary through updating the proxy
  ///  account.</blockquote>
  @$pb.TagNumber(18)
  $fixnum.Int64 get stakedNodeId => $_getI64(15);
  @$pb.TagNumber(18)
  set stakedNodeId($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(18)
  $core.bool hasStakedNodeId() => $_has(15);
  @$pb.TagNumber(18)
  void clearStakedNodeId() => $_clearField(18);

  /// *
  ///  A flag indicating that this smart contract declines to receive any
  ///  reward for staking its HBAR balance to help secure the network.
  ///  <p>
  ///  If set to true, this smart contract SHALL NOT receive any reward for
  ///  staking its HBAR balance to help secure the network, regardless of
  ///  staking configuration, but MAY stake HBAR to support the network
  ///  without reward.
  @$pb.TagNumber(19)
  $core.bool get declineReward => $_getBF(16);
  @$pb.TagNumber(19)
  set declineReward($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(19)
  $core.bool hasDeclineReward() => $_has(16);
  @$pb.TagNumber(19)
  void clearDeclineReward() => $_clearField(19);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
