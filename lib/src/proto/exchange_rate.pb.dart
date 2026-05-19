// This is a generated file - do not edit.
//
// Generated from exchange_rate.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  An exchange rate as a ratio of USD cents per HBAR.
///
///  This ratio SHALL be used to convert tinycent (`10<sup>-8</sup>` USD cent)
///  to tinybar for fees and other purposes.<br/>
///  When applying an `ExchangeRate`, implementations SHOULD ensure input values
///  are `tinycent` and/or `tinybar` before applying the exchange ratio.<br/>
///  Exchange results MAY be converted to USD or HBAR via division if whole
///  unit values are required.
///
///  The ratio described here SHALL be assigned such that a value in `tinybar`
///  may be obtained with the following equation.
///  ```
///    amountInTinybar = (amountInTinycent * hbarEquiv) / centEquiv
///  ```
class ExchangeRate extends $pb.GeneratedMessage {
  factory ExchangeRate({
    $core.int? hbarEquiv,
    $core.int? centEquiv,
    $0.TimestampSeconds? expirationTime,
  }) {
    final result = create();
    if (hbarEquiv != null) result.hbarEquiv = hbarEquiv;
    if (centEquiv != null) result.centEquiv = centEquiv;
    if (expirationTime != null) result.expirationTime = expirationTime;
    return result;
  }

  ExchangeRate._();

  factory ExchangeRate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExchangeRate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExchangeRate',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'hbarEquiv', protoName: 'hbarEquiv')
    ..aI(2, _omitFieldNames ? '' : 'centEquiv', protoName: 'centEquiv')
    ..aOM<$0.TimestampSeconds>(3, _omitFieldNames ? '' : 'expirationTime',
        protoName: 'expirationTime', subBuilder: $0.TimestampSeconds.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExchangeRate clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExchangeRate copyWith(void Function(ExchangeRate) updates) =>
      super.copyWith((message) => updates(message as ExchangeRate))
          as ExchangeRate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExchangeRate create() => ExchangeRate._();
  @$core.override
  ExchangeRate createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExchangeRate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExchangeRate>(create);
  static ExchangeRate? _defaultInstance;

  /// *
  ///  Denominator for a ratio of USD cents per HBAR.
  @$pb.TagNumber(1)
  $core.int get hbarEquiv => $_getIZ(0);
  @$pb.TagNumber(1)
  set hbarEquiv($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHbarEquiv() => $_has(0);
  @$pb.TagNumber(1)
  void clearHbarEquiv() => $_clearField(1);

  /// *
  ///  Numerator for a ratio of USD cents per HBAR.
  @$pb.TagNumber(2)
  $core.int get centEquiv => $_getIZ(1);
  @$pb.TagNumber(2)
  set centEquiv($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCentEquiv() => $_has(1);
  @$pb.TagNumber(2)
  void clearCentEquiv() => $_clearField(2);

  /// *
  ///  Expiration time stamp for this exchange rate.
  @$pb.TagNumber(3)
  $0.TimestampSeconds get expirationTime => $_getN(2);
  @$pb.TagNumber(3)
  set expirationTime($0.TimestampSeconds value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExpirationTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpirationTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.TimestampSeconds ensureExpirationTime() => $_ensure(2);
}

/// *
///  A set of two exchange rates.<br/>
///  The exchange rate for the network is stored and reported as a set of
///  two rates; current and next. This structure supports the network cleanly
///  switching between exchange rates when necessary. This also provides clear
///  notice to clients when the exchange rate will change and the exchange
///  rate that will be applied for the next time period.
///
///  The difference in rate between `currentRate` and `nextRate` MUST NOT exceed
///  the configured maximum percentage change. This limit SHALL be a
///  network configuration value.
class ExchangeRateSet extends $pb.GeneratedMessage {
  factory ExchangeRateSet({
    ExchangeRate? currentRate,
    ExchangeRate? nextRate,
  }) {
    final result = create();
    if (currentRate != null) result.currentRate = currentRate;
    if (nextRate != null) result.nextRate = nextRate;
    return result;
  }

  ExchangeRateSet._();

  factory ExchangeRateSet.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExchangeRateSet.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExchangeRateSet',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<ExchangeRate>(1, _omitFieldNames ? '' : 'currentRate',
        protoName: 'currentRate', subBuilder: ExchangeRate.create)
    ..aOM<ExchangeRate>(2, _omitFieldNames ? '' : 'nextRate',
        protoName: 'nextRate', subBuilder: ExchangeRate.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExchangeRateSet clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExchangeRateSet copyWith(void Function(ExchangeRateSet) updates) =>
      super.copyWith((message) => updates(message as ExchangeRateSet))
          as ExchangeRateSet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExchangeRateSet create() => ExchangeRateSet._();
  @$core.override
  ExchangeRateSet createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExchangeRateSet getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExchangeRateSet>(create);
  static ExchangeRateSet? _defaultInstance;

  /// *
  ///  A current exchange rate.
  ///  <p>
  ///  When present in a receipt, this SHALL be the exchange rate used to
  ///  compute the fees for that transaction.
  @$pb.TagNumber(1)
  ExchangeRate get currentRate => $_getN(0);
  @$pb.TagNumber(1)
  set currentRate(ExchangeRate value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCurrentRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentRate() => $_clearField(1);
  @$pb.TagNumber(1)
  ExchangeRate ensureCurrentRate() => $_ensure(0);

  /// *
  ///  A future exchange rate.
  ///  <p>
  ///  This exchange rate SHALL be applied after the current exchange
  ///  rate expires.
  @$pb.TagNumber(2)
  ExchangeRate get nextRate => $_getN(1);
  @$pb.TagNumber(2)
  set nextRate(ExchangeRate value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNextRate() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextRate() => $_clearField(2);
  @$pb.TagNumber(2)
  ExchangeRate ensureNextRate() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
