// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from token_burn.proto.

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
///  Burns tokens from the Token's treasury Account.
///
///  The token MUST have a `supply_key` set and that key MUST NOT
///  be an empty `KeyList`.<br/>
///  The token `supply_key` MUST sign this transaction.<br/>
///  This operation SHALL decrease the total supply for the token type by
///  the number of tokens "burned".<br/>
///  The total supply for the token type MUST NOT be reduced below zero (`0`)
///  by this transaction.<br/>
///  The tokens to burn SHALL be deducted from the token treasury account.<br/>
///  If the token is a fungible/common type, the amount MUST be specified.<br/>
///  If the token is a non-fungible/unique type, the specific serial numbers
///  MUST be specified.<br/>
///  The global batch size limit (`tokens.nfts.maxBatchSizeBurn`) SHALL set
///  the maximum number of individual NFT serial numbers permitted in a single
///  `tokenBurn` transaction.
///
///  ### Block Stream Effects
///  None
class TokenBurnTransactionBody extends $pb.GeneratedMessage {
  factory TokenBurnTransactionBody({
    $0.TokenID? token,
    $fixnum.Int64? amount,
    $core.Iterable<$fixnum.Int64>? serialNumbers,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (amount != null) result.amount = amount;
    if (serialNumbers != null) result.serialNumbers.addAll(serialNumbers);
    return result;
  }

  TokenBurnTransactionBody._();

  factory TokenBurnTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenBurnTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenBurnTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: $0.TokenID.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'serialNumbers', $pb.PbFieldType.K6,
        protoName: 'serialNumbers')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenBurnTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenBurnTransactionBody copyWith(
          void Function(TokenBurnTransactionBody) updates) =>
      super.copyWith((message) => updates(message as TokenBurnTransactionBody))
          as TokenBurnTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenBurnTransactionBody create() => TokenBurnTransactionBody._();
  @$core.override
  TokenBurnTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenBurnTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenBurnTransactionBody>(create);
  static TokenBurnTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This SHALL identify the token type to "burn".<br/>
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
  ///  An amount to burn from the Treasury Account.
  ///  <p>
  ///  This is interpreted as an amount in the smallest possible denomination
  ///  for the token (10<sup>-decimals</sup> whole tokens).<br/>
  ///  The balance for the token treasury account MUST contain sufficient
  ///  tokens to complete this transaction with a non-negative balance.<br/>
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
  ///  A list of serial numbers to burn from the Treasury Account.
  ///  <p>
  ///  This list MUST NOT contain more entries than the current limit set by
  ///  the network configuration value `tokens.nfts.maxBatchSizeBurn`.<br/>
  ///  The treasury account for the token MUST hold each unique token
  ///  identified in this list.<br/>
  ///  If this list is not empty, the token MUST be a
  ///  non-fungible/unique type.<br/>
  ///  If this list is empty, the token MUST be a fungible/common type.
  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get serialNumbers => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
