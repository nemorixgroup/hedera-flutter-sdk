// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from node_update.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $1;

import 'basic_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Transaction body to modify address book node attributes.
///
///  - This transaction SHALL enable the node operator, as identified by the
///    `admin_key`, to modify operational attributes of the node.
///  - This transaction MUST be signed by the active `admin_key` for the node.
///  - If this transaction sets a new value for the `admin_key`, then both the
///    current `admin_key`, and the new `admin_key` MUST sign this transaction.
///  - This transaction SHALL NOT change any field that is not set (is null) in
///    this transaction body.
///  - This SHALL create a pending update to the node, but the change SHALL NOT
///    be immediately applied to the active configuration.
///  - All pending node updates SHALL be applied to the active network
///    configuration during the next `freeze` transaction with the field
///    `freeze_type` set to `PREPARE_UPGRADE`.
///
///  ### Block Stream Effects
///  None.
class NodeUpdateTransactionBody extends $pb.GeneratedMessage {
  factory NodeUpdateTransactionBody({
    $fixnum.Int64? nodeId,
    $0.AccountID? accountId,
    $1.StringValue? description,
    $core.Iterable<$0.ServiceEndpoint>? gossipEndpoint,
    $core.Iterable<$0.ServiceEndpoint>? serviceEndpoint,
    $1.BytesValue? gossipCaCertificate,
    $1.BytesValue? grpcCertificateHash,
    $0.Key? adminKey,
    $1.BoolValue? declineReward,
    $0.ServiceEndpoint? grpcProxyEndpoint,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (accountId != null) result.accountId = accountId;
    if (description != null) result.description = description;
    if (gossipEndpoint != null) result.gossipEndpoint.addAll(gossipEndpoint);
    if (serviceEndpoint != null) result.serviceEndpoint.addAll(serviceEndpoint);
    if (gossipCaCertificate != null)
      result.gossipCaCertificate = gossipCaCertificate;
    if (grpcCertificateHash != null)
      result.grpcCertificateHash = grpcCertificateHash;
    if (adminKey != null) result.adminKey = adminKey;
    if (declineReward != null) result.declineReward = declineReward;
    if (grpcProxyEndpoint != null) result.grpcProxyEndpoint = grpcProxyEndpoint;
    return result;
  }

  NodeUpdateTransactionBody._();

  factory NodeUpdateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeUpdateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeUpdateTransactionBody',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.addressbook'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'nodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'accountId',
        subBuilder: $0.AccountID.create)
    ..aOM<$1.StringValue>(3, _omitFieldNames ? '' : 'description',
        subBuilder: $1.StringValue.create)
    ..pPM<$0.ServiceEndpoint>(4, _omitFieldNames ? '' : 'gossipEndpoint',
        subBuilder: $0.ServiceEndpoint.create)
    ..pPM<$0.ServiceEndpoint>(5, _omitFieldNames ? '' : 'serviceEndpoint',
        subBuilder: $0.ServiceEndpoint.create)
    ..aOM<$1.BytesValue>(6, _omitFieldNames ? '' : 'gossipCaCertificate',
        subBuilder: $1.BytesValue.create)
    ..aOM<$1.BytesValue>(7, _omitFieldNames ? '' : 'grpcCertificateHash',
        subBuilder: $1.BytesValue.create)
    ..aOM<$0.Key>(8, _omitFieldNames ? '' : 'adminKey',
        subBuilder: $0.Key.create)
    ..aOM<$1.BoolValue>(9, _omitFieldNames ? '' : 'declineReward',
        subBuilder: $1.BoolValue.create)
    ..aOM<$0.ServiceEndpoint>(10, _omitFieldNames ? '' : 'grpcProxyEndpoint',
        subBuilder: $0.ServiceEndpoint.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUpdateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUpdateTransactionBody copyWith(
          void Function(NodeUpdateTransactionBody) updates) =>
      super.copyWith((message) => updates(message as NodeUpdateTransactionBody))
          as NodeUpdateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeUpdateTransactionBody create() => NodeUpdateTransactionBody._();
  @$core.override
  NodeUpdateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeUpdateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeUpdateTransactionBody>(create);
  static NodeUpdateTransactionBody? _defaultInstance;

  /// *
  ///  A consensus node identifier in the network state.
  ///  <p>
  ///  The node identified MUST exist in the network address book.<br/>
  ///  The node identified MUST NOT be deleted.<br/>
  ///  This value is REQUIRED.
  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  /// *
  ///  An account identifier.
  ///  <p>
  ///  If set, this SHALL replace the node account identifier.<br/>
  ///  If set, this transaction MUST be signed by the active `key` for _both_
  ///  the current node account _and_ the identified new node account.
  @$pb.TagNumber(2)
  $0.AccountID get accountId => $_getN(1);
  @$pb.TagNumber(2)
  set accountId($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureAccountId() => $_ensure(1);

  /// *
  ///  A short description of the node.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.<br/>
  ///  If set, this value SHALL replace the previous value.
  @$pb.TagNumber(3)
  $1.StringValue get description => $_getN(2);
  @$pb.TagNumber(3)
  set description($1.StringValue value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.StringValue ensureDescription() => $_ensure(2);

  /// *
  ///  A list of service endpoints for gossip.
  ///  <p>
  ///  If set, this list MUST meet the following requirements.
  ///  <hr/>
  ///  These endpoints SHALL represent the published endpoints to which other
  ///  consensus nodes may _gossip_ transactions.<br/>
  ///  These endpoints SHOULD NOT specify both address and DNS name.<br/>
  ///  This list MUST NOT be empty.<br/>
  ///  This list MUST NOT contain more than `10` entries.<br/>
  ///  The first two entries in this list SHALL be the endpoints published to
  ///  all consensus nodes.<br/>
  ///  All other entries SHALL be reserved for future use.
  ///  <p>
  ///  Each network may have additional requirements for these endpoints.
  ///  A client MUST check network-specific documentation for those
  ///  details.<br/>
  ///  <blockquote>Example<blockquote>
  ///  Hedera Mainnet _requires_ that address be specified, and does not
  ///  permit DNS name (FQDN) to be specified.
  ///  </blockquote>
  ///  <blockquote>
  ///  Solo, however, _requires_ DNS name (FQDN) but also permits
  ///  address.
  ///  </blockquote></blockquote>
  ///  <p>
  ///  If set, the new list SHALL replace the existing list.
  @$pb.TagNumber(4)
  $pb.PbList<$0.ServiceEndpoint> get gossipEndpoint => $_getList(3);

  /// *
  ///  A list of service endpoints for gRPC calls.
  ///  <p>
  ///  If set, this list MUST meet the following requirements.
  ///  <hr/>
  ///  These endpoints SHALL represent the published endpoints to which clients
  ///  may submit transactions.<br/>
  ///  These endpoints SHOULD specify address and port.<br/>
  ///  These endpoints MAY specify a DNS name.<br/>
  ///  These endpoints SHOULD NOT specify both address and DNS name.<br/>
  ///  This list MUST NOT be empty.<br/>
  ///  This list MUST NOT contain more than `8` entries.
  ///  <p>
  ///  Each network may have additional requirements for these endpoints.
  ///  A client MUST check network-specific documentation for those
  ///  details.
  ///  <p>
  ///  If set, the new list SHALL replace the existing list.
  @$pb.TagNumber(5)
  $pb.PbList<$0.ServiceEndpoint> get serviceEndpoint => $_getList(4);

  /// *
  ///  A certificate used to sign gossip events.
  ///  <p>
  ///  This value MUST be a certificate of a type permitted for gossip
  ///  signatures.<br/>
  ///  This value MUST be the DER encoding of the certificate presented.
  ///  <p>
  ///  If set, the new value SHALL replace the existing bytes value.
  @$pb.TagNumber(6)
  $1.BytesValue get gossipCaCertificate => $_getN(5);
  @$pb.TagNumber(6)
  set gossipCaCertificate($1.BytesValue value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasGossipCaCertificate() => $_has(5);
  @$pb.TagNumber(6)
  void clearGossipCaCertificate() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.BytesValue ensureGossipCaCertificate() => $_ensure(5);

  /// *
  ///  A hash of the node gRPC TLS certificate.
  ///  <p>
  ///  This value MAY be used to verify the certificate presented by the node
  ///  during TLS negotiation for gRPC.<br/>
  ///  This value MUST be a SHA-384 hash.<br/>
  ///  The TLS certificate to be hashed MUST first be in PEM format and MUST be
  ///  encoded with UTF-8 NFKD encoding to a stream of bytes provided to
  ///  the hash algorithm.<br/>
  ///  <p>
  ///  If set, the new value SHALL replace the existing hash value.
  @$pb.TagNumber(7)
  $1.BytesValue get grpcCertificateHash => $_getN(6);
  @$pb.TagNumber(7)
  set grpcCertificateHash($1.BytesValue value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasGrpcCertificateHash() => $_has(6);
  @$pb.TagNumber(7)
  void clearGrpcCertificateHash() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.BytesValue ensureGrpcCertificateHash() => $_ensure(6);

  /// *
  ///  An administrative key controlled by the node operator.
  ///  <p>
  ///  This field is OPTIONAL.<br/>
  ///  If set, this key MUST sign this transaction.<br/>
  ///  If set, this key MUST sign each subsequent transaction to
  ///  update this node.<br/>
  ///  If set, this field MUST contain a valid `Key` value.<br/>
  ///  If set, this field MUST NOT be set to an empty `KeyList`.
  @$pb.TagNumber(8)
  $0.Key get adminKey => $_getN(7);
  @$pb.TagNumber(8)
  set adminKey($0.Key value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAdminKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearAdminKey() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Key ensureAdminKey() => $_ensure(7);

  /// *
  ///  A boolean indicating that this node has chosen to decline node rewards
  ///  distributed at the end of staking period.
  ///  <p>
  ///  This node SHALL NOT receive reward if this value is set, and `true`.
  @$pb.TagNumber(9)
  $1.BoolValue get declineReward => $_getN(8);
  @$pb.TagNumber(9)
  set declineReward($1.BoolValue value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDeclineReward() => $_has(8);
  @$pb.TagNumber(9)
  void clearDeclineReward() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.BoolValue ensureDeclineReward() => $_ensure(8);

  /// *
  ///  A web proxy for gRPC from non-gRPC clients.
  ///  <p>
  ///  This endpoint SHALL be a Fully Qualified Domain Name (FQDN) using the HTTPS
  ///  protocol, and SHALL support gRPC-Web for use by browser-based clients.<br/>
  ///  This endpoint MUST be signed by a trusted certificate authority.<br/>
  ///  This endpoint MUST use a valid port and SHALL be reachable over TLS.<br/>
  ///  This field MAY be omitted if the node does not support gRPC-Web access.<br/>
  ///  This field MUST be updated if the gRPC-Web endpoint changes.<br/>
  ///  This field SHALL enable frontend clients to avoid hard-coded proxy endpoints.
  @$pb.TagNumber(10)
  $0.ServiceEndpoint get grpcProxyEndpoint => $_getN(9);
  @$pb.TagNumber(10)
  set grpcProxyEndpoint($0.ServiceEndpoint value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasGrpcProxyEndpoint() => $_has(9);
  @$pb.TagNumber(10)
  void clearGrpcProxyEndpoint() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.ServiceEndpoint ensureGrpcProxyEndpoint() => $_ensure(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
