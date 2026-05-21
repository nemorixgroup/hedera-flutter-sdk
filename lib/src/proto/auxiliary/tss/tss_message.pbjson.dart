// This is a generated file - do not edit.
//
// Generated from auxiliary/tss/tss_message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use tssMessageTransactionBodyDescriptor instead')
const TssMessageTransactionBody$json = {
  '1': 'TssMessageTransactionBody',
  '2': [
    {
      '1': 'source_roster_hash',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'sourceRosterHash'
    },
    {
      '1': 'target_roster_hash',
      '3': 2,
      '4': 1,
      '5': 12,
      '10': 'targetRosterHash'
    },
    {'1': 'share_index', '3': 3, '4': 1, '5': 4, '10': 'shareIndex'},
    {'1': 'tss_message', '3': 4, '4': 1, '5': 12, '10': 'tssMessage'},
  ],
};

/// Descriptor for `TssMessageTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tssMessageTransactionBodyDescriptor = $convert.base64Decode(
    'ChlUc3NNZXNzYWdlVHJhbnNhY3Rpb25Cb2R5EiwKEnNvdXJjZV9yb3N0ZXJfaGFzaBgBIAEoDF'
    'IQc291cmNlUm9zdGVySGFzaBIsChJ0YXJnZXRfcm9zdGVyX2hhc2gYAiABKAxSEHRhcmdldFJv'
    'c3Rlckhhc2gSHwoLc2hhcmVfaW5kZXgYAyABKARSCnNoYXJlSW5kZXgSHwoLdHNzX21lc3NhZ2'
    'UYBCABKAxSCnRzc01lc3NhZ2U=');
