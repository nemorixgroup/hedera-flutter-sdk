// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from token_claim_airdrop.proto.

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
///  Token claim airdrop<br/>
///  Complete one or more pending transfers on behalf of the
///  recipient(s) for an airdrop.
///
///  The sender MUST have sufficient balance to fulfill the airdrop at the
///  time of claim. If the sender does not have sufficient balance, the
///  claim SHALL fail.<br/>
///  Each pending airdrop successfully claimed SHALL be removed from state and
///  SHALL NOT be available to claim again.<br/>
///  Each claim SHALL be represented in the transaction body and
///  SHALL NOT be restated in the record file.<br/>
///  All claims MUST succeed for this transaction to succeed.
///
///  ### Block Stream Effects
///  The completed transfers SHALL be present in the transfer list.
class TokenClaimAirdropTransactionBody extends $pb.GeneratedMessage {
  factory TokenClaimAirdropTransactionBody({
    $core.Iterable<$0.PendingAirdropId>? pendingAirdrops,
  }) {
    final result = create();
    if (pendingAirdrops != null) result.pendingAirdrops.addAll(pendingAirdrops);
    return result;
  }

  TokenClaimAirdropTransactionBody._();

  factory TokenClaimAirdropTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenClaimAirdropTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenClaimAirdropTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<$0.PendingAirdropId>(1, _omitFieldNames ? '' : 'pendingAirdrops',
        subBuilder: $0.PendingAirdropId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenClaimAirdropTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenClaimAirdropTransactionBody copyWith(
          void Function(TokenClaimAirdropTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as TokenClaimAirdropTransactionBody))
          as TokenClaimAirdropTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenClaimAirdropTransactionBody create() =>
      TokenClaimAirdropTransactionBody._();
  @$core.override
  TokenClaimAirdropTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenClaimAirdropTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenClaimAirdropTransactionBody>(
          create);
  static TokenClaimAirdropTransactionBody? _defaultInstance;

  /// *
  ///  A list of one or more pending airdrop identifiers.
  ///  <p>
  ///  This transaction MUST be signed by the account identified by
  ///  the `receiver_id` for each entry in this list.<br/>
  ///  This list MUST contain between 1 and 10 entries, inclusive.<br/>
  ///  This list MUST NOT have any duplicate entries.
  @$pb.TagNumber(1)
  $pb.PbList<$0.PendingAirdropId> get pendingAirdrops => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
