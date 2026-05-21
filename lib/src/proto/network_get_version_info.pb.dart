// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from network_get_version_info.proto.

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
///  Query the deployed versions of Hedera Services and the API definitions in
///  semantic version format
class NetworkGetVersionInfoQuery extends $pb.GeneratedMessage {
  factory NetworkGetVersionInfoQuery({
    $0.QueryHeader? header,
  }) {
    final result = create();
    if (header != null) result.header = header;
    return result;
  }

  NetworkGetVersionInfoQuery._();

  factory NetworkGetVersionInfoQuery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NetworkGetVersionInfoQuery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NetworkGetVersionInfoQuery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.QueryHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $0.QueryHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkGetVersionInfoQuery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkGetVersionInfoQuery copyWith(
          void Function(NetworkGetVersionInfoQuery) updates) =>
      super.copyWith(
              (message) => updates(message as NetworkGetVersionInfoQuery))
          as NetworkGetVersionInfoQuery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkGetVersionInfoQuery create() => NetworkGetVersionInfoQuery._();
  @$core.override
  NetworkGetVersionInfoQuery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NetworkGetVersionInfoQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NetworkGetVersionInfoQuery>(create);
  static NetworkGetVersionInfoQuery? _defaultInstance;

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
}

/// *
///  A response to a `NetworkGetVersionInfoQuery`.
///
///  This SHALL return `SemanticVersion` information for both Hedera API (HAPI)
///  and Hedera Services.
class NetworkGetVersionInfoResponse extends $pb.GeneratedMessage {
  factory NetworkGetVersionInfoResponse({
    $1.ResponseHeader? header,
    $2.SemanticVersion? hapiProtoVersion,
    $2.SemanticVersion? hederaServicesVersion,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (hapiProtoVersion != null) result.hapiProtoVersion = hapiProtoVersion;
    if (hederaServicesVersion != null)
      result.hederaServicesVersion = hederaServicesVersion;
    return result;
  }

  NetworkGetVersionInfoResponse._();

  factory NetworkGetVersionInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NetworkGetVersionInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NetworkGetVersionInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$1.ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: $1.ResponseHeader.create)
    ..aOM<$2.SemanticVersion>(2, _omitFieldNames ? '' : 'hapiProtoVersion',
        protoName: 'hapiProtoVersion', subBuilder: $2.SemanticVersion.create)
    ..aOM<$2.SemanticVersion>(3, _omitFieldNames ? '' : 'hederaServicesVersion',
        protoName: 'hederaServicesVersion',
        subBuilder: $2.SemanticVersion.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkGetVersionInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkGetVersionInfoResponse copyWith(
          void Function(NetworkGetVersionInfoResponse) updates) =>
      super.copyWith(
              (message) => updates(message as NetworkGetVersionInfoResponse))
          as NetworkGetVersionInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkGetVersionInfoResponse create() =>
      NetworkGetVersionInfoResponse._();
  @$core.override
  NetworkGetVersionInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NetworkGetVersionInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NetworkGetVersionInfoResponse>(create);
  static NetworkGetVersionInfoResponse? _defaultInstance;

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
  ///  An API version.
  ///  <p>
  ///  This SHALL be the current Hedera API (HAPI) protobuf message version
  ///  accepted by the network.
  @$pb.TagNumber(2)
  $2.SemanticVersion get hapiProtoVersion => $_getN(1);
  @$pb.TagNumber(2)
  set hapiProtoVersion($2.SemanticVersion value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasHapiProtoVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearHapiProtoVersion() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.SemanticVersion ensureHapiProtoVersion() => $_ensure(1);

  /// *
  ///  A Services version.
  ///  <p>
  ///  This SHALL be the current version of the Hedera Services software
  ///  operating the network.
  @$pb.TagNumber(3)
  $2.SemanticVersion get hederaServicesVersion => $_getN(2);
  @$pb.TagNumber(3)
  set hederaServicesVersion($2.SemanticVersion value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasHederaServicesVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearHederaServicesVersion() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.SemanticVersion ensureHederaServicesVersion() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
