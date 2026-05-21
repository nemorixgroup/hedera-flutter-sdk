// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from get_by_solidity_id.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $2;
import 'query_header.pb.dart' as $0;
import 'response_header.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Query to read Contract, Account, and File identifiers for a smart
///  contract given a Solidity identifier.
@$core.Deprecated('This message is deprecated')
class GetBySolidityIDQuery extends $pb.GeneratedMessage {
  factory GetBySolidityIDQuery({
    $0.QueryHeader? header,
    $core.String? solidityID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (solidityID != null) result.solidityID = solidityID;
    return result;
  }

  GetBySolidityIDQuery._();

  factory GetBySolidityIDQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetBySolidityIDQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBySolidityIDQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..aOS(2, _omitFieldNames ? '' : 'solidityID', protoName: 'solidityID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBySolidityIDQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBySolidityIDQuery copyWith(void Function(GetBySolidityIDQuery) updates) =>
      super.copyWith((message) => updates(message as GetBySolidityIDQuery))
          as GetBySolidityIDQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBySolidityIDQuery create() => GetBySolidityIDQuery._();
  @$core.override
  GetBySolidityIDQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetBySolidityIDQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBySolidityIDQuery>(create);
  static GetBySolidityIDQuery? _defaultInstance;

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
  ///  A contract ID in the format used by Solidity.
  ///  <p>
  ///  This field is REQUIRED.
  @$pb.TagNumber(2)
  $core.String get solidityID => $_getSZ(1);
  @$pb.TagNumber(2)
  set solidityID($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSolidityID() => $_has(1);
  @$pb.TagNumber(2)
  void clearSolidityID() => $_clearField(2);
}

/// *
///  Response to a getBySolidityId query.
///
///  This message returns the account, contract, and file identifiers for
///  a smart contract.
@$core.Deprecated('This message is deprecated')
class GetBySolidityIDResponse extends $pb.GeneratedMessage {
  factory GetBySolidityIDResponse({
    $1.ResponseHeader? header,
    $2.AccountID? accountID,
    $2.FileID? fileID,
    $2.ContractID? contractID,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (accountID != null) result.accountID = accountID;
    if (fileID != null) result.fileID = fileID;
    if (contractID != null) result.contractID = contractID;
    return result;
  }

  GetBySolidityIDResponse._();

  factory GetBySolidityIDResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetBySolidityIDResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBySolidityIDResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $1.ResponseHeader.create)
    ..aOM<$2.AccountID>(2, _omitFieldNames ? '' : 'accountID',
        protoName: 'accountID', subBuilder: $2.AccountID.create)
    ..aOM<$2.FileID>(3, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $2.FileID.create)
    ..aOM<$2.ContractID>(4, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $2.ContractID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBySolidityIDResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBySolidityIDResponse copyWith(
          void Function(GetBySolidityIDResponse) updates) =>
      super.copyWith((message) => updates(message as GetBySolidityIDResponse))
          as GetBySolidityIDResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBySolidityIDResponse create() => GetBySolidityIDResponse._();
  @$core.override
  GetBySolidityIDResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetBySolidityIDResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBySolidityIDResponse>(create);
  static GetBySolidityIDResponse? _defaultInstance;

  /// *
  ///  The standard response information for queries.<br/>
  ///  This includes the values requested in the `QueryHeader`
  ///  (cost, state proof, both, or neither).
  @$pb.TagNumber(1)
  $1.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($1.ResponseHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.ResponseHeader ensureHeader() => $_ensure(0);

  /// *
  ///  An account identifier.
  ///  <p>
  ///  This SHALL identify an account that backs the requested smart contract.
  @$pb.TagNumber(2)
  $2.AccountID get accountID => $_getN(1);
  @$pb.TagNumber(2)
  set accountID($2.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.AccountID ensureAccountID() => $_ensure(1);

  /// *
  ///  A file identifier.
  ///  <p>
  ///  This SHALL identify a file, the contents of which are the EVM
  ///  bytecode for the requested smart contract.
  @$pb.TagNumber(3)
  $2.FileID get fileID => $_getN(2);
  @$pb.TagNumber(3)
  set fileID($2.FileID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFileID() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileID() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.FileID ensureFileID() => $_ensure(2);

  /// *
  ///  A contract identifier.
  ///  <p>
  ///  This SHALL identify the requested smart contract.
  @$pb.TagNumber(4)
  $2.ContractID get contractID => $_getN(3);
  @$pb.TagNumber(4)
  set contractID($2.ContractID value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasContractID() => $_has(3);
  @$pb.TagNumber(4)
  void clearContractID() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.ContractID ensureContractID() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
