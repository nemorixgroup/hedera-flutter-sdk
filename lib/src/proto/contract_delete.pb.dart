// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from contract_delete.proto.

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

enum ContractDeleteTransactionBody_Obtainers {
  transferAccountID,
  transferContractID,
  notSet
}

/// *
///  Delete a smart contract, and transfer any remaining HBAR balance to a
///  designated account.
///
///  If this call succeeds then all subsequent calls to that smart contract
///  SHALL execute the `0x0` opcode, as required for EVM equivalence.
///
///  ### Requirements
///   - An account or smart contract MUST be designated to receive all remaining
///     account balances.
///   - The smart contract MUST have an admin key set. If the contract does not
///     have `admin_key` set, then this transaction SHALL fail and response code
///     `MODIFYING_IMMUTABLE_CONTRACT` SHALL be set.
///   - If `admin_key` is, or contains, an empty `KeyList` key, it SHALL be
///     treated the same as an admin key that is not set.
///   - The `Key` set for `admin_key` on the smart contract MUST have a valid
///     signature set on this transaction.
///   - The designated receiving account MAY have `receiver_sig_required` set. If
///     that field is set, the receiver account MUST also sign this transaction.
///   - The field `permanent_removal` MUST NOT be set. That field is reserved for
///     internal system use when purging the smart contract from state. Any user
///     transaction with that field set SHALL be rejected and a response code
///     `PERMANENT_REMOVAL_REQUIRES_SYSTEM_INITIATION` SHALL be set.
///
///  ### Block Stream Effects
///  None
class ContractDeleteTransactionBody extends $pb.GeneratedMessage {
  factory ContractDeleteTransactionBody({
    $0.ContractID? contractID,
    $0.AccountID? transferAccountID,
    $0.ContractID? transferContractID,
    $core.bool? permanentRemoval,
  }) {
    final result = create();
    if (contractID != null) result.contractID = contractID;
    if (transferAccountID != null) result.transferAccountID = transferAccountID;
    if (transferContractID != null)
      result.transferContractID = transferContractID;
    if (permanentRemoval != null) result.permanentRemoval = permanentRemoval;
    return result;
  }

  ContractDeleteTransactionBody._();

  factory ContractDeleteTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContractDeleteTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ContractDeleteTransactionBody_Obtainers>
      _ContractDeleteTransactionBody_ObtainersByTag = {
    2: ContractDeleteTransactionBody_Obtainers.transferAccountID,
    3: ContractDeleteTransactionBody_Obtainers.transferContractID,
    0: ContractDeleteTransactionBody_Obtainers.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContractDeleteTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<$0.ContractID>(1, _omitFieldNames ? '' : 'contractID',
        protoName: 'contractID', subBuilder: $0.ContractID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'transferAccountID',
        protoName: 'transferAccountID', subBuilder: $0.AccountID.create)
    ..aOM<$0.ContractID>(3, _omitFieldNames ? '' : 'transferContractID',
        protoName: 'transferContractID', subBuilder: $0.ContractID.create)
    ..aOB(4, _omitFieldNames ? '' : 'permanentRemoval')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractDeleteTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContractDeleteTransactionBody copyWith(
          void Function(ContractDeleteTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as ContractDeleteTransactionBody))
          as ContractDeleteTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContractDeleteTransactionBody create() =>
      ContractDeleteTransactionBody._();
  @$core.override
  ContractDeleteTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContractDeleteTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContractDeleteTransactionBody>(create);
  static ContractDeleteTransactionBody? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  ContractDeleteTransactionBody_Obtainers whichObtainers() =>
      _ContractDeleteTransactionBody_ObtainersByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearObtainers() => $_clearField($_whichOneof(0));

  /// *
  ///  The id of the contract to be deleted.
  ///  <p>
  ///  This field is REQUIRED.
  @$pb.TagNumber(1)
  $0.ContractID get contractID => $_getN(0);
  @$pb.TagNumber(1)
  set contractID($0.ContractID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasContractID() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ContractID ensureContractID() => $_ensure(0);

  /// *
  ///  An Account ID recipient.
  ///  <p>
  ///  This account SHALL receive all HBAR and other tokens still owned by
  ///  the contract that is removed.
  @$pb.TagNumber(2)
  $0.AccountID get transferAccountID => $_getN(1);
  @$pb.TagNumber(2)
  set transferAccountID($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTransferAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransferAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureTransferAccountID() => $_ensure(1);

  /// *
  ///  A contract ID recipient.
  ///  <p>
  ///  This contract SHALL receive all HBAR and other tokens still owned by
  ///  the contract that is removed.
  @$pb.TagNumber(3)
  $0.ContractID get transferContractID => $_getN(2);
  @$pb.TagNumber(3)
  set transferContractID($0.ContractID value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTransferContractID() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransferContractID() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.ContractID ensureTransferContractID() => $_ensure(2);

  /// *
  ///  A flag indicating that this transaction is "synthetic"; initiated by the
  ///  node software.
  ///  <p>
  ///  The consensus nodes create such "synthetic" transactions to both to
  ///  properly manage state changes and to communicate those changes to other
  ///  systems via the Block Stream.<br/>
  ///  A user-initiated transaction MUST NOT set this flag.
  @$pb.TagNumber(4)
  $core.bool get permanentRemoval => $_getBF(3);
  @$pb.TagNumber(4)
  set permanentRemoval($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPermanentRemoval() => $_has(3);
  @$pb.TagNumber(4)
  void clearPermanentRemoval() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
