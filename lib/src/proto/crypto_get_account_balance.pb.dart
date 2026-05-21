// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from crypto_get_account_balance.proto.

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
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum CryptoGetAccountBalanceQuery_BalanceSource {
  accountID,
  contractID,
  notSet
}

/// *
///  Query to read the HBAR balance of an account or contract.
///
///  This query SHALL return _only_ the HBAR balance for an account
///  or smart contract. Early releases of the network would return all
///  fungible/common token balances, but HIP-367 made it infeasible to
///  return all such balances. This query SHALL NOT return any information
///  beyond the current HBAR balance.
class CryptoGetAccountBalanceQuery extends $pb.GeneratedMessage {
  factory CryptoGetAccountBalanceQuery({
    $0.QueryHeader? header,
    $1.AccountID? accountID,
    $1.ContractID? contractID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountID != null) result.accountID = accountID;
    if (contractID != null) result.contractID = contractID;
    return result;
  }

  CryptoGetAccountBalanceQuery._();

  factory CryptoGetAccountBalanceQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetAccountBalanceQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CryptoGetAccountBalanceQuery_BalanceSource>
      _CryptoGetAccountBalanceQuery_BalanceSourceByTag = {
    2: CryptoGetAccountBalanceQuery_BalanceSource.accountID,
    3: CryptoGetAccountBalanceQuery_BalanceSource.contractID,
    0: CryptoGetAccountBalanceQuery_BalanceSource.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetAccountBalanceQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..aOM<$1.ContractID>(3, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $1.ContractID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetAccountBalanceQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetAccountBalanceQuery copyWith(
          void Function(CryptoGetAccountBalanceQuery) updates) =>
      super.copyWith(
              (message) => updates(message as CryptoGetAccountBalanceQuery))
          as CryptoGetAccountBalanceQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetAccountBalanceQuery create() =>
      CryptoGetAccountBalanceQuery._();
  @$core.override
  CryptoGetAccountBalanceQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetAccountBalanceQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetAccountBalanceQuery>(create);
  static CryptoGetAccountBalanceQuery? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  CryptoGetAccountBalanceQuery_BalanceSource whichBalanceSource() =>
      _CryptoGetAccountBalanceQuery_BalanceSourceByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearBalanceSource() => $_clearField($_whichOneof(0));

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
  ///  An account identifier.<br/>
  ///  This identifies an account for which the balance is requested.
  ///  <p>
  ///  Exactly one identifier MUST be provided.
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
  ///  A smart contract identifier.<br/>
  ///  This identifies a smart contract for which the balance is requested.
  ///  <p>
  ///  Exactly one identifier MUST be provided.
  @$pb.TagNumber(3)
  $1.ContractID get contractID => $_getN(2);
  @$pb.TagNumber(3)
  set contractID($1.ContractID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasContractID() => $_has(2);
  @$pb.TagNumber(3)
  void clearContractID() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.ContractID ensureContractID() => $_ensure(2);
}

/// *
///  Response to a CryptoGetAccountBalanceQuery.<br/>
///
///  This response SHALL contain only the information needed to
///  identify the query request and the actual HBAR balance of the
///  identified account or contract.
class CryptoGetAccountBalanceResponse extends $pb.GeneratedMessage {
  factory CryptoGetAccountBalanceResponse({
    $2.ResponseHeader? header,
    $1.AccountID? accountID,
    $fixnum.Int64? balance,
    @$core.Deprecated('This field is deprecated.')
    $core.Iterable<$1.TokenBalance>? tokenBalances,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountID != null) result.accountID = accountID;
    if (balance != null) result.balance = balance;
    if (tokenBalances != null) result.tokenBalances.addAll(tokenBalances);
    return result;
  }

  CryptoGetAccountBalanceResponse._();

  factory CryptoGetAccountBalanceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoGetAccountBalanceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoGetAccountBalanceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<$1.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $1.AccountID.create)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<$1.TokenBalance>(4, _omitFieldNames ? '' : 'tokenBalances',
        protoName: 'tokenBalances', subBuilder: $1.TokenBalance.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetAccountBalanceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoGetAccountBalanceResponse copyWith(
          void Function(CryptoGetAccountBalanceResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CryptoGetAccountBalanceResponse))
          as CryptoGetAccountBalanceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoGetAccountBalanceResponse create() =>
      CryptoGetAccountBalanceResponse._();
  @$core.override
  CryptoGetAccountBalanceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoGetAccountBalanceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoGetAccountBalanceResponse>(
          create);
  static CryptoGetAccountBalanceResponse? _defaultInstance;

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
  ///  An account identifier.<br/>
  ///  This is the account ID queried. <br/>
  ///  The inclusion of the account queried is useful with state proofs,
  ///  when needed to prove an account balance to a third party.
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
  ///  A current account balance.<br/>
  ///  This is the current HBAR balance denominated in tinybar
  ///  (10<sup>-8</sup> HBAR).
  @$pb.TagNumber(3)
  $fixnum.Int64 get balance => $_getI64(2);
  @$pb.TagNumber(3)
  set balance($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearBalance() => $_clearField(3);

  /// *
  ///  This field became infeasible to support after HIP-367 removed limits on
  ///  the number of associated tokens.<br/>
  ///  A list of token balances for all tokens associated to the account.
  ///  <p>
  ///  This field was deprecated by
  ///  <a href="https://hips.hedera.com/hip/hip-367">HIP-367</a>, which
  ///  allowed an account to be associated to an unlimited number of tokens.
  ///  This scale makes it more efficient for users to consult mirror nodes
  ///  to review their token balances.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $pb.PbList<$1.TokenBalance> get tokenBalances => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
