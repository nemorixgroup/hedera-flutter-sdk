// This is a generated file - do not edit.
//
// Generated from token_unfreeze_account.proto.

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
///  Resume transfers of a token type for an account.<br/>
///  This releases previously frozen assets of one account with respect to
///  one token type. Once unfrozen, that account can once again send or
///  receive tokens of the identified type.
///
///  The token MUST have a `freeze_key` set and that key MUST NOT
///  be an empty `KeyList`.<br/>
///  The token `freeze_key` MUST sign this transaction.<br/>
///  The identified token MUST exist, MUST NOT be deleted, MUST NOT be paused,
///  and MUST NOT be expired.<br/>
///  The identified account MUST exist, MUST NOT be deleted, and
///  MUST NOT be expired.<br/>
///  If the identified account is not frozen with respect to the identified
///  token, the transaction SHALL succeed, but no change SHALL be made.<br/>
///  An association between the identified account and the identified
///  token MUST exist.
///
///  ### Block Stream Effects
///  None
class TokenUnfreezeAccountTransactionBody extends $pb.GeneratedMessage {
  factory TokenUnfreezeAccountTransactionBody({
    $0.TokenID? token,
    $0.AccountID? account,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (account != null) result.account = account;
    return result;
  }

  TokenUnfreezeAccountTransactionBody._();

  factory TokenUnfreezeAccountTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenUnfreezeAccountTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenUnfreezeAccountTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: $0.TokenID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'account',
        subBuilder: $0.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenUnfreezeAccountTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenUnfreezeAccountTransactionBody copyWith(
          void Function(TokenUnfreezeAccountTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as TokenUnfreezeAccountTransactionBody))
          as TokenUnfreezeAccountTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenUnfreezeAccountTransactionBody create() =>
      TokenUnfreezeAccountTransactionBody._();
  @$core.override
  TokenUnfreezeAccountTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenUnfreezeAccountTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          TokenUnfreezeAccountTransactionBody>(create);
  static TokenUnfreezeAccountTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This SHALL identify the token type to "unfreeze".<br/>
  ///  The identified token MUST exist, MUST NOT be deleted, and MUST be
  ///  associated to the identified account.
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
  ///  This shall identify the account to "unfreeze".<br/>
  ///  The identified account MUST exist, MUST NOT be deleted, MUST NOT be
  ///  expired, and MUST be associated to the identified token.<br/>
  ///  The identified account SHOULD be "frozen" with respect to the
  ///  identified token.
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
