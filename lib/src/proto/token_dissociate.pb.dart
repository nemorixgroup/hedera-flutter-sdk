// This is a generated file - do not edit.
//
// Generated from token_dissociate.proto.

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
///  Dissociate an account from one or more HTS tokens.
///
///  If the identified account is not found,
///  the transaction SHALL return `INVALID_ACCOUNT_ID`.<br/>
///  If the identified account has been deleted,
///  the transaction SHALL return `ACCOUNT_DELETED`.<br/>
///  If any of the identified tokens is not found,
///  the transaction SHALL return `INVALID_TOKEN_REF`.<br/>
///  If any of the identified tokens has been deleted,
///  the transaction SHALL return `TOKEN_WAS_DELETED`.<br/>
///  If an association does not exist for any of the identified tokens,
///  the transaction SHALL return `TOKEN_NOT_ASSOCIATED_TO_ACCOUNT`.<br/>
///  If the identified account has a nonzero balance for any of the identified
///  tokens, and that token is neither deleted nor expired, the
///  transaction SHALL return `TRANSACTION_REQUIRES_ZERO_TOKEN_BALANCES`.<br/>
///  If one of the identified tokens is a fungible/common token that is expired,
///  the account MAY disassociate from that token, even if that token balance is
///  not zero for that account.<br/>
///  If one of the identified tokens is a non-fungible/unique token that is
///  expired, the account MUST NOT disassociate if that account holds any
///  individual NFT of that token. In this situation the transaction SHALL
///  return `TRANSACTION_REQUIRED_ZERO_TOKEN_BALANCES`.<br/>
///  The identified account MUST sign this transaction.
///
///  ### Block Stream Effects
///  None
class TokenDissociateTransactionBody extends $pb.GeneratedMessage {
  factory TokenDissociateTransactionBody({
    $0.AccountID? account,
    $core.Iterable<$0.TokenID>? tokens,
  }) {
    final result = create();
    if (account != null) result.account = account;
    if (tokens != null) result.tokens.addAll(tokens);
    return result;
  }

  TokenDissociateTransactionBody._();

  factory TokenDissociateTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenDissociateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenDissociateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.AccountID>(1, _omitFieldNames ? '' : 'account',
        subBuilder: $0.AccountID.create)
    ..pPM<$0.TokenID>(2, _omitFieldNames ? '' : 'tokens',
        subBuilder: $0.TokenID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenDissociateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenDissociateTransactionBody copyWith(
          void Function(TokenDissociateTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenDissociateTransactionBody))
          as TokenDissociateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenDissociateTransactionBody create() =>
      TokenDissociateTransactionBody._();
  @$core.override
  TokenDissociateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenDissociateTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenDissociateTransactionBody>(create);
  static TokenDissociateTransactionBody? _defaultInstance;

  /// *
  ///  An account identifier.
  ///  <p>
  ///  The identified account SHALL be dissociated from each of the
  ///  tokens identified in the `tokens` field.
  ///  This field is REQUIRED and MUST be a valid account identifier.<br/>
  ///  The identified account MUST exist in state.<br/>
  ///  The identified account MUST NOT be deleted.<br/>
  ///  The identified account MUST NOT be expired.
  @$pb.TagNumber(1)
  $0.AccountID get account => $_getN(0);
  @$pb.TagNumber(1)
  set account($0.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.AccountID ensureAccount() => $_ensure(0);

  /// *
  ///  A list of token identifiers.
  ///  <p>
  ///  Each token identified in this list SHALL be dissociated from
  ///  the account identified in the `account` field.<br/>
  ///  This list MUST NOT be empty.
  ///  Each entry in this list MUST be a valid token identifier.<br/>
  ///  Each entry in this list MUST be currently associated to the
  ///  account identified in `account`.<br/>
  ///  Entries in this list MAY be expired, if the token type is
  ///  fungible/common.<br/>
  ///  Each entry in this list MUST NOT be deleted.
  @$pb.TagNumber(2)
  $pb.PbList<$0.TokenID> get tokens => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
