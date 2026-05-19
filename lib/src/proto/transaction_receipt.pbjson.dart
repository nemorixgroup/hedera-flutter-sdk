// This is a generated file - do not edit.
//
// Generated from transaction_receipt.proto.

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

@$core.Deprecated('Use transactionReceiptDescriptor instead')
const TransactionReceipt$json = {
  '1': 'TransactionReceipt',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.proto.ResponseCodeEnum',
      '10': 'status'
    },
    {
      '1': 'accountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {
      '1': 'fileID',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '10': 'fileID'
    },
    {
      '1': 'contractID',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractID'
    },
    {
      '1': 'exchangeRate',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.ExchangeRateSet',
      '10': 'exchangeRate'
    },
    {
      '1': 'topicID',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.TopicID',
      '10': 'topicID'
    },
    {
      '1': 'topicSequenceNumber',
      '3': 7,
      '4': 1,
      '5': 4,
      '10': 'topicSequenceNumber'
    },
    {
      '1': 'topicRunningHash',
      '3': 8,
      '4': 1,
      '5': 12,
      '10': 'topicRunningHash'
    },
    {
      '1': 'topicRunningHashVersion',
      '3': 9,
      '4': 1,
      '5': 4,
      '10': 'topicRunningHashVersion'
    },
    {
      '1': 'tokenID',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenID'
    },
    {'1': 'newTotalSupply', '3': 11, '4': 1, '5': 4, '10': 'newTotalSupply'},
    {
      '1': 'scheduleID',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleID',
      '10': 'scheduleID'
    },
    {
      '1': 'scheduledTransactionID',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionID',
      '10': 'scheduledTransactionID'
    },
    {'1': 'serialNumbers', '3': 14, '4': 3, '5': 3, '10': 'serialNumbers'},
    {'1': 'node_id', '3': 15, '4': 1, '5': 4, '10': 'nodeId'},
  ],
};

/// Descriptor for `TransactionReceipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionReceiptDescriptor = $convert.base64Decode(
    'ChJUcmFuc2FjdGlvblJlY2VpcHQSLwoGc3RhdHVzGAEgASgOMhcucHJvdG8uUmVzcG9uc2VDb2'
    'RlRW51bVIGc3RhdHVzEi4KCWFjY291bnRJRBgCIAEoCzIQLnByb3RvLkFjY291bnRJRFIJYWNj'
    'b3VudElEEiUKBmZpbGVJRBgDIAEoCzINLnByb3RvLkZpbGVJRFIGZmlsZUlEEjEKCmNvbnRyYW'
    'N0SUQYBCABKAsyES5wcm90by5Db250cmFjdElEUgpjb250cmFjdElEEjoKDGV4Y2hhbmdlUmF0'
    'ZRgFIAEoCzIWLnByb3RvLkV4Y2hhbmdlUmF0ZVNldFIMZXhjaGFuZ2VSYXRlEigKB3RvcGljSU'
    'QYBiABKAsyDi5wcm90by5Ub3BpY0lEUgd0b3BpY0lEEjAKE3RvcGljU2VxdWVuY2VOdW1iZXIY'
    'ByABKARSE3RvcGljU2VxdWVuY2VOdW1iZXISKgoQdG9waWNSdW5uaW5nSGFzaBgIIAEoDFIQdG'
    '9waWNSdW5uaW5nSGFzaBI4Chd0b3BpY1J1bm5pbmdIYXNoVmVyc2lvbhgJIAEoBFIXdG9waWNS'
    'dW5uaW5nSGFzaFZlcnNpb24SKAoHdG9rZW5JRBgKIAEoCzIOLnByb3RvLlRva2VuSURSB3Rva2'
    'VuSUQSJgoObmV3VG90YWxTdXBwbHkYCyABKARSDm5ld1RvdGFsU3VwcGx5EjEKCnNjaGVkdWxl'
    'SUQYDCABKAsyES5wcm90by5TY2hlZHVsZUlEUgpzY2hlZHVsZUlEEkwKFnNjaGVkdWxlZFRyYW'
    '5zYWN0aW9uSUQYDSABKAsyFC5wcm90by5UcmFuc2FjdGlvbklEUhZzY2hlZHVsZWRUcmFuc2Fj'
    'dGlvbklEEiQKDXNlcmlhbE51bWJlcnMYDiADKANSDXNlcmlhbE51bWJlcnMSFwoHbm9kZV9pZB'
    'gPIAEoBFIGbm9kZUlk');
