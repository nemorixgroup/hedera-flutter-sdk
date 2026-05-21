// This is a generated file - do not edit.
//
// Generated from event/event_transaction.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// *
///  Defines the position of an EventTransaction relative to a logical "group"
///  of EventTransaction that correspond to a single set of changes to the state
///  Merkle tree.
class TransactionGroupRole extends $pb.ProtobufEnum {
  /// *
  ///  The EventTransaction is the only transaction in its group.
  static const TransactionGroupRole STANDALONE =
      TransactionGroupRole._(0, _omitEnumNames ? '' : 'STANDALONE');

  /// *
  ///  The EventTransaction is a child and first in its group.
  static const TransactionGroupRole FIRST_CHILD =
      TransactionGroupRole._(1, _omitEnumNames ? '' : 'FIRST_CHILD');

  /// *
  ///  The EventTransaction is a child in the middle of its group.
  static const TransactionGroupRole MIDDLE_CHILD =
      TransactionGroupRole._(2, _omitEnumNames ? '' : 'MIDDLE_CHILD');

  /// *
  ///  The EventTransaction is a child and last in its group.
  static const TransactionGroupRole LAST_CHILD =
      TransactionGroupRole._(3, _omitEnumNames ? '' : 'LAST_CHILD');

  /// *
  ///  The EventTransaction is a parent and first in its group.
  static const TransactionGroupRole STARTING_PARENT =
      TransactionGroupRole._(4, _omitEnumNames ? '' : 'STARTING_PARENT');

  /// *
  ///  The EventTransaction is a parent in the middle of its group.
  static const TransactionGroupRole PARENT =
      TransactionGroupRole._(5, _omitEnumNames ? '' : 'PARENT');

  /// *
  ///  The EventTransaction is a parent and last in its group.
  static const TransactionGroupRole ENDING_PARENT =
      TransactionGroupRole._(6, _omitEnumNames ? '' : 'ENDING_PARENT');

  static const $core.List<TransactionGroupRole> values = <TransactionGroupRole>[
    STANDALONE,
    FIRST_CHILD,
    MIDDLE_CHILD,
    LAST_CHILD,
    STARTING_PARENT,
    PARENT,
    ENDING_PARENT,
  ];

  static final $core.List<TransactionGroupRole?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static TransactionGroupRole? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TransactionGroupRole._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
