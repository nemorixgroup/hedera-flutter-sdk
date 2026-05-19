// This is a generated file - do not edit.
//
// Generated from basic_types.proto.

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

import 'basic_types.pbenum.dart';
import 'timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'basic_types.pbenum.dart';

/// *
///  A shard identifier.<br/>
///  A shard is a partition of nodes running the network that processes
///  transactions separately from other shards. Each shard is effectively an
///  independent instance of the overall network that shares the same virtual
///  distributed ledger, and may gossip cross-shard transactions with other
///  shards to maintain overall correct processing of the ledger.
class ShardID extends $pb.GeneratedMessage {
  factory ShardID({
    $fixnum.Int64? shardNum,
  }) {
    final result = create();
    if (shardNum != null) result.shardNum = shardNum;
    return result;
  }

  ShardID._();

  factory ShardID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShardID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShardID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shardNum', protoName: 'shardNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShardID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShardID copyWith(void Function(ShardID) updates) =>
      super.copyWith((message) => updates(message as ShardID)) as ShardID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShardID create() => ShardID._();
  @$core.override
  ShardID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ShardID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShardID>(create);
  static ShardID? _defaultInstance;

  /// *
  ///  A whole number shard identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get shardNum => $_getI64(0);
  @$pb.TagNumber(1)
  set shardNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShardNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearShardNum() => $_clearField(1);
}

/// *
///  A realm identifier.<br/>
///  Within a given shard, every realm has a unique numeric identifier.
///  Each account, file, and contract instance belongs to exactly one realm.
class RealmID extends $pb.GeneratedMessage {
  factory RealmID({
    $fixnum.Int64? shardNum,
    $fixnum.Int64? realmNum,
  }) {
    final result = create();
    if (shardNum != null) result.shardNum = shardNum;
    if (realmNum != null) result.realmNum = realmNum;
    return result;
  }

  RealmID._();

  factory RealmID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RealmID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RealmID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shardNum', protoName: 'shardNum')
    ..aInt64(2, _omitFieldNames ? '' : 'realmNum', protoName: 'realmNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RealmID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RealmID copyWith(void Function(RealmID) updates) =>
      super.copyWith((message) => updates(message as RealmID)) as RealmID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RealmID create() => RealmID._();
  @$core.override
  RealmID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RealmID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RealmID>(create);
  static RealmID? _defaultInstance;

  /// *
  ///  A whole number shard identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get shardNum => $_getI64(0);
  @$pb.TagNumber(1)
  set shardNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShardNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearShardNum() => $_clearField(1);

  /// *
  ///  A whole number realm identifier.
  @$pb.TagNumber(2)
  $fixnum.Int64 get realmNum => $_getI64(1);
  @$pb.TagNumber(2)
  set realmNum($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRealmNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearRealmNum() => $_clearField(2);
}

/// *
///  Unique identifier for a token.<br/>
///  As with all entity identifiers within the network, a token identifier
///  consists of a combination of shard number, realm number, and entity number.
///  Each of these numbers is unique within its scope (shard > realm > entity).
class TokenID extends $pb.GeneratedMessage {
  factory TokenID({
    $fixnum.Int64? shardNum,
    $fixnum.Int64? realmNum,
    $fixnum.Int64? tokenNum,
  }) {
    final result = create();
    if (shardNum != null) result.shardNum = shardNum;
    if (realmNum != null) result.realmNum = realmNum;
    if (tokenNum != null) result.tokenNum = tokenNum;
    return result;
  }

  TokenID._();

  factory TokenID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shardNum', protoName: 'shardNum')
    ..aInt64(2, _omitFieldNames ? '' : 'realmNum', protoName: 'realmNum')
    ..aInt64(3, _omitFieldNames ? '' : 'tokenNum', protoName: 'tokenNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenID copyWith(void Function(TokenID) updates) =>
      super.copyWith((message) => updates(message as TokenID)) as TokenID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenID create() => TokenID._();
  @$core.override
  TokenID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenID>(create);
  static TokenID? _defaultInstance;

  /// *
  ///  A whole number shard identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get shardNum => $_getI64(0);
  @$pb.TagNumber(1)
  set shardNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShardNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearShardNum() => $_clearField(1);

  /// *
  ///  A whole number realm identifier.
  @$pb.TagNumber(2)
  $fixnum.Int64 get realmNum => $_getI64(1);
  @$pb.TagNumber(2)
  set realmNum($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRealmNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearRealmNum() => $_clearField(2);

  /// *
  ///  A whole number token identifier.
  @$pb.TagNumber(3)
  $fixnum.Int64 get tokenNum => $_getI64(2);
  @$pb.TagNumber(3)
  set tokenNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTokenNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearTokenNum() => $_clearField(3);
}

enum AccountID_Account { accountNum, alias, notSet }

/// *
///  A unique identifier for an Hedera account.
///
///  An account identifier is of the form `shard.realm.[number|alias]`.<br/>
///  The identifier MAY use the alias form when transferring HBAR to a public key
///  before the account for that key is created, when only the alias value is
///  known, or in some smart contracts that use the EVM address style alias to
///  refer to Accounts.<br/>
///  When the account entry is completed, the alias SHALL be stored separately in
///  the Account record, and the identifier in the Account SHALL use the
///  `accountNum` form.
///
///  ---
///  ### Additional Notes
///
///  #### Alias
///  There is considerable complexity with `alias` (aka `evm_address`) for
///  Accounts. Much of this comes from the existence of a "hidden" alias for
///  almost all accounts, and the reuse of the alias field for both EVM reference
///  and "automatic" account creation.<br/>
///  For the purposes of this specification, we will use the following terms for
///  clarity.
///    - `key_alias`<br/>
///       The account public key as a protobuf serialized message and used for
///       auto-creation and subsequent lookup. This is only valid if the account
///       key is a single `primitive` key, either Ed25519 or ECDSA_SECP256K1.
///    - `evm_address`<br/>
///      Exists for every account and is one of
///       - `contract_address`<br/>
///         The 20 byte EVM address prescribed by `CREATE` or `CREATE2`
///       - `evm_key_address`<br/>
///         An arbitrary 20 byte EVM address that, for a usable externally owned
///         account (EOA) SHALL be the rightmost 20 bytes of the Keccak-256 hash
///         of a ECDSA_SECP256K1 key.<br/>
///         Such accounts may be created in one of three ways:
///         - Sending hbar or fungible tokens to an unused
///           ECDSA_SECP256K1 key alias.
///         - Sending hbar or fungible tokens to an unassigned 20-byte
///           EVM address.
///         - Submitting a `CryptoCreate` signed with the corresponding
///           private key.
///       - `long_zero`<br/>
///         A synthetic 20 byte address inferred for "normally" created accounts.
///         It is constructed from the "standard" AccountID as follows.
///          1. 4 byte big-endian shard number
///          1. 8 byte big-endian realm number
///          1. 8 byte big-endian entity number<br/>
///
///  The `alias` field in the `Account` message SHALL contain one of four values
///  for any given account.
///    - The `key_alias`, if the account was created by transferring HBAR to the
///      `key_alias` public key value.
///    - The `evm_key_address` if the account was created from an EVM public key
///    - The `contract_address` if the account belongs to an EVM contract
///    - Not-Set/null/Bytes.EMPTY (collectively `null`) if the account was
///      created normally
///
///  If the `alias` field of an `Account` is any form of `null`, then the account
///  MAY be referred to by `alias` in an `AccountID` by using the `long_zero`
///  address for the account.<br/>
///  This "hidden default" alias SHALL NOT be stored, but is synthesized by the
///  node software as needed, and may be synthesized by an EVM contract or client
///  software as well.
///
///  ---
///
///  #### Alias forms
///  An `AccountID` in a transaction MAY reference an `Account` with
///  `shard.realm.alias`.<br/>
///  If the account `alias` field is set for an Account, that value SHALL be the
///  account alias.<br/>
///  If the account `alias` field is not set for an Account, the `long_zero` alias
///  SHALL be the account alias.
class AccountID extends $pb.GeneratedMessage {
  factory AccountID({
    $fixnum.Int64? shardNum,
    $fixnum.Int64? realmNum,
    $fixnum.Int64? accountNum,
    $core.List<$core.int>? alias,
  }) {
    final result = create();
    if (shardNum != null) result.shardNum = shardNum;
    if (realmNum != null) result.realmNum = realmNum;
    if (accountNum != null) result.accountNum = accountNum;
    if (alias != null) result.alias = alias;
    return result;
  }

  AccountID._();

  factory AccountID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AccountID_Account> _AccountID_AccountByTag =
      {
    3: AccountID_Account.accountNum,
    4: AccountID_Account.alias,
    0: AccountID_Account.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aInt64(1, _omitFieldNames ? '' : 'shardNum', protoName: 'shardNum')
    ..aInt64(2, _omitFieldNames ? '' : 'realmNum', protoName: 'realmNum')
    ..aInt64(3, _omitFieldNames ? '' : 'accountNum', protoName: 'accountNum')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'alias', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountID copyWith(void Function(AccountID) updates) =>
      super.copyWith((message) => updates(message as AccountID)) as AccountID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountID create() => AccountID._();
  @$core.override
  AccountID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountID>(create);
  static AccountID? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  AccountID_Account whichAccount() => _AccountID_AccountByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearAccount() => $_clearField($_whichOneof(0));

  /// *
  ///  A whole number shard identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get shardNum => $_getI64(0);
  @$pb.TagNumber(1)
  set shardNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShardNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearShardNum() => $_clearField(1);

  /// *
  ///  A whole number realm identifier.
  @$pb.TagNumber(2)
  $fixnum.Int64 get realmNum => $_getI64(1);
  @$pb.TagNumber(2)
  set realmNum($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRealmNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearRealmNum() => $_clearField(2);

  /// *
  ///  A whole number account number, unique within its realm and shard.
  ///  <p>
  ///  For any AccountID fields in the query response, transaction records,
  ///  transaction receipts, or block stream `accountNum` MUST be used.
  @$pb.TagNumber(3)
  $fixnum.Int64 get accountNum => $_getI64(2);
  @$pb.TagNumber(3)
  set accountNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccountNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountNum() => $_clearField(3);

  /// *
  ///  An alias value.<br/>
  ///  Alias is a value used in some contexts to refer to an account when
  ///  account number is not available, and may be an alias public key, or
  ///  an EVM address.
  @$pb.TagNumber(4)
  $core.List<$core.int> get alias => $_getN(3);
  @$pb.TagNumber(4)
  set alias($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAlias() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlias() => $_clearField(4);
}

/// *
///  An identifier for a unique token (or "NFT"), used by both contract
///  and token services.
class NftID extends $pb.GeneratedMessage {
  factory NftID({
    TokenID? tokenID,
    $fixnum.Int64? serialNumber,
  }) {
    final result = create();
    if (tokenID != null) result.tokenID = tokenID;
    if (serialNumber != null) result.serialNumber = serialNumber;
    return result;
  }

  NftID._();

  factory NftID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NftID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NftID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<TokenID>(1, _omitFieldNames ? '' : 'tokenID',
        protoName: 'token_ID', subBuilder: TokenID.create)
    ..aInt64(2, _omitFieldNames ? '' : 'serialNumber')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NftID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NftID copyWith(void Function(NftID) updates) =>
      super.copyWith((message) => updates(message as NftID)) as NftID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NftID create() => NftID._();
  @$core.override
  NftID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NftID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NftID>(create);
  static NftID? _defaultInstance;

  /// *
  ///  A token identifier.<br/>
  ///  This token represents the collection containing this NFT.
  @$pb.TagNumber(1)
  TokenID get tokenID => $_getN(0);
  @$pb.TagNumber(1)
  set tokenID(TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTokenID() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenID() => $_clearField(1);
  @$pb.TagNumber(1)
  TokenID ensureTokenID() => $_ensure(0);

  /// *
  ///  A unique serial number.<br/>
  ///  This serial number is unique within its token type.
  @$pb.TagNumber(2)
  $fixnum.Int64 get serialNumber => $_getI64(1);
  @$pb.TagNumber(2)
  set serialNumber($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSerialNumber() => $_clearField(2);
}

/// *
///  An identifier for a File within the network.
class FileID extends $pb.GeneratedMessage {
  factory FileID({
    $fixnum.Int64? shardNum,
    $fixnum.Int64? realmNum,
    $fixnum.Int64? fileNum,
  }) {
    final result = create();
    if (shardNum != null) result.shardNum = shardNum;
    if (realmNum != null) result.realmNum = realmNum;
    if (fileNum != null) result.fileNum = fileNum;
    return result;
  }

  FileID._();

  factory FileID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shardNum', protoName: 'shardNum')
    ..aInt64(2, _omitFieldNames ? '' : 'realmNum', protoName: 'realmNum')
    ..aInt64(3, _omitFieldNames ? '' : 'fileNum', protoName: 'fileNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileID copyWith(void Function(FileID) updates) =>
      super.copyWith((message) => updates(message as FileID)) as FileID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileID create() => FileID._();
  @$core.override
  FileID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileID>(create);
  static FileID? _defaultInstance;

  /// *
  ///  A whole number shard identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get shardNum => $_getI64(0);
  @$pb.TagNumber(1)
  set shardNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShardNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearShardNum() => $_clearField(1);

  /// *
  ///  A whole number realm identifier.
  @$pb.TagNumber(2)
  $fixnum.Int64 get realmNum => $_getI64(1);
  @$pb.TagNumber(2)
  set realmNum($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRealmNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearRealmNum() => $_clearField(2);

  /// *
  ///  A whole number file identifier, unique within its realm and shard.
  @$pb.TagNumber(3)
  $fixnum.Int64 get fileNum => $_getI64(2);
  @$pb.TagNumber(3)
  set fileNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFileNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileNum() => $_clearField(3);
}

enum ContractID_Contract { contractNum, evmAddress, notSet }

/// *
///  An identifier for a smart contract within the network.
class ContractID extends $pb.GeneratedMessage {
  factory ContractID({
    $fixnum.Int64? shardNum,
    $fixnum.Int64? realmNum,
    $fixnum.Int64? contractNum,
    $core.List<$core.int>? evmAddress,
  }) {
    final result = create();
    if (shardNum != null) result.shardNum = shardNum;
    if (realmNum != null) result.realmNum = realmNum;
    if (contractNum != null) result.contractNum = contractNum;
    if (evmAddress != null) result.evmAddress = evmAddress;
    return result;
  }

  ContractID._();

  factory ContractID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ContractID_Contract>
      _ContractID_ContractByTag = {
    3: ContractID_Contract.contractNum,
    4: ContractID_Contract.evmAddress,
    0: ContractID_Contract.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aInt64(1, _omitFieldNames ? '' : 'shardNum', protoName: 'shardNum')
    ..aInt64(2, _omitFieldNames ? '' : 'realmNum', protoName: 'realmNum')
    ..aInt64(3, _omitFieldNames ? '' : 'contractNum', protoName: 'contractNum')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'evmAddress', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractID copyWith(void Function(ContractID) updates) =>
      super.copyWith((message) => updates(message as ContractID)) as ContractID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractID create() => ContractID._();
  @$core.override
  ContractID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractID>(create);
  static ContractID? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  ContractID_Contract whichContract() =>
      _ContractID_ContractByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearContract() => $_clearField($_whichOneof(0));

  /// *
  ///  A whole number shard identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get shardNum => $_getI64(0);
  @$pb.TagNumber(1)
  set shardNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShardNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearShardNum() => $_clearField(1);

  /// *
  ///  A whole number realm identifier.
  @$pb.TagNumber(2)
  $fixnum.Int64 get realmNum => $_getI64(1);
  @$pb.TagNumber(2)
  set realmNum($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRealmNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearRealmNum() => $_clearField(2);

  /// *
  ///  A whole number contract identifier, unique within its realm and shard.
  @$pb.TagNumber(3)
  $fixnum.Int64 get contractNum => $_getI64(2);
  @$pb.TagNumber(3)
  set contractNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasContractNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearContractNum() => $_clearField(3);

  /// *
  ///  A 20-byte EVM address of the contract to call.
  ///  <p>
  ///  A contract created via a HAPI `ContractCreate` call SHALL have
  ///  an EVM address determined by its `shard.realm.num` identifier.<br/>
  ///  This address is as follows
  ///  <ol>
  ///      <li>4 byte big-endian shard number</li>
  ///      <li>8 byte big-endian realm number</li>
  ///      <li>8 byte big-endian contract number</li>
  ///  </ol>
  ///  This address is not stored in state, but is computed when needed.
  ///  <p>
  ///  Contracts created by any other means, including a HAPI
  ///  `EthereumTransaction` whose `to` address is the zero address,
  ///  SHALL have the EVM address prescribed by the `CREATE` or
  ///  `CREATE2` opcode, as applicable.
  @$pb.TagNumber(4)
  $core.List<$core.int> get evmAddress => $_getN(3);
  @$pb.TagNumber(4)
  set evmAddress($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEvmAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearEvmAddress() => $_clearField(4);
}

/// *
///  An unique identifier for a topic.<br/>
///  Topics are part of the consensus service, messages are published to a topic.
class TopicID extends $pb.GeneratedMessage {
  factory TopicID({
    $fixnum.Int64? shardNum,
    $fixnum.Int64? realmNum,
    $fixnum.Int64? topicNum,
  }) {
    final result = create();
    if (shardNum != null) result.shardNum = shardNum;
    if (realmNum != null) result.realmNum = realmNum;
    if (topicNum != null) result.topicNum = topicNum;
    return result;
  }

  TopicID._();

  factory TopicID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TopicID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shardNum', protoName: 'shardNum')
    ..aInt64(2, _omitFieldNames ? '' : 'realmNum', protoName: 'realmNum')
    ..aInt64(3, _omitFieldNames ? '' : 'topicNum', protoName: 'topicNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicID copyWith(void Function(TopicID) updates) =>
      super.copyWith((message) => updates(message as TopicID)) as TopicID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicID create() => TopicID._();
  @$core.override
  TopicID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TopicID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TopicID>(create);
  static TopicID? _defaultInstance;

  /// *
  ///  A whole number shard identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get shardNum => $_getI64(0);
  @$pb.TagNumber(1)
  set shardNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShardNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearShardNum() => $_clearField(1);

  /// *
  ///  A whole number realm identifier.
  @$pb.TagNumber(2)
  $fixnum.Int64 get realmNum => $_getI64(1);
  @$pb.TagNumber(2)
  set realmNum($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRealmNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearRealmNum() => $_clearField(2);

  /// *
  ///  A whole number topic identifier, unique within its realm and shard.
  @$pb.TagNumber(3)
  $fixnum.Int64 get topicNum => $_getI64(2);
  @$pb.TagNumber(3)
  set topicNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTopicNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearTopicNum() => $_clearField(3);
}

/// *
///  An unique identifier for a Schedule
class ScheduleID extends $pb.GeneratedMessage {
  factory ScheduleID({
    $fixnum.Int64? shardNum,
    $fixnum.Int64? realmNum,
    $fixnum.Int64? scheduleNum,
  }) {
    final result = create();
    if (shardNum != null) result.shardNum = shardNum;
    if (realmNum != null) result.realmNum = realmNum;
    if (scheduleNum != null) result.scheduleNum = scheduleNum;
    return result;
  }

  ScheduleID._();

  factory ScheduleID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScheduleID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shardNum', protoName: 'shardNum')
    ..aInt64(2, _omitFieldNames ? '' : 'realmNum', protoName: 'realmNum')
    ..aInt64(3, _omitFieldNames ? '' : 'scheduleNum', protoName: 'scheduleNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScheduleID copyWith(void Function(ScheduleID) updates) =>
      super.copyWith((message) => updates(message as ScheduleID)) as ScheduleID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleID create() => ScheduleID._();
  @$core.override
  ScheduleID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScheduleID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleID>(create);
  static ScheduleID? _defaultInstance;

  /// *
  ///  A whole number shard
  @$pb.TagNumber(1)
  $fixnum.Int64 get shardNum => $_getI64(0);
  @$pb.TagNumber(1)
  set shardNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShardNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearShardNum() => $_clearField(1);

  /// *
  ///  A whole number realm
  @$pb.TagNumber(2)
  $fixnum.Int64 get realmNum => $_getI64(1);
  @$pb.TagNumber(2)
  set realmNum($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRealmNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearRealmNum() => $_clearField(2);

  /// *
  ///  A whole number schedule, unique within its realm and shard
  @$pb.TagNumber(3)
  $fixnum.Int64 get scheduleNum => $_getI64(2);
  @$pb.TagNumber(3)
  set scheduleNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScheduleNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearScheduleNum() => $_clearField(3);
}

/// *
///  A transaction identifier.<br/>
///  This is used for retrieving receipts and records for a transaction
///  and internally by the network for detecting when duplicate transactions are
///  submitted.
///
///  A transaction may be processed more reliably by submitting it to
///  several nodes, each with a different node account, but all with the same
///  TransactionID. Then, the transaction will take effect when the first of all
///  those nodes submits the transaction and it reaches consensus. The other
///  transactions SHALL NOT be executed (and SHALL result in a
///  `DUPLICATE_TRANSACTION` response).<br/>
///  Multiple submission increase reliability on the assumption that an error in,
///  for example, network connectivity will not affect all nodes equally. Latency
///  might be slightly lower, if one node is handling intake significantly slower
///  than others, for example. The base transaction fee is required for each
///  submission, however, so the total fees charged are significantly higher when
///  using this approach.
///
///  ### Requirements
///  Each transaction identifier MUST be unique.<br/>
///  Multiple transactions MAY be submitted with the same transaction
///  identifier, but all except the first SHALL be rejected as duplicate
///  transactions.<br/>
///  An identifier MUST specify a `payer` account to be charged all fees
///  associated with the transaction.<br/>
///  The `payer` account MUST exist and MUST have sufficient HBAR to pay all
///  transaction fees.<br/>
///  An identifier MUST specify a "valid start time".<br/>
///  The "valid start time" MUST be strictly _earlier_ than the current
///  network consensus time when submitted.<br/>
///  The "valid start time" MUST NOT be more than `transaction.maxValidDuration`
///  seconds before the current network consensus time when submitted.<br/>
///  A client-submitted transaction MUST NOT set the `scheduled` flag.
///
///  ### Additional Notes
///
///  Additional items applicable to Scheduled Transactions:
///
///   - The ID of a Scheduled Transaction, once executed, SHALL inherit both
///     `transactionValidStart` and `accountID` from the `ScheduleCreate`
///     transaction that created the schedule.
///   - The `scheduled` property SHALL be set for Scheduled Transactions.
class TransactionID extends $pb.GeneratedMessage {
  factory TransactionID({
    $0.Timestamp? transactionValidStart,
    AccountID? accountID,
    $core.bool? scheduled,
    $core.int? nonce,
  }) {
    final result = create();
    if (transactionValidStart != null)
      result.transactionValidStart = transactionValidStart;
    if (accountID != null) result.accountID = accountID;
    if (scheduled != null) result.scheduled = scheduled;
    if (nonce != null) result.nonce = nonce;
    return result;
  }

  TransactionID._();

  factory TransactionID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionID',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'transactionValidStart',
        protoName: 'transactionValidStart', subBuilder: $0.Timestamp.create)
    ..aOM<AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: AccountID.create)
    ..aOB(3, _omitFieldNames ? '' : 'scheduled')
    ..aI(4, _omitFieldNames ? '' : 'nonce')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionID copyWith(void Function(TransactionID) updates) =>
      super.copyWith((message) => updates(message as TransactionID))
          as TransactionID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionID create() => TransactionID._();
  @$core.override
  TransactionID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionID>(create);
  static TransactionID? _defaultInstance;

  /// *
  ///  A timestamp for the transaction start time.<br/>
  ///  This is the earliest expected start time for this transaction.
  ///  <p>
  ///  This value MUST be strictly less than `consensusTimestamp` when the
  ///  transaction is submitted.
  @$pb.TagNumber(1)
  $0.Timestamp get transactionValidStart => $_getN(0);
  @$pb.TagNumber(1)
  set transactionValidStart($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTransactionValidStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionValidStart() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureTransactionValidStart() => $_ensure(0);

  /// *
  ///  An Account identifier.
  ///  <p>
  ///  The identified account SHALL pay transaction fees for this transaction.
  @$pb.TagNumber(2)
  AccountID get accountID => $_getN(1);
  @$pb.TagNumber(2)
  set accountID(AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  AccountID ensureAccountID() => $_ensure(1);

  /// *
  ///  A scheduled transaction flag.<br/>
  ///  If set, this transaction represents the execution of a Schedule after
  ///  all necessary signatures are gathered.
  ///  <p>
  ///  This flag MUST NOT be set in a user-submitted transaction.
  @$pb.TagNumber(3)
  $core.bool get scheduled => $_getBF(2);
  @$pb.TagNumber(3)
  set scheduled($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScheduled() => $_has(2);
  @$pb.TagNumber(3)
  void clearScheduled() => $_clearField(3);

  /// *
  ///  An identifier for an internal transaction.<br/>
  ///  An internal transaction is one that was spawned as part of handling a
  ///  user transaction. These internal transactions share the
  ///  transactionValidStart and accountID of the user transaction, so a nonce
  ///  is necessary to give them a unique TransactionID.
  ///  <p>
  ///  An example is when a "parent" ContractCreate or ContractCall transaction
  ///  calls one or more HTS precompiled contracts; each of the "child"
  ///  transactions spawned for a precompile has a transaction id with a
  ///  different nonce.
  ///  <p>
  ///  This value MUST be unset for user-submitted transactions.
  @$pb.TagNumber(4)
  $core.int get nonce => $_getIZ(3);
  @$pb.TagNumber(4)
  set nonce($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNonce() => $_has(3);
  @$pb.TagNumber(4)
  void clearNonce() => $_clearField(4);
}

/// *
///  An account, and the amount that it sends or receives during a token transfer.
///
///  This message is only relevant to fungible/common token transfers.
///  Non-fungible/unique (NFT) token transfers MUST use the NftTransfer message.
class AccountAmount extends $pb.GeneratedMessage {
  factory AccountAmount({
    AccountID? accountID,
    $fixnum.Int64? amount,
    $core.bool? isApproval,
  }) {
    final result = create();
    if (accountID != null) result.accountID = accountID;
    if (amount != null) result.amount = amount;
    if (isApproval != null) result.isApproval = isApproval;
    return result;
  }

  AccountAmount._();

  factory AccountAmount.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountAmount.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountAmount',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<AccountID>(1, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: AccountID.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, _omitFieldNames ? '' : 'isApproval')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountAmount clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountAmount copyWith(void Function(AccountAmount) updates) =>
      super.copyWith((message) => updates(message as AccountAmount))
          as AccountAmount;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountAmount create() => AccountAmount._();
  @$core.override
  AccountAmount createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountAmount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountAmount>(create);
  static AccountAmount? _defaultInstance;

  /// *
  ///  An account identifier that will send or receive token(s).
  @$pb.TagNumber(1)
  AccountID get accountID => $_getN(0);
  @$pb.TagNumber(1)
  set accountID(AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountID() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountID() => $_clearField(1);
  @$pb.TagNumber(1)
  AccountID ensureAccountID() => $_ensure(0);

  /// *
  ///  An amount to send (negative) or receive (positive).
  ///  <p>
  ///  This amount MUST be denominated in the smallest unit of the relevant
  ///  token.<br/>
  ///  For HBAR this SHALL be tinybar (10<sup>-8</sup> HBAR).<br/>
  ///  For other fungible/common tokens this SHALL depend on the value of
  ///  `decimals` for that token.
  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => $_clearField(2);

  /// *
  ///  An approved allowance flag.<br/>
  ///  If true then the transfer is expected to be an approved allowance.
  ///  <p>
  ///  If set, `accountID` SHALL be the owner that previously approved
  ///  the allowance.<br/>
  ///  The default value SHALL be false (unset).
  @$pb.TagNumber(3)
  $core.bool get isApproval => $_getBF(2);
  @$pb.TagNumber(3)
  set isApproval($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsApproval() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsApproval() => $_clearField(3);
}

/// *
///  A list of accounts and amounts to transfer.
///
///  Each `AccountAmount` SHALL specify the account and the amount to
///  send(negative) or receive(positive).<br/>
///  Each `TransferList` SHALL be contained in another message that contains
///  other details required to complete a transfer. This is typically a
///  `CryptoTransferTransactionBody` or `TransactionRecord`.<br/>
///  The `TransferList` SHALL only be used for HBAR transfers. Other token types
///  MUST use the `TokenTransferList` message.
class TransferList extends $pb.GeneratedMessage {
  factory TransferList({
    $core.Iterable<AccountAmount>? accountAmounts,
  }) {
    final result = create();
    if (accountAmounts != null) result.accountAmounts.addAll(accountAmounts);
    return result;
  }

  TransferList._();

  factory TransferList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransferList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransferList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<AccountAmount>(1, _omitFieldNames ? '' : 'accountAmounts',
        protoName: 'accountAmounts', subBuilder: AccountAmount.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferList copyWith(void Function(TransferList) updates) =>
      super.copyWith((message) => updates(message as TransferList))
          as TransferList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferList create() => TransferList._();
  @$core.override
  TransferList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransferList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransferList>(create);
  static TransferList? _defaultInstance;

  /// *
  ///  A list of AccountAmount pairs.<br/>
  ///  Each entry in this list is an account and an amount to transfer
  ///  into it (positive) or out of it (negative)
  @$pb.TagNumber(1)
  $pb.PbList<AccountAmount> get accountAmounts => $_getList(0);
}

/// *
///  A NFT transfer.<br/>
///  This refers to a sender account, a receiver account, and the serial number
///  of an NFT to transfer from sender to receiver.
///
///  Each `NftTransfer` SHALL be contained in another message (typically
///  `TokenTransferList`) that details which `Token` type applies to this NFT
///  transfer.
class NftTransfer extends $pb.GeneratedMessage {
  factory NftTransfer({
    AccountID? senderAccountID,
    AccountID? receiverAccountID,
    $fixnum.Int64? serialNumber,
    $core.bool? isApproval,
  }) {
    final result = create();
    if (senderAccountID != null) result.senderAccountID = senderAccountID;
    if (receiverAccountID != null) result.receiverAccountID = receiverAccountID;
    if (serialNumber != null) result.serialNumber = serialNumber;
    if (isApproval != null) result.isApproval = isApproval;
    return result;
  }

  NftTransfer._();

  factory NftTransfer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NftTransfer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NftTransfer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<AccountID>(1, _omitFieldNames ? '' : 'senderAccountID',
        protoName: 'senderAccountID', subBuilder: AccountID.create)
    ..aOM<AccountID>(2, _omitFieldNames ? '' : 'receiverAccountID',
        protoName: 'receiverAccountID', subBuilder: AccountID.create)
    ..aInt64(3, _omitFieldNames ? '' : 'serialNumber',
        protoName: 'serialNumber')
    ..aOB(4, _omitFieldNames ? '' : 'isApproval')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NftTransfer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NftTransfer copyWith(void Function(NftTransfer) updates) =>
      super.copyWith((message) => updates(message as NftTransfer))
          as NftTransfer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NftTransfer create() => NftTransfer._();
  @$core.override
  NftTransfer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NftTransfer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NftTransfer>(create);
  static NftTransfer? _defaultInstance;

  /// *
  ///  An Account identifier for the sender.
  @$pb.TagNumber(1)
  AccountID get senderAccountID => $_getN(0);
  @$pb.TagNumber(1)
  set senderAccountID(AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSenderAccountID() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderAccountID() => $_clearField(1);
  @$pb.TagNumber(1)
  AccountID ensureSenderAccountID() => $_ensure(0);

  /// *
  ///  An Account identifier for the receiver.
  @$pb.TagNumber(2)
  AccountID get receiverAccountID => $_getN(1);
  @$pb.TagNumber(2)
  set receiverAccountID(AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReceiverAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiverAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  AccountID ensureReceiverAccountID() => $_ensure(1);

  /// *
  ///  A serial number for the NFT to transfer.
  @$pb.TagNumber(3)
  $fixnum.Int64 get serialNumber => $_getI64(2);
  @$pb.TagNumber(3)
  set serialNumber($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearSerialNumber() => $_clearField(3);

  /// *
  ///  An approved allowance flag.<br/>
  ///  If true then the transfer is expected to be an approved allowance.
  ///  <p>
  ///  If set, `senderAccountID` SHALL be the owner that previously approved
  ///  the allowance.<br/>
  ///  If set, the `senderAccountID` MUST be the "payer" account for
  ///  the transaction <br/>
  ///  The default value SHALL be false (unset).
  @$pb.TagNumber(4)
  $core.bool get isApproval => $_getBF(3);
  @$pb.TagNumber(4)
  set isApproval($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsApproval() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsApproval() => $_clearField(4);
}

/// *
///  A list of transfers for a particular (non-HBAR) token type.
///
///  A `TokenTransferList` applies to a single token type, but may contain many
///  individual transfers.<br/>
///  Each transfer of a fungible/common token MUST specify an `accountID` and
///  `amount`. Amount SHALL be positive when the account receives tokens, and
///  SHALL be negative when the account sends tokens. The amount SHOULD NOT be
///  `0`.<br/>
///  In a transfer list containing fungible/common tokens in the `transfers`
///  list, the sum of all such transfers MUST be zero (`0`).
///  Each transfer of a unique token SHALL specify both sender and receiver, as
///  well as the serial number transferred.<br/>
///  A single `TokenTransferList` MUST contain `transfers` or `nftTransfers`,
///  but MUST NOT contain both.
class TokenTransferList extends $pb.GeneratedMessage {
  factory TokenTransferList({
    TokenID? token,
    $core.Iterable<AccountAmount>? transfers,
    $core.Iterable<NftTransfer>? nftTransfers,
    $1.UInt32Value? expectedDecimals,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (transfers != null) result.transfers.addAll(transfers);
    if (nftTransfers != null) result.nftTransfers.addAll(nftTransfers);
    if (expectedDecimals != null) result.expectedDecimals = expectedDecimals;
    return result;
  }

  TokenTransferList._();

  factory TokenTransferList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenTransferList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenTransferList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: TokenID.create)
    ..pPM<AccountAmount>(2, _omitFieldNames ? '' : 'transfers',
        subBuilder: AccountAmount.create)
    ..pPM<NftTransfer>(3, _omitFieldNames ? '' : 'nftTransfers',
        protoName: 'nftTransfers', subBuilder: NftTransfer.create)
    ..aOM<$1.UInt32Value>(4, _omitFieldNames ? '' : 'expectedDecimals',
        subBuilder: $1.UInt32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenTransferList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenTransferList copyWith(void Function(TokenTransferList) updates) =>
      super.copyWith((message) => updates(message as TokenTransferList))
          as TokenTransferList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenTransferList create() => TokenTransferList._();
  @$core.override
  TokenTransferList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenTransferList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenTransferList>(create);
  static TokenTransferList? _defaultInstance;

  /// *
  ///  A token identifier.<br/>
  ///  This is the token to be transferred.
  @$pb.TagNumber(1)
  TokenID get token => $_getN(0);
  @$pb.TagNumber(1)
  set token(TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);
  @$pb.TagNumber(1)
  TokenID ensureToken() => $_ensure(0);

  /// *
  ///  A list of account amounts.
  ///  <p>
  ///  Each entry SHALL have an account and amount.<br/>
  ///  These transfers SHALL be "double-entry" style; the credits (positive
  ///  amount) and debits (negative amount) MUST sum to 0, unless this
  ///  transfer list is part of a `mint` or `burn` operation.<br/>
  ///  This SHALL be be set for fungible/common tokens and MUST be
  ///  empty otherwise.
  @$pb.TagNumber(2)
  $pb.PbList<AccountAmount> get transfers => $_getList(1);

  /// *
  ///  A list of NftTransfers.
  ///  <p>
  ///  Each entry SHALL have a sender and receiver account, and the
  ///  serial number of the unique token to transfer.<br/>
  ///  This SHALL be be set for non-fungible/unique tokens and SHALL be
  ///  empty otherwise.
  @$pb.TagNumber(3)
  $pb.PbList<NftTransfer> get nftTransfers => $_getList(2);

  /// *
  ///  An expected decimal precision.<br/>
  ///  This is the number of decimals a fungible/common token type is
  ///  _expected_ to have.
  ///  <p>
  ///  The transfer SHALL fail with response code `UNEXPECTED_TOKEN_DECIMALS`
  ///  if this is set and the actual decimals specified for the `Token` differ
  ///  from this value.<br/>
  ///  If `nftTransfers` is set, then this value SHOULD NOT be set.
  @$pb.TagNumber(4)
  $1.UInt32Value get expectedDecimals => $_getN(3);
  @$pb.TagNumber(4)
  set expectedDecimals($1.UInt32Value value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExpectedDecimals() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpectedDecimals() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.UInt32Value ensureExpectedDecimals() => $_ensure(3);
}

/// *
///  A rational number.<br/>
///  A common use is to set the amount of a value transfer to collect as a
///  custom fee.
///
///  It is RECOMMENDED that both numerator and denominator be no larger than
///  necessary to express the required fraction. A very large numerator, in
///  particular, may not be reliable.
///  Both fields are REQUIRED and SHOULD be positive integers.
class Fraction extends $pb.GeneratedMessage {
  factory Fraction({
    $fixnum.Int64? numerator,
    $fixnum.Int64? denominator,
  }) {
    final result = create();
    if (numerator != null) result.numerator = numerator;
    if (denominator != null) result.denominator = denominator;
    return result;
  }

  Fraction._();

  factory Fraction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fraction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fraction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'numerator')
    ..aInt64(2, _omitFieldNames ? '' : 'denominator')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fraction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fraction copyWith(void Function(Fraction) updates) =>
      super.copyWith((message) => updates(message as Fraction)) as Fraction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fraction create() => Fraction._();
  @$core.override
  Fraction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fraction getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fraction>(create);
  static Fraction? _defaultInstance;

  /// *
  ///  A fractional number's numerator.
  @$pb.TagNumber(1)
  $fixnum.Int64 get numerator => $_getI64(0);
  @$pb.TagNumber(1)
  set numerator($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNumerator() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumerator() => $_clearField(1);

  /// *
  ///  A fractional number's denominator.
  ///  <p>
  ///  A zero value SHALL fail with response code `FRACTION_DIVIDES_BY_ZERO`.
  @$pb.TagNumber(2)
  $fixnum.Int64 get denominator => $_getI64(1);
  @$pb.TagNumber(2)
  set denominator($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDenominator() => $_has(1);
  @$pb.TagNumber(2)
  void clearDenominator() => $_clearField(2);
}

enum Key_Key {
  contractID,
  ed25519,
  rSA3072,
  eCDSA384,
  thresholdKey,
  keyList,
  eCDSASecp256k1,
  delegatableContractId,
  notSet
}

/// *
///  A Key is an entity representing one or more cryptographic public/private key
///  pairs and, optionally, the structure for how multiple signatures may be
///  composed to meet complex multiple-signature authorization requirements.
///
///  A Key can be a public key from either the Ed25519 or ECDSA(secp256k1)
///  signature schemes. In the ECDSA(secp256k1) case we require the 33-byte
///  compressed form of the public key. For simplicity, we call these
///  cryptographic public keys `primitive` keys.<br/>
///  If an entity has a primitive key associated to it, then the corresponding
///  private key must sign any transaction to send tokens or perform other
///  actions requiring authorization.
///
///  A Key can also be the ID of a smart contract, which SHALL authorize that
///  contract to execute any system contract with signing requirements that are
///  met by the key.<br/>
///  > Example
///  >> If account `0.0.A` has a threshold key whose threshold is satisfied
///  >> by a contract ID key for contract `0.0.C`, then when `0.0.C` is called,
///  >> it is authorized to use system contracts to manage any asset owned by
///  >> `0.0.A`. If the contract ID key is "delegatable", then `0.0.C` can even
///  >> perform these actions when running code accessed via `DELEGATECALL`.
///
///  A Key can be a "threshold key", which is a list of N keys, any M of which
///  may sign in order for the signature to be considered valid. The value of
///  M for a given threshold key MUST be less than or equal to N. A threshold
///  key is sometimes called a "M-of-N" key.
///
///  A Key can be a "key list" where all keys in the list must sign unless
///  specified otherwise in the documentation for a specific transaction
///  type (e.g. FileDeleteTransactionBody).<br/>
///  This implies that the use of a key list is dependent on context. For
///  example, an Hedera file that is created with a list of keys, SHALL require
///  that all of those keys must sign a transaction to create or modify the file,
///  but only one key from that list MUST sign a transaction to delete the file.
///  So it is a single list that sometimes acts as a N-of-N threshold key, and
///  sometimes acts as a 1-of-N threshold key.<br/>
///  To reduce confusion this may cause, a key list SHALL always be considered
///  N-of-N, unless specified otherwise in official documentation.<br/>
///  A key list MAY have repeated primitive public keys, but the signature
///  requirement for all keys in a repeated set SHALL be satisfied by a single
///  valid signature. There is no mechanism to require a single key to sign a
///  single transaction more than once.
///
///  Any list or threshold key MAY have nested key lists or threshold keys.
///  This allows, for example, the keys within a threshold signature to
///  themselves be threshold, list, contract, or primitive keys. This nesting
///  structure enables complex asymmetric multi-party signature requirements to
///  be met.
///
///  To ensure adequate performance and transaction security, key nesting is
///  limited to at most fifteen(15) levels.
class Key extends $pb.GeneratedMessage {
  factory Key({
    ContractID? contractID,
    $core.List<$core.int>? ed25519,
    @$core.Deprecated('This field is deprecated.')
    $core.List<$core.int>? rSA3072,
    @$core.Deprecated('This field is deprecated.')
    $core.List<$core.int>? eCDSA384,
    ThresholdKey? thresholdKey,
    KeyList? keyList,
    $core.List<$core.int>? eCDSASecp256k1,
    ContractID? delegatableContractId,
  }) {
    final result = create();
    if (contractID != null) result.contractID = contractID;
    if (ed25519 != null) result.ed25519 = ed25519;
    if (rSA3072 != null) result.rSA3072 = rSA3072;
    if (eCDSA384 != null) result.eCDSA384 = eCDSA384;
    if (thresholdKey != null) result.thresholdKey = thresholdKey;
    if (keyList != null) result.keyList = keyList;
    if (eCDSASecp256k1 != null) result.eCDSASecp256k1 = eCDSASecp256k1;
    if (delegatableContractId != null)
      result.delegatableContractId = delegatableContractId;
    return result;
  }

  Key._();

  factory Key.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Key.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Key_Key> _Key_KeyByTag = {
    1: Key_Key.contractID,
    2: Key_Key.ed25519,
    3: Key_Key.rSA3072,
    4: Key_Key.eCDSA384,
    5: Key_Key.thresholdKey,
    6: Key_Key.keyList,
    7: Key_Key.eCDSASecp256k1,
    8: Key_Key.delegatableContractId,
    0: Key_Key.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Key',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<ContractID>(1, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: ContractID.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'ed25519', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'RSA3072', $pb.PbFieldType.OY,
        protoName: 'RSA_3072')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'ECDSA384', $pb.PbFieldType.OY,
        protoName: 'ECDSA_384')
    ..aOM<ThresholdKey>(5, _omitFieldNames ? '' : 'thresholdKey',
        protoName: 'thresholdKey', subBuilder: ThresholdKey.create)
    ..aOM<KeyList>(6, _omitFieldNames ? '' : 'keyList',
        protoName: 'keyList', subBuilder: KeyList.create)
    ..a<$core.List<$core.int>>(
        7, _omitFieldNames ? '' : 'ECDSASecp256k1', $pb.PbFieldType.OY,
        protoName: 'ECDSA_secp256k1')
    ..aOM<ContractID>(8, _omitFieldNames ? '' : 'delegatableContractId',
        subBuilder: ContractID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Key clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Key copyWith(void Function(Key) updates) =>
      super.copyWith((message) => updates(message as Key)) as Key;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Key create() => Key._();
  @$core.override
  Key createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Key getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Key>(create);
  static Key? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  Key_Key whichKey() => _Key_KeyByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearKey() => $_clearField($_whichOneof(0));

  /// *
  ///  A smart contract instance that is authorized implicitly.
  ///  <p>
  ///  This key type SHALL require that the code in the active message frame
  ///  belong to the contract with the given id.
  @$pb.TagNumber(1)
  ContractID get contractID => $_getN(0);
  @$pb.TagNumber(1)
  set contractID(ContractID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasContractID() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractID() => $_clearField(1);
  @$pb.TagNumber(1)
  ContractID ensureContractID() => $_ensure(0);

  /// *
  ///  An array of Ed25519 public key bytes.
  @$pb.TagNumber(2)
  $core.List<$core.int> get ed25519 => $_getN(1);
  @$pb.TagNumber(2)
  set ed25519($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEd25519() => $_has(1);
  @$pb.TagNumber(2)
  void clearEd25519() => $_clearField(2);

  /// *
  ///  This option is not currently supported.<br/>
  ///  An array of RSA-3072 public key bytes.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.List<$core.int> get rSA3072 => $_getN(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set rSA3072($core.List<$core.int> value) => $_setBytes(2, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasRSA3072() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearRSA3072() => $_clearField(3);

  /// *
  ///  This option is not currently supported.<br/>
  ///  An array of ECDSA, using the p-384 curve, public key bytes.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.List<$core.int> get eCDSA384 => $_getN(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set eCDSA384($core.List<$core.int> value) => $_setBytes(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasECDSA384() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearECDSA384() => $_clearField(4);

  /// *
  ///  A threshold, M, combined with a list of N keys, any M of which are
  ///  sufficient to form a valid signature.
  @$pb.TagNumber(5)
  ThresholdKey get thresholdKey => $_getN(4);
  @$pb.TagNumber(5)
  set thresholdKey(ThresholdKey value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasThresholdKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearThresholdKey() => $_clearField(5);
  @$pb.TagNumber(5)
  ThresholdKey ensureThresholdKey() => $_ensure(4);

  /// *
  ///  A list of keys. This may be treated like a "N-of-N" threshold key,
  ///  as a component of another key, or in some other manner as documented.
  @$pb.TagNumber(6)
  KeyList get keyList => $_getN(5);
  @$pb.TagNumber(6)
  set keyList(KeyList value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasKeyList() => $_has(5);
  @$pb.TagNumber(6)
  void clearKeyList() => $_clearField(6);
  @$pb.TagNumber(6)
  KeyList ensureKeyList() => $_ensure(5);

  /// *
  ///  A set of compressed ECDSA(secp256k1) public key bytes.<br/>
  ///  This is an EVM compatibility format.
  @$pb.TagNumber(7)
  $core.List<$core.int> get eCDSASecp256k1 => $_getN(6);
  @$pb.TagNumber(7)
  set eCDSASecp256k1($core.List<$core.int> value) => $_setBytes(6, value);
  @$pb.TagNumber(7)
  $core.bool hasECDSASecp256k1() => $_has(6);
  @$pb.TagNumber(7)
  void clearECDSASecp256k1() => $_clearField(7);

  /// *
  ///  A smart contract that, if the recipient of the active message frame,
  ///  SHALL be imputed authorization.<br/>
  ///  Setting this key type is a more permissive version of setting a
  ///  contractID key.
  ///  <p>
  ///  This key form SHALL NOT strictly require that the code being executed
  ///  in the frame belong to the given contract. The code in frame MAY be
  ///  running another contract via a `delegatecall`.
  @$pb.TagNumber(8)
  ContractID get delegatableContractId => $_getN(7);
  @$pb.TagNumber(8)
  set delegatableContractId(ContractID value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasDelegatableContractId() => $_has(7);
  @$pb.TagNumber(8)
  void clearDelegatableContractId() => $_clearField(8);
  @$pb.TagNumber(8)
  ContractID ensureDelegatableContractId() => $_ensure(7);
}

/// *
///  A threshold value and a list of public keys that, together, form a threshold
///  signature requirement. Any subset of the keys in the list may satisfy the
///  signature requirements of this type of key, provided the number of keys meets
///  or exceeds the threshold. For example, if a particular key has a threshold of
///  three(3) and eight(8) keys in the list, then any three(3) signatures, from
///  the list of eight(8), is sufficient to authorize that key.
///
///  For threshold purposes, all signatures from a single `primitive` key are
///  considered a single signature, so that signature(s) from a single key SHALL
///  NOT _directly_ meet a threshold greater than one(1).
///
///  #### Note
///  > It is possible to construct a complex key structure that _would_ enable a
///  > single primitive key to successfully meet a threshold requirement. All
///  > threshold keys SHOULD be carefully audited to ensure no one `primitive`
///  > key, or smart contract, has disproportionate capability.
class ThresholdKey extends $pb.GeneratedMessage {
  factory ThresholdKey({
    $core.int? threshold,
    KeyList? keys,
  }) {
    final result = create();
    if (threshold != null) result.threshold = threshold;
    if (keys != null) result.keys = keys;
    return result;
  }

  ThresholdKey._();

  factory ThresholdKey.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThresholdKey.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThresholdKey',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'threshold', fieldType: $pb.PbFieldType.OU3)
    ..aOM<KeyList>(2, _omitFieldNames ? '' : 'keys', subBuilder: KeyList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThresholdKey clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThresholdKey copyWith(void Function(ThresholdKey) updates) =>
      super.copyWith((message) => updates(message as ThresholdKey))
          as ThresholdKey;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThresholdKey create() => ThresholdKey._();
  @$core.override
  ThresholdKey createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThresholdKey getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThresholdKey>(create);
  static ThresholdKey? _defaultInstance;

  /// *
  ///  A transaction MUST have valid signatures from at least this number of
  ///  separate keys, from the `keys` list to be authorized by this key.
  @$pb.TagNumber(1)
  $core.int get threshold => $_getIZ(0);
  @$pb.TagNumber(1)
  set threshold($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasThreshold() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreshold() => $_clearField(1);

  /// *
  ///  A list of the keys that MAY satisfy signature requirements of this key.
  @$pb.TagNumber(2)
  KeyList get keys => $_getN(1);
  @$pb.TagNumber(2)
  set keys(KeyList value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKeys() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeys() => $_clearField(2);
  @$pb.TagNumber(2)
  KeyList ensureKeys() => $_ensure(1);
}

/// *
///  A list of keys.<br/>
///  A `KeyList` requires all keys (N-of-N) to sign, unless otherwise
///  specified in official documentation. A KeyList may contain repeated keys,
///  but all such repeated keys are considered a single key when determining
///  signature authorization.
///
///  ### Additional Notes
///  1. An empty key list is the "standard" mechanism to represent an
///     unassigned key. For example, if the `admin_key` of a token is set
///     to the empty key list, then that token has no admin key, and
///     functionality that requires an admin key to sign the
///     transaction is disabled.
class KeyList extends $pb.GeneratedMessage {
  factory KeyList({
    $core.Iterable<Key>? keys,
  }) {
    final result = create();
    if (keys != null) result.keys.addAll(keys);
    return result;
  }

  KeyList._();

  factory KeyList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory KeyList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeyList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<Key>(1, _omitFieldNames ? '' : 'keys', subBuilder: Key.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeyList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeyList copyWith(void Function(KeyList) updates) =>
      super.copyWith((message) => updates(message as KeyList)) as KeyList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyList create() => KeyList._();
  @$core.override
  KeyList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static KeyList getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyList>(create);
  static KeyList? _defaultInstance;

  /// *
  ///  A list of keys. All values in this list SHALL be non-null.
  ///  <p>
  @$pb.TagNumber(1)
  $pb.PbList<Key> get keys => $_getList(0);
}

enum Signature_Signature {
  contract,
  ed25519,
  rSA3072,
  eCDSA384,
  thresholdSignature,
  signatureList,
  notSet
}

/// *
///  This message is deprecated and MUST NOT be used to communicate with
///  network nodes. It is retained here only for historical reasons.
///
///  Client software MUST NOT include this message in any request. <br/>
///  Compliant nodes SHALL NOT accept any request containing this message.
///
///  Please use the `SignaturePair` and `SignatureMap` messages instead of
///  this message.
@$core.Deprecated('This message is deprecated')
class Signature extends $pb.GeneratedMessage {
  factory Signature({
    $core.List<$core.int>? contract,
    $core.List<$core.int>? ed25519,
    $core.List<$core.int>? rSA3072,
    $core.List<$core.int>? eCDSA384,
    ThresholdSignature? thresholdSignature,
    SignatureList? signatureList,
  }) {
    final result = create();
    if (contract != null) result.contract = contract;
    if (ed25519 != null) result.ed25519 = ed25519;
    if (rSA3072 != null) result.rSA3072 = rSA3072;
    if (eCDSA384 != null) result.eCDSA384 = eCDSA384;
    if (thresholdSignature != null)
      result.thresholdSignature = thresholdSignature;
    if (signatureList != null) result.signatureList = signatureList;
    return result;
  }

  Signature._();

  factory Signature.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Signature.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Signature_Signature>
      _Signature_SignatureByTag = {
    1: Signature_Signature.contract,
    2: Signature_Signature.ed25519,
    3: Signature_Signature.rSA3072,
    4: Signature_Signature.eCDSA384,
    5: Signature_Signature.thresholdSignature,
    6: Signature_Signature.signatureList,
    0: Signature_Signature.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Signature',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'contract', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'ed25519', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'RSA3072', $pb.PbFieldType.OY,
        protoName: 'RSA_3072')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'ECDSA384', $pb.PbFieldType.OY,
        protoName: 'ECDSA_384')
    ..aOM<ThresholdSignature>(5, _omitFieldNames ? '' : 'thresholdSignature',
        protoName: 'thresholdSignature', subBuilder: ThresholdSignature.create)
    ..aOM<SignatureList>(6, _omitFieldNames ? '' : 'signatureList',
        protoName: 'signatureList', subBuilder: SignatureList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Signature clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Signature copyWith(void Function(Signature) updates) =>
      super.copyWith((message) => updates(message as Signature)) as Signature;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Signature create() => Signature._();
  @$core.override
  Signature createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Signature getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Signature>(create);
  static Signature? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  Signature_Signature whichSignature() =>
      _Signature_SignatureByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearSignature() => $_clearField($_whichOneof(0));

  /// *
  ///  Smart contract virtual signature (always length zero).
  @$pb.TagNumber(1)
  $core.List<$core.int> get contract => $_getN(0);
  @$pb.TagNumber(1)
  set contract($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContract() => $_has(0);
  @$pb.TagNumber(1)
  void clearContract() => $_clearField(1);

  /// *
  ///  Ed25519 signature bytes.
  @$pb.TagNumber(2)
  $core.List<$core.int> get ed25519 => $_getN(1);
  @$pb.TagNumber(2)
  set ed25519($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEd25519() => $_has(1);
  @$pb.TagNumber(2)
  void clearEd25519() => $_clearField(2);

  /// *
  ///  RSA-3072 signature bytes.
  @$pb.TagNumber(3)
  $core.List<$core.int> get rSA3072 => $_getN(2);
  @$pb.TagNumber(3)
  set rSA3072($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRSA3072() => $_has(2);
  @$pb.TagNumber(3)
  void clearRSA3072() => $_clearField(3);

  /// *
  ///  ECDSA p-384 signature bytes.
  @$pb.TagNumber(4)
  $core.List<$core.int> get eCDSA384 => $_getN(3);
  @$pb.TagNumber(4)
  set eCDSA384($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasECDSA384() => $_has(3);
  @$pb.TagNumber(4)
  void clearECDSA384() => $_clearField(4);

  /// *
  ///  A list of signatures for a single N-of-M threshold Key. This must be
  ///  a list of exactly M signatures, at least N of which are non-null.
  @$pb.TagNumber(5)
  ThresholdSignature get thresholdSignature => $_getN(4);
  @$pb.TagNumber(5)
  set thresholdSignature(ThresholdSignature value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasThresholdSignature() => $_has(4);
  @$pb.TagNumber(5)
  void clearThresholdSignature() => $_clearField(5);
  @$pb.TagNumber(5)
  ThresholdSignature ensureThresholdSignature() => $_ensure(4);

  /// *
  ///  A list of M signatures, each corresponding to a Key in a KeyList
  ///  of the same length.
  @$pb.TagNumber(6)
  SignatureList get signatureList => $_getN(5);
  @$pb.TagNumber(6)
  set signatureList(SignatureList value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSignatureList() => $_has(5);
  @$pb.TagNumber(6)
  void clearSignatureList() => $_clearField(6);
  @$pb.TagNumber(6)
  SignatureList ensureSignatureList() => $_ensure(5);
}

/// *
///  This message is deprecated and MUST NOT be used to communicate with network
///  nodes. It is retained here only for historical reasons.
///
///  Client software MUST NOT include this message in any request. <br/>
///  Compliant nodes SHALL NOT accept any request containing this message.
///
///  Please use the `SignaturePair` and `SignatureMap` messages, in combination
///  with `ThresholdKey` keys, instead of this message.
@$core.Deprecated('This message is deprecated')
class ThresholdSignature extends $pb.GeneratedMessage {
  factory ThresholdSignature({
    SignatureList? sigs,
  }) {
    final result = create();
    if (sigs != null) result.sigs = sigs;
    return result;
  }

  ThresholdSignature._();

  factory ThresholdSignature.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThresholdSignature.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThresholdSignature',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<SignatureList>(2, _omitFieldNames ? '' : 'sigs',
        subBuilder: SignatureList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThresholdSignature clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThresholdSignature copyWith(void Function(ThresholdSignature) updates) =>
      super.copyWith((message) => updates(message as ThresholdSignature))
          as ThresholdSignature;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThresholdSignature create() => ThresholdSignature._();
  @$core.override
  ThresholdSignature createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThresholdSignature getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThresholdSignature>(create);
  static ThresholdSignature? _defaultInstance;

  /// *
  ///  For an N-of-M threshold key, this is a list of M signatures, at least N
  ///  of which must be non-null.
  @$pb.TagNumber(2)
  SignatureList get sigs => $_getN(0);
  @$pb.TagNumber(2)
  set sigs(SignatureList value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSigs() => $_has(0);
  @$pb.TagNumber(2)
  void clearSigs() => $_clearField(2);
  @$pb.TagNumber(2)
  SignatureList ensureSigs() => $_ensure(0);
}

/// *
///  This message is deprecated and MUST NOT be used to communicate with network
///  nodes. It is retained here only for historical reasons.
///
///  Client software MUST NOT include this message in any request. <br/>
///  Compliant nodes SHALL NOT accept any request containing this message.
///
///  Please use the `SignaturePair` and `SignatureMap` messages instead of
///  this message.
@$core.Deprecated('This message is deprecated')
class SignatureList extends $pb.GeneratedMessage {
  factory SignatureList({
    $core.Iterable<Signature>? sigs,
  }) {
    final result = create();
    if (sigs != null) result.sigs.addAll(sigs);
    return result;
  }

  SignatureList._();

  factory SignatureList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SignatureList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SignatureList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<Signature>(2, _omitFieldNames ? '' : 'sigs',
        subBuilder: Signature.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignatureList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignatureList copyWith(void Function(SignatureList) updates) =>
      super.copyWith((message) => updates(message as SignatureList))
          as SignatureList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignatureList create() => SignatureList._();
  @$core.override
  SignatureList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SignatureList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SignatureList>(create);
  static SignatureList? _defaultInstance;

  /// *
  ///  Each signature corresponds to a Key in the KeyList.
  @$pb.TagNumber(2)
  $pb.PbList<Signature> get sigs => $_getList(0);
}

enum SignaturePair_Signature {
  contract,
  ed25519,
  rSA3072,
  eCDSA384,
  eCDSASecp256k1,
  notSet
}

/// *
///  A public key and signature pair.<br/>
///  Only Ed25519 and ECDSA(secp256k1) keys and signatures are currently supported
///  as cryptographic (non-implied) signatures.
class SignaturePair extends $pb.GeneratedMessage {
  factory SignaturePair({
    $core.List<$core.int>? pubKeyPrefix,
    $core.List<$core.int>? contract,
    $core.List<$core.int>? ed25519,
    @$core.Deprecated('This field is deprecated.')
    $core.List<$core.int>? rSA3072,
    @$core.Deprecated('This field is deprecated.')
    $core.List<$core.int>? eCDSA384,
    $core.List<$core.int>? eCDSASecp256k1,
  }) {
    final result = create();
    if (pubKeyPrefix != null) result.pubKeyPrefix = pubKeyPrefix;
    if (contract != null) result.contract = contract;
    if (ed25519 != null) result.ed25519 = ed25519;
    if (rSA3072 != null) result.rSA3072 = rSA3072;
    if (eCDSA384 != null) result.eCDSA384 = eCDSA384;
    if (eCDSASecp256k1 != null) result.eCDSASecp256k1 = eCDSASecp256k1;
    return result;
  }

  SignaturePair._();

  factory SignaturePair.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SignaturePair.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SignaturePair_Signature>
      _SignaturePair_SignatureByTag = {
    2: SignaturePair_Signature.contract,
    3: SignaturePair_Signature.ed25519,
    4: SignaturePair_Signature.rSA3072,
    5: SignaturePair_Signature.eCDSA384,
    6: SignaturePair_Signature.eCDSASecp256k1,
    0: SignaturePair_Signature.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SignaturePair',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'pubKeyPrefix', $pb.PbFieldType.OY,
        protoName: 'pubKeyPrefix')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'contract', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'ed25519', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'RSA3072', $pb.PbFieldType.OY,
        protoName: 'RSA_3072')
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'ECDSA384', $pb.PbFieldType.OY,
        protoName: 'ECDSA_384')
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'ECDSASecp256k1', $pb.PbFieldType.OY,
        protoName: 'ECDSA_secp256k1')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignaturePair clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignaturePair copyWith(void Function(SignaturePair) updates) =>
      super.copyWith((message) => updates(message as SignaturePair))
          as SignaturePair;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignaturePair create() => SignaturePair._();
  @$core.override
  SignaturePair createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SignaturePair getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SignaturePair>(create);
  static SignaturePair? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  SignaturePair_Signature whichSignature() =>
      _SignaturePair_SignatureByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearSignature() => $_clearField($_whichOneof(0));

  /// *
  ///  Prefix bytes of the public key.
  ///  <p>
  ///  The client may use any number of bytes from zero to the whole length of
  ///  the public key for pubKeyPrefix. If zero bytes are used, then it MUST be
  ///  true that only one cryptographic key is required to sign the associated
  ///  transaction.<br/>
  ///  If the `pubKeyPrefix` is 0 bytes and more than a single cryptographic
  ///  key is required to sign the transaction, the request SHALL resolve to
  ///  `INVALID_SIGNATURE`.
  ///  <blockquote>Important Note<blockquote>
  ///  In the special case that a signature is provided to authorize a
  ///  precompiled contract, the `pubKeyPrefix` MUST contain the _entire public
  ///  key_.<br/>
  ///  That is, if the key is an Ed25519 key, the `pubKeyPrefix` MUST be
  ///  32 bytes long and contain the full public key bytes.<br/>
  ///  If the key is an ECDSA(secp256k1) key, the `pubKeyPrefix` MUST be
  ///  33 bytes long and contain the full _compressed_ form of the public key.
  ///  </blockquote></blockquote>
  ///  <p>
  ///  <dl><dt>Purpose</dt>
  ///  <dd>The `pubKeyPrefix` exists to save cost. A signed transaction with
  ///  shorter prefixes will have fewer bytes, and so will have a lower
  ///  transaction fee.
  ///  The prefixes, however, MUST be long enough to distinguish between all
  ///  of the public keys that might be signing the transaction. Therefore,
  ///  software signing a transaction SHOULD evaluate which keys might possibly
  ///  be required to sign a transaction, and ensure that the shortest prefix
  ///  that is sufficient to unambiguously identify the correct key is used.
  ///  </dd></dl>
  @$pb.TagNumber(1)
  $core.List<$core.int> get pubKeyPrefix => $_getN(0);
  @$pb.TagNumber(1)
  set pubKeyPrefix($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPubKeyPrefix() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKeyPrefix() => $_clearField(1);

  /// *
  ///  A smart contract virtual signature.
  ///  <p>
  ///  This value MUST be length zero, if set.
  @$pb.TagNumber(2)
  $core.List<$core.int> get contract => $_getN(1);
  @$pb.TagNumber(2)
  set contract($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContract() => $_has(1);
  @$pb.TagNumber(2)
  void clearContract() => $_clearField(2);

  /// *
  ///  An Ed25519 signature.
  @$pb.TagNumber(3)
  $core.List<$core.int> get ed25519 => $_getN(2);
  @$pb.TagNumber(3)
  set ed25519($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEd25519() => $_has(2);
  @$pb.TagNumber(3)
  void clearEd25519() => $_clearField(3);

  /// *
  ///  This option is not supported.<br/>
  ///  A RSA-3072 signature.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.List<$core.int> get rSA3072 => $_getN(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set rSA3072($core.List<$core.int> value) => $_setBytes(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasRSA3072() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearRSA3072() => $_clearField(4);

  /// *
  ///  This option is not supported.<br/>
  ///  ECDSA p-384 signature.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.List<$core.int> get eCDSA384 => $_getN(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set eCDSA384($core.List<$core.int> value) => $_setBytes(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasECDSA384() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearECDSA384() => $_clearField(5);

  /// *
  ///  An ECDSA(secp256k1) signature.
  @$pb.TagNumber(6)
  $core.List<$core.int> get eCDSASecp256k1 => $_getN(5);
  @$pb.TagNumber(6)
  set eCDSASecp256k1($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasECDSASecp256k1() => $_has(5);
  @$pb.TagNumber(6)
  void clearECDSASecp256k1() => $_clearField(6);
}

/// *
///  A set of signatures corresponding to every unique public key that
///  signed a given transaction.
///
///  If any public key matches more than one prefix in the signature map,
///  the transaction containing that map SHALL fail immediately with the
///  response code `KEY_PREFIX_MISMATCH`.
class SignatureMap extends $pb.GeneratedMessage {
  factory SignatureMap({
    $core.Iterable<SignaturePair>? sigPair,
  }) {
    final result = create();
    if (sigPair != null) result.sigPair.addAll(sigPair);
    return result;
  }

  SignatureMap._();

  factory SignatureMap.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SignatureMap.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SignatureMap',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<SignaturePair>(1, _omitFieldNames ? '' : 'sigPair',
        protoName: 'sigPair', subBuilder: SignaturePair.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignatureMap clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignatureMap copyWith(void Function(SignatureMap) updates) =>
      super.copyWith((message) => updates(message as SignatureMap))
          as SignatureMap;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignatureMap create() => SignatureMap._();
  @$core.override
  SignatureMap createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SignatureMap getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SignatureMap>(create);
  static SignatureMap? _defaultInstance;

  /// *
  ///  A list of signature pairs for a specific transaction.<br/>
  ///  Each signature pair represents a single cryptographic (`primitive`)
  ///  public key identified by a "prefix" value and the cryptographic
  ///  signature produced for that key.
  @$pb.TagNumber(1)
  $pb.PbList<SignaturePair> get sigPair => $_getList(0);
}

/// *
///  A set of values the nodes use in determining transaction and query fees, and
///  constants involved in fee calculations.
///
///  Nodes SHALL multiply the amount of "resources" allocated to a transaction or
///  query by the corresponding price to calculate the appropriate fee. Units are
///  one-thousandth of a `tinyCent`. The "resource" allocations SHALL be estimated
///  based on transaction characteristics and current network state, and MAY be
///  further adjusted based on network load and congestion.
///
///  This SHALL be used, in different contexts, for the cost _factors_ used to
///  calculate charged amounts, for the resource accumulation, and for actual
///  amounts to be charged.<br/>
///  Amounts recorded here MUST be converted to tinybar according to the
///  current active `ExchangeRate` for the network.
class FeeComponents extends $pb.GeneratedMessage {
  factory FeeComponents({
    $fixnum.Int64? min,
    $fixnum.Int64? max,
    $fixnum.Int64? constant,
    $fixnum.Int64? bpt,
    $fixnum.Int64? vpt,
    $fixnum.Int64? rbh,
    $fixnum.Int64? sbh,
    $fixnum.Int64? gas,
    $fixnum.Int64? tv,
    $fixnum.Int64? bpr,
    $fixnum.Int64? sbpr,
  }) {
    final result = create();
    if (min != null) result.min = min;
    if (max != null) result.max = max;
    if (constant != null) result.constant = constant;
    if (bpt != null) result.bpt = bpt;
    if (vpt != null) result.vpt = vpt;
    if (rbh != null) result.rbh = rbh;
    if (sbh != null) result.sbh = sbh;
    if (gas != null) result.gas = gas;
    if (tv != null) result.tv = tv;
    if (bpr != null) result.bpr = bpr;
    if (sbpr != null) result.sbpr = sbpr;
    return result;
  }

  FeeComponents._();

  factory FeeComponents.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeeComponents.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeeComponents',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'min')
    ..aInt64(2, _omitFieldNames ? '' : 'max')
    ..aInt64(3, _omitFieldNames ? '' : 'constant')
    ..aInt64(4, _omitFieldNames ? '' : 'bpt')
    ..aInt64(5, _omitFieldNames ? '' : 'vpt')
    ..aInt64(6, _omitFieldNames ? '' : 'rbh')
    ..aInt64(7, _omitFieldNames ? '' : 'sbh')
    ..aInt64(8, _omitFieldNames ? '' : 'gas')
    ..aInt64(9, _omitFieldNames ? '' : 'tv')
    ..aInt64(10, _omitFieldNames ? '' : 'bpr')
    ..aInt64(11, _omitFieldNames ? '' : 'sbpr')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeeComponents clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeeComponents copyWith(void Function(FeeComponents) updates) =>
      super.copyWith((message) => updates(message as FeeComponents))
          as FeeComponents;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeeComponents create() => FeeComponents._();
  @$core.override
  FeeComponents createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeeComponents getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeeComponents>(create);
  static FeeComponents? _defaultInstance;

  /// *
  ///  Base: "minimum total fee".
  ///  <p>
  ///  The calculated fee MUST be greater than this value.
  @$pb.TagNumber(1)
  $fixnum.Int64 get min => $_getI64(0);
  @$pb.TagNumber(1)
  set min($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => $_clearField(1);

  /// *
  ///  Base: "maximum total fee".
  ///  <p>
  ///  The calculated fee MUST be less than this value.
  @$pb.TagNumber(2)
  $fixnum.Int64 get max => $_getI64(1);
  @$pb.TagNumber(2)
  set max($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => $_clearField(2);

  /// *
  ///  Base: "constant fee".<br/>
  ///  A baseline constant contribution to total fee.
  @$pb.TagNumber(3)
  $fixnum.Int64 get constant => $_getI64(2);
  @$pb.TagNumber(3)
  set constant($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasConstant() => $_has(2);
  @$pb.TagNumber(3)
  void clearConstant() => $_clearField(3);

  /// *
  ///  Bandwidth: "bytes per transaction".<br/>
  ///  The fee for bandwidth consumed by a transaction, measured in bytes
  @$pb.TagNumber(4)
  $fixnum.Int64 get bpt => $_getI64(3);
  @$pb.TagNumber(4)
  set bpt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBpt() => $_has(3);
  @$pb.TagNumber(4)
  void clearBpt() => $_clearField(4);

  /// *
  ///  Signatures: "validations per transaction".<br/>
  ///  The fee for signature verifications required by a transaction
  @$pb.TagNumber(5)
  $fixnum.Int64 get vpt => $_getI64(4);
  @$pb.TagNumber(5)
  set vpt($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVpt() => $_has(4);
  @$pb.TagNumber(5)
  void clearVpt() => $_clearField(5);

  /// *
  ///  Memory: "RAM byte-hours".<br/>
  ///  The fee for RAM required to process a transaction,
  ///  measured in byte-hours
  @$pb.TagNumber(6)
  $fixnum.Int64 get rbh => $_getI64(5);
  @$pb.TagNumber(6)
  set rbh($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRbh() => $_has(5);
  @$pb.TagNumber(6)
  void clearRbh() => $_clearField(6);

  /// *
  ///  Disk: "storage byte-hours".<br/>
  ///  The fee for storage required by a transaction, measured in byte-hours
  @$pb.TagNumber(7)
  $fixnum.Int64 get sbh => $_getI64(6);
  @$pb.TagNumber(7)
  set sbh($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSbh() => $_has(6);
  @$pb.TagNumber(7)
  void clearSbh() => $_clearField(7);

  /// *
  ///  Compute: Ethereum term for a derivative EVM compute resource.<br/>
  ///  The fee of computation for a smart contract transaction. The value of
  ///  gas is set by a conversion rate, and is regularly updated to reflect
  ///  reasonable and customary costs.
  @$pb.TagNumber(8)
  $fixnum.Int64 get gas => $_getI64(7);
  @$pb.TagNumber(8)
  set gas($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasGas() => $_has(7);
  @$pb.TagNumber(8)
  void clearGas() => $_clearField(8);

  /// *
  ///  Ad valorem: "transferred value".<br/>
  ///  The fee for HBAR transferred by a transaction.
  @$pb.TagNumber(9)
  $fixnum.Int64 get tv => $_getI64(8);
  @$pb.TagNumber(9)
  set tv($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTv() => $_has(8);
  @$pb.TagNumber(9)
  void clearTv() => $_clearField(9);

  /// *
  ///  Response memory: "bytes per response".<br/>
  ///  The fee for data retrieved from memory to deliver a response,
  ///  measured in bytes
  @$pb.TagNumber(10)
  $fixnum.Int64 get bpr => $_getI64(9);
  @$pb.TagNumber(10)
  set bpr($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasBpr() => $_has(9);
  @$pb.TagNumber(10)
  void clearBpr() => $_clearField(10);

  /// *
  ///  Response disk: "storage bytes per response".<br/>
  ///  The fee for data retrieved from disk to deliver a response,
  ///  measured in bytes
  @$pb.TagNumber(11)
  $fixnum.Int64 get sbpr => $_getI64(10);
  @$pb.TagNumber(11)
  set sbpr($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasSbpr() => $_has(10);
  @$pb.TagNumber(11)
  void clearSbpr() => $_clearField(11);
}

/// *
///  The fee schedule for a specific transaction or query based on the fee data.
class TransactionFeeSchedule extends $pb.GeneratedMessage {
  factory TransactionFeeSchedule({
    HederaFunctionality? hederaFunctionality,
    @$core.Deprecated('This field is deprecated.') FeeData? feeData,
    $core.Iterable<FeeData>? fees,
  }) {
    final result = create();
    if (hederaFunctionality != null)
      result.hederaFunctionality = hederaFunctionality;
    if (feeData != null) result.feeData = feeData;
    if (fees != null) result.fees.addAll(fees);
    return result;
  }

  TransactionFeeSchedule._();

  factory TransactionFeeSchedule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionFeeSchedule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionFeeSchedule',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aE<HederaFunctionality>(1, _omitFieldNames ? '' : 'hederaFunctionality',
        protoName: 'hederaFunctionality',
        enumValues: HederaFunctionality.values)
    ..aOM<FeeData>(2, _omitFieldNames ? '' : 'feeData',
        protoName: 'feeData', subBuilder: FeeData.create)
    ..pPM<FeeData>(3, _omitFieldNames ? '' : 'fees', subBuilder: FeeData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionFeeSchedule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionFeeSchedule copyWith(
          void Function(TransactionFeeSchedule) updates) =>
      super.copyWith((message) => updates(message as TransactionFeeSchedule))
          as TransactionFeeSchedule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionFeeSchedule create() => TransactionFeeSchedule._();
  @$core.override
  TransactionFeeSchedule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionFeeSchedule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionFeeSchedule>(create);
  static TransactionFeeSchedule? _defaultInstance;

  /// *
  ///  An enumeration for a particular transaction or query.<br/>
  ///  The functionality type determines the base cost parameters.
  @$pb.TagNumber(1)
  HederaFunctionality get hederaFunctionality => $_getN(0);
  @$pb.TagNumber(1)
  set hederaFunctionality(HederaFunctionality value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHederaFunctionality() => $_has(0);
  @$pb.TagNumber(1)
  void clearHederaFunctionality() => $_clearField(1);

  /// *
  ///  Use `fees` instead of this field.<br/>
  ///  Resource price coefficients.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  FeeData get feeData => $_getN(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set feeData(FeeData value) => $_setField(2, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasFeeData() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearFeeData() => $_clearField(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  FeeData ensureFeeData() => $_ensure(1);

  /// *
  ///  The resource price coefficients for transaction type and any applicable
  ///  subtypes.<br/>
  ///  The multiple entries enable support for subtype price definitions.
  @$pb.TagNumber(3)
  $pb.PbList<FeeData> get fees => $_getList(2);
}

/// *
///  A total fee, in component amounts charged for a transaction.
///
///  Total fees are composed of three sets of components.
///  - Node data, components that compensate the specific node that submitted
///    the transaction.
///  - Network data, components that compensate the Hedera network for gossiping
///    the transaction and determining the consensus timestamp.
///  - Service data, components that compensate the Hedera network for the ongoing
///    maintenance and operation of the network, as well as ongoing development
///    of network services.
///
///  Fee components are recorded in thousandths of a tiny cent, and the network
///  exchange rate converts these to tinybar amounts, which are what the network
///  charges for transactions and what the network reports in the record stream.
class FeeData extends $pb.GeneratedMessage {
  factory FeeData({
    FeeComponents? nodedata,
    FeeComponents? networkdata,
    FeeComponents? servicedata,
    SubType? subType,
  }) {
    final result = create();
    if (nodedata != null) result.nodedata = nodedata;
    if (networkdata != null) result.networkdata = networkdata;
    if (servicedata != null) result.servicedata = servicedata;
    if (subType != null) result.subType = subType;
    return result;
  }

  FeeData._();

  factory FeeData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeeData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeeData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<FeeComponents>(1, _omitFieldNames ? '' : 'nodedata',
        subBuilder: FeeComponents.create)
    ..aOM<FeeComponents>(2, _omitFieldNames ? '' : 'networkdata',
        subBuilder: FeeComponents.create)
    ..aOM<FeeComponents>(3, _omitFieldNames ? '' : 'servicedata',
        subBuilder: FeeComponents.create)
    ..aE<SubType>(4, _omitFieldNames ? '' : 'subType',
        protoName: 'subType', enumValues: SubType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeeData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeeData copyWith(void Function(FeeData) updates) =>
      super.copyWith((message) => updates(message as FeeData)) as FeeData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeeData create() => FeeData._();
  @$core.override
  FeeData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeeData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeeData>(create);
  static FeeData? _defaultInstance;

  /// *
  ///  Fee components to be paid to the submitting node.
  @$pb.TagNumber(1)
  FeeComponents get nodedata => $_getN(0);
  @$pb.TagNumber(1)
  set nodedata(FeeComponents value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNodedata() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodedata() => $_clearField(1);
  @$pb.TagNumber(1)
  FeeComponents ensureNodedata() => $_ensure(0);

  /// *
  ///  Fee components to be paid to the network for bringing a
  ///  transaction to consensus.
  @$pb.TagNumber(2)
  FeeComponents get networkdata => $_getN(1);
  @$pb.TagNumber(2)
  set networkdata(FeeComponents value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNetworkdata() => $_has(1);
  @$pb.TagNumber(2)
  void clearNetworkdata() => $_clearField(2);
  @$pb.TagNumber(2)
  FeeComponents ensureNetworkdata() => $_ensure(1);

  /// *
  ///  Fee components to be paid to the network for providing the immediate and
  ///  ongoing services associated with executing the transaction, maintaining
  ///  the network, and developing the network software.
  @$pb.TagNumber(3)
  FeeComponents get servicedata => $_getN(2);
  @$pb.TagNumber(3)
  set servicedata(FeeComponents value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasServicedata() => $_has(2);
  @$pb.TagNumber(3)
  void clearServicedata() => $_clearField(3);
  @$pb.TagNumber(3)
  FeeComponents ensureServicedata() => $_ensure(2);

  /// *
  ///  A sub-type distinguishing between different types of `FeeData` that may
  ///  apply to the same base transaction type (associated with
  ///  an `HederaFunctionality`).
  @$pb.TagNumber(4)
  SubType get subType => $_getN(3);
  @$pb.TagNumber(4)
  set subType(SubType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSubType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubType() => $_clearField(4);
}

/// *
///  A set of fee schedules covering all transaction types and query types, along
///  with a specific time at which this fee schedule will expire.
///
///  Nodes SHALL use the most recent unexpired fee schedule to determine the fees
///  for all transactions based on various resource components imputed to each
///  transaction.
class FeeSchedule extends $pb.GeneratedMessage {
  factory FeeSchedule({
    $core.Iterable<TransactionFeeSchedule>? transactionFeeSchedule,
    $0.TimestampSeconds? expiryTime,
  }) {
    final result = create();
    if (transactionFeeSchedule != null)
      result.transactionFeeSchedule.addAll(transactionFeeSchedule);
    if (expiryTime != null) result.expiryTime = expiryTime;
    return result;
  }

  FeeSchedule._();

  factory FeeSchedule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeeSchedule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeeSchedule',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<TransactionFeeSchedule>(
        1, _omitFieldNames ? '' : 'transactionFeeSchedule',
        protoName: 'transactionFeeSchedule',
        subBuilder: TransactionFeeSchedule.create)
    ..aOM<$0.TimestampSeconds>(2, _omitFieldNames ? '' : 'expiryTime',
        protoName: 'expiryTime', subBuilder: $0.TimestampSeconds.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeeSchedule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeeSchedule copyWith(void Function(FeeSchedule) updates) =>
      super.copyWith((message) => updates(message as FeeSchedule))
          as FeeSchedule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeeSchedule create() => FeeSchedule._();
  @$core.override
  FeeSchedule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeeSchedule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeeSchedule>(create);
  static FeeSchedule? _defaultInstance;

  /// *
  ///  Sets of fee coefficients for various transaction or query types.
  @$pb.TagNumber(1)
  $pb.PbList<TransactionFeeSchedule> get transactionFeeSchedule => $_getList(0);

  /// *
  ///  A time, in seconds since the `epoch`, when this fee schedule
  ///  will expire.
  ///  <p>
  ///  For this purpose, `epoch` SHALL be the UNIX epoch
  ///  with 0 at `1970-01-01T00:00:00.000Z`.
  @$pb.TagNumber(2)
  $0.TimestampSeconds get expiryTime => $_getN(1);
  @$pb.TagNumber(2)
  set expiryTime($0.TimestampSeconds value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExpiryTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpiryTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.TimestampSeconds ensureExpiryTime() => $_ensure(1);
}

/// *
///  The "current" fee schedule and the "next" fee schedule.
///
///  The current fee schedule is the schedule that SHALL apply to the current
///  transaction.<br/>
///  The next fee schedule is the schedule that SHALL apply after the current
///  schedule expires.<br/>
///  We store both to avoid a condition where transactions are processed very
///  near the time when a fee schedule expires and it might be indeterminate
///  which fees to apply. With both current and next fee schedule the network
///  can deterministically apply the correct fee schedule based on consensus
///  timestamp for each transaction.
class CurrentAndNextFeeSchedule extends $pb.GeneratedMessage {
  factory CurrentAndNextFeeSchedule({
    FeeSchedule? currentFeeSchedule,
    FeeSchedule? nextFeeSchedule,
  }) {
    final result = create();
    if (currentFeeSchedule != null)
      result.currentFeeSchedule = currentFeeSchedule;
    if (nextFeeSchedule != null) result.nextFeeSchedule = nextFeeSchedule;
    return result;
  }

  CurrentAndNextFeeSchedule._();

  factory CurrentAndNextFeeSchedule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CurrentAndNextFeeSchedule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CurrentAndNextFeeSchedule',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<FeeSchedule>(1, _omitFieldNames ? '' : 'currentFeeSchedule',
        protoName: 'currentFeeSchedule', subBuilder: FeeSchedule.create)
    ..aOM<FeeSchedule>(2, _omitFieldNames ? '' : 'nextFeeSchedule',
        protoName: 'nextFeeSchedule', subBuilder: FeeSchedule.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurrentAndNextFeeSchedule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurrentAndNextFeeSchedule copyWith(
          void Function(CurrentAndNextFeeSchedule) updates) =>
      super.copyWith((message) => updates(message as CurrentAndNextFeeSchedule))
          as CurrentAndNextFeeSchedule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurrentAndNextFeeSchedule create() => CurrentAndNextFeeSchedule._();
  @$core.override
  CurrentAndNextFeeSchedule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CurrentAndNextFeeSchedule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CurrentAndNextFeeSchedule>(create);
  static CurrentAndNextFeeSchedule? _defaultInstance;

  /// *
  ///  A current, unexpired, fee schedule.
  @$pb.TagNumber(1)
  FeeSchedule get currentFeeSchedule => $_getN(0);
  @$pb.TagNumber(1)
  set currentFeeSchedule(FeeSchedule value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCurrentFeeSchedule() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentFeeSchedule() => $_clearField(1);
  @$pb.TagNumber(1)
  FeeSchedule ensureCurrentFeeSchedule() => $_ensure(0);

  /// *
  ///  A future fee schedule to use when the current schedule expires.
  @$pb.TagNumber(2)
  FeeSchedule get nextFeeSchedule => $_getN(1);
  @$pb.TagNumber(2)
  set nextFeeSchedule(FeeSchedule value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNextFeeSchedule() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextFeeSchedule() => $_clearField(2);
  @$pb.TagNumber(2)
  FeeSchedule ensureNextFeeSchedule() => $_ensure(1);
}

/// *
///  A network node endpoint.<br/>
///  Each network node in the global address book publishes one or more endpoints
///  which enable the nodes to communicate both with other nodes, for gossip, and
///  with clients to receive transaction requests.
///
///  This message supports IPv4 with address and TCP port,
///  and MAY include a FQDN instead of an IP address.<br/>
///  IPv6 is not currently supported.
///
///  When the `domain_name` field is set, the `ipAddressV4` field
///  MUST NOT be set.<br/>
///  When the `ipAddressV4` field is set, the `domain_name` field
///  MUST NOT be set.
class ServiceEndpoint extends $pb.GeneratedMessage {
  factory ServiceEndpoint({
    $core.List<$core.int>? ipAddressV4,
    $core.int? port,
    $core.String? domainName,
  }) {
    final result = create();
    if (ipAddressV4 != null) result.ipAddressV4 = ipAddressV4;
    if (port != null) result.port = port;
    if (domainName != null) result.domainName = domainName;
    return result;
  }

  ServiceEndpoint._();

  factory ServiceEndpoint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServiceEndpoint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServiceEndpoint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'ipAddressV4', $pb.PbFieldType.OY,
        protoName: 'ipAddressV4')
    ..aI(2, _omitFieldNames ? '' : 'port')
    ..aOS(3, _omitFieldNames ? '' : 'domainName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceEndpoint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceEndpoint copyWith(void Function(ServiceEndpoint) updates) =>
      super.copyWith((message) => updates(message as ServiceEndpoint))
          as ServiceEndpoint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceEndpoint create() => ServiceEndpoint._();
  @$core.override
  ServiceEndpoint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ServiceEndpoint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceEndpoint>(create);
  static ServiceEndpoint? _defaultInstance;

  /// *
  ///  A 32-bit IPv4 address.<br/>
  ///  This is the address of the endpoint, encoded in pure "big-endian"
  ///  (i.e. left to right) order (e.g. `127.0.0.1` has hex bytes in the
  ///  order `7F`, `00`, `00`, `01`).
  @$pb.TagNumber(1)
  $core.List<$core.int> get ipAddressV4 => $_getN(0);
  @$pb.TagNumber(1)
  set ipAddressV4($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIpAddressV4() => $_has(0);
  @$pb.TagNumber(1)
  void clearIpAddressV4() => $_clearField(1);

  /// *
  ///  A TCP port to use.
  ///  <p>
  ///  This value MUST be between 0 and 65535, inclusive.
  @$pb.TagNumber(2)
  $core.int get port => $_getIZ(1);
  @$pb.TagNumber(2)
  set port($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => $_clearField(2);

  /// *
  ///  A node domain name.
  ///  <p>
  ///  This MUST be the fully qualified domain name of the node.<br/>
  ///  This value MUST NOT exceed 253 characters.<br/>
  ///  When the `domain_name` field is set, the `ipAddressV4`
  ///  field MUST NOT be set.<br/>
  ///  When the `ipAddressV4` field is set, the `domain_name`
  ///  field MUST NOT be set.
  @$pb.TagNumber(3)
  $core.String get domainName => $_getSZ(2);
  @$pb.TagNumber(3)
  set domainName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDomainName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDomainName() => $_clearField(3);
}

/// *
///  The data about a node, including its service endpoints and the Hedera account
///  to be paid for services provided by the node (that is, queries answered and
///  transactions submitted).
///
///  All active fields are populated in the `0.0.102` address book file.<br/>
///  Only fields documented with "`0.0.101` field" are populated in the 0.0.101
///  address book file.
///
///  This message MAY be superseded by messages in state/addressbook/node.proto
///  and node_get_info.proto.
class NodeAddress extends $pb.GeneratedMessage {
  factory NodeAddress({
    @$core.Deprecated('This field is deprecated.')
    $core.List<$core.int>? ipAddress,
    @$core.Deprecated('This field is deprecated.') $core.int? portno,
    @$core.Deprecated('This field is deprecated.') $core.List<$core.int>? memo,
    $core.String? rSAPubKey,
    $fixnum.Int64? nodeId,
    AccountID? nodeAccountId,
    $core.List<$core.int>? nodeCertHash,
    $core.Iterable<ServiceEndpoint>? serviceEndpoint,
    $core.String? description,
    @$core.Deprecated('This field is deprecated.') $fixnum.Int64? stake,
  }) {
    final result = create();
    if (ipAddress != null) result.ipAddress = ipAddress;
    if (portno != null) result.portno = portno;
    if (memo != null) result.memo = memo;
    if (rSAPubKey != null) result.rSAPubKey = rSAPubKey;
    if (nodeId != null) result.nodeId = nodeId;
    if (nodeAccountId != null) result.nodeAccountId = nodeAccountId;
    if (nodeCertHash != null) result.nodeCertHash = nodeCertHash;
    if (serviceEndpoint != null) result.serviceEndpoint.addAll(serviceEndpoint);
    if (description != null) result.description = description;
    if (stake != null) result.stake = stake;
    return result;
  }

  NodeAddress._();

  factory NodeAddress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeAddress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeAddress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'ipAddress', $pb.PbFieldType.OY,
        protoName: 'ipAddress')
    ..aI(2, _omitFieldNames ? '' : 'portno')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'memo', $pb.PbFieldType.OY)
    ..aOS(4, _omitFieldNames ? '' : 'RSAPubKey', protoName: 'RSA_PubKey')
    ..aInt64(5, _omitFieldNames ? '' : 'nodeId', protoName: 'nodeId')
    ..aOM<AccountID>(6, _omitFieldNames ? '' : 'nodeAccountId',
        protoName: 'nodeAccountId', subBuilder: AccountID.create)
    ..a<$core.List<$core.int>>(
        7, _omitFieldNames ? '' : 'nodeCertHash', $pb.PbFieldType.OY,
        protoName: 'nodeCertHash')
    ..pPM<ServiceEndpoint>(8, _omitFieldNames ? '' : 'serviceEndpoint',
        protoName: 'serviceEndpoint', subBuilder: ServiceEndpoint.create)
    ..aOS(9, _omitFieldNames ? '' : 'description')
    ..aInt64(10, _omitFieldNames ? '' : 'stake')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeAddress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeAddress copyWith(void Function(NodeAddress) updates) =>
      super.copyWith((message) => updates(message as NodeAddress))
          as NodeAddress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeAddress create() => NodeAddress._();
  @$core.override
  NodeAddress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeAddress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeAddress>(create);
  static NodeAddress? _defaultInstance;

  /// *
  ///  ServiceEndpoint is now used to retrieve a node's list of IP
  ///  addresses and ports.<br/>
  ///  The IP address of the Node, as a string, encoded in UTF-8.<br/>
  ///  This value SHALL NOT be populated.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.List<$core.int> get ipAddress => $_getN(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set ipAddress($core.List<$core.int> value) => $_setBytes(0, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasIpAddress() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearIpAddress() => $_clearField(1);

  /// *
  ///  ServiceEndpoint is now used to retrieve a node's list of IP
  ///  addresses and ports.<br/>
  ///  The port number of the grpc server for the node.<br/>
  ///  This value SHALL NOT be populated.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.int get portno => $_getIZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set portno($core.int value) => $_setSignedInt32(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasPortno() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearPortno() => $_clearField(2);

  /// *
  ///  Description provides short text functionality.<br/>
  ///  A short description of the node.
  ///  <p>
  ///  This field SHALL NOT be populated.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.List<$core.int> get memo => $_getN(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set memo($core.List<$core.int> value) => $_setBytes(2, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasMemo() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearMemo() => $_clearField(3);

  /// *
  ///  A hexadecimal String encoding of an X509 public key.
  ///  <p>
  ///  This X509 RSA _public_ key SHALL be used to verify record stream files
  ///  (e.g., record stream files).<br/>
  ///  This field SHALL be a string of hexadecimal characters, encoded UTF-8,
  ///  which, translated to binary, form the public key DER encoding.
  @$pb.TagNumber(4)
  $core.String get rSAPubKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set rSAPubKey($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRSAPubKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearRSAPubKey() => $_clearField(4);

  /// *
  ///  A numeric identifier for the node.
  ///  <p>
  ///  This value SHALL NOT be sequential.
  ///  <p>
  ///  A `0.0.101` field
  @$pb.TagNumber(5)
  $fixnum.Int64 get nodeId => $_getI64(4);
  @$pb.TagNumber(5)
  set nodeId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNodeId() => $_has(4);
  @$pb.TagNumber(5)
  void clearNodeId() => $_clearField(5);

  /// *
  ///  An account to be paid the "node" portion of transaction fees.<br/>
  ///  The "node" fees are paid to the node that submitted the transaction.
  ///  <p>
  ///  A `0.0.101` field
  @$pb.TagNumber(6)
  AccountID get nodeAccountId => $_getN(5);
  @$pb.TagNumber(6)
  set nodeAccountId(AccountID value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasNodeAccountId() => $_has(5);
  @$pb.TagNumber(6)
  void clearNodeAccountId() => $_clearField(6);
  @$pb.TagNumber(6)
  AccountID ensureNodeAccountId() => $_ensure(5);

  /// *
  ///  A hash of the node's TLS certificate.
  ///  <p>
  ///  This field SHALL be a string of hexadecimal characters, encoded UTF-8,
  ///  which, translated to binary, form a SHA-384 hash of the node's TLS
  ///  certificate in PEM format.
  ///  This TLS certificate MUST be encoded UTF-8 and normalized according to
  ///  the NFKD form prior to computing the hash value.<br/>
  ///  The value of this field SHALL be used to verify the node TLS
  ///  certificate when presented during protocol negotiation.
  ///  <p>
  ///  A `0.0.101` field
  @$pb.TagNumber(7)
  $core.List<$core.int> get nodeCertHash => $_getN(6);
  @$pb.TagNumber(7)
  set nodeCertHash($core.List<$core.int> value) => $_setBytes(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNodeCertHash() => $_has(6);
  @$pb.TagNumber(7)
  void clearNodeCertHash() => $_clearField(7);

  /// *
  ///  A node's service IP addresses and TCP ports.<br/>
  ///  Nodes require multiple endpoints to ensure that inter-node communication
  ///  (e.g. gossip) is properly separated from client communication to
  ///  API endpoints.
  ///  <p>
  ///  A `0.0.101` field
  @$pb.TagNumber(8)
  $pb.PbList<ServiceEndpoint> get serviceEndpoint => $_getList(7);

  /// *
  ///  A short description of the node.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(9)
  $core.String get description => $_getSZ(8);
  @$pb.TagNumber(9)
  set description($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDescription() => $_has(8);
  @$pb.TagNumber(9)
  void clearDescription() => $_clearField(9);

  /// *
  ///  This is replaced by per-account stake tracking and dynamic
  ///  calculation.<br/>
  ///  The amount of tinybar staked to the node.<br/>
  ///  This value SHOULD NOT be populated, and SHALL be ignored.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $fixnum.Int64 get stake => $_getI64(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set stake($fixnum.Int64 value) => $_setInt64(9, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasStake() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearStake() => $_clearField(10);
}

/// *
///  A list of nodes and their metadata that contains details of the nodes
///  running the network.
///
///  Used to parse the contents of system files `0.0.101` and `0.0.102`.
class NodeAddressBook extends $pb.GeneratedMessage {
  factory NodeAddressBook({
    $core.Iterable<NodeAddress>? nodeAddress,
  }) {
    final result = create();
    if (nodeAddress != null) result.nodeAddress.addAll(nodeAddress);
    return result;
  }

  NodeAddressBook._();

  factory NodeAddressBook.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeAddressBook.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeAddressBook',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<NodeAddress>(1, _omitFieldNames ? '' : 'nodeAddress',
        protoName: 'nodeAddress', subBuilder: NodeAddress.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeAddressBook clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeAddressBook copyWith(void Function(NodeAddressBook) updates) =>
      super.copyWith((message) => updates(message as NodeAddressBook))
          as NodeAddressBook;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeAddressBook create() => NodeAddressBook._();
  @$core.override
  NodeAddressBook createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeAddressBook getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeAddressBook>(create);
  static NodeAddressBook? _defaultInstance;

  /// *
  ///  Published data for all nodes in the network
  @$pb.TagNumber(1)
  $pb.PbList<NodeAddress> get nodeAddress => $_getList(0);
}

/// *
///  A software version according to "[semantic versioning](https://semver.org/)"
///  or "date versioning".
///
///  Hedera currently modifies the "typical" semantic versioning somewhat, the
///  `major` version is always `0`, and each release increments the `minor`
///  version. The `patch` and `pre` components are used in the typical manner.
///  The `build` component is not generally used.
class SemanticVersion extends $pb.GeneratedMessage {
  factory SemanticVersion({
    $core.int? major,
    $core.int? minor,
    $core.int? patch,
    $core.String? pre,
    $core.String? build,
  }) {
    final result = create();
    if (major != null) result.major = major;
    if (minor != null) result.minor = minor;
    if (patch != null) result.patch = patch;
    if (pre != null) result.pre = pre;
    if (build != null) result.build = build;
    return result;
  }

  SemanticVersion._();

  factory SemanticVersion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SemanticVersion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SemanticVersion',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'major')
    ..aI(2, _omitFieldNames ? '' : 'minor')
    ..aI(3, _omitFieldNames ? '' : 'patch')
    ..aOS(4, _omitFieldNames ? '' : 'pre')
    ..aOS(5, _omitFieldNames ? '' : 'build')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SemanticVersion clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SemanticVersion copyWith(void Function(SemanticVersion) updates) =>
      super.copyWith((message) => updates(message as SemanticVersion))
          as SemanticVersion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SemanticVersion create() => SemanticVersion._();
  @$core.override
  SemanticVersion createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SemanticVersion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SemanticVersion>(create);
  static SemanticVersion? _defaultInstance;

  /// *
  ///  A major version.<br/>
  ///  Hedera does not increment this value and retains a `0` value to
  ///  indicate that API may change for any release.
  ///  <p>
  ///  This value SHALL increment for an incompatible API change.<br/>
  @$pb.TagNumber(1)
  $core.int get major => $_getIZ(0);
  @$pb.TagNumber(1)
  set major($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMajor() => $_has(0);
  @$pb.TagNumber(1)
  void clearMajor() => $_clearField(1);

  /// *
  ///  A minor version.<br/>
  ///  Hedera increments this value with each release.<br/>
  ///  There may be incompatible API changes in any Hedera Services release.
  ///  <p>
  ///  This value SHALL increment for backwards-compatible new
  ///  functionality.
  @$pb.TagNumber(2)
  $core.int get minor => $_getIZ(1);
  @$pb.TagNumber(2)
  set minor($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinor() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinor() => $_clearField(2);

  /// *
  ///  A patch version.
  ///  <p>
  ///  This value SHALL increment for backwards-compatible bug fixes.
  @$pb.TagNumber(3)
  $core.int get patch => $_getIZ(2);
  @$pb.TagNumber(3)
  set patch($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPatch() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatch() => $_clearField(3);

  /// *
  ///  A pre-release version.
  ///  <p>
  ///  This MAY be denoted by appending a hyphen and a series of dot separated
  ///  identifiers per [Semver Specification](https://semver.org/#spec-item-9);
  ///  given a string `0.14.0-alpha.1+21AF26D3`, this field would contain
  ///  'alpha.1'
  @$pb.TagNumber(4)
  $core.String get pre => $_getSZ(3);
  @$pb.TagNumber(4)
  set pre($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPre() => $_has(3);
  @$pb.TagNumber(4)
  void clearPre() => $_clearField(4);

  /// *
  ///  A build version.
  ///  <p>
  ///  Build version MAY be denoted by appending a plus sign and a series of
  ///  dot separated identifiers immediately following the patch or pre-release
  ///  version per [Semver Specification](https://semver.org/#spec-item-10); so
  ///  given a string `0.14.0-alpha.1+21AF26D3`, this field
  ///  would contain '21AF26D3'
  @$pb.TagNumber(5)
  $core.String get build => $_getSZ(4);
  @$pb.TagNumber(5)
  set build($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBuild() => $_has(4);
  @$pb.TagNumber(5)
  void clearBuild() => $_clearField(5);
}

/// *
///  A single runtime configuration setting.
///
///  Typically a name-value pair, this may also contain a small amount of
///  associated data.
class Setting extends $pb.GeneratedMessage {
  factory Setting({
    $core.String? name,
    $core.String? value,
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (value != null) result.value = value;
    if (data != null) result.data = data;
    return result;
  }

  Setting._();

  factory Setting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Setting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Setting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Setting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Setting copyWith(void Function(Setting) updates) =>
      super.copyWith((message) => updates(message as Setting)) as Setting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Setting create() => Setting._();
  @$core.override
  Setting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Setting getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Setting>(create);
  static Setting? _defaultInstance;

  /// *
  ///  A name for this setting property.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// *
  ///  A value for this setting property.
  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);

  /// *
  ///  A small quantity of data associated with this setting.
  ///  <p>
  ///  This SHOULD be less than 100 bytes.<br/>
  ///  If the value is a string, it MUST be encoded UTF-8.
  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => $_clearField(3);
}

/// *
///  Setting values representing a source of runtime configuration information.
class ServicesConfigurationList extends $pb.GeneratedMessage {
  factory ServicesConfigurationList({
    $core.Iterable<Setting>? nameValue,
  }) {
    final result = create();
    if (nameValue != null) result.nameValue.addAll(nameValue);
    return result;
  }

  ServicesConfigurationList._();

  factory ServicesConfigurationList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServicesConfigurationList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServicesConfigurationList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<Setting>(1, _omitFieldNames ? '' : 'nameValue',
        protoName: 'nameValue', subBuilder: Setting.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServicesConfigurationList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServicesConfigurationList copyWith(
          void Function(ServicesConfigurationList) updates) =>
      super.copyWith((message) => updates(message as ServicesConfigurationList))
          as ServicesConfigurationList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServicesConfigurationList create() => ServicesConfigurationList._();
  @$core.override
  ServicesConfigurationList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ServicesConfigurationList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServicesConfigurationList>(create);
  static ServicesConfigurationList? _defaultInstance;

  /// *
  ///  A List of `Setting` values, typically read from application properties.
  @$pb.TagNumber(1)
  $pb.PbList<Setting> get nameValue => $_getList(0);
}

/// *
///  An Hedera Token Service token relationship. A token relationship describes
///  the connection between an Account and a Token type, including the current
///  account balance in that token.
///
///  A `TokenRelationship` SHALL contain, for the designated token and enclosing
///  account, The account's current balance, whether the account has KYC granted,
///  whether the assets are frozen and whether the association was automatic.<br/>
///  A `TokenRelationship` MAY also contain the `symbol` and `decimals` values
///  copied from the token.<br/>
///  `TokenRelationship` entries SHALL be valid only within the context of a
///  `GetAccountDetails` query response, or other enclosing message, which
///  specifies the account side of the relationship.
class TokenRelationship extends $pb.GeneratedMessage {
  factory TokenRelationship({
    TokenID? tokenId,
    $core.String? symbol,
    $fixnum.Int64? balance,
    TokenKycStatus? kycStatus,
    TokenFreezeStatus? freezeStatus,
    $core.int? decimals,
    $core.bool? automaticAssociation,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (symbol != null) result.symbol = symbol;
    if (balance != null) result.balance = balance;
    if (kycStatus != null) result.kycStatus = kycStatus;
    if (freezeStatus != null) result.freezeStatus = freezeStatus;
    if (decimals != null) result.decimals = decimals;
    if (automaticAssociation != null)
      result.automaticAssociation = automaticAssociation;
    return result;
  }

  TokenRelationship._();

  factory TokenRelationship.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenRelationship.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenRelationship',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        protoName: 'tokenId', subBuilder: TokenID.create)
    ..aOS(2, _omitFieldNames ? '' : 'symbol')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aE<TokenKycStatus>(4, _omitFieldNames ? '' : 'kycStatus',
        protoName: 'kycStatus', enumValues: TokenKycStatus.values)
    ..aE<TokenFreezeStatus>(5, _omitFieldNames ? '' : 'freezeStatus',
        protoName: 'freezeStatus', enumValues: TokenFreezeStatus.values)
    ..aI(6, _omitFieldNames ? '' : 'decimals', fieldType: $pb.PbFieldType.OU3)
    ..aOB(7, _omitFieldNames ? '' : 'automaticAssociation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenRelationship clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenRelationship copyWith(void Function(TokenRelationship) updates) =>
      super.copyWith((message) => updates(message as TokenRelationship))
          as TokenRelationship;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenRelationship create() => TokenRelationship._();
  @$core.override
  TokenRelationship createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenRelationship getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenRelationship>(create);
  static TokenRelationship? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This MUST match an existing token that is not deleted.
  @$pb.TagNumber(1)
  TokenID get tokenId => $_getN(0);
  @$pb.TagNumber(1)
  set tokenId(TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTokenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenId() => $_clearField(1);
  @$pb.TagNumber(1)
  TokenID ensureTokenId() => $_ensure(0);

  /// *
  ///  A token symbol.
  ///  <p>
  ///  This MUST match an existing token that is not deleted.<br/>
  ///  This MUST match the value for the token identified in `tokenId`.
  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => $_clearField(2);

  /// *
  ///  An account balance for this token.
  ///  <p>
  ///  For fungible/common tokens this SHALL be the balance that the
  ///  account holds of that token. The value is provided as an integer amount
  ///  of the smallest unit of the token (i.e. 10<sup>`-decimals`</sup> whole
  ///  tokens).<br/>
  ///  For non-fungible/unique tokens this SHALL be the whole number of
  ///  unique tokens held by the account for this token type.
  @$pb.TagNumber(3)
  $fixnum.Int64 get balance => $_getI64(2);
  @$pb.TagNumber(3)
  set balance($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearBalance() => $_clearField(3);

  /// *
  ///  A KYC status for the account with respect to this token.
  ///  <p>
  ///  This may be `KycNotApplicable`, `Granted` or `Revoked` and, if KYC is
  ///  not supported for this token (e.g. the `kyc_key` of the token is not
  ///  set), this SHALL be `KycNotApplicable`.
  @$pb.TagNumber(4)
  TokenKycStatus get kycStatus => $_getN(3);
  @$pb.TagNumber(4)
  set kycStatus(TokenKycStatus value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasKycStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearKycStatus() => $_clearField(4);

  /// *
  ///  A Freeze status for the account with respect to this token.
  ///  <p>
  ///  This value SHALL be one of `FreezeNotApplicable`, `Frozen`
  ///  or `Unfrozen`.<br/>
  ///  If the token cannot freeze account assets (e.g. the `freeze_key` of the
  ///  token is not set), this SHALL be `FreezeNotApplicable`.
  @$pb.TagNumber(5)
  TokenFreezeStatus get freezeStatus => $_getN(4);
  @$pb.TagNumber(5)
  set freezeStatus(TokenFreezeStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFreezeStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearFreezeStatus() => $_clearField(5);

  /// *
  ///  A maximum "precision" for this token.
  ///  <p>
  ///  This value MUST match the `decimals` field of the token identified in
  ///  the `tokenId` field.<br/>
  ///  A single whole token SHALL be divided into at most
  ///  10<sup>`decimals`</sup> sub-units.
  @$pb.TagNumber(6)
  $core.int get decimals => $_getIZ(5);
  @$pb.TagNumber(6)
  set decimals($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDecimals() => $_has(5);
  @$pb.TagNumber(6)
  void clearDecimals() => $_clearField(6);

  /// *
  ///  An automatic association flag.
  ///  <p>
  ///  This SHALL be set if the relationship was created implicitly
  ///  (automatically).<br/>
  ///  This SHALL be unset if the relationship was created explicitly
  ///  (manually) via a `TokenAssociate` transaction.
  @$pb.TagNumber(7)
  $core.bool get automaticAssociation => $_getBF(6);
  @$pb.TagNumber(7)
  set automaticAssociation($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAutomaticAssociation() => $_has(6);
  @$pb.TagNumber(7)
  void clearAutomaticAssociation() => $_clearField(7);
}

/// *
///  A number of _transferable units_ of a specified token.
///
///  The transferable unit of a token is its smallest denomination, as given by
///  the token's `decimals` property. Each minted token contains
///  10<sup>`decimals`</sup> transferable units. For example, we could think of
///  the cent as the transferable unit of the US dollar (`decimals=2`); and the
///  tinybar as the transferable unit of HBAR (`decimals=8`).
///
///  Transferable units are not directly comparable across different tokens.
class TokenBalance extends $pb.GeneratedMessage {
  factory TokenBalance({
    TokenID? tokenId,
    $fixnum.Int64? balance,
    $core.int? decimals,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (balance != null) result.balance = balance;
    if (decimals != null) result.decimals = decimals;
    return result;
  }

  TokenBalance._();

  factory TokenBalance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenBalance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenBalance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        protoName: 'tokenId', subBuilder: TokenID.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(3, _omitFieldNames ? '' : 'decimals', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenBalance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenBalance copyWith(void Function(TokenBalance) updates) =>
      super.copyWith((message) => updates(message as TokenBalance))
          as TokenBalance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenBalance create() => TokenBalance._();
  @$core.override
  TokenBalance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenBalance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenBalance>(create);
  static TokenBalance? _defaultInstance;

  /// *
  ///  A token identifier.
  @$pb.TagNumber(1)
  TokenID get tokenId => $_getN(0);
  @$pb.TagNumber(1)
  set tokenId(TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTokenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenId() => $_clearField(1);
  @$pb.TagNumber(1)
  TokenID ensureTokenId() => $_ensure(0);

  /// *
  ///  A number of transferable units of the identified token.
  ///  <p>
  ///  For fungible/common tokens this SHALL be the balance, in units of
  ///  10<sup>`-decimals`</sup> whole tokens.<br/>
  ///  For non-fungible/unique tokens, this SHALL be the number of
  ///  individual unique tokens in this balance.
  @$pb.TagNumber(2)
  $fixnum.Int64 get balance => $_getI64(1);
  @$pb.TagNumber(2)
  set balance($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => $_clearField(2);

  /// *
  ///  A number of "decimals" precision.
  ///  <p>
  ///  This MUST match the `decimals` value for the token identified by the
  ///  `tokenId` field.
  @$pb.TagNumber(3)
  $core.int get decimals => $_getIZ(2);
  @$pb.TagNumber(3)
  set decimals($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDecimals() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecimals() => $_clearField(3);
}

/// *
///  A set of token balance values.
///
///  Each entry describes the balance the enclosing account holds for a specific
///  token. The balance is an amount for a fungible/common token or a count for
///  a non-fungible/unique token.
class TokenBalances extends $pb.GeneratedMessage {
  factory TokenBalances({
    $core.Iterable<TokenBalance>? tokenBalances,
  }) {
    final result = create();
    if (tokenBalances != null) result.tokenBalances.addAll(tokenBalances);
    return result;
  }

  TokenBalances._();

  factory TokenBalances.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenBalances.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenBalances',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<TokenBalance>(1, _omitFieldNames ? '' : 'tokenBalances',
        protoName: 'tokenBalances', subBuilder: TokenBalance.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenBalances clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenBalances copyWith(void Function(TokenBalances) updates) =>
      super.copyWith((message) => updates(message as TokenBalances))
          as TokenBalances;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenBalances create() => TokenBalances._();
  @$core.override
  TokenBalances createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenBalances getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenBalances>(create);
  static TokenBalances? _defaultInstance;

  /// *
  ///  A list of token balance values.<br/>
  ///  Each entry represents a single account balance for a single token.
  @$pb.TagNumber(1)
  $pb.PbList<TokenBalance> get tokenBalances => $_getList(0);
}

/// *
///  An association between a token and an account.
///
///  An account must be associated with a token before that account can transact
///  in (send or receive) that token.
class TokenAssociation extends $pb.GeneratedMessage {
  factory TokenAssociation({
    TokenID? tokenId,
    AccountID? accountId,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (accountId != null) result.accountId = accountId;
    return result;
  }

  TokenAssociation._();

  factory TokenAssociation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenAssociation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenAssociation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        subBuilder: TokenID.create)
    ..aOM<AccountID>(2, _omitFieldNames ? '' : 'accountId',
        subBuilder: AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenAssociation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenAssociation copyWith(void Function(TokenAssociation) updates) =>
      super.copyWith((message) => updates(message as TokenAssociation))
          as TokenAssociation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenAssociation create() => TokenAssociation._();
  @$core.override
  TokenAssociation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenAssociation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenAssociation>(create);
  static TokenAssociation? _defaultInstance;

  /// *
  ///  A token identifier for the associated token.
  @$pb.TagNumber(1)
  TokenID get tokenId => $_getN(0);
  @$pb.TagNumber(1)
  set tokenId(TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTokenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenId() => $_clearField(1);
  @$pb.TagNumber(1)
  TokenID ensureTokenId() => $_ensure(0);

  /// *
  ///  An account identifier for the associated account.
  @$pb.TagNumber(2)
  AccountID get accountId => $_getN(1);
  @$pb.TagNumber(2)
  set accountId(AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => $_clearField(2);
  @$pb.TagNumber(2)
  AccountID ensureAccountId() => $_ensure(1);
}

enum StakingInfo_StakedId { stakedAccountId, stakedNodeId, notSet }

/// *
///  Staking information for an account or a contract.
///
///  This is used for responses returned from `CryptoGetInfo` or
///  `ContractGetInfo` queries.
class StakingInfo extends $pb.GeneratedMessage {
  factory StakingInfo({
    $core.bool? declineReward,
    $0.Timestamp? stakePeriodStart,
    $fixnum.Int64? pendingReward,
    $fixnum.Int64? stakedToMe,
    AccountID? stakedAccountId,
    $fixnum.Int64? stakedNodeId,
  }) {
    final result = create();
    if (declineReward != null) result.declineReward = declineReward;
    if (stakePeriodStart != null) result.stakePeriodStart = stakePeriodStart;
    if (pendingReward != null) result.pendingReward = pendingReward;
    if (stakedToMe != null) result.stakedToMe = stakedToMe;
    if (stakedAccountId != null) result.stakedAccountId = stakedAccountId;
    if (stakedNodeId != null) result.stakedNodeId = stakedNodeId;
    return result;
  }

  StakingInfo._();

  factory StakingInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StakingInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, StakingInfo_StakedId>
      _StakingInfo_StakedIdByTag = {
    5: StakingInfo_StakedId.stakedAccountId,
    6: StakingInfo_StakedId.stakedNodeId,
    0: StakingInfo_StakedId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StakingInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOB(1, _omitFieldNames ? '' : 'declineReward')
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'stakePeriodStart',
        subBuilder: $0.Timestamp.create)
    ..aInt64(3, _omitFieldNames ? '' : 'pendingReward')
    ..aInt64(4, _omitFieldNames ? '' : 'stakedToMe')
    ..aOM<AccountID>(5, _omitFieldNames ? '' : 'stakedAccountId',
        subBuilder: AccountID.create)
    ..aInt64(6, _omitFieldNames ? '' : 'stakedNodeId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StakingInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StakingInfo copyWith(void Function(StakingInfo) updates) =>
      super.copyWith((message) => updates(message as StakingInfo))
          as StakingInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StakingInfo create() => StakingInfo._();
  @$core.override
  StakingInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StakingInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StakingInfo>(create);
  static StakingInfo? _defaultInstance;

  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  StakingInfo_StakedId whichStakedId() =>
      _StakingInfo_StakedIdByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearStakedId() => $_clearField($_whichOneof(0));

  /// *
  ///  A flag indicating that the holder of this account has chosen to decline
  ///  staking rewards.
  @$pb.TagNumber(1)
  $core.bool get declineReward => $_getBF(0);
  @$pb.TagNumber(1)
  set declineReward($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeclineReward() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeclineReward() => $_clearField(1);

  /// *
  ///  A `Timestamp` of the start time for the latest active staking period.
  ///  <p>
  ///  This MUST be a period during which either the staking settings for this
  ///  account or contract changed or the account or contract received staking
  ///  rewards, whichever is later. Examples of a change in staking settings
  ///  include starting staking or changing the staked_node_id.<br/>
  ///  If this account or contract is not currently staked to a node, then this
  ///  field SHALL NOT be set.
  @$pb.TagNumber(2)
  $0.Timestamp get stakePeriodStart => $_getN(1);
  @$pb.TagNumber(2)
  set stakePeriodStart($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStakePeriodStart() => $_has(1);
  @$pb.TagNumber(2)
  void clearStakePeriodStart() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureStakePeriodStart() => $_ensure(1);

  /// *
  ///  An amount, in tinybar, to be received in the next reward payout.<br/>
  ///  Rewards are not paid out immediately; for efficiency reasons rewards are
  ///  only paid out as part of another transaction involving that account.
  @$pb.TagNumber(3)
  $fixnum.Int64 get pendingReward => $_getI64(2);
  @$pb.TagNumber(3)
  set pendingReward($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPendingReward() => $_has(2);
  @$pb.TagNumber(3)
  void clearPendingReward() => $_clearField(3);

  /// *
  ///  A proxy-staked balance.<br/>
  ///  The total HBAR balance of all accounts that delegate staking to this
  ///  account or contract.
  @$pb.TagNumber(4)
  $fixnum.Int64 get stakedToMe => $_getI64(3);
  @$pb.TagNumber(4)
  set stakedToMe($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStakedToMe() => $_has(3);
  @$pb.TagNumber(4)
  void clearStakedToMe() => $_clearField(4);

  /// *
  ///  A delegated stake.
  ///  <p>
  ///  This account delegates to the indicated account for staking purposes.
  @$pb.TagNumber(5)
  AccountID get stakedAccountId => $_getN(4);
  @$pb.TagNumber(5)
  set stakedAccountId(AccountID value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStakedAccountId() => $_has(4);
  @$pb.TagNumber(5)
  void clearStakedAccountId() => $_clearField(5);
  @$pb.TagNumber(5)
  AccountID ensureStakedAccountId() => $_ensure(4);

  /// *
  ///  A direct stake.
  ///  <p>
  ///  This accounts stakes its balance to the designated node.
  @$pb.TagNumber(6)
  $fixnum.Int64 get stakedNodeId => $_getI64(5);
  @$pb.TagNumber(6)
  set stakedNodeId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStakedNodeId() => $_has(5);
  @$pb.TagNumber(6)
  void clearStakedNodeId() => $_clearField(6);
}

enum PendingAirdropId_TokenReference {
  fungibleTokenType,
  nonFungibleToken,
  notSet
}

/// *
///  A unique, composite, identifier for a pending airdrop.
///
///  Each pending airdrop SHALL be uniquely identified by
///  a `PendingAirdropId`.<br/>
///  A `PendingAirdropId` SHALL be recorded when created and MUST be provided in
///  any transaction that would modify that pending airdrop
///  (such as a `claimAirdrop` or `cancelAirdrop`).
class PendingAirdropId extends $pb.GeneratedMessage {
  factory PendingAirdropId({
    AccountID? senderId,
    AccountID? receiverId,
    TokenID? fungibleTokenType,
    NftID? nonFungibleToken,
  }) {
    final result = create();
    if (senderId != null) result.senderId = senderId;
    if (receiverId != null) result.receiverId = receiverId;
    if (fungibleTokenType != null) result.fungibleTokenType = fungibleTokenType;
    if (nonFungibleToken != null) result.nonFungibleToken = nonFungibleToken;
    return result;
  }

  PendingAirdropId._();

  factory PendingAirdropId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PendingAirdropId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PendingAirdropId_TokenReference>
      _PendingAirdropId_TokenReferenceByTag = {
    3: PendingAirdropId_TokenReference.fungibleTokenType,
    4: PendingAirdropId_TokenReference.nonFungibleToken,
    0: PendingAirdropId_TokenReference.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PendingAirdropId',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOM<AccountID>(1, _omitFieldNames ? '' : 'senderId',
        subBuilder: AccountID.create)
    ..aOM<AccountID>(2, _omitFieldNames ? '' : 'receiverId',
        subBuilder: AccountID.create)
    ..aOM<TokenID>(3, _omitFieldNames ? '' : 'fungibleTokenType',
        subBuilder: TokenID.create)
    ..aOM<NftID>(4, _omitFieldNames ? '' : 'nonFungibleToken',
        subBuilder: NftID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PendingAirdropId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PendingAirdropId copyWith(void Function(PendingAirdropId) updates) =>
      super.copyWith((message) => updates(message as PendingAirdropId))
          as PendingAirdropId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PendingAirdropId create() => PendingAirdropId._();
  @$core.override
  PendingAirdropId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PendingAirdropId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PendingAirdropId>(create);
  static PendingAirdropId? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  PendingAirdropId_TokenReference whichTokenReference() =>
      _PendingAirdropId_TokenReferenceByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearTokenReference() => $_clearField($_whichOneof(0));

  /// *
  ///  A sending account.
  ///  <p>
  ///  This is the account that initiated, and SHALL fund,
  ///  this pending airdrop.<br/>
  ///  This field is REQUIRED.
  @$pb.TagNumber(1)
  AccountID get senderId => $_getN(0);
  @$pb.TagNumber(1)
  set senderId(AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSenderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderId() => $_clearField(1);
  @$pb.TagNumber(1)
  AccountID ensureSenderId() => $_ensure(0);

  /// *
  ///  A receiving account.
  ///  <p>
  ///  This is the ID of the account that SHALL receive the airdrop.<br/>
  ///  This field is REQUIRED.
  @$pb.TagNumber(2)
  AccountID get receiverId => $_getN(1);
  @$pb.TagNumber(2)
  set receiverId(AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReceiverId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiverId() => $_clearField(2);
  @$pb.TagNumber(2)
  AccountID ensureReceiverId() => $_ensure(1);

  /// *
  ///  A token identifier.<br/>
  ///  This is the type of token for a fungible/common token airdrop.
  ///  <p>
  ///  This field is REQUIRED for a fungible/common token and MUST NOT
  ///  be used for a non-fungible/unique token.
  @$pb.TagNumber(3)
  TokenID get fungibleTokenType => $_getN(2);
  @$pb.TagNumber(3)
  set fungibleTokenType(TokenID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFungibleTokenType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFungibleTokenType() => $_clearField(3);
  @$pb.TagNumber(3)
  TokenID ensureFungibleTokenType() => $_ensure(2);

  /// *
  ///  The id of a single NFT<br/>
  ///  This is the type of token for a non-fungible/unique token airdrop
  ///  and consists of a Token ID and serial number.
  ///  <p>
  ///  This field is REQUIRED for a non-fungible/unique token and
  ///  MUST NOT be used for a fungible/common token.
  @$pb.TagNumber(4)
  NftID get nonFungibleToken => $_getN(3);
  @$pb.TagNumber(4)
  set nonFungibleToken(NftID value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasNonFungibleToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearNonFungibleToken() => $_clearField(4);
  @$pb.TagNumber(4)
  NftID ensureNonFungibleToken() => $_ensure(3);
}

/// *
///  A single pending airdrop value.
///
///  This message SHALL record the airdrop amount for a
///  fungible/common token.<br/>
///  This message SHOULD be null for a non-fungible/unique token.<br/>
///  If a non-null `PendingAirdropValue` is set for a non-fungible/unique
///  token, the amount field MUST be `0`.
///
///  It is RECOMMENDED that implementations store pending airdrop information
///  as a key-value map from `PendingAirdropId` to `PendingAirdropValue`, with
///  a `null` value used for non-fungible pending airdrops.
class PendingAirdropValue extends $pb.GeneratedMessage {
  factory PendingAirdropValue({
    $fixnum.Int64? amount,
  }) {
    final result = create();
    if (amount != null) result.amount = amount;
    return result;
  }

  PendingAirdropValue._();

  factory PendingAirdropValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PendingAirdropValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PendingAirdropValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PendingAirdropValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PendingAirdropValue copyWith(void Function(PendingAirdropValue) updates) =>
      super.copyWith((message) => updates(message as PendingAirdropValue))
          as PendingAirdropValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PendingAirdropValue create() => PendingAirdropValue._();
  @$core.override
  PendingAirdropValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PendingAirdropValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PendingAirdropValue>(create);
  static PendingAirdropValue? _defaultInstance;

  /// *
  ///  An amount to transfer for fungible/common tokens.<br/>
  ///  This is expressed in the smallest available units for that token
  ///  (i.e. 10<sup>-`decimals`</sup> whole tokens).
  ///  <p>
  ///  This amount SHALL be transferred from the sender to the receiver,
  ///  if claimed.<br/>
  ///  If the token is a fungible/common token, this value MUST be strictly
  ///  greater than `0`.<br/>
  ///  If the token is a non-fungible/unique token, this message SHOULD NOT
  ///  be set, and if set, this field MUST be `0`.
  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
