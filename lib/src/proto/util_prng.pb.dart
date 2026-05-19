// This is a generated file - do not edit.
//
// Generated from util_prng.proto.

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
///  Request a deterministic pseudo-random number.
///
///  The value returned SHALL be deterministic, but not easily predicted.
///  The value returned SHALL NOT be suitable for cryptographic use.
///
///  ### Block Stream Effects
///  The result of this transaction is reported in a `UtilPrngOutput` message.
class UtilPrngTransactionBody extends $pb.GeneratedMessage {
  factory UtilPrngTransactionBody({
    $core.int? range,
  }) {
    final result = create();
    if (range != null) result.range = range;
    return result;
  }

  UtilPrngTransactionBody._();

  factory UtilPrngTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UtilPrngTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UtilPrngTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'range')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UtilPrngTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UtilPrngTransactionBody copyWith(
          void Function(UtilPrngTransactionBody) updates) =>
      super.copyWith((message) => updates(message as UtilPrngTransactionBody))
          as UtilPrngTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UtilPrngTransactionBody create() => UtilPrngTransactionBody._();
  @$core.override
  UtilPrngTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UtilPrngTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UtilPrngTransactionBody>(create);
  static UtilPrngTransactionBody? _defaultInstance;

  /// *
  ///  A range for the requested value.
  ///  <p>
  ///  If this is greater than `0`, the service SHALL return a 32-bit
  ///  pseudo-random number between 0 and the value provided in the
  ///  transaction record.<br/>
  ///  If this is unset, zero, or negative; the service SHALL return a
  ///  384-bit unsigned pseudo-random number in the record.
  @$pb.TagNumber(1)
  $core.int get range => $_getIZ(0);
  @$pb.TagNumber(1)
  set range($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearRange() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
