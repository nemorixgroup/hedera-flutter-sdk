// This is a generated file - do not edit.
//
// Generated from event/state_signature_transaction.proto.

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

@$core.Deprecated('Use stateSignatureTransactionDescriptor instead')
const StateSignatureTransaction$json = {
  '1': 'StateSignatureTransaction',
  '2': [
    {'1': 'round', '3': 1, '4': 1, '5': 3, '10': 'round'},
    {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
    {'1': 'hash', '3': 3, '4': 1, '5': 12, '10': 'hash'},
  ],
};

/// Descriptor for `StateSignatureTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateSignatureTransactionDescriptor =
    $convert.base64Decode(
        'ChlTdGF0ZVNpZ25hdHVyZVRyYW5zYWN0aW9uEhQKBXJvdW5kGAEgASgDUgVyb3VuZBIcCglzaW'
        'duYXR1cmUYAiABKAxSCXNpZ25hdHVyZRISCgRoYXNoGAMgASgMUgRoYXNo');
