// This is a generated file - do not edit.
//
// Generated from token_unpause.proto.

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
///  Resume transaction activity for a token.
///
///  This transaction MUST be signed by the Token `pause_key`.<br/>
///  The `token` identified MUST exist, and MUST NOT be deleted.<br/>
///  The `token` identified MAY not be paused; if the token is not paused,
///  this transaction SHALL have no effect.
///  The `token` identified MUST have a `pause_key` set, the `pause_key` MUST be
///  a valid `Key`, and the `pause_key` MUST NOT be an empty `KeyList`.<br/>
///  An `unpaused` token MAY be transferred or otherwise modified.
///
///  ### Block Stream Effects
///  None
class TokenUnpauseTransactionBody extends $pb.GeneratedMessage {
  factory TokenUnpauseTransactionBody({
    $0.TokenID? token,
  }) {
    final result = create();
    if (token != null) result.token = token;
    return result;
  }

  TokenUnpauseTransactionBody._();

  factory TokenUnpauseTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenUnpauseTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenUnpauseTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: $0.TokenID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenUnpauseTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenUnpauseTransactionBody copyWith(
          void Function(TokenUnpauseTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenUnpauseTransactionBody))
          as TokenUnpauseTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenUnpauseTransactionBody create() =>
      TokenUnpauseTransactionBody._();
  @$core.override
  TokenUnpauseTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenUnpauseTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenUnpauseTransactionBody>(create);
  static TokenUnpauseTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  The identified token SHALL be "unpaused". Subsequent transactions
  ///  involving that token MAY succeed.
  @$pb.TagNumber(1)
  $0.TokenID get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($0.TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TokenID ensureToken() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
