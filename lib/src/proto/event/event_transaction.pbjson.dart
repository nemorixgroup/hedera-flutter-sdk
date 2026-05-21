// This is a generated file - do not edit.
//
// Generated from event/event_transaction.proto.

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

@$core.Deprecated('Use transactionGroupRoleDescriptor instead')
const TransactionGroupRole$json = {
  '1': 'TransactionGroupRole',
  '2': [
    {'1': 'STANDALONE', '2': 0},
    {'1': 'FIRST_CHILD', '2': 1},
    {'1': 'MIDDLE_CHILD', '2': 2},
    {'1': 'LAST_CHILD', '2': 3},
    {'1': 'STARTING_PARENT', '2': 4},
    {'1': 'PARENT', '2': 5},
    {'1': 'ENDING_PARENT', '2': 6},
  ],
};

/// Descriptor for `TransactionGroupRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transactionGroupRoleDescriptor = $convert.base64Decode(
    'ChRUcmFuc2FjdGlvbkdyb3VwUm9sZRIOCgpTVEFOREFMT05FEAASDwoLRklSU1RfQ0hJTEQQAR'
    'IQCgxNSURETEVfQ0hJTEQQAhIOCgpMQVNUX0NISUxEEAMSEwoPU1RBUlRJTkdfUEFSRU5UEAQS'
    'CgoGUEFSRU5UEAUSEQoNRU5ESU5HX1BBUkVOVBAG');

@$core.Deprecated('Use eventTransactionDescriptor instead')
const EventTransaction$json = {
  '1': 'EventTransaction',
  '2': [
    {
      '1': 'application_transaction',
      '3': 1,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'applicationTransaction'
    },
    {
      '1': 'state_signature_transaction',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.platform.event.StateSignatureTransaction',
      '9': 0,
      '10': 'stateSignatureTransaction'
    },
    {
      '1': 'transaction_group_role',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.com.hedera.hapi.platform.event.TransactionGroupRole',
      '10': 'transactionGroupRole'
    },
  ],
  '8': [
    {'1': 'transaction'},
  ],
};

/// Descriptor for `EventTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventTransactionDescriptor = $convert.base64Decode(
    'ChBFdmVudFRyYW5zYWN0aW9uEjkKF2FwcGxpY2F0aW9uX3RyYW5zYWN0aW9uGAEgASgMSABSFm'
    'FwcGxpY2F0aW9uVHJhbnNhY3Rpb24Sewobc3RhdGVfc2lnbmF0dXJlX3RyYW5zYWN0aW9uGAIg'
    'ASgLMjkuY29tLmhlZGVyYS5oYXBpLnBsYXRmb3JtLmV2ZW50LlN0YXRlU2lnbmF0dXJlVHJhbn'
    'NhY3Rpb25IAFIZc3RhdGVTaWduYXR1cmVUcmFuc2FjdGlvbhJqChZ0cmFuc2FjdGlvbl9ncm91'
    'cF9yb2xlGAMgASgOMjQuY29tLmhlZGVyYS5oYXBpLnBsYXRmb3JtLmV2ZW50LlRyYW5zYWN0aW'
    '9uR3JvdXBSb2xlUhR0cmFuc2FjdGlvbkdyb3VwUm9sZUINCgt0cmFuc2FjdGlvbg==');
