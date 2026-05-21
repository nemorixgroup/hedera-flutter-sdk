// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from response_header.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'query_header.pbenum.dart' as $1;
import 'response_code.pbenum.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A standard header returned with every query response.
///
///  The fields for `cost` or `stateProof` MAY be unset if the requested
///  `ResponseType` does not request those values.<br/>
///  The `responseType` SHALL match the request response type.<br/>
///  The `nodeTransactionPrecheckCode` field SHALL contain the result code
///  for the query.
class ResponseHeader extends $pb.GeneratedMessage {
  factory ResponseHeader({
    $0.ResponseCodeEnum? nodeTransactionPrecheckCode,
    $1.ResponseType? responseType,
    $fixnum.Int64? cost,
    $core.List<$core.int>? stateProof,
  }) {
    final result = create();
    if (nodeTransactionPrecheckCode != null)
      result.nodeTransactionPrecheckCode = nodeTransactionPrecheckCode;
    if (responseType != null) result.responseType = responseType;
    if (cost != null) result.cost = cost;
    if (stateProof != null) result.stateProof = stateProof;
    return result;
  }

  ResponseHeader._();

  factory ResponseHeader.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResponseHeader.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResponseHeader',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aE<$0.ResponseCodeEnum>(
        1, _omitFieldNames ? '' : 'nodeTransactionPrecheckCode',
        protoName: 'nodeTransactionPrecheckCode',
        enumValues: $0.ResponseCodeEnum.values)
    ..aE<$1.ResponseType>(2, _omitFieldNames ? '' : 'responseType',
        protoName: 'responseType', enumValues: $1.ResponseType.values)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'stateProof', $pb.PbFieldType.OY,
        protoName: 'stateProof')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResponseHeader clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResponseHeader copyWith(void Function(ResponseHeader) updates) =>
      super.copyWith((message) => updates(message as ResponseHeader))
          as ResponseHeader;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResponseHeader create() => ResponseHeader._();
  @$core.override
  ResponseHeader createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResponseHeader getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResponseHeader>(create);
  static ResponseHeader? _defaultInstance;

  /// *
  ///  The result code for this query.
  ///  <p>
  ///  This value SHALL indicate either success or the reason for failure.
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
  ///  The response type requested for this query.
  ///  <p>
  ///  This SHALL be the response type requested in the query header.
  @$pb.TagNumber(2)
  $1.ResponseType get responseType => $_getN(1);
  @$pb.TagNumber(2)
  set responseType($1.ResponseType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasResponseType() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseType() => $_clearField(2);

  /// *
  ///  Requested cost estimate.<br/>
  ///  This is the fee that _would be_ charged if the query was executed.
  ///  <p>
  ///  This value SHALL be set if the response type requested requires cost
  ///  information, and SHALL NOT be set otherwise.<br/>
  ///  This value SHALL include the query fee, but SHALL NOT include the
  ///  transfer fee required to execute the fee payment transaction.
  @$pb.TagNumber(3)
  $fixnum.Int64 get cost => $_getI64(2);
  @$pb.TagNumber(3)
  set cost($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCost() => $_has(2);
  @$pb.TagNumber(3)
  void clearCost() => $_clearField(3);

  /// *
  ///  A state proof for the information requested.
  ///
  ///  This field SHALL NOT be set if the response type does not require
  ///  a state proof.<br/>
  ///  This field SHALL NOT be set if a state proof is not available for
  ///  the query type.<br/>
  ///  This field SHALL be set if the response type requested a state proof
  ///  and a state proof is available.
  @$pb.TagNumber(4)
  $core.List<$core.int> get stateProof => $_getN(3);
  @$pb.TagNumber(4)
  set stateProof($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStateProof() => $_has(3);
  @$pb.TagNumber(4)
  void clearStateProof() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
