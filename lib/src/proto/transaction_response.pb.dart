// This is a generated file - do not edit.
//
// Generated from transaction_response.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'response_code.pbenum.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A message sent by a node in response to a transaction submission.<br/>
///  This message only acknowledges that the individual node has checked
///  the transaction, completed pre-check, and checked the fee offered.
///
///  If the transaction fee is not sufficient, the `nodeTransactionPrecheckCode`
///  value SHALL be `INSUFFICIENT_TX_FEE` and the `cost` field SHALL be the
///  actual transaction fee, in tinybar, required.<br/>
///  If the client requires acknowledgement of the network consensus result
///  for a transaction, the client SHOULD request a transaction receipt or
///  detailed transaction record. A client MAY also obtain network consensus
///  results from a mirror node.
class TransactionResponse extends $pb.GeneratedMessage {
  factory TransactionResponse({
    $0.ResponseCodeEnum? nodeTransactionPrecheckCode,
    $fixnum.Int64? cost,
  }) {
    final result = create();
    if (nodeTransactionPrecheckCode != null)
      result.nodeTransactionPrecheckCode = nodeTransactionPrecheckCode;
    if (cost != null) result.cost = cost;
    return result;
  }

  TransactionResponse._();

  factory TransactionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aE<$0.ResponseCodeEnum>(
        1, _omitFieldNames ? '' : 'nodeTransactionPrecheckCode',
        protoName: 'nodeTransactionPrecheckCode',
        enumValues: $0.ResponseCodeEnum.values)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionResponse copyWith(void Function(TransactionResponse) updates) =>
      super.copyWith((message) => updates(message as TransactionResponse))
          as TransactionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionResponse create() => TransactionResponse._();
  @$core.override
  TransactionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionResponse>(create);
  static TransactionResponse? _defaultInstance;

  /// *
  ///  A pre-consensus response code.
  ///  <p>
  ///  This response SHALL represent the response of the individual node, and
  ///  SHALL NOT represent the consensus of the network.
  @$pb.TagNumber(1)
  $0.ResponseCodeEnum get nodeTransactionPrecheckCode => $_getN(0);
  @$pb.TagNumber(1)
  set nodeTransactionPrecheckCode($0.ResponseCodeEnum value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeTransactionPrecheckCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeTransactionPrecheckCode() => $_clearField(1);

  /// *
  ///  An approximate transaction fee.
  ///  <p>
  ///  This value SHALL be `0` unless the `nodeTransactionPrecheckCode` is
  ///  `INSUFFICIENT_TX_FEE`.<br/>
  ///  This value SHOULD be an amount, in tinybar, that _would have_ succeeded
  ///  at the time the transaction was submitted.<br/>
  ///  Note that this amount is not guaranteed to succeed in a future
  ///  transaction due to uncontrolled variables, such as network congestion,
  ///  but should be considered a close approximation.
  @$pb.TagNumber(2)
  $fixnum.Int64 get cost => $_getI64(1);
  @$pb.TagNumber(2)
  set cost($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCost() => $_has(1);
  @$pb.TagNumber(2)
  void clearCost() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
