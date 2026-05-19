// This is a generated file - do not edit.
//
// Generated from token_cancel_airdrop.proto.

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
///  Token cancel airdrop<br/>
///  Remove one or more pending airdrops from state on behalf of the
///  sender(s) for each airdrop.
///
///  Each pending airdrop canceled SHALL be removed from state and
///  SHALL NOT be available to claim.<br/>
///  Each cancellation SHALL be represented in the transaction body and
///  SHALL NOT be restated in the record file.<br/>
///  All cancellations MUST succeed for this transaction to succeed.
///
///  ### Block Stream Effects
///  None
class TokenCancelAirdropTransactionBody extends $pb.GeneratedMessage {
  factory TokenCancelAirdropTransactionBody({
    $core.Iterable<$0.PendingAirdropId>? pendingAirdrops,
  }) {
    final result = create();
    if (pendingAirdrops != null) result.pendingAirdrops.addAll(pendingAirdrops);
    return result;
  }

  TokenCancelAirdropTransactionBody._();

  factory TokenCancelAirdropTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenCancelAirdropTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenCancelAirdropTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..pPM<$0.PendingAirdropId>(1, _omitFieldNames ? '' : 'pendingAirdrops',
        subBuilder: $0.PendingAirdropId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenCancelAirdropTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenCancelAirdropTransactionBody copyWith(
          void Function(TokenCancelAirdropTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as TokenCancelAirdropTransactionBody))
          as TokenCancelAirdropTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenCancelAirdropTransactionBody create() =>
      TokenCancelAirdropTransactionBody._();
  @$core.override
  TokenCancelAirdropTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenCancelAirdropTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenCancelAirdropTransactionBody>(
          create);
  static TokenCancelAirdropTransactionBody? _defaultInstance;

  /// *
  ///  A list of one or more pending airdrop identifiers.<br/>
  ///  This list declares the set of pending airdrop entries that the client
  ///  wishes to cancel; on success all listed pending airdrop entries
  ///  will be removed.
  ///  <p>
  ///  This transaction MUST be signed by the account identified by a
  ///  `sender_id` for each entry in this list.<br/>
  ///  This list MUST NOT have any duplicate entries.<br/>
  ///  This list MUST contain between 1 and 10 entries, inclusive.
  @$pb.TagNumber(1)
  $pb.PbList<$0.PendingAirdropId> get pendingAirdrops => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
