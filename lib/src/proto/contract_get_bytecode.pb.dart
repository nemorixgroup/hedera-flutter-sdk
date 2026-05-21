// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from contract_get_bytecode.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $1;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A transaction body to request the current bytecode for a smart contract.
class ContractGetBytecodeQuery extends $pb.GeneratedMessage {
  factory ContractGetBytecodeQuery({
    $0.QueryHeader? header,
    $1.ContractID? contractID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (contractID != null) result.contractID = contractID;
    return result;
  }

  ContractGetBytecodeQuery._();

  factory ContractGetBytecodeQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractGetBytecodeQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractGetBytecodeQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.ContractID>(2, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $1.ContractID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetBytecodeQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetBytecodeQuery copyWith(
          void Function(ContractGetBytecodeQuery) updates) =>
      super.copyWith((message) => updates(message as ContractGetBytecodeQuery))
          as ContractGetBytecodeQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractGetBytecodeQuery create() => ContractGetBytecodeQuery._();
  @$core.override
  ContractGetBytecodeQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractGetBytecodeQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractGetBytecodeQuery>(create);
  static ContractGetBytecodeQuery? _defaultInstance;

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
  ///  The network SHALL return bytecode for this smart contract, if successful.
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

/// *
///  Information returned in response to a "get bytecode" query for a
///  smart contract.
class ContractGetBytecodeResponse extends $pb.GeneratedMessage {
  factory ContractGetBytecodeResponse({
    $2.ResponseHeader? header,
    $core.List<$core.int>? bytecode,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (bytecode != null) result.bytecode = bytecode;
    return result;
  }

  ContractGetBytecodeResponse._();

  factory ContractGetBytecodeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractGetBytecodeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractGetBytecodeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'bytecode', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetBytecodeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetBytecodeResponse copyWith(
          void Function(ContractGetBytecodeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ContractGetBytecodeResponse))
          as ContractGetBytecodeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractGetBytecodeResponse create() =>
      ContractGetBytecodeResponse._();
  @$core.override
  ContractGetBytecodeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractGetBytecodeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractGetBytecodeResponse>(create);
  static ContractGetBytecodeResponse? _defaultInstance;

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
  ///  The current bytecode of the requested smart contract.
  @$pb.TagNumber(6)
  $core.List<$core.int> get bytecode => $_getN(1);
  @$pb.TagNumber(6)
  set bytecode($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(6)
  $core.bool hasBytecode() => $_has(1);
  @$pb.TagNumber(6)
  void clearBytecode() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
