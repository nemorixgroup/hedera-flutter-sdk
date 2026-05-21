// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from crypto_delete_allowance.proto.

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
///  Delete one or more allowances.<br/>
///  Given one or more, previously approved, allowances for non-fungible/unique
///  tokens to be transferred by a spending account from an owning account;
///  this transaction removes a specified set of those allowances.
///
///  The owner account for each listed allowance MUST sign this transaction.<br/>
///  Allowances for HBAR cannot be removed with this transaction. The owner
///  account MUST submit a new `cryptoApproveAllowance` transaction with the
///  amount set to `0` to "remove" that allowance.<br/>
///  Allowances for fungible/common tokens cannot be removed with this
///  transaction. The owner account MUST submit a new `cryptoApproveAllowance`
///  transaction with the amount set to `0` to "remove" that allowance.<br/>
///
///  ### Block Stream Effects
///  None
class CryptoDeleteAllowanceTransactionBody extends $pb.GeneratedMessage {
  factory CryptoDeleteAllowanceTransactionBody({
    $core.Iterable<NftRemoveAllowance>? nftAllowances,
  }) {
    final result = create();
    if (nftAllowances != null) result.nftAllowances.addAll(nftAllowances);
    return result;
  }

  CryptoDeleteAllowanceTransactionBody._();

  factory CryptoDeleteAllowanceTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoDeleteAllowanceTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoDeleteAllowanceTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<NftRemoveAllowance>(2, _omitFieldNames ? '' : 'nftAllowances',
        protoName: 'nftAllowances', subBuilder: NftRemoveAllowance.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoDeleteAllowanceTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoDeleteAllowanceTransactionBody copyWith(
          void Function(CryptoDeleteAllowanceTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as CryptoDeleteAllowanceTransactionBody))
          as CryptoDeleteAllowanceTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoDeleteAllowanceTransactionBody create() =>
      CryptoDeleteAllowanceTransactionBody._();
  @$core.override
  CryptoDeleteAllowanceTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoDeleteAllowanceTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CryptoDeleteAllowanceTransactionBody>(create);
  static CryptoDeleteAllowanceTransactionBody? _defaultInstance;

  /// *
  ///  List of non-fungible/unique token allowances to remove.
  ///  <p>
  ///  This list MUST NOT be empty.
  @$pb.TagNumber(2)
  $pb.PbList<NftRemoveAllowance> get nftAllowances => $_getList(0);
}

/// *
///  A single allowance for one non-fungible/unique token.
///  This is specific to removal, and the allowance is identified for that
///  specific purpose.
///
///  All fields in this message are REQUIRED.
///  The `serial_numbers` list MUST NOT be empty.
///  The combination of field values in this message MUST match existing
///  allowances for one or more individual non-fungible/unique tokens.
///
///  ### Removing an allowance that is `approve_for_all`
///  To remove an allowance that has set the `approve_for_all` flag, the
///  `owner` account must first _approve_ a **new** allowance for a specific
///  serial number using a `cryptoApproveAllowance`, and then, if desired,
///  that newly approved allowance to a specific serial number may be
///  deleted in a separate `cryptoDeleteAllowance` transaction.
class NftRemoveAllowance extends $pb.GeneratedMessage {
  factory NftRemoveAllowance({
    $0.TokenID? tokenId,
    $0.AccountID? owner,
    $core.Iterable<$fixnum.Int64>? serialNumbers,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (owner != null) result.owner = owner;
    if (serialNumbers != null) result.serialNumbers.addAll(serialNumbers);
    return result;
  }

  NftRemoveAllowance._();

  factory NftRemoveAllowance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NftRemoveAllowance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NftRemoveAllowance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        subBuilder: $0.TokenID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'owner',
        subBuilder: $0.AccountID.create)
    ..p<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'serialNumbers', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NftRemoveAllowance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NftRemoveAllowance copyWith(void Function(NftRemoveAllowance) updates) =>
      super.copyWith((message) => updates(message as NftRemoveAllowance))
          as NftRemoveAllowance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NftRemoveAllowance create() => NftRemoveAllowance._();
  @$core.override
  NftRemoveAllowance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NftRemoveAllowance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NftRemoveAllowance>(create);
  static NftRemoveAllowance? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This MUST be a valid token identifier for a non-fungible/unique
  ///  token type.
  @$pb.TagNumber(1)
  $0.TokenID get tokenId => $_getN(0);
  @$pb.TagNumber(1)
  set tokenId($0.TokenID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTokenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TokenID ensureTokenId() => $_ensure(0);

  /// *
  ///  An `owner` account identifier.
  ///  <p>
  ///  This account MUST sign the transaction containing this message.
  @$pb.TagNumber(2)
  $0.AccountID get owner => $_getN(1);
  @$pb.TagNumber(2)
  set owner($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureOwner() => $_ensure(1);

  /// *
  ///  The list of serial numbers to remove allowances from.
  ///  <p>
  ///  This list MUST NOT be empty.
  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get serialNumbers => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
