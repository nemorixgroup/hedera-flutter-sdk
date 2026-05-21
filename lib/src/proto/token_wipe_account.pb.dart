// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from token_wipe_account.proto.

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
///  Wipe (administratively burn) tokens held by a non-treasury account.<br/>
///  On success, the requested tokens will be removed from the identified account
///  and the token supply will be reduced by the amount "wiped".
///
///  This transaction MUST be signed by the token `wipe_key`.<br/>
///  The identified token MUST exist, MUST NOT be deleted,
///  and MUST NOT be paused.<br/>
///  The identified token MUST have a valid `Key` set for the `wipe_key` field,
///  and that key MUST NOT be an empty `KeyList`.<br/>
///  The identified account MUST exist, MUST NOT be deleted, MUST be
///  associated to the identified token, MUST NOT be frozen for the identified
///  token, MUST NOT be the token `treasury`, and MUST hold a balance for the
///  token or the specific serial numbers provided.<br/>
///  This transaction SHOULD provide a value for `amount` or `serialNumbers`,
///  but MUST NOT set both fields.
///
///  ### Block Stream Effects
///  The new total supply for the wiped token type SHALL be recorded.
class TokenWipeAccountTransactionBody extends $pb.GeneratedMessage {
  factory TokenWipeAccountTransactionBody({
    $0.TokenID? token,
    $0.AccountID? account,
    $fixnum.Int64? amount,
    $core.Iterable<$fixnum.Int64>? serialNumbers,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (account != null) result.account = account;
    if (amount != null) result.amount = amount;
    if (serialNumbers != null) result.serialNumbers.addAll(serialNumbers);
    return result;
  }

  TokenWipeAccountTransactionBody._();

  factory TokenWipeAccountTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenWipeAccountTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenWipeAccountTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'token',
        subBuilder: $0.TokenID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'account',
        subBuilder: $0.AccountID.create)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'serialNumbers', $pb.PbFieldType.K6,
        protoName: 'serialNumbers')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenWipeAccountTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenWipeAccountTransactionBody copyWith(
          void Function(TokenWipeAccountTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenWipeAccountTransactionBody))
          as TokenWipeAccountTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenWipeAccountTransactionBody create() =>
      TokenWipeAccountTransactionBody._();
  @$core.override
  TokenWipeAccountTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenWipeAccountTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenWipeAccountTransactionBody>(
          create);
  static TokenWipeAccountTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This field is REQUIRED.<br/>
  ///  The identified token MUST exist, MUST NOT be paused, MUST NOT be
  ///  deleted, and MUST NOT be expired.
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
  ///  An account identifier.<br/>
  ///  This identifies the account from which tokens will be wiped.
  ///  <p>
  ///  This field is REQUIRED.<br/>
  ///  The identified account MUST NOT be deleted or expired.<br/>
  ///  If the identified token `kyc_key` is set to a valid key, the
  ///  identified account MUST have "KYC" granted.<br/>
  ///  The identified account MUST NOT be the `treasury` account for the
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

  /// *
  ///  An amount of fungible/common tokens to wipe.
  ///  <p>
  ///  If the identified token is a non-fungible/unique token type,
  ///  this value MUST be exactly zero(`0`).<br/>
  ///  If the identified token type is fungible/common:
  ///  <ul>
  ///    <li>This value SHALL be specified in units of the smallest
  ///        denomination possible for the identified token
  ///        (<tt>10<sup>-decimals</sup></tt> whole tokens).</li>
  ///    <li>This value MUST be strictly less than `Long.MAX_VALUE`.</li>
  ///    <li>This value MUST be less than or equal to the current total
  ///        supply for the identified token.</li>
  ///    <li>This value MUST be less than or equal to the current balance
  ///        held by the identified account.</li>
  ///    <li>This value MAY be zero(`0`).</li>
  ///  </ul>
  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => $_clearField(3);

  /// *
  ///  A list of serial numbers to wipe.<br/>
  ///  The non-fungible/unique tokens with these serial numbers will be
  ///  destroyed and cannot be recovered or reused.
  ///  <p>
  ///  If the identified token type is a fungible/common type, this
  ///  list MUST be empty.<br/>
  ///  If the identified token type is non-fungible/unique:
  ///  <ul>
  ///    <li>This list MUST contain at least one entry if the identified token
  ///        type is non-fungible/unique.>/li>
  ///    <li>This list MUST NOT contain more entries than the current total
  ///        supply for the identified token.</li>
  ///    <li>Every entry in this list MUST be a valid serial number for the
  ///        identified token (i.e. "collection").</li>
  ///    <li>Every entry in this list MUST be owned by the
  ///        identified account</li>
  ///    <li></li>
  ///  </ul>
  ///  This list MUST NOT contain more entries than the network configuration
  ///  value for batch size limit, typically ten(`10`).
  @$pb.TagNumber(4)
  $pb.PbList<$fixnum.Int64> get serialNumbers => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
