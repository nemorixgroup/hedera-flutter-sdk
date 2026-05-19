// This is a generated file - do not edit.
//
// Generated from query_header.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// *
///  The type of query response.<br/>
///
///  This SHALL be answer-only as a default.<br/>
///  This value SHALL support an "estimated cost" type.<br/>
///  This value SHOULD support a "state proof" type, when available.
class ResponseType extends $pb.ProtobufEnum {
  /// *
  ///  A response with the query answer.
  static const ResponseType ANSWER_ONLY =
      ResponseType._(0, _omitEnumNames ? '' : 'ANSWER_ONLY');

  /// *
  ///  A response with both the query answer and a state proof.
  static const ResponseType ANSWER_STATE_PROOF =
      ResponseType._(1, _omitEnumNames ? '' : 'ANSWER_STATE_PROOF');

  /// *
  ///  A response with the estimated cost to answer the query.
  static const ResponseType COST_ANSWER =
      ResponseType._(2, _omitEnumNames ? '' : 'COST_ANSWER');

  /// *
  ///  A response with the estimated cost to answer and a state proof.
  static const ResponseType COST_ANSWER_STATE_PROOF =
      ResponseType._(3, _omitEnumNames ? '' : 'COST_ANSWER_STATE_PROOF');

  static const $core.List<ResponseType> values = <ResponseType>[
    ANSWER_ONLY,
    ANSWER_STATE_PROOF,
    COST_ANSWER,
    COST_ANSWER_STATE_PROOF,
  ];

  static final $core.List<ResponseType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ResponseType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ResponseType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
