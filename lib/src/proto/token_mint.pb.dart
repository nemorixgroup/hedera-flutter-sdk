// This is a generated file - do not edit.
//
// Generated from token_mint.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Mint tokens and deliver the new tokens to the token treasury account.
///
///  The token MUST have a `supply_key` set and that key MUST NOT
///  be an empty `KeyList`.<br/>
///  The token `supply_key` MUST sign this transaction.<br/>
///  This operation SHALL increase the total supply for the token type by
///  the number of tokens "minted".<br/>
///  The total supply for the token type MUST NOT be increased above the
///  maximum supply limit (2^63-1) by this transaction.<br/>
///  The tokens minted SHALL be credited to the token treasury account.<br/>
///  If the token is a fungible/common type, the amount MUST be specified.<br/>
///  If the token is a non-fungible/unique type, the metadata bytes for each
///  unique token MUST be specified in the `metadata` list.<br/>
///  Each unique metadata MUST not exceed the global metadata size limit defined
///  by the network configuration value `tokens.maxMetadataBytes`.<br/>
///  The global batch size limit (`tokens.nfts.maxBatchSizeMint`) SHALL set
///  the maximum number of individual NFT metadata permitted in a single
///  `tokenMint` transaction.
///
///  ### Block Stream Effects
///  None
class TokenMintTransactionBody extends $pb.GeneratedMessage {
  factory TokenMintTransactionBody({
    $0.TokenID? token,
    $fixnum.Int64? amount,
    $core.Iterable<$core.List<$core.int>>? metadata,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (amount != null) result.amount = amount;
    if (metadata != null) result.metadata.addAll(metadata);
    return result;
  }

  TokenMintTransactionBody._();

  factory TokenMintTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenMintTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenMintTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: $0.TokenID.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenMintTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenMintTransactionBody copyWith(
          void Function(TokenMintTransactionBody) updates) =>
      super.copyWith((message) => updates(message as TokenMintTransactionBody))
          as TokenMintTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenMintTransactionBody create() => TokenMintTransactionBody._();
  @$core.override
  TokenMintTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenMintTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenMintTransactionBody>(create);
  static TokenMintTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This SHALL identify the token type to "mint".<br/>
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

  /// *
  ///  An amount to mint to the Treasury Account.
  ///  <p>
  ///  This is interpreted as an amount in the smallest possible denomination
  ///  for the token (10<sup>-decimals</sup> whole tokens).<br/>
  ///  The balance for the token treasury account SHALL receive the newly
  ///  minted tokens.<br/>
  ///  If this value is equal to zero (`0`), the token SHOULD be a
  ///  non-fungible/unique type.<br/>
  ///  If this value is non-zero, the token MUST be a fungible/common type.
  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => $_clearField(2);

  /// *
  ///  A list of metadata bytes.<br/>
  ///  <p>
  ///  One non-fungible/unique token SHALL be minted for each entry
  ///  in this list.<br/>
  ///  Each entry in this list MUST NOT be larger than the limit set by the
  ///  current network configuration value `tokens.maxMetadataBytes`.<br/>
  ///  This list MUST NOT contain more entries than the current limit set by
  ///  the network configuration value `tokens.nfts.maxBatchSizeMint`.<br/>
  ///  If this list is not empty, the token MUST be a
  ///  non-fungible/unique type.<br/>
  ///  If this list is empty, the token MUST be a fungible/common type.
  @$pb.TagNumber(3)
  $pb.PbList<$core.List<$core.int>> get metadata => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
