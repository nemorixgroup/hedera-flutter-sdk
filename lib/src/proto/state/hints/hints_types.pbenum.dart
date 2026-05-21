// This is a generated file - do not edit.
//
// Generated from state/hints/hints_types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// *
///  The stage of a CRS construction.
class CRSStage extends $pb.ProtobufEnum {
  /// *
  ///  The network is gathering contributions to the CRS from all nodes.
  static const CRSStage GATHERING_CONTRIBUTIONS =
      CRSStage._(0, _omitEnumNames ? '' : 'GATHERING_CONTRIBUTIONS');

  /// *
  ///  The network is waiting for some grace period to allow the verification future
  ///  to be completed after the last node has contributed to the CRS.
  static const CRSStage WAITING_FOR_ADOPTING_FINAL_CRS =
      CRSStage._(1, _omitEnumNames ? '' : 'WAITING_FOR_ADOPTING_FINAL_CRS');

  /// *
  ///  The network has completed the CRS construction and is set in the CrsState.
  static const CRSStage COMPLETED =
      CRSStage._(2, _omitEnumNames ? '' : 'COMPLETED');

  static const $core.List<CRSStage> values = <CRSStage>[
    GATHERING_CONTRIBUTIONS,
    WAITING_FOR_ADOPTING_FINAL_CRS,
    COMPLETED,
  ];

  static final $core.List<CRSStage?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static CRSStage? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CRSStage._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
