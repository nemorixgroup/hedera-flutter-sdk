// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from token_grant_kyc.proto.

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
///  Grant "Know Your Customer"(KYC) for one account for a single token.
///
///  This transaction MUST be signed by the `kyc_key` for the token.<br/>
///  The identified token MUST have a `kyc_key` set to a valid `Key` value.<br/>
///  The token `kyc_key` MUST NOT be an empty `KeyList`.<br/>
///  The identified token MUST exist and MUST NOT be deleted.<br/>
///  The identified account MUST exist and MUST NOT be deleted.<br/>
///  The identified account MUST have an association to the identified token.<br/>
///  On success the association between the identified account and the identified
///  token SHALL be marked as "KYC granted".
///
///  ### Block Stream Effects
///  None
class TokenGrantKycTransactionBody extends $pb.GeneratedMessage {
  factory TokenGrantKycTransactionBody({
    $0.TokenID? token,
    $0.AccountID? account,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (account != null) result.account = account;
    return result;
  }

  TokenGrantKycTransactionBody._();

  factory TokenGrantKycTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenGrantKycTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenGrantKycTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: $0.TokenID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'account',
        subBuilder: $0.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGrantKycTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGrantKycTransactionBody copyWith(
          void Function(TokenGrantKycTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenGrantKycTransactionBody))
          as TokenGrantKycTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenGrantKycTransactionBody create() =>
      TokenGrantKycTransactionBody._();
  @$core.override
  TokenGrantKycTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenGrantKycTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenGrantKycTransactionBody>(create);
  static TokenGrantKycTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  The identified token SHALL grant "KYC" for the account
  ///  identified by the `account` field.<br/>
  ///  The identified token MUST be associated to the account identified
  ///  by the `account` field.
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

  /// *
  ///  An account identifier.
  ///  <p>
  ///  The token identified by the `token` field SHALL grant "KYC" for the
  ///  identified account.<br/>
  ///  This account MUST be associated to the token identified
  ///  by the `token` field.
  @$pb.TagNumber(2)
  $0.AccountID get account => $_getN(1);
  @$pb.TagNumber(2)
  set account($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureAccount() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
