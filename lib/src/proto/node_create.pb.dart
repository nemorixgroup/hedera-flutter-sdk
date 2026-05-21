// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from node_create.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A transaction body to add a new consensus node to the network address book.
///
///  This transaction body SHALL be considered a "privileged transaction".
///
///  This message supports a transaction to create a new node in the network
///  address book. The transaction, once complete, enables a new consensus node
///  to join the network, and requires governing council authorization.
///
///  - A `NodeCreateTransactionBody` MUST be signed by the `Key` assigned to the
///    `admin_key` field and one of those keys: treasure account (2) key,
///    systemAdmin(50) key, or addressBookAdmin(55) key.
///  - The newly created node information SHALL be added to the network address
///    book information in the network state.
///  - The new entry SHALL be created in "state" but SHALL NOT participate in
///    network consensus and SHALL NOT be present in network "configuration"
///    until the next "upgrade" transaction (as noted below).
///  - All new address book entries SHALL be added to the active network
///    configuration during the next `freeze` transaction with the field
///    `freeze_type` set to `PREPARE_UPGRADE`.
///
///  ### Block Stream Effects
///  Upon completion the newly assigned `node_id` SHALL be recorded in
///  the transaction receipt.<br/>
///  This value SHALL be the next available node identifier.<br/>
///  Node identifiers SHALL NOT be reused.
class NodeCreateTransactionBody extends $pb.GeneratedMessage {
  factory NodeCreateTransactionBody({
    $0.AccountID? accountId,
    $core.String? description,
    $core.Iterable<$0.ServiceEndpoint>? gossipEndpoint,
    $core.Iterable<$0.ServiceEndpoint>? serviceEndpoint,
    $core.List<$core.int>? gossipCaCertificate,
    $core.List<$core.int>? grpcCertificateHash,
    $0.Key? adminKey,
    $core.bool? declineReward,
    $0.ServiceEndpoint? grpcProxyEndpoint,
  }) {
    final result = create();
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

  NodeCreateTransactionBody._();

  factory NodeCreateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeCreateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeCreateTransactionBody',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.addressbook'),
      createEmptyInstance: create)
    ..aOM<$0.AccountID>(1, _omitFieldNames ? '' : 'accountId',
        subBuilder: $0.AccountID.create)
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..pPM<$0.ServiceEndpoint>(3, _omitFieldNames ? '' : 'gossipEndpoint',
        subBuilder: $0.ServiceEndpoint.create)
    ..pPM<$0.ServiceEndpoint>(4, _omitFieldNames ? '' : 'serviceEndpoint',
        subBuilder: $0.ServiceEndpoint.create)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'gossipCaCertificate', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'grpcCertificateHash', $pb.PbFieldType.OY)
    ..aOM<$0.Key>(7, _omitFieldNames ? '' : 'adminKey',
        subBuilder: $0.Key.create)
    ..aOB(8, _omitFieldNames ? '' : 'declineReward')
    ..aOM<$0.ServiceEndpoint>(9, _omitFieldNames ? '' : 'grpcProxyEndpoint',
        subBuilder: $0.ServiceEndpoint.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeCreateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeCreateTransactionBody copyWith(
          void Function(NodeCreateTransactionBody) updates) =>
      super.copyWith((message) => updates(message as NodeCreateTransactionBody))
          as NodeCreateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeCreateTransactionBody create() => NodeCreateTransactionBody._();
  @$core.override
  NodeCreateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeCreateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeCreateTransactionBody>(create);
  static NodeCreateTransactionBody? _defaultInstance;

  /// *
  ///  A Node account identifier.
  ///  <p>
  ///  This account identifier MUST be in the "account number" form.<br/>
  ///  This account identifier MUST NOT use the alias field.<br/>
  ///  If the identified account does not exist, this transaction SHALL fail.<br/>
  ///  Multiple nodes MAY share the same node account.<br/>
  ///  This field is REQUIRED.
  @$pb.TagNumber(1)
  $0.AccountID get accountId => $_getN(0);
  @$pb.TagNumber(1)
  set accountId($0.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.AccountID ensureAccountId() => $_ensure(0);

  /// *
  ///  A short description of the node.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.<br/>
  ///  This field is OPTIONAL.
  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  /// *
  ///  A list of service endpoints for gossip.
  ///  <p>
  ///  These endpoints SHALL represent the published endpoints to which other
  ///  consensus nodes may _gossip_ transactions.<br/>
  ///  These endpoints MUST specify a port.<br/>
  ///  This list MUST NOT be empty.<br/>
  ///  This list MUST NOT contain more than `10` entries.<br/>
  ///  The first two entries in this list SHALL be the endpoints published to
  ///  all consensus nodes.<br/>
  ///  All other entries SHALL be reserved for future use.
  ///  <p>
  ///  Each network may have additional requirements for these endpoints.
  ///  A client MUST check network-specific documentation for those
  ///  details.<br/>
  ///  If the network configuration value `gossipFqdnRestricted` is set, then
  ///  all endpoints in this list MUST supply only IP address.<br/>
  ///  If the network configuration value `gossipFqdnRestricted` is _not_ set,
  ///  then endpoints in this list MAY supply either IP address or FQDN, but
  ///  MUST NOT supply both values for the same endpoint.
  @$pb.TagNumber(3)
  $pb.PbList<$0.ServiceEndpoint> get gossipEndpoint => $_getList(2);

  /// *
  ///  A list of service endpoints for gRPC calls.
  ///  <p>
  ///  These endpoints SHALL represent the published gRPC endpoints to which
  ///  clients may submit transactions.<br/>
  ///  These endpoints MUST specify a port.<br/>
  ///  Endpoints in this list MAY supply either IP address or FQDN, but MUST
  ///  NOT supply both values for the same endpoint.<br/>
  ///  This list MUST NOT be empty.<br/>
  ///  This list MUST NOT contain more than `8` entries.
  @$pb.TagNumber(4)
  $pb.PbList<$0.ServiceEndpoint> get serviceEndpoint => $_getList(3);

  /// *
  ///  A certificate used to sign gossip events.
  ///  <p>
  ///  This value MUST be a certificate of a type permitted for gossip
  ///  signatures.<br/>
  ///  This value MUST be the DER encoding of the certificate presented.<br/>
  ///  This field is REQUIRED and MUST NOT be empty.
  @$pb.TagNumber(5)
  $core.List<$core.int> get gossipCaCertificate => $_getN(4);
  @$pb.TagNumber(5)
  set gossipCaCertificate($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGossipCaCertificate() => $_has(4);
  @$pb.TagNumber(5)
  void clearGossipCaCertificate() => $_clearField(5);

  /// *
  ///  A hash of the node gRPC TLS certificate.
  ///  <p>
  ///  This value MAY be used to verify the certificate presented by the node
  ///  during TLS negotiation for gRPC.<br/>
  ///  This value MUST be a SHA-384 hash.<br/>
  ///  The TLS certificate to be hashed MUST first be in PEM format and MUST be
  ///  encoded with UTF-8 NFKD encoding to a stream of bytes provided to
  ///  the hash algorithm.<br/>
  ///  This field is OPTIONAL.
  @$pb.TagNumber(6)
  $core.List<$core.int> get grpcCertificateHash => $_getN(5);
  @$pb.TagNumber(6)
  set grpcCertificateHash($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGrpcCertificateHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearGrpcCertificateHash() => $_clearField(6);

  /// *
  ///  An administrative key controlled by the node operator.
  ///  <p>
  ///  This key MUST sign this transaction.<br/>
  ///  This key MUST sign each transaction to update this node.<br/>
  ///  This field MUST contain a valid `Key` value.<br/>
  ///  This field is REQUIRED and MUST NOT be set to an empty `KeyList`.
  @$pb.TagNumber(7)
  $0.Key get adminKey => $_getN(6);
  @$pb.TagNumber(7)
  set adminKey($0.Key value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAdminKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearAdminKey() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Key ensureAdminKey() => $_ensure(6);

  /// *
  ///  A boolean flag indicating whether the node operator declines to receive
  ///  node rewards.
  ///  <p>
  ///  If this flag is set to `true`, the node operator declines to receive
  ///  node rewards.<br/>
  @$pb.TagNumber(8)
  $core.bool get declineReward => $_getBF(7);
  @$pb.TagNumber(8)
  set declineReward($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDeclineReward() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeclineReward() => $_clearField(8);

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
  @$pb.TagNumber(9)
  $0.ServiceEndpoint get grpcProxyEndpoint => $_getN(8);
  @$pb.TagNumber(9)
  set grpcProxyEndpoint($0.ServiceEndpoint value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasGrpcProxyEndpoint() => $_has(8);
  @$pb.TagNumber(9)
  void clearGrpcProxyEndpoint() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.ServiceEndpoint ensureGrpcProxyEndpoint() => $_ensure(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
