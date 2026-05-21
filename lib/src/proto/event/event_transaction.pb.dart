// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
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

import 'event_transaction.pbenum.dart';
import 'state_signature_transaction.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'event_transaction.pbenum.dart';

enum EventTransaction_Transaction {
  applicationTransaction,
  stateSignatureTransaction,
  notSet
}

/// *
///  An Event Transaction gossiped between nodes as part of events.
///
///  Each node MUST extract this transaction and process according to the type
///  of transaction encoded.<br/>
///  Both the platform and the application built on that platform MAY define event
///  transactions.<br/>
///  The encoded data MUST be a serialized protobuf message.
class EventTransaction extends $pb.GeneratedMessage {
  factory EventTransaction({
    $core.List<$core.int>? applicationTransaction,
    $0.StateSignatureTransaction? stateSignatureTransaction,
    TransactionGroupRole? transactionGroupRole,
  }) {
    final result = create();
    if (applicationTransaction != null)
      result.applicationTransaction = applicationTransaction;
    if (stateSignatureTransaction != null)
      result.stateSignatureTransaction = stateSignatureTransaction;
    if (transactionGroupRole != null)
      result.transactionGroupRole = transactionGroupRole;
    return result;
  }

  EventTransaction._();

  factory EventTransaction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EventTransaction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EventTransaction_Transaction>
      _EventTransaction_TransactionByTag = {
    1: EventTransaction_Transaction.applicationTransaction,
    2: EventTransaction_Transaction.stateSignatureTransaction,
    0: EventTransaction_Transaction.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EventTransaction',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'com.hedera.hapi.platform.event'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'applicationTransaction', $pb.PbFieldType.OY)
    ..aOM<$0.StateSignatureTransaction>(
        2, _omitFieldNames ? '' : 'stateSignatureTransaction',
        subBuilder: $0.StateSignatureTransaction.create)
    ..aE<TransactionGroupRole>(3, _omitFieldNames ? '' : 'transactionGroupRole',
        enumValues: TransactionGroupRole.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventTransaction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventTransaction copyWith(void Function(EventTransaction) updates) =>
      super.copyWith((message) => updates(message as EventTransaction))
          as EventTransaction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventTransaction create() => EventTransaction._();
  @$core.override
  EventTransaction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EventTransaction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventTransaction>(create);
  static EventTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  EventTransaction_Transaction whichTransaction() =>
      _EventTransaction_TransactionByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearTransaction() => $_clearField($_whichOneof(0));

  /// *
  ///  An application transaction.
  ///  <p>
  ///  The contents of this transaction SHALL be defined by the application
  ///  subsystem that created the event.<br/>
  ///  The contents MUST be a serialized protobuf message.
  @$pb.TagNumber(1)
  $core.List<$core.int> get applicationTransaction => $_getN(0);
  @$pb.TagNumber(1)
  set applicationTransaction($core.List<$core.int> value) =>
      $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationTransaction() => $_clearField(1);

  /// *
  ///  A state signature.
  ///  <p>
  ///  This transaction SHALL be a valid state signature for a state snapshot.
  @$pb.TagNumber(2)
  $0.StateSignatureTransaction get stateSignatureTransaction => $_getN(1);
  @$pb.TagNumber(2)
  set stateSignatureTransaction($0.StateSignatureTransaction value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStateSignatureTransaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearStateSignatureTransaction() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.StateSignatureTransaction ensureStateSignatureTransaction() => $_ensure(1);

  /// *
  ///  The role of this transaction in a group of transactions.
  @$pb.TagNumber(3)
  TransactionGroupRole get transactionGroupRole => $_getN(2);
  @$pb.TagNumber(3)
  set transactionGroupRole(TransactionGroupRole value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTransactionGroupRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransactionGroupRole() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
