// This is a generated file - do not edit.
//
// Generated from query_header.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'query_header.pbenum.dart';
import 'transaction.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'query_header.pbenum.dart';

/// *
///  A standard query header.<br/>
///  Each query from the client to the node must contain a QueryHeader, which
///  specifies the desired response type, and includes a payment transaction
///  that will compensate the network for responding to the query.
///  The payment may be blank if the query is free.
///
///  The payment transaction MUST be a `cryptoTransfer` from the payer account
///  to the account of the node where the query is submitted.<br/>
///  If the payment is sufficient, the network SHALL respond with the response
///  type requested.<br/>
///  If the response type is `COST_ANSWER` the payment MUST be unset.
///  A state proof SHALL be available for some types of information.<br/>
///  A state proof SHALL be available for a Record, but not a receipt, and the
///  response entry for each supported "get info" query.
class QueryHeader extends $pb.GeneratedMessage {
  factory QueryHeader({
    $0.Transaction? payment,
    ResponseType? responseType,
  }) {
    final result = create();
    if (payment != null) result.payment = payment;
    if (responseType != null) result.responseType = responseType;
    return result;
  }

  QueryHeader._();

  factory QueryHeader.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QueryHeader.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryHeader',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.Transaction>(1, _omitFieldNames ? '' : 'payment',
        subBuilder: $0.Transaction.create)
    ..aE<ResponseType>(2, _omitFieldNames ? '' : 'responseType',
        protoName: 'responseType', enumValues: ResponseType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryHeader clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryHeader copyWith(void Function(QueryHeader) updates) =>
      super.copyWith((message) => updates(message as QueryHeader))
          as QueryHeader;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryHeader create() => QueryHeader._();
  @$core.override
  QueryHeader createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QueryHeader getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryHeader>(create);
  static QueryHeader? _defaultInstance;

  /// *
  ///  A signed `CryptoTransferTransaction` to pay query fees.
  ///  <p>
  ///  This MUST transfer HBAR from the "payer" to the responding node account
  ///  sufficient to pay the query fees.
  @$pb.TagNumber(1)
  $0.Transaction get payment => $_getN(0);
  @$pb.TagNumber(1)
  set payment($0.Transaction value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPayment() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayment() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Transaction ensurePayment() => $_ensure(0);

  /// *
  ///  A type of query response requested.
  @$pb.TagNumber(2)
  ResponseType get responseType => $_getN(1);
  @$pb.TagNumber(2)
  set responseType(ResponseType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasResponseType() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseType() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
