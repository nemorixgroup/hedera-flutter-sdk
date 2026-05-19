// This is a generated file - do not edit.
//
// Generated from schedule_get_info.proto.

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

@$core.Deprecated('Use scheduleGetInfoQueryDescriptor instead')
const ScheduleGetInfoQuery$json = {
  '1': 'ScheduleGetInfoQuery',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.QueryHeader',
      '10': 'header'
    },
    {
      '1': 'scheduleID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleID',
      '10': 'scheduleID'
    },
  ],
};

/// Descriptor for `ScheduleGetInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleGetInfoQueryDescriptor = $convert.base64Decode(
    'ChRTY2hlZHVsZUdldEluZm9RdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdWVyeUhlYW'
    'RlclIGaGVhZGVyEjEKCnNjaGVkdWxlSUQYAiABKAsyES5wcm90by5TY2hlZHVsZUlEUgpzY2hl'
    'ZHVsZUlE');

@$core.Deprecated('Use scheduleInfoDescriptor instead')
const ScheduleInfo$json = {
  '1': 'ScheduleInfo',
  '2': [
    {
      '1': 'scheduleID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleID',
      '10': 'scheduleID'
    },
    {
      '1': 'deletion_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '9': 0,
      '10': 'deletionTime'
    },
    {
      '1': 'execution_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '9': 0,
      '10': 'executionTime'
    },
    {
      '1': 'expirationTime',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expirationTime'
    },
    {
      '1': 'scheduledTransactionBody',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.SchedulableTransactionBody',
      '10': 'scheduledTransactionBody'
    },
    {'1': 'memo', '3': 6, '4': 1, '5': 9, '10': 'memo'},
    {
      '1': 'adminKey',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {
      '1': 'signers',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.KeyList',
      '10': 'signers'
    },
    {
      '1': 'creatorAccountID',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'creatorAccountID'
    },
    {
      '1': 'payerAccountID',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'payerAccountID'
    },
    {
      '1': 'scheduledTransactionID',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionID',
      '10': 'scheduledTransactionID'
    },
    {'1': 'ledger_id', '3': 12, '4': 1, '5': 12, '10': 'ledgerId'},
    {'1': 'wait_for_expiry', '3': 13, '4': 1, '5': 8, '10': 'waitForExpiry'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `ScheduleInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleInfoDescriptor = $convert.base64Decode(
    'CgxTY2hlZHVsZUluZm8SMQoKc2NoZWR1bGVJRBgBIAEoCzIRLnByb3RvLlNjaGVkdWxlSURSCn'
    'NjaGVkdWxlSUQSNwoNZGVsZXRpb25fdGltZRgCIAEoCzIQLnByb3RvLlRpbWVzdGFtcEgAUgxk'
    'ZWxldGlvblRpbWUSOQoOZXhlY3V0aW9uX3RpbWUYAyABKAsyEC5wcm90by5UaW1lc3RhbXBIAF'
    'INZXhlY3V0aW9uVGltZRI4Cg5leHBpcmF0aW9uVGltZRgEIAEoCzIQLnByb3RvLlRpbWVzdGFt'
    'cFIOZXhwaXJhdGlvblRpbWUSXQoYc2NoZWR1bGVkVHJhbnNhY3Rpb25Cb2R5GAUgASgLMiEucH'
    'JvdG8uU2NoZWR1bGFibGVUcmFuc2FjdGlvbkJvZHlSGHNjaGVkdWxlZFRyYW5zYWN0aW9uQm9k'
    'eRISCgRtZW1vGAYgASgJUgRtZW1vEiYKCGFkbWluS2V5GAcgASgLMgoucHJvdG8uS2V5UghhZG'
    '1pbktleRIoCgdzaWduZXJzGAggASgLMg4ucHJvdG8uS2V5TGlzdFIHc2lnbmVycxI8ChBjcmVh'
    'dG9yQWNjb3VudElEGAkgASgLMhAucHJvdG8uQWNjb3VudElEUhBjcmVhdG9yQWNjb3VudElEEj'
    'gKDnBheWVyQWNjb3VudElEGAogASgLMhAucHJvdG8uQWNjb3VudElEUg5wYXllckFjY291bnRJ'
    'RBJMChZzY2hlZHVsZWRUcmFuc2FjdGlvbklEGAsgASgLMhQucHJvdG8uVHJhbnNhY3Rpb25JRF'
    'IWc2NoZWR1bGVkVHJhbnNhY3Rpb25JRBIbCglsZWRnZXJfaWQYDCABKAxSCGxlZGdlcklkEiYK'
    'D3dhaXRfZm9yX2V4cGlyeRgNIAEoCFINd2FpdEZvckV4cGlyeUIGCgRkYXRh');

@$core.Deprecated('Use scheduleGetInfoResponseDescriptor instead')
const ScheduleGetInfoResponse$json = {
  '1': 'ScheduleGetInfoResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'scheduleInfo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleInfo',
      '10': 'scheduleInfo'
    },
  ],
};

/// Descriptor for `ScheduleGetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleGetInfoResponseDescriptor = $convert.base64Decode(
    'ChdTY2hlZHVsZUdldEluZm9SZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by5SZXNwb2'
    '5zZUhlYWRlclIGaGVhZGVyEjcKDHNjaGVkdWxlSW5mbxgCIAEoCzITLnByb3RvLlNjaGVkdWxl'
    'SW5mb1IMc2NoZWR1bGVJbmZv');
