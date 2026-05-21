// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from node_delete.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A transaction body to delete a node from the network address book.
///
///  - A `NodeDeleteTransactionBody` MUST be signed by one of those keys:
///    adminKey, treasure account (2) key, systemAdmin(50) key, or
///    addressBookAdmin(55) key.
///  - Upon success, the address book entry SHALL enter a "pending delete"
///    state.
///  - All address book entries pending deletion SHALL be removed from the
///    active network configuration during the next `freeze` transaction with
///    the field `freeze_type` set to `PREPARE_UPGRADE`.<br/>
///  - A deleted address book node SHALL be removed entirely from network state.
///  - A deleted address book node identifier SHALL NOT be reused.
///
///  ### Block Stream Effects
///  None.
class NodeDeleteTransactionBody extends $pb.GeneratedMessage {
  factory NodeDeleteTransactionBody({
    $fixnum.Int64? nodeId,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    return result;
  }

  NodeDeleteTransactionBody._();

  factory NodeDeleteTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeDeleteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeDeleteTransactionBody',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.node.addressbook'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'nodeId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeDeleteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeDeleteTransactionBody copyWith(
          void Function(NodeDeleteTransactionBody) updates) =>
      super.copyWith((message) => updates(message as NodeDeleteTransactionBody))
          as NodeDeleteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeDeleteTransactionBody create() => NodeDeleteTransactionBody._();
  @$core.override
  NodeDeleteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeDeleteTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeDeleteTransactionBody>(create);
  static NodeDeleteTransactionBody? _defaultInstance;

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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
