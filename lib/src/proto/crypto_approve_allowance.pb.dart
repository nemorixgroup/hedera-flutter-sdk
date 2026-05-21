// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from crypto_approve_allowance.proto.

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
///  Create ("Approve") allowances for one account to transfer tokens owned
///  by a different account.<br/>
///  An allowance permits a "spender" account to independently transfer tokens
///  owned by a separate "owner" account. Each such allowance permits spending
///  any amount, up to a specified limit, for fungible/common tokens; a single
///  specified non-fungible/unique token, or all non-fungible/unique tokens
///  of a particular token type held by the "owner" account.
///
///  If the "owner" account is not specified for any allowance in this
///  transaction (the `owner` field is not set), the `payer` account for this
///  transaction SHALL be owner for that allowance.<br/>
///  Each `owner` account specified in any allowance approved in this
///  transaction MUST sign this transaction.<br/>
///  If the `amount` field for any fungible/common allowance in this
///  transaction is `0`, then that allowance SHOULD match an existing,
///  previously approved, allowance which SHALL be removed.<br/>
///  There are three lists in this message. Each list MAY be empty, but
///  _at least one_ list MUST contain _at least one_ entry.
///
///  Example for the `payer` rule.<br/>
///   - Given an account `0.0.X` that pays for this transaction, and owner
///     is not specified in an allowance of `200` HBAR to spender account
///     `0.0.Y`. At consensus the spender account `0.0.Y` will have a new
///     allowance to spend `200` HBAR from the balance of account `0.0.X`.
///
///  ### Block Stream Effects
///  None
class CryptoApproveAllowanceTransactionBody extends $pb.GeneratedMessage {
  factory CryptoApproveAllowanceTransactionBody({
    $core.Iterable<CryptoAllowance>? cryptoAllowances,
    $core.Iterable<NftAllowance>? nftAllowances,
    $core.Iterable<TokenAllowance>? tokenAllowances,
  }) {
    final result = create();
    if (cryptoAllowances != null)
      result.cryptoAllowances.addAll(cryptoAllowances);
    if (nftAllowances != null) result.nftAllowances.addAll(nftAllowances);
    if (tokenAllowances != null) result.tokenAllowances.addAll(tokenAllowances);
    return result;
  }

  CryptoApproveAllowanceTransactionBody._();

  factory CryptoApproveAllowanceTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoApproveAllowanceTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoApproveAllowanceTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<CryptoAllowance>(1, _omitFieldNames ? '' : 'cryptoAllowances',
        protoName: 'cryptoAllowances', subBuilder: CryptoAllowance.create)
    ..pPM<NftAllowance>(2, _omitFieldNames ? '' : 'nftAllowances',
        protoName: 'nftAllowances', subBuilder: NftAllowance.create)
    ..pPM<TokenAllowance>(3, _omitFieldNames ? '' : 'tokenAllowances',
        protoName: 'tokenAllowances', subBuilder: TokenAllowance.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoApproveAllowanceTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoApproveAllowanceTransactionBody copyWith(
          void Function(CryptoApproveAllowanceTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as CryptoApproveAllowanceTransactionBody))
          as CryptoApproveAllowanceTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoApproveAllowanceTransactionBody create() =>
      CryptoApproveAllowanceTransactionBody._();
  @$core.override
  CryptoApproveAllowanceTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoApproveAllowanceTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CryptoApproveAllowanceTransactionBody>(create);
  static CryptoApproveAllowanceTransactionBody? _defaultInstance;

  /// *
  ///  List of hbar allowances approved by the account owner.
  ///  <p>
  ///  This list MAY be empty, provided at least one other list is
  ///  not empty.
  @$pb.TagNumber(1)
  $pb.PbList<CryptoAllowance> get cryptoAllowances => $_getList(0);

  /// *
  ///  List of non-fungible token allowances approved by the account owner.
  ///  <p>
  ///  This list MAY be empty, provided at least one other list is
  ///  not empty.
  @$pb.TagNumber(2)
  $pb.PbList<NftAllowance> get nftAllowances => $_getList(1);

  /// *
  ///  List of fungible token allowances approved by the account owner.
  ///  <p>
  ///  This list MAY be empty, provided at least one other list is
  ///  not empty.
  @$pb.TagNumber(3)
  $pb.PbList<TokenAllowance> get tokenAllowances => $_getList(2);
}

/// *
///  An approved allowance of hbar transfers.
///  This message specifies one allowance for a single, unique, combination
///  of owner, spender, and amount.
///
///  If `owner` is not set, the effective `owner` SHALL be the `payer` for the
///  enclosing transaction.<br/>
///  The `spender` MUST be specified and MUST be a valid account.<br/>
///  The `amount` MUST be a whole number, and SHOULD be greater than `0` unless
///  this allowance is intended to _remove_ a previously approved allowance.
class CryptoAllowance extends $pb.GeneratedMessage {
  factory CryptoAllowance({
    $0.AccountID? owner,
    $0.AccountID? spender,
    $fixnum.Int64? amount,
  }) {
    final result = create();
    if (owner != null) result.owner = owner;
    if (spender != null) result.spender = spender;
    if (amount != null) result.amount = amount;
    return result;
  }

  CryptoAllowance._();

  factory CryptoAllowance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoAllowance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoAllowance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.AccountID>(1, _omitFieldNames ? '' : 'owner',
        subBuilder: $0.AccountID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'spender',
        subBuilder: $0.AccountID.create)
    ..aInt64(3, _omitFieldNames ? '' : 'amount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoAllowance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoAllowance copyWith(void Function(CryptoAllowance) updates) =>
      super.copyWith((message) => updates(message as CryptoAllowance))
          as CryptoAllowance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoAllowance create() => CryptoAllowance._();
  @$core.override
  CryptoAllowance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoAllowance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoAllowance>(create);
  static CryptoAllowance? _defaultInstance;

  /// *
  ///  An owner account identifier.<br/>
  ///  This is the account identifier of the account granting an allowance
  ///  for the `spender` to transfer tokens held by this account.
  @$pb.TagNumber(1)
  $0.AccountID get owner => $_getN(0);
  @$pb.TagNumber(1)
  set owner($0.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOwner() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwner() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.AccountID ensureOwner() => $_ensure(0);

  /// *
  ///  A spender account identifier.<br/>
  ///  This is the account identifier of the account permitted to transfer
  ///  tokens held by the `owner`.
  @$pb.TagNumber(2)
  $0.AccountID get spender => $_getN(1);
  @$pb.TagNumber(2)
  set spender($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpender() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureSpender() => $_ensure(1);

  /// *
  ///  An amount of tinybar (10<sup>-8</sup> HBAR).<br/>
  ///  This is the amount of HBAR held by the `owner` that the
  ///  `spender` is permitted to transfer.
  ///  <p>
  ///  This value MUST be a whole number.<br/>
  ///  This value MUST be greater than 0 to create a new allowance.<br/>
  ///  This value MAY be exactly `0` to _remove_ an existing allowance.<br/>
  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => $_clearField(3);
}

/// *
///  An approved allowance of non-fungible tokens.<br/>
///  This type of allowance may permit transfers for one or more individual
///  unique tokens, or may permit transfers for all unique tokens of the
///  specified type.
///
///  If `owner` is not set, the effective `owner` SHALL be the `payer` for the
///  enclosing transaction.<br/>
///  The `spender` MUST be specified and MUST be a valid account.<br/>
///  If `approve_for_all` is set, then `serial_numbers` SHOULD be empty
///  and SHALL be ignored.
///  If `approve_for_all` is unset, then `serial_numbers` MUST NOT be empty.
class NftAllowance extends $pb.GeneratedMessage {
  factory NftAllowance({
    $0.TokenID? tokenId,
    $0.AccountID? owner,
    $0.AccountID? spender,
    $core.Iterable<$fixnum.Int64>? serialNumbers,
    $1.BoolValue? approvedForAll,
    $0.AccountID? delegatingSpender,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (owner != null) result.owner = owner;
    if (spender != null) result.spender = spender;
    if (serialNumbers != null) result.serialNumbers.addAll(serialNumbers);
    if (approvedForAll != null) result.approvedForAll = approvedForAll;
    if (delegatingSpender != null) result.delegatingSpender = delegatingSpender;
    return result;
  }

  NftAllowance._();

  factory NftAllowance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NftAllowance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NftAllowance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        protoName: 'tokenId', subBuilder: $0.TokenID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'owner',
        subBuilder: $0.AccountID.create)
    ..aOM<$0.AccountID>(3, _omitFieldNames ? '' : 'spender',
        subBuilder: $0.AccountID.create)
    ..p<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'serialNumbers', $pb.PbFieldType.K6)
    ..aOM<$1.BoolValue>(5, _omitFieldNames ? '' : 'approvedForAll',
        subBuilder: $1.BoolValue.create)
    ..aOM<$0.AccountID>(6, _omitFieldNames ? '' : 'delegatingSpender',
        subBuilder: $0.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NftAllowance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NftAllowance copyWith(void Function(NftAllowance) updates) =>
      super.copyWith((message) => updates(message as NftAllowance))
          as NftAllowance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NftAllowance create() => NftAllowance._();
  @$core.override
  NftAllowance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NftAllowance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NftAllowance>(create);
  static NftAllowance? _defaultInstance;

  /// *
  ///  A token identifier.<br/>
  ///  This identifies the type of token the `spender` is permitted to
  ///  transfer from the `owner`.
  ///  <p>
  ///  The identified token type MUST be a non-fungible/unique token.
  @$pb.TagNumber(1)
  $0.TokenID get tokenId => $_getN(0);
  @$pb.TagNumber(1)
  set tokenId($0.TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTokenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TokenID ensureTokenId() => $_ensure(0);

  /// *
  ///  An owner account identifier.<br/>
  ///  This is the account identifier of the account granting an allowance
  ///  for the `spender` to transfer tokens held by this account.
  @$pb.TagNumber(2)
  $0.AccountID get owner => $_getN(1);
  @$pb.TagNumber(2)
  set owner($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureOwner() => $_ensure(1);

  /// *
  ///  A spender account identifier.<br/>
  ///  This is the account identifier of the account permitted to transfer
  ///  tokens held by the `owner`.
  @$pb.TagNumber(3)
  $0.AccountID get spender => $_getN(2);
  @$pb.TagNumber(3)
  set spender($0.AccountID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSpender() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpender() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.AccountID ensureSpender() => $_ensure(2);

  /// *
  ///  A list of token serial numbers.<br/>
  ///  The list of serial numbers that the spender is permitted to transfer.
  ///  <p>
  ///  The `owner` MUST currently hold each token identified in this list.
  @$pb.TagNumber(4)
  $pb.PbList<$fixnum.Int64> get serialNumbers => $_getList(3);

  /// *
  ///  A flag indicating this allowance applies to all tokens of the
  ///  specified (non-fungible/unique) type.
  ///  <p>
  ///  If true, the `spender` SHALL be permitted to transfer any or all
  ///  of the `owner`'s tokens of the specified token type.
  ///  This SHALL apply not only to currently owned tokens, but to all
  ///  such tokens acquired in the future, unless the
  ///  allowance is `delete`d.
  @$pb.TagNumber(5)
  $1.BoolValue get approvedForAll => $_getN(4);
  @$pb.TagNumber(5)
  set approvedForAll($1.BoolValue value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasApprovedForAll() => $_has(4);
  @$pb.TagNumber(5)
  void clearApprovedForAll() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.BoolValue ensureApprovedForAll() => $_ensure(4);

  /// *
  ///  A spender-owner account identifier.<br/>
  ///  This account identifier identifies a `spender` for whom an existing
  ///  `approved_for_all` allowance was previously created. This enables
  ///  an account with such broad access to grant allowances to transfer
  ///  individual tokens from the original owner without involving that
  ///  original owner.
  ///  <p>
  ///  If this is set, the account identified MUST sign this transaction, but
  ///  the `owner` account MAY NOT sign this transaction.<br/>
  ///  If this is set, there MUST exist an active `approved_for_all`
  ///  allowance from the `owner` for the `delegating_spender` to transfer
  ///  all tokens of the type identified by the `tokenId` field.<br/>
  ///  If this value is set, the `approved_for_all` flag MUST be `false`.
  @$pb.TagNumber(6)
  $0.AccountID get delegatingSpender => $_getN(5);
  @$pb.TagNumber(6)
  set delegatingSpender($0.AccountID value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasDelegatingSpender() => $_has(5);
  @$pb.TagNumber(6)
  void clearDelegatingSpender() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.AccountID ensureDelegatingSpender() => $_ensure(5);
}

/// *
///  An approved allowance of fungible/common token transfers.
///  This message specifies one allowance for a single, unique, combination
///  of token, owner, spender, and amount.
///
///  If `owner` is not set, the effective `owner` SHALL be the `payer` for the
///  enclosing transaction.<br/>
///  The `tokenId` MUST be specified and MUST be a valid
///  fungible/common token type.<br/>
///  The `spender` MUST be specified and MUST be a valid account.<br/>
///  The `amount` MUST be a whole number, and SHOULD be greater than `0` unless
///  this allowance is intended to _remove_ a previously approved allowance.
class TokenAllowance extends $pb.GeneratedMessage {
  factory TokenAllowance({
    $0.TokenID? tokenId,
    $0.AccountID? owner,
    $0.AccountID? spender,
    $fixnum.Int64? amount,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (owner != null) result.owner = owner;
    if (spender != null) result.spender = spender;
    if (amount != null) result.amount = amount;
    return result;
  }

  TokenAllowance._();

  factory TokenAllowance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenAllowance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenAllowance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        protoName: 'tokenId', subBuilder: $0.TokenID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'owner',
        subBuilder: $0.AccountID.create)
    ..aOM<$0.AccountID>(3, _omitFieldNames ? '' : 'spender',
        subBuilder: $0.AccountID.create)
    ..aInt64(4, _omitFieldNames ? '' : 'amount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenAllowance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenAllowance copyWith(void Function(TokenAllowance) updates) =>
      super.copyWith((message) => updates(message as TokenAllowance))
          as TokenAllowance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenAllowance create() => TokenAllowance._();
  @$core.override
  TokenAllowance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenAllowance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenAllowance>(create);
  static TokenAllowance? _defaultInstance;

  /// *
  ///  A token identifier.<br/>
  ///  This identifies the type of token the `spender` is permitted to
  ///  transfer from the `owner`.
  ///  <p>
  ///  The identified token type MUST be a fungible/common token.
  @$pb.TagNumber(1)
  $0.TokenID get tokenId => $_getN(0);
  @$pb.TagNumber(1)
  set tokenId($0.TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTokenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TokenID ensureTokenId() => $_ensure(0);

  /// *
  ///  An owner account identifier.<br/>
  ///  This is the account identifier of the account granting an allowance
  ///  for the `spender` to transfer tokens held by this account.
  @$pb.TagNumber(2)
  $0.AccountID get owner => $_getN(1);
  @$pb.TagNumber(2)
  set owner($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureOwner() => $_ensure(1);

  /// *
  ///  A spender account identifier.<br/>
  ///  This is the account identifier of the account permitted to transfer
  ///  tokens held by the `owner`.
  @$pb.TagNumber(3)
  $0.AccountID get spender => $_getN(2);
  @$pb.TagNumber(3)
  set spender($0.AccountID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSpender() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpender() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.AccountID ensureSpender() => $_ensure(2);

  /// *
  ///  An amount of fractional tokens (10<sup>-decimals</sup> tokens).<br/>
  ///  This is the amount of tokens held by the `owner` that the
  ///  `spender` is permitted to transfer.
  ///  <p>
  ///  This value MUST be a whole number.<br/>
  ///  This value MUST be greater than 0 to create a new allowance.<br/>
  ///  This value MAY be exactly `0` to _remove_ an existing allowance.<br/>
  @$pb.TagNumber(4)
  $fixnum.Int64 get amount => $_getI64(3);
  @$pb.TagNumber(4)
  set amount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
