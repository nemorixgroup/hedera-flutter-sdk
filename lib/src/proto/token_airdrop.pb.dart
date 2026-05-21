// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from token_airdrop.proto.

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
///  Airdrop one or more tokens to one or more accounts.
///
///  ### Effects
///  This distributes tokens from the balance of one or more sending account(s)
///  to the balance of one or more recipient accounts. Accounts MAY receive the
///  tokens in one of four ways.
///
///   - An account already associated to the token to be distributed SHALL
///     receive the airdropped tokens immediately to the recipient account
///     balance.<br/>
///     The fee for this transfer SHALL include the transfer, the airdrop fee,
///     and any custom fees.
///   - An account with available automatic association slots SHALL be
///     automatically associated to the token, and SHALL immediately receive
///     the airdropped tokens to the recipient account balance.<br/>
///     The fee for this transfer SHALL include the transfer, the association,
///     the cost to renew that association once, the airdrop fee, and
///     any custom fees.
///   - An account with "receiver signature required" set SHALL have a
///     "Pending Airdrop" created and must claim that airdrop with a
///     `claimAirdrop` transaction.<br/>
///     The fee for this transfer SHALL include the transfer, the association,
///     the cost to renew that association once, the airdrop fee, and
///     any custom fees.<br/>
///     If the pending airdrop is not claimed immediately, the `sender` SHALL
///     pay the cost to renew the token association, and the cost to maintain
///     the pending airdrop, until the pending airdrop is claimed or cancelled.
///   - An account with no available automatic association slots SHALL have a
///     "Pending Airdrop" created and must claim that airdrop with a
///     `claimAirdrop` transaction.<br/>
///     The fee for this transfer SHALL include the transfer, the association,
///     the cost to renew that association once, the airdrop fee, and any custom
///     fees.<br/>
///     If the pending airdrop is not claimed immediately, the `sender` SHALL
///     pay the cost to renew the token association, and the cost to maintain
///     the pending airdrop, until the pending airdrop is claimed or cancelled.
///
///  If an airdrop would create a pending airdrop for a fungible/common token,
///  and a pending airdrop for the same sender, receiver, and token already
///  exists, the existing pending airdrop SHALL be updated to add the new
///  amount to the existing airdrop, rather than creating
///  a new pending airdrop.<br/>
///  Any airdrop that completes immediately SHALL be irreversible. Any airdrop
///  that results in a "Pending Airdrop" MAY be canceled via a `cancelAirdrop`
///  transaction.<br/>
///  All transfer fees (including custom fees and royalties), as well as the
///  rent cost for the first auto-renewal period for any automatic-association
///  slot occupied by the airdropped tokens, SHALL be charged to the account
///  paying for this transaction.<br/>
///
///  ### Block Stream Effects
///  - Each successful transfer SHALL be recorded in `token_transfer_list`
///    for the transaction record.
///  - Each successful transfer that consumes an automatic association slot
///    SHALL populate the `automatic_association` field for the record.
///  - Each pending transfer _created_ SHALL be added to the
///    `pending_airdrops` field for the record.
///  - Each pending transfer _updated_ SHALL be added to the
///    `pending_airdrops` field for the record.
class TokenAirdropTransactionBody extends $pb.GeneratedMessage {
  factory TokenAirdropTransactionBody({
    $core.Iterable<$0.TokenTransferList>? tokenTransfers,
  }) {
    final result = create();
    if (tokenTransfers != null) result.tokenTransfers.addAll(tokenTransfers);
    return result;
  }

  TokenAirdropTransactionBody._();

  factory TokenAirdropTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenAirdropTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenAirdropTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<$0.TokenTransferList>(1, _omitFieldNames ? '' : 'tokenTransfers',
        subBuilder: $0.TokenTransferList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenAirdropTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenAirdropTransactionBody copyWith(
          void Function(TokenAirdropTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenAirdropTransactionBody))
          as TokenAirdropTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenAirdropTransactionBody create() =>
      TokenAirdropTransactionBody._();
  @$core.override
  TokenAirdropTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenAirdropTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenAirdropTransactionBody>(create);
  static TokenAirdropTransactionBody? _defaultInstance;

  /// *
  ///  A list of token transfers representing one or more airdrops.
  ///  <p>
  ///  The sender for each transfer MUST have sufficient balance to complete
  ///  the transfers.<br/>
  ///  All token transfers MUST successfully transfer tokens or create a
  ///  pending airdrop for this transaction to succeed.<br/>
  ///  This list MUST contain between 1 and 10 transfers, inclusive.
  ///  <p>
  ///  Note that each transfer of fungible/common tokens requires both a debit
  ///  and a credit, so each _fungible_ token transfer MUST have _balanced_
  ///  entries in the TokenTransferList for that transfer.
  @$pb.TagNumber(1)
  $pb.PbList<$0.TokenTransferList> get tokenTransfers => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
