// This is a generated file - do not edit.
//
// Generated from ethereum_transaction.proto.

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
///  A transaction in Ethereum format.<br/>
///  Make an Ethereum transaction "call" with all data in Ethereum formats,
///  including the contract alias. Call data may be in the transaction, or
///  stored within an Hedera File.
///
///  The caller MAY offer additional gas above what is offered in the call data,
///  but MAY be charged up to 80% of that value if the amount required is less
///  than this "floor" amount.
///
///  ### Block Stream Effects
///  An `EthereumOutput` message SHALL be emitted for each transaction.
class EthereumTransactionBody extends $pb.GeneratedMessage {
  factory EthereumTransactionBody({
    $core.List<$core.int>? ethereumData,
    $0.FileID? callData,
    $fixnum.Int64? maxGasAllowance,
  }) {
    final result = create();
    if (ethereumData != null) result.ethereumData = ethereumData;
    if (callData != null) result.callData = callData;
    if (maxGasAllowance != null) result.maxGasAllowance = maxGasAllowance;
    return result;
  }

  EthereumTransactionBody._();

  factory EthereumTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EthereumTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EthereumTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'ethereumData', $pb.PbFieldType.OY)
    ..aOM<$0.FileID>(2, _omitFieldNames ? '' : 'callData',
        subBuilder: $0.FileID.create)
    ..aInt64(3, _omitFieldNames ? '' : 'maxGasAllowance')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EthereumTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EthereumTransactionBody copyWith(
          void Function(EthereumTransactionBody) updates) =>
      super.copyWith((message) => updates(message as EthereumTransactionBody))
          as EthereumTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthereumTransactionBody create() => EthereumTransactionBody._();
  @$core.override
  EthereumTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EthereumTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EthereumTransactionBody>(create);
  static EthereumTransactionBody? _defaultInstance;

  /// *
  ///  The raw Ethereum transaction data.
  ///  <p>
  ///  This transaction MUST be RLP encoded.<br/>
  ///  This SHALL be the complete transaction data unless the `call_data`
  ///  field is set.<br/>
  ///  If `call_data` is set, this field SHALL be modified to replace the
  ///  `callData` element with the content of the referenced file.<br/>
  ///  The transaction signature SHALL be validated after `callData` is
  ///  complete, if necessary.
  @$pb.TagNumber(1)
  $core.List<$core.int> get ethereumData => $_getN(0);
  @$pb.TagNumber(1)
  set ethereumData($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEthereumData() => $_has(0);
  @$pb.TagNumber(1)
  void clearEthereumData() => $_clearField(1);

  /// *
  ///  The `callData` for the Ethereum transaction.
  ///  <p>
  ///  If this field is set, the data in the `ethereum_data` field SHALL be
  ///  re-written to replace the `callData` element with the contents of this
  ///  file at time of execution.<br/>
  ///  The Ethereum transaction MUST be "rehydrated" with this modified
  ///  `callData` before signature validation MAY be performed.
  @$pb.TagNumber(2)
  $0.FileID get callData => $_getN(1);
  @$pb.TagNumber(2)
  set callData($0.FileID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCallData() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallData() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.FileID ensureCallData() => $_ensure(1);

  /// *
  ///  A maximum amount of "gas" offered to pay the Ethereum transaction costs.
  ///  <p>
  ///  This gas offered is in addition to any gas supplied with the Ethereum
  ///  transaction as declared in the `ethereum_data`.<br/>
  ///  In most circumstances the account with an alias matching the public
  ///  key available from the Ethereum transaction signature offers sufficient
  ///  gas to power the transaction, but in some cases it MAY be desirable
  ///  for the account submitting this transaction to either supplement
  ///  or entirely fund the transaction cost.<br/>
  ///  The amount of gas offered here SHALL be used to pay for
  ///  transaction costs _in excess_ of any gas offered within
  ///  the Ethereum transaction.<br/>
  ///  If the gas offered within the Ethereum transaction is sufficient
  ///  for all costs, the gas offered in this field SHALL NOT be expended.<br/>
  ///  Regardless of actual transaction cost, the payer for this transaction
  ///  SHALL NOT be charged more gas than the amount offered here.<br/>
  ///  If the sum of both gas amounts is not sufficient to pay for the
  ///  transaction, the entire total amount of gas offered SHALL be expended,
  ///  the transaction SHALL fail, and the response code `INSUFFICIENT_GAS`
  ///  SHALL be set.<br/>
  ///  If any amount of gas is charged to the payer of this transaction,
  ///  at least 80% of the value offered in this field SHALL be charged
  ///  as a minimum fee.<br/>
  ///  If the amount of gas authorized in the Ethereum transaction data is `0`,
  ///  then the payer of this transaction SHALL be charged the entire cost of
  ///  the Ethereum transaction, subject to the limit set in this field.
  @$pb.TagNumber(3)
  $fixnum.Int64 get maxGasAllowance => $_getI64(2);
  @$pb.TagNumber(3)
  set maxGasAllowance($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxGasAllowance() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxGasAllowance() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
