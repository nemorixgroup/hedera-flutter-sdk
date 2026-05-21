// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from crypto_delete_live_hash.proto.

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
///  Delete a specific live hash associated to a given account.
///
///  This transaction MUST be signed by either the key of the associated account,
///  or at least one of the keys listed in the live hash.
///
///  ### Block Stream Effects
///  None
class CryptoDeleteLiveHashTransactionBody extends $pb.GeneratedMessage {
  factory CryptoDeleteLiveHashTransactionBody({
    $0.AccountID? accountOfLiveHash,
    $core.List<$core.int>? liveHashToDelete,
  }) {
    final result = create();
    if (accountOfLiveHash != null) result.accountOfLiveHash = accountOfLiveHash;
    if (liveHashToDelete != null) result.liveHashToDelete = liveHashToDelete;
    return result;
  }

  CryptoDeleteLiveHashTransactionBody._();

  factory CryptoDeleteLiveHashTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoDeleteLiveHashTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoDeleteLiveHashTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.AccountID>(1, _omitFieldNames ? '' : 'accountOfLiveHash',
        protoName: 'accountOfLiveHash', subBuilder: $0.AccountID.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'liveHashToDelete', $pb.PbFieldType.OY,
        protoName: 'liveHashToDelete')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoDeleteLiveHashTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoDeleteLiveHashTransactionBody copyWith(
          void Function(CryptoDeleteLiveHashTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as CryptoDeleteLiveHashTransactionBody))
          as CryptoDeleteLiveHashTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoDeleteLiveHashTransactionBody create() =>
      CryptoDeleteLiveHashTransactionBody._();
  @$core.override
  CryptoDeleteLiveHashTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoDeleteLiveHashTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CryptoDeleteLiveHashTransactionBody>(create);
  static CryptoDeleteLiveHashTransactionBody? _defaultInstance;

  /// *
  ///  An account associated to a live hash.
  @$pb.TagNumber(1)
  $0.AccountID get accountOfLiveHash => $_getN(0);
  @$pb.TagNumber(1)
  set accountOfLiveHash($0.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountOfLiveHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountOfLiveHash() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.AccountID ensureAccountOfLiveHash() => $_ensure(0);

  /// *
  ///  The SHA-384 value of a specific live hash to delete.
  @$pb.TagNumber(2)
  $core.List<$core.int> get liveHashToDelete => $_getN(1);
  @$pb.TagNumber(2)
  set liveHashToDelete($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLiveHashToDelete() => $_has(1);
  @$pb.TagNumber(2)
  void clearLiveHashToDelete() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
