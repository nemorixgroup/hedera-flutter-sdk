// This is a generated file - do not edit.
//
// Generated from contract_call.proto.

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

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Call a function of a given smart contract, providing function parameter
///  inputs as needed.
///
///  Resource ("gas") charges SHALL include all relevant fees incurred by the
///  contract execution, including any storage required.<br/>
///  The total transaction fee SHALL incorporate all of the "gas" actually
///  consumed as well as the standard fees for transaction handling, data
///  transfers, signature verification, etc...<br/>
///  The response SHALL contain the output returned by the function call.
///
///  ### Block Stream Effects
///  A `CallContractOutput` message SHALL be emitted for each transaction.
class ContractCallTransactionBody extends $pb.GeneratedMessage {
  factory ContractCallTransactionBody({
    $0.ContractID? contractID,
    $fixnum.Int64? gas,
    $fixnum.Int64? amount,
    $core.List<$core.int>? functionParameters,
  }) {
    final result = create();
    if (contractID != null) result.contractID = contractID;
    if (gas != null) result.gas = gas;
    if (amount != null) result.amount = amount;
    if (functionParameters != null)
      result.functionParameters = functionParameters;
    return result;
  }

  ContractCallTransactionBody._();

  factory ContractCallTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractCallTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractCallTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.ContractID>(1, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $0.ContractID.create)
    ..aInt64(2, _omitFieldNames ? '' : 'gas')
    ..aInt64(3, _omitFieldNames ? '' : 'amount')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'functionParameters', $pb.PbFieldType.OY,
        protoName: 'functionParameters')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractCallTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractCallTransactionBody copyWith(
          void Function(ContractCallTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as ContractCallTransactionBody))
          as ContractCallTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractCallTransactionBody create() =>
      ContractCallTransactionBody._();
  @$core.override
  ContractCallTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractCallTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractCallTransactionBody>(create);
  static ContractCallTransactionBody? _defaultInstance;

  /// *
  ///  The ID of a smart contract to call.
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
  ///  A maximum limit to the amount of gas to use for this call.
  ///  <p>
  ///  The network SHALL charge the greater of the following, but
  ///  SHALL NOT charge more than the value of this field.
  ///  <ol>
  ///    <li>The actual gas consumed by the smart contract call.</li>
  ///    <li>`80%` of this value.</li>
  ///  </ol>
  ///  The `80%` factor encourages reasonable estimation, while allowing for
  ///  some overage to ensure successful execution.
  @$pb.TagNumber(2)
  $fixnum.Int64 get gas => $_getI64(1);
  @$pb.TagNumber(2)
  set gas($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGas() => $_has(1);
  @$pb.TagNumber(2)
  void clearGas() => $_clearField(2);

  /// *
  ///  An amount of tinybar sent via this contract call.
  ///  <p>
  ///  If this is non-zero, the function MUST be `payable`.
  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => $_clearField(3);

  /// *
  ///  The smart contract function to call.
  ///  <p>
  ///  This MUST contain The application binary interface (ABI) encoding of the
  ///  function call per the Ethereum contract ABI standard, giving the
  ///  function signature and arguments being passed to the function.
  @$pb.TagNumber(4)
  $core.List<$core.int> get functionParameters => $_getN(3);
  @$pb.TagNumber(4)
  set functionParameters($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFunctionParameters() => $_has(3);
  @$pb.TagNumber(4)
  void clearFunctionParameters() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
