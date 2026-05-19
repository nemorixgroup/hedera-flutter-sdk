// This is a generated file - do not edit.
//
// Generated from contract_get_records.proto.

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
import 'transaction_record.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Deprecated and not supported after release `0.9.0`.
///  Request records of all transactions against the given contract in the last 25 hours.
@$core.Deprecated('This message is deprecated')
class ContractGetRecordsQuery extends $pb.GeneratedMessage {
  factory ContractGetRecordsQuery({
    $0.QueryHeader? header,
    $1.ContractID? contractID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (contractID != null) result.contractID = contractID;
    return result;
  }

  ContractGetRecordsQuery._();

  factory ContractGetRecordsQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractGetRecordsQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractGetRecordsQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOM<$1.ContractID>(2, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $1.ContractID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetRecordsQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetRecordsQuery copyWith(
          void Function(ContractGetRecordsQuery) updates) =>
      super.copyWith((message) => updates(message as ContractGetRecordsQuery))
          as ContractGetRecordsQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractGetRecordsQuery create() => ContractGetRecordsQuery._();
  @$core.override
  ContractGetRecordsQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractGetRecordsQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractGetRecordsQuery>(create);
  static ContractGetRecordsQuery? _defaultInstance;

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
  ///  The network SHALL return information for this smart contract, if successful.
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
///  Deprecated and not supported after release `0.9.0`.
///  Response with records of all transactions against the given contract in the last 25 hours.
@$core.Deprecated('This message is deprecated')
class ContractGetRecordsResponse extends $pb.GeneratedMessage {
  factory ContractGetRecordsResponse({
    $2.ResponseHeader? header,
    $1.ContractID? contractID,
    $core.Iterable<$3.TransactionRecord>? records,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (contractID != null) result.contractID = contractID;
    if (records != null) result.records.addAll(records);
    return result;
  }

  ContractGetRecordsResponse._();

  factory ContractGetRecordsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractGetRecordsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractGetRecordsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$2.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $2.ResponseHeader.create)
    ..aOM<$1.ContractID>(2, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $1.ContractID.create)
    ..pPM<$3.TransactionRecord>(3, _omitFieldNames ? '' : 'records',
        subBuilder: $3.TransactionRecord.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetRecordsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractGetRecordsResponse copyWith(
          void Function(ContractGetRecordsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ContractGetRecordsResponse))
          as ContractGetRecordsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractGetRecordsResponse create() => ContractGetRecordsResponse._();
  @$core.override
  ContractGetRecordsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractGetRecordsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractGetRecordsResponse>(create);
  static ContractGetRecordsResponse? _defaultInstance;

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
  ///  A smart contract that this response describes.
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
  ///  A list of records, each with contractCreateResult or contractCallResult as its body
  @$pb.TagNumber(3)
  $pb.PbList<$3.TransactionRecord> get records => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
