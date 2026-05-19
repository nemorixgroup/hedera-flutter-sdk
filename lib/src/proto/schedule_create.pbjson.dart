// This is a generated file - do not edit.
//
// Generated from schedule_create.proto.

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

@$core.Deprecated('Use scheduleCreateTransactionBodyDescriptor instead')
const ScheduleCreateTransactionBody$json = {
  '1': 'ScheduleCreateTransactionBody',
  '2': [
    {
      '1': 'scheduledTransactionBody',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.SchedulableTransactionBody',
      '10': 'scheduledTransactionBody'
    },
    {'1': 'memo', '3': 2, '4': 1, '5': 9, '10': 'memo'},
    {
      '1': 'adminKey',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {
      '1': 'payerAccountID',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'payerAccountID'
    },
    {
      '1': 'expiration_time',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expirationTime'
    },
    {'1': 'wait_for_expiry', '3': 13, '4': 1, '5': 8, '10': 'waitForExpiry'},
  ],
};

/// Descriptor for `ScheduleCreateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleCreateTransactionBodyDescriptor = $convert.base64Decode(
    'Ch1TY2hlZHVsZUNyZWF0ZVRyYW5zYWN0aW9uQm9keRJdChhzY2hlZHVsZWRUcmFuc2FjdGlvbk'
    'JvZHkYASABKAsyIS5wcm90by5TY2hlZHVsYWJsZVRyYW5zYWN0aW9uQm9keVIYc2NoZWR1bGVk'
    'VHJhbnNhY3Rpb25Cb2R5EhIKBG1lbW8YAiABKAlSBG1lbW8SJgoIYWRtaW5LZXkYAyABKAsyCi'
    '5wcm90by5LZXlSCGFkbWluS2V5EjgKDnBheWVyQWNjb3VudElEGAQgASgLMhAucHJvdG8uQWNj'
    'b3VudElEUg5wYXllckFjY291bnRJRBI5Cg9leHBpcmF0aW9uX3RpbWUYBSABKAsyEC5wcm90by'
    '5UaW1lc3RhbXBSDmV4cGlyYXRpb25UaW1lEiYKD3dhaXRfZm9yX2V4cGlyeRgNIAEoCFINd2Fp'
    'dEZvckV4cGlyeQ==');
