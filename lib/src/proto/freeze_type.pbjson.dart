// This is a generated file - do not edit.
//
// Generated from freeze_type.proto.

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

@$core.Deprecated('Use freezeTypeDescriptor instead')
const FreezeType$json = {
  '1': 'FreezeType',
  '2': [
    {'1': 'UNKNOWN_FREEZE_TYPE', '2': 0},
    {'1': 'FREEZE_ONLY', '2': 1},
    {'1': 'PREPARE_UPGRADE', '2': 2},
    {'1': 'FREEZE_UPGRADE', '2': 3},
    {'1': 'FREEZE_ABORT', '2': 4},
    {'1': 'TELEMETRY_UPGRADE', '2': 5},
  ],
};

/// Descriptor for `FreezeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List freezeTypeDescriptor = $convert.base64Decode(
    'CgpGcmVlemVUeXBlEhcKE1VOS05PV05fRlJFRVpFX1RZUEUQABIPCgtGUkVFWkVfT05MWRABEh'
    'MKD1BSRVBBUkVfVVBHUkFERRACEhIKDkZSRUVaRV9VUEdSQURFEAMSEAoMRlJFRVpFX0FCT1JU'
    'EAQSFQoRVEVMRU1FVFJZX1VQR1JBREUQBQ==');
