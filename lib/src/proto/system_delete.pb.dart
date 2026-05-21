// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from system_delete.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;
import 'timestamp.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum SystemDeleteTransactionBody_Id { fileID, contractID, notSet }

/// *
///  Delete a file or contract bytecode as an administrative transaction.
///
///  > Note
///  >> A system delete/undelete for a `contractID` is not supported and
///  >> SHALL return `INVALID_FILE_ID` or `MISSING_ENTITY_ID`.
///
///  This transaction MAY be reversed by the `systemUndelete` transaction.
///  A file deleted via `fileDelete`, however SHALL be irrecoverable.<br/>
///  This transaction MUST specify an expiration timestamp (with seconds
///  precision). The file SHALL be permanently removed from state when
///  network consensus time exceeds the specified expiration time.<br/>
///  This transaction MUST be signed by an Hedera administrative ("system")
///  account.
///
///  ### What is a "system" file
///  A "system" file is any file with a file number less than or equal to the
///  current configuration value for `ledger.numReservedSystemEntities`,
///  typically `750`.
///
///  ### Block Stream Effects
///  None
class SystemDeleteTransactionBody extends $pb.GeneratedMessage {
  factory SystemDeleteTransactionBody({
    $0.FileID? fileID,
    $0.ContractID? contractID,
    $1.TimestampSeconds? expirationTime,
  }) {
    final result = create();
    if (fileID != null) result.fileID = fileID;
    if (contractID != null) result.contractID = contractID;
    if (expirationTime != null) result.expirationTime = expirationTime;
    return result;
  }

  SystemDeleteTransactionBody._();

  factory SystemDeleteTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemDeleteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SystemDeleteTransactionBody_Id>
      _SystemDeleteTransactionBody_IdByTag = {
    1: SystemDeleteTransactionBody_Id.fileID,
    2: SystemDeleteTransactionBody_Id.contractID,
    0: SystemDeleteTransactionBody_Id.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemDeleteTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.FileID>(1, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $0.FileID.create)
    ..aOM<$0.ContractID>(2, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $0.ContractID.create)
    ..aOM<$1.TimestampSeconds>(3, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $1.TimestampSeconds.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemDeleteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemDeleteTransactionBody copyWith(
          void Function(SystemDeleteTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as SystemDeleteTransactionBody))
          as SystemDeleteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemDeleteTransactionBody create() =>
      SystemDeleteTransactionBody._();
  @$core.override
  SystemDeleteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemDeleteTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemDeleteTransactionBody>(create);
  static SystemDeleteTransactionBody? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  SystemDeleteTransactionBody_Id whichId() =>
      _SystemDeleteTransactionBody_IdByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearId() => $_clearField($_whichOneof(0));

  /// *
  ///  A file identifier.
  ///  <p>
  ///  The identified file MUST exist in the HFS.<br/>
  ///  The identified file MUST NOT be deleted.<br/>
  ///  The identified file MUST NOT be a "system" file.<br/>
  ///  This field is REQUIRED.
  @$pb.TagNumber(1)
  $0.FileID get fileID => $_getN(0);
  @$pb.TagNumber(1)
  set fileID($0.FileID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFileID() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FileID ensureFileID() => $_ensure(0);

  /// *
  ///  A contract identifier.
  ///  <p>
  ///  The identified contract MUST exist in network state.<br/>
  ///  The identified contract bytecode MUST NOT be deleted.<br/>
  ///  <p>
  ///  This option is _unsupported_.
  @$pb.TagNumber(2)
  $0.ContractID get contractID => $_getN(1);
  @$pb.TagNumber(2)
  set contractID($0.ContractID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasContractID() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractID() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ContractID ensureContractID() => $_ensure(1);

  /// *
  ///  A timestamp indicating when the file will be removed from state.
  ///  <p>
  ///  This value SHALL be expressed in seconds since the `epoch`. The `epoch`
  ///  SHALL be the UNIX epoch with 0 at `1970-01-01T00:00:00.000Z`.<br/>
  ///  This field is REQUIRED.
  @$pb.TagNumber(3)
  $1.TimestampSeconds get expirationTime => $_getN(2);
  @$pb.TagNumber(3)
  set expirationTime($1.TimestampSeconds value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExpirationTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpirationTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.TimestampSeconds ensureExpirationTime() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
