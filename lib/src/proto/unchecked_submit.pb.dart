// This is a generated file - do not edit.
//
// Generated from unchecked_submit.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Submit an arbitrary (serialized) Transaction to the network
///  without pre-check.
///
///  This transaction SHALL require `superuser` privileges
///  (e.g. the `treasury` or `systemAdmin` accounts).
@$core.Deprecated('This message is deprecated')
class UncheckedSubmitBody extends $pb.GeneratedMessage {
  factory UncheckedSubmitBody({
    $core.List<$core.int>? transactionBytes,
  }) {
    final result = create();
    if (transactionBytes != null) result.transactionBytes = transactionBytes;
    return result;
  }

  UncheckedSubmitBody._();

  factory UncheckedSubmitBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UncheckedSubmitBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UncheckedSubmitBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'transactionBytes', $pb.PbFieldType.OY,
        protoName: 'transactionBytes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UncheckedSubmitBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UncheckedSubmitBody copyWith(void Function(UncheckedSubmitBody) updates) =>
      super.copyWith((message) => updates(message as UncheckedSubmitBody))
          as UncheckedSubmitBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UncheckedSubmitBody create() => UncheckedSubmitBody._();
  @$core.override
  UncheckedSubmitBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UncheckedSubmitBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UncheckedSubmitBody>(create);
  static UncheckedSubmitBody? _defaultInstance;

  /// *
  ///  The serialized bytes of a `Transaction`.
  ///  <p>
  ///  This transaction SHALL be deserialized and submitted for consensus
  ///  with no further validation.<br/>
  ///  Specifically, the transaction may violate basic limits and
  ///  constraints such as size limits, minimum or maximum values,
  ///  valid start time, fee calculations, etc...
  @$pb.TagNumber(1)
  $core.List<$core.int> get transactionBytes => $_getN(0);
  @$pb.TagNumber(1)
  set transactionBytes($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTransactionBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionBytes() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
