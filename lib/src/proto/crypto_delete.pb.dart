// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from crypto_delete.proto.

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
///  Delete an account.<br/>
///  This will mark an account deleted, and transfer all tokens to a "sweep"
///  account.
///
///  A deleted account SHALL NOT hold a balance in any token type.<br/>
///  A deleted account SHALL remain in state until it expires.<br/>
///  Transfers that would increase the balance of a deleted account
///  SHALL fail.<br/>
///  A deleted account MAY be subject of a `cryptoUpdate` transaction to extend
///  its expiration.<br/>
///  When a deleted account expires it SHALL be removed entirely, and SHALL NOT
///  be archived.
///
///  ### Block Stream Effects
///  None
class CryptoDeleteTransactionBody extends $pb.GeneratedMessage {
  factory CryptoDeleteTransactionBody({
    $0.AccountID? transferAccountID,
    $0.AccountID? deleteAccountID,
  }) {
    final result = create();
    if (transferAccountID != null) result.transferAccountID = transferAccountID;
    if (deleteAccountID != null) result.deleteAccountID = deleteAccountID;
    return result;
  }

  CryptoDeleteTransactionBody._();

  factory CryptoDeleteTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoDeleteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoDeleteTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.AccountID>(1, _omitFieldNames ? '' : 'transferAccountID',
        protoName: 'transferAccountID', subBuilder: $0.AccountID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'deleteAccountID',
        protoName: 'deleteAccountID', subBuilder: $0.AccountID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoDeleteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoDeleteTransactionBody copyWith(
          void Function(CryptoDeleteTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as CryptoDeleteTransactionBody))
          as CryptoDeleteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoDeleteTransactionBody create() =>
      CryptoDeleteTransactionBody._();
  @$core.override
  CryptoDeleteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoDeleteTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoDeleteTransactionBody>(create);
  static CryptoDeleteTransactionBody? _defaultInstance;

  /// *
  ///  An account identifier.
  ///  <p>
  ///  The identified account SHALL receive all tokens, token balances,
  ///  and non-fungible/unique from the deleted account.<br/>
  ///  The identified account MUST sign this transaction.<br/>
  ///  If not set, the account to be deleted MUST NOT have a balance in any
  ///  token, a balance in HBAR, or hold any NFT.
  @$pb.TagNumber(1)
  $0.AccountID get transferAccountID => $_getN(0);
  @$pb.TagNumber(1)
  set transferAccountID($0.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTransferAccountID() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransferAccountID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.AccountID ensureTransferAccountID() => $_ensure(0);

  /// *
  ///  An account identifier.
  ///  <p>
  ///  This account SHALL be deleted if this transaction succeeds.<br/>
  ///  This account SHOULD NOT hold any balance other than HBAR.<br/>
  ///  If this account _does_ hold balances, the `transferAccountID` value
  ///  MUST be set to a valid transfer account.<br/>
  ///  This account MUST sign this transaction.<br/>
  ///  This field MUST be set to a valid account identifier.
  @$pb.TagNumber(2)
  $0.AccountID get deleteAccountID => $_getN(1);
  @$pb.TagNumber(2)
  set deleteAccountID($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDeleteAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureDeleteAccountID() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
