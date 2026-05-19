// This is a generated file - do not edit.
//
// Generated from system_undelete.proto.

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

enum SystemUndeleteTransactionBody_Id { fileID, contractID, notSet }

/// *
///  Recover a file or contract bytecode deleted from the Hedera File
///  System (HFS) by a `systemDelete` transaction.
///
///  > Note
///  >> A system delete/undelete for a `contractID` is not supported and
///  >> SHALL return `INVALID_FILE_ID` or `MISSING_ENTITY_ID`.
///
///  This transaction can _only_ recover a file removed with the `systemDelete`
///  transaction. A file deleted via `fileDelete` SHALL be irrecoverable.<br/>
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
class SystemUndeleteTransactionBody extends $pb.GeneratedMessage {
  factory SystemUndeleteTransactionBody({
    $0.FileID? fileID,
    $0.ContractID? contractID,
  }) {
    final result = create();
    if (fileID != null) result.fileID = fileID;
    if (contractID != null) result.contractID = contractID;
    return result;
  }

  SystemUndeleteTransactionBody._();

  factory SystemUndeleteTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemUndeleteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SystemUndeleteTransactionBody_Id>
      _SystemUndeleteTransactionBody_IdByTag = {
    1: SystemUndeleteTransactionBody_Id.fileID,
    2: SystemUndeleteTransactionBody_Id.contractID,
    0: SystemUndeleteTransactionBody_Id.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemUndeleteTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.FileID>(1, _omitFieldNames ? '' : 'fileID',
        protoName: 'fileID', subBuilder: $0.FileID.create)
    ..aOM<$0.ContractID>(2, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $0.ContractID.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemUndeleteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemUndeleteTransactionBody copyWith(
          void Function(SystemUndeleteTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as SystemUndeleteTransactionBody))
          as SystemUndeleteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemUndeleteTransactionBody create() =>
      SystemUndeleteTransactionBody._();
  @$core.override
  SystemUndeleteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemUndeleteTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemUndeleteTransactionBody>(create);
  static SystemUndeleteTransactionBody? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  SystemUndeleteTransactionBody_Id whichId() =>
      _SystemUndeleteTransactionBody_IdByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearId() => $_clearField($_whichOneof(0));

  /// *
  ///  A file identifier.
  ///  <p>
  ///  The identified file MUST exist in the HFS.<br/>
  ///  The identified file MUST be deleted.<br/>
  ///  The identified file deletion MUST be a result of a
  ///  `systemDelete` transaction.<br/>
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
  ///  The identified contract bytecode MUST be deleted.<br/>
  ///  The identified contract deletion MUST be a result of a
  ///  `systemDelete` transaction.
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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
