// This is a generated file - do not edit.
//
// Generated from token_fee_schedule_update.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;
import 'custom_fees.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  Update the custom fee schedule for a token type.
///
///  The token MUST have a `fee_schedule_key` set and that key MUST NOT
///  be an empty `KeyList`.<br/>
///  The token `fee_schedule_key` MUST sign this transaction.<br/>
///  The token MUST exist, MUST NOT be deleted, and MUST NOT be expired.<br/>
///
///  If the custom_fees list is empty, clears the fee schedule or resolves to
///  CUSTOM_SCHEDULE_ALREADY_HAS_NO_FEES if the fee schedule was already empty.
///
///  ### Block Stream Effects
///  None
class TokenFeeScheduleUpdateTransactionBody extends $pb.GeneratedMessage {
  factory TokenFeeScheduleUpdateTransactionBody({
    $0.TokenID? tokenId,
    $core.Iterable<$1.CustomFee>? customFees,
  }) {
    final result = create();
    if (tokenId != null) result.tokenId = tokenId;
    if (customFees != null) result.customFees.addAll(customFees);
    return result;
  }

  TokenFeeScheduleUpdateTransactionBody._();

  factory TokenFeeScheduleUpdateTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenFeeScheduleUpdateTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenFeeScheduleUpdateTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.TokenID>(1, _omitFieldNames ? '' : 'tokenId',
        subBuilder: $0.TokenID.create)
    ..pPM<$1.CustomFee>(2, _omitFieldNames ? '' : 'customFees',
        subBuilder: $1.CustomFee.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenFeeScheduleUpdateTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenFeeScheduleUpdateTransactionBody copyWith(
          void Function(TokenFeeScheduleUpdateTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as TokenFeeScheduleUpdateTransactionBody))
          as TokenFeeScheduleUpdateTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenFeeScheduleUpdateTransactionBody create() =>
      TokenFeeScheduleUpdateTransactionBody._();
  @$core.override
  TokenFeeScheduleUpdateTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TokenFeeScheduleUpdateTransactionBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          TokenFeeScheduleUpdateTransactionBody>(create);
  static TokenFeeScheduleUpdateTransactionBody? _defaultInstance;

  /// *
  ///  A token identifier.
  ///  <p>
  ///  This SHALL identify the token type to modify with an updated
  ///  custom fee schedule.<br/>
  ///  The identified token MUST exist, and MUST NOT be deleted.
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
  ///  A list of custom fees representing a fee schedule.
  ///  <p>
  ///  This list MAY be empty to remove custom fees from a token.<br/>
  ///  If the identified token is a non-fungible/unique type, the entries
  ///  in this list MUST NOT declare a `fractional_fee`.<br/>
  ///  If the identified token is a fungible/common type, the entries in this
  ///  list MUST NOT declare a `royalty_fee`.<br/>
  ///  Any token type MAY include entries that declare a `fixed_fee`.
  @$pb.TagNumber(2)
  $pb.PbList<$1.CustomFee> get customFees => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
