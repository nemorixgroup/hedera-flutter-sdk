// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from token_update_nfts.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $1;

import 'basic_types.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Modify the metadata field for an individual non-fungible/unique token (NFT).
///
///  Updating the metadata of an NFT SHALL NOT affect ownership or
///  the ability to transfer that NFT.<br/>
///  This transaction SHALL affect only the specific serial numbered tokens
///  identified.
///  This transaction SHALL modify individual token metadata.<br/>
///  This transaction MUST be signed by the token `metadata_key`.<br/>
///  The token `metadata_key` MUST be a valid `Key`.<br/>
///  The token `metadata_key` MUST NOT be an empty `KeyList`.
///
///  ### Block Stream Effects
///  None
class TokenUpdateNftsTransactionBody extends $pb.GeneratedMessage {
  factory TokenUpdateNftsTransactionBody({
    $0.TokenID? token,
    $core.Iterable<$fixnum.Int64>? serialNumbers,
    $1.BytesValue? metadata,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (serialNumbers != null) result.serialNumbers.addAll(serialNumbers);
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  TokenUpdateNftsTransactionBody._();

  factory TokenUpdateNftsTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenUpdateNftsTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenUpdateNftsTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: $0.TokenID.create)
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'serialNumbers', $pb.PbFieldType.K6)
    ..aOM<$1.BytesValue>(3, _omitFieldNames ? '' : 'metadata',
        subBuilder: $1.BytesValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenUpdateNftsTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenUpdateNftsTransactionBody copyWith(
          void Function(TokenUpdateNftsTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenUpdateNftsTransactionBody))
          as TokenUpdateNftsTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenUpdateNftsTransactionBody create() =>
      TokenUpdateNftsTransactionBody._();
  @$core.override
  TokenUpdateNftsTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenUpdateNftsTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenUpdateNftsTransactionBody>(create);
  static TokenUpdateNftsTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.<br/>
  ///  This is the token type (i.e. collection) for which to update NFTs.
  ///  <p>
  ///  This field is REQUIRED.<br/>
  ///  The identified token MUST exist, MUST NOT be paused, MUST have the type
  ///  non-fungible/unique, and MUST have a valid `metadata_key`.
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
  ///  A list of serial numbers to be updated.
  ///  <p>
  ///  This field is REQUIRED.<br/>
  ///  This list MUST have at least one(1) entry.<br/>
  ///  This list MUST NOT have more than ten(10) entries.
  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get serialNumbers => $_getList(1);

  /// *
  ///  A new value for the metadata.
  ///  <p>
  ///  If this field is not set, the metadata SHALL NOT change.<br/>
  ///  This value, if set, MUST NOT exceed 100 bytes.
  @$pb.TagNumber(3)
  $1.BytesValue get metadata => $_getN(2);
  @$pb.TagNumber(3)
  set metadata($1.BytesValue value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMetadata() => $_has(2);
  @$pb.TagNumber(3)
  void clearMetadata() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.BytesValue ensureMetadata() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
