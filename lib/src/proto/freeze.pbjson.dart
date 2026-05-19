// This is a generated file - do not edit.
//
// Generated from freeze.proto.

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

@$core.Deprecated('Use freezeTransactionBodyDescriptor instead')
const FreezeTransactionBody$json = {
  '1': 'FreezeTransactionBody',
  '2': [
    {
      '1': 'startHour',
      '3': 1,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'startHour',
    },
    {
      '1': 'startMin',
      '3': 2,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'startMin',
    },
    {
      '1': 'endHour',
      '3': 3,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'endHour',
    },
    {
      '1': 'endMin',
      '3': 4,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'endMin',
    },
    {
      '1': 'update_file',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '10': 'updateFile'
    },
    {'1': 'file_hash', '3': 6, '4': 1, '5': 12, '10': 'fileHash'},
    {
      '1': 'start_time',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'startTime'
    },
    {
      '1': 'freeze_type',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.proto.FreezeType',
      '10': 'freezeType'
    },
  ],
};

/// Descriptor for `FreezeTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List freezeTransactionBodyDescriptor = $convert.base64Decode(
    'ChVGcmVlemVUcmFuc2FjdGlvbkJvZHkSIAoJc3RhcnRIb3VyGAEgASgFQgIYAVIJc3RhcnRIb3'
    'VyEh4KCHN0YXJ0TWluGAIgASgFQgIYAVIIc3RhcnRNaW4SHAoHZW5kSG91chgDIAEoBUICGAFS'
    'B2VuZEhvdXISGgoGZW5kTWluGAQgASgFQgIYAVIGZW5kTWluEi4KC3VwZGF0ZV9maWxlGAUgAS'
    'gLMg0ucHJvdG8uRmlsZUlEUgp1cGRhdGVGaWxlEhsKCWZpbGVfaGFzaBgGIAEoDFIIZmlsZUhh'
    'c2gSLwoKc3RhcnRfdGltZRgHIAEoCzIQLnByb3RvLlRpbWVzdGFtcFIJc3RhcnRUaW1lEjIKC2'
    'ZyZWV6ZV90eXBlGAggASgOMhEucHJvdG8uRnJlZXplVHlwZVIKZnJlZXplVHlwZQ==');
