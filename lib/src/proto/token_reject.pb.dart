// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from token_reject.proto.

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
///  Reject undesired token(s).<br/>
///  Transfer one or more token balances held by the requesting account to the
///  treasury for each token type.
///
///  Each transfer SHALL be one of the following
///  - A single non-fungible/unique token.
///  - The full balance held for a fungible/common token.
///  A single `tokenReject` transaction SHALL support a maximum
///  of 10 transfers.<br/>
///  A token that is `pause`d MUST NOT be rejected.<br/>
///  If the `owner` account is `frozen` with respect to the identified token(s)
///  the token(s) MUST NOT be rejected.<br/>
///  The `payer` for this transaction, and `owner` if set, SHALL NOT be charged
///  any custom fees or other fees beyond the `tokenReject` transaction fee.
///
///  ### Block Stream Effects
///  - Each successful transfer from `payer` to `treasury` SHALL be recorded in
///    the `token_transfer_list` for the transaction record.
class TokenRejectTransactionBody extends $pb.GeneratedMessage {
  factory TokenRejectTransactionBody({
    $0.AccountID? owner,
    $core.Iterable<TokenReference>? rejections,
  }) {
    final result = create();
    if (owner != null) result.owner = owner;
    if (rejections != null) result.rejections.addAll(rejections);
    return result;
  }

  TokenRejectTransactionBody._();

  factory TokenRejectTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenRejectTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenRejectTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.AccountID>(1, _omitFieldNames ? '' : 'owner',
        subBuilder: $0.AccountID.create)
    ..pPM<TokenReference>(2, _omitFieldNames ? '' : 'rejections',
        subBuilder: TokenReference.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenRejectTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenRejectTransactionBody copyWith(
          void Function(TokenRejectTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenRejectTransactionBody))
          as TokenRejectTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenRejectTransactionBody create() => TokenRejectTransactionBody._();
  @$core.override
  TokenRejectTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenRejectTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenRejectTransactionBody>(create);
  static TokenRejectTransactionBody? _defaultInstance;

  /// *
  ///  An account identifier.<br/>
  ///  This OPTIONAL field identifies the account holding the
  ///  tokens to be rejected.
  ///  <p>
  ///  If set, this account MUST sign this transaction.
  ///  If not set, the `payer` for this transaction SHALL be the effective
  ///  `owner` for this transaction.
  @$pb.TagNumber(1)
  $0.AccountID get owner => $_getN(0);
  @$pb.TagNumber(1)
  set owner($0.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOwner() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwner() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.AccountID ensureOwner() => $_ensure(0);

  /// *
  ///  A list of one or more token rejections.
  ///  <p>
  ///  On success each rejected token serial number or balance SHALL be
  ///  transferred from the requesting account to the treasury account for
  ///  that token type.<br/>
  ///  After rejection the requesting account SHALL continue to be associated
  ///  with the token.<br/>
  ///  If dissociation is desired then a separate `TokenDissociate` transaction
  ///  MUST be submitted to remove the association.<br/>
  ///  This list MUST contain at least one (1) entry and MUST NOT contain more
  ///  than ten (10) entries.
  @$pb.TagNumber(2)
  $pb.PbList<TokenReference> get rejections => $_getList(1);
}

enum TokenReference_TokenIdentifier { fungibleToken, nft, notSet }

/// *
///  A union token identifier.
///
///  Identify a fungible/common token type, or a single
///  non-fungible/unique token serial.
class TokenReference extends $pb.GeneratedMessage {
  factory TokenReference({
    $0.TokenID? fungibleToken,
    $0.NftID? nft,
  }) {
    final result = create();
    if (fungibleToken != null) result.fungibleToken = fungibleToken;
    if (nft != null) result.nft = nft;
    return result;
  }

  TokenReference._();

  factory TokenReference.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenReference.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TokenReference_TokenIdentifier>
      _TokenReference_TokenIdentifierByTag = {
    1: TokenReference_TokenIdentifier.fungibleToken,
    2: TokenReference_TokenIdentifier.nft,
    0: TokenReference_TokenIdentifier.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenReference',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'fungibleToken',
        subBuilder: $0.TokenID.create)
    ..aOM<$0.NftID>(2, _omitFieldNames ? '' : 'nft',
        subBuilder: $0.NftID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenReference clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenReference copyWith(void Function(TokenReference) updates) =>
      super.copyWith((message) => updates(message as TokenReference))
          as TokenReference;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenReference create() => TokenReference._();
  @$core.override
  TokenReference createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenReference getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenReference>(create);
  static TokenReference? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  TokenReference_TokenIdentifier whichTokenIdentifier() =>
      _TokenReference_TokenIdentifierByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearTokenIdentifier() => $_clearField($_whichOneof(0));

  /// *
  ///  A fungible/common token type.
  @$pb.TagNumber(1)
  $0.TokenID get fungibleToken => $_getN(0);
  @$pb.TagNumber(1)
  set fungibleToken($0.TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFungibleToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearFungibleToken() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TokenID ensureFungibleToken() => $_ensure(0);

  /// *
  ///  A single specific serialized non-fungible/unique token.
  @$pb.TagNumber(2)
  $0.NftID get nft => $_getN(1);
  @$pb.TagNumber(2)
  set nft($0.NftID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNft() => $_has(1);
  @$pb.TagNumber(2)
  void clearNft() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.NftID ensureNft() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
