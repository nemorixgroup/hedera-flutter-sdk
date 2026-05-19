// This is a generated file - do not edit.
//
// Generated from crypto_transfer.proto.

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
///  Transfer HBAR and/or other tokens among two or more accounts and/or smart
///  contracts.
///
///  Transfers of HBAR or fungible/common tokens in this transaction are
///  structured as a "double-entry" transfer list which debits one or more
///  accounts, and separately credits one or more accounts. Each such transfer
///  list may specify up to 10 individual credits or debits.<br/>
///  Transfers of non-fungible/unique tokens in this transaction are
///  structured as a "single-entry" transfer list, which both debits one account
///  and credits another account in a single entry.
///
///  At least one transfer MUST be present, this MAY be an HBAR transfer in
///  `transfers`, or MAY be a token transfer in `tokenTransfers`.<br/>
///  Either `transfers` or `tokenTransfers` MAY be unset, provided the other
///  is set and not empty.<br/>
///  If any one account with a debit in any transfer list holds insufficient
///  balance to complete the transfer, the entire transaction SHALL fail, and
///  all transfers SHALL NOT be completed.<br/>
///  If any one account that is _sending_ an individual non-fungible/unique (NFT)
///  token does not currently hold that unique NFT, the entire transaction SHALL
///  FAIL, and all transfers SHALL NOT be completed.
///  The transaction fee SHALL be charged for a transaction that fails due to
///  insufficient balance or not holding the NFT to be transferred.<br/>
///  Each account with any debit amounts in any transfer list MUST sign this
///  transaction.<br/>
///  Each account with any credit amounts in any transfer list that also has the
///  `receiverSigRequired` flag set MUST sign this transaction.
///
///  ### Block Stream Effects
///  All debits and credits completed by this transaction SHALL be included in
///  the transaction result transfer list.<br/>
///  Multiple fungible/common debits from one account, or credits to one account,
///  MAY be consolidated to a single debit or credit entry in the
///  transaction result.<br/>
///  Multiple non-fungible/unique transfers SHALL NOT be consolidated in the
///  transaction result.
class CryptoTransferTransactionBody extends $pb.GeneratedMessage {
  factory CryptoTransferTransactionBody({
    $0.TransferList? transfers,
    $core.Iterable<$0.TokenTransferList>? tokenTransfers,
  }) {
    final result = create();
    if (transfers != null) result.transfers = transfers;
    if (tokenTransfers != null) result.tokenTransfers.addAll(tokenTransfers);
    return result;
  }

  CryptoTransferTransactionBody._();

  factory CryptoTransferTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoTransferTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoTransferTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TransferList>(1, _omitFieldNames ? '' : 'transfers',
        subBuilder: $0.TransferList.create)
    ..pPM<$0.TokenTransferList>(2, _omitFieldNames ? '' : 'tokenTransfers',
        protoName: 'tokenTransfers', subBuilder: $0.TokenTransferList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoTransferTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoTransferTransactionBody copyWith(
          void Function(CryptoTransferTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as CryptoTransferTransactionBody))
          as CryptoTransferTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoTransferTransactionBody create() =>
      CryptoTransferTransactionBody._();
  @$core.override
  CryptoTransferTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoTransferTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoTransferTransactionBody>(create);
  static CryptoTransferTransactionBody? _defaultInstance;

  /// *
  ///  A list of HBAR transfers.
  ///  <p>
  ///  Each transfer in this list MUST be denominated in tinybar.
  @$pb.TagNumber(1)
  $0.TransferList get transfers => $_getN(0);
  @$pb.TagNumber(1)
  set transfers($0.TransferList value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTransfers() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransfers() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TransferList ensureTransfers() => $_ensure(0);

  /// *
  ///  One or more lists of token transfers.
  ///  <p>
  ///  This list MUST NOT contain more than 10 entries.<br/>
  ///  If custom fees must be charged, the fee SHALL be assessed against the
  ///  effective "payer" for this transaction.<br/>
  ///  If the effective "payer" for this transaction lacks sufficient balance
  ///  to pay custom fees assessed, the entire transaction SHALL fail with a
  ///  response code `INSUFFICIENT_PAYER_BALANCE_FOR_CUSTOM_FEE`.
  @$pb.TagNumber(2)
  $pb.PbList<$0.TokenTransferList> get tokenTransfers => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
