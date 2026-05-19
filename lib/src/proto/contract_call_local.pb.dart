// This is a generated file - do not edit.
//
// Generated from contract_call_local.proto.

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
import 'contract_types.pb.dart' as $3;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Call a view function of a given smart contract<br/>
///  The call must provide function parameter inputs as needed.<br/>
///  This is potentially useful for calling view functions that will not revert
///  when executed in a static EVM context. Many such use cases will be better
///  served by using a Mirror Node API, however.
///
///  This is performed locally on the particular node that the client is
///  communicating with. Executing the call locally is faster and less costly,
///  but imposes certain restrictions.<br/>
///  The call MUST NOT change the state of the contract instance. This also
///  precludes any expenditure or transfer of HBAR or other tokens.<br/>
///  The call SHALL NOT have a separate consensus timestamp.<br/>
///  The call SHALL NOT generate a record nor a receipt.<br/>
///  The response SHALL contain the output returned by the function call.<br/>
///  Any contract call that would use the `STATICCALL` opcode MAY be called via
///  contract call local with performance and cost benefits.
///
///  Unlike a ContractCall transaction, the node SHALL always consume the
///  _entire_ amount of offered "gas" in determining the fee for this query, so
///  accurate gas estimation is important.
class ContractCallLocalQuery extends $pb.GeneratedMessage {
  factory ContractCallLocalQuery({
    $0.QueryHeader? header,
    $1.ContractID? contractID,
    $fixnum.Int64? gas,
    $core.List<$core.int>? functionParameters,
    @$core.Deprecated('This field is deprecated.') $fixnum.Int64? maxResultSize,
    $1.AccountID? senderId,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (contractID != null) result.contractID = contractID;
    if (gas != null) result.gas = gas;
    if (functionParameters != null)
      result.functionParameters = functionParameters;
    if (maxResultSize != null) result.maxResultSize = maxResultSize;
    if (senderId != null) result.senderId = senderId;
    return result;
  }

  ContractCallLocalQuery._();

  factory ContractCallLocalQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractCallLocalQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractCallLocalQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.ContractID>(2, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $1.ContractID.create)
    ..aInt64(3, _omitFieldNames ? '' : 'gas')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'functionParameters', $pb.PbFieldType.OY,
        protoName: 'functionParameters')
    ..aInt64(5, _omitFieldNames ? '' : 'maxResultSize',
        protoName: 'maxResultSize')
    ..aOM<$1.AccountID>(6, _omitFieldNames ? '' : 'senderId',
        subBuilder: $1.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractCallLocalQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractCallLocalQuery copyWith(
          void Function(ContractCallLocalQuery) updates) =>
      super.copyWith((message) => updates(message as ContractCallLocalQuery))
          as ContractCallLocalQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractCallLocalQuery create() => ContractCallLocalQuery._();
  @$core.override
  ContractCallLocalQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractCallLocalQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractCallLocalQuery>(create);
  static ContractCallLocalQuery? _defaultInstance;

  /// *
  ///  Standard information sent with every query operation.<br/>
  ///  This includes the signed payment and what kind of response is requested
  ///  (cost, state proof, both, or neither).
  ///  <p>
  ///  The payment MUST be sufficient for the base fees _and_ the full amount
  ///  in the `gas` field.
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
  ///  The ID of a smart contract to call.
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

  /// *
  ///  The amount of "gas" to use for this call.
  ///  <p>
  ///  This transaction SHALL consume all of the gas offered and charge the
  ///  corresponding fee according to the current exchange rate between
  ///  HBAR and "gas".
  @$pb.TagNumber(3)
  $fixnum.Int64 get gas => $_getI64(2);
  @$pb.TagNumber(3)
  set gas($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGas() => $_has(2);
  @$pb.TagNumber(3)
  void clearGas() => $_clearField(3);

  /// *
  ///  The smart contract function to call, and the parameters to pass to that
  ///  function.
  ///  <p>
  ///  These SHALL be presented in EVM bytecode function call format.
  @$pb.TagNumber(4)
  $core.List<$core.int> get functionParameters => $_getN(3);
  @$pb.TagNumber(4)
  set functionParameters($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFunctionParameters() => $_has(3);
  @$pb.TagNumber(4)
  void clearFunctionParameters() => $_clearField(4);

  /// *
  ///  Do not use this field; it is ignored in the current software.
  ///  <p>
  ///  The maximum number of bytes that the result might include.<br/>
  ///  The call will fail if it would have returned more than this number
  ///  of bytes.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $fixnum.Int64 get maxResultSize => $_getI64(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set maxResultSize($fixnum.Int64 value) => $_setInt64(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasMaxResultSize() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearMaxResultSize() => $_clearField(5);

  /// *
  ///  The account that is the "sender" for this contract call.
  ///  <p>
  ///  If this is not set it SHALL be interpreted as the accountId from the
  ///  associated transactionId.<br/>
  ///  If this is set then either the associated transaction or the foreign
  ///  transaction data MUST be signed by the referenced account.
  @$pb.TagNumber(6)
  $1.AccountID get senderId => $_getN(5);
  @$pb.TagNumber(6)
  set senderId($1.AccountID value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSenderId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSenderId() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.AccountID ensureSenderId() => $_ensure(5);
}

/// *
///  The response returned by a `ContractCallLocalQuery` transaction.
class ContractCallLocalResponse extends $pb.GeneratedMessage {
  factory ContractCallLocalResponse({
    $2.ResponseHeader? header,
    $3.ContractFunctionResult? functionResult,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (functionResult != null) result.functionResult = functionResult;
    return result;
  }

  ContractCallLocalResponse._();

  factory ContractCallLocalResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractCallLocalResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractCallLocalResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<$3.ContractFunctionResult>(2, _omitFieldNames ? '' : 'functionResult',
        protoName: 'functionResult',
        subBuilder: $3.ContractFunctionResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractCallLocalResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractCallLocalResponse copyWith(
          void Function(ContractCallLocalResponse) updates) =>
      super.copyWith((message) => updates(message as ContractCallLocalResponse))
          as ContractCallLocalResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractCallLocalResponse create() => ContractCallLocalResponse._();
  @$core.override
  ContractCallLocalResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractCallLocalResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractCallLocalResponse>(create);
  static ContractCallLocalResponse? _defaultInstance;

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
  ///  The result(s) returned by the function call, if successful.
  ///  <p>
  ///  If the call failed this value SHALL be unset.
  @$pb.TagNumber(2)
  $3.ContractFunctionResult get functionResult => $_getN(1);
  @$pb.TagNumber(2)
  set functionResult($3.ContractFunctionResult value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFunctionResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearFunctionResult() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.ContractFunctionResult ensureFunctionResult() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
