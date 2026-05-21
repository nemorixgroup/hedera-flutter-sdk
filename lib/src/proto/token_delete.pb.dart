// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from token_delete.proto.

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
///  Mark a token as deleted.<br/>
///  A deleted token remains present in the network state, but is no longer
///  active, cannot be held in a balance, and all operations on that token
///  fail. A deleted token is removed from network state when it expires.
///
///  #### Operations on a deleted token
///  All operations on a deleted token SHALL fail with a
///  status code `TOKEN_WAS_DELETED`.<br/>
///  Any attempt to transfer a deleted token between accounts SHALL fail with
///  a status code `TOKEN_WAS_DELETED`.
///
///  > QUESTIONS
///  >> What happens to existing balances/NFTs?
///  >> Are these removed; are they stuck on the accounts?
///  >
///  >> If balances/NFTs remain, can a `tokenReject` remove them?
///
///  #### Requirements
///  The `admin_key` for the token MUST be set, and MUST
///  sign this transaction.<br/>
///  If the `admin_key` for the token is not set, this transaction SHALL
///  fail with a status code `TOKEN_IS_IMMUTABlE`.
///
///  ### Block Stream Effects
///  None
class TokenDeleteTransactionBody extends $pb.GeneratedMessage {
  factory TokenDeleteTransactionBody({
    $0.TokenID? token,
  }) {
    final result = create();
    if (token != null) result.token = token;
    return result;
  }

  TokenDeleteTransactionBody._();

  factory TokenDeleteTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenDeleteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenDeleteTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: $0.TokenID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenDeleteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenDeleteTransactionBody copyWith(
          void Function(TokenDeleteTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenDeleteTransactionBody))
          as TokenDeleteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenDeleteTransactionBody create() => TokenDeleteTransactionBody._();
  @$core.override
  TokenDeleteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenDeleteTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenDeleteTransactionBody>(create);
  static TokenDeleteTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This SHALL identify the token type to delete.<br/>
  ///  The identified token MUST exist, and MUST NOT be deleted.
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
