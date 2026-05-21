// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from auxiliary/hints/hints_key_publication.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A transaction body to publish a node's hinTS key for a certain
///  party id and number of parties. A hinTS key is an extended
///  public key; that is, a BLS public key combined with "hints"
///  derived from the matching private key that a signature
///  aggregator can use to prove well-formedness of an aggregate
///  public key by an efficiently verifiable SNARK.
class HintsKeyPublicationTransactionBody extends $pb.GeneratedMessage {
  factory HintsKeyPublicationTransactionBody({
    $core.int? partyId,
    $core.int? numParties,
    $core.List<$core.int>? hintsKey,
  }) {
    final result = create();
    if (partyId != null) result.partyId = partyId;
    if (numParties != null) result.numParties = numParties;
    if (hintsKey != null) result.hintsKey = hintsKey;
    return result;
  }

  HintsKeyPublicationTransactionBody._();

  factory HintsKeyPublicationTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HintsKeyPublicationTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HintsKeyPublicationTransactionBody',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.services.auxiliary.hints'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'partyId', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'numParties', fieldType: $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'hintsKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsKeyPublicationTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HintsKeyPublicationTransactionBody copyWith(
          void Function(HintsKeyPublicationTransactionBody) updates) =>
      super.copyWith((message) =>
              updates(message as HintsKeyPublicationTransactionBody))
          as HintsKeyPublicationTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HintsKeyPublicationTransactionBody create() =>
      HintsKeyPublicationTransactionBody._();
  @$core.override
  HintsKeyPublicationTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HintsKeyPublicationTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HintsKeyPublicationTransactionBody>(
          create);
  static HintsKeyPublicationTransactionBody? _defaultInstance;

  /// *
  ///  The party id for which the hinTS key is being published;
  ///  must be in the range [0, num_parties).
  ///  <p>
  ///  This value MUST be set to a non-negative integer.<br/>
  @$pb.TagNumber(1)
  $core.int get partyId => $_getIZ(0);
  @$pb.TagNumber(1)
  set partyId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartyId() => $_clearField(1);

  /// *
  ///  The number of parties in the hinTS scheme.
  @$pb.TagNumber(2)
  $core.int get numParties => $_getIZ(1);
  @$pb.TagNumber(2)
  set numParties($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNumParties() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumParties() => $_clearField(2);

  /// *
  ///  The party's hinTS key.
  @$pb.TagNumber(3)
  $core.List<$core.int> get hintsKey => $_getN(2);
  @$pb.TagNumber(3)
  set hintsKey($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHintsKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearHintsKey() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
