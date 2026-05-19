// This is a generated file - do not edit.
//
// Generated from token_fee_schedule_update.proto.

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

@$core.Deprecated('Use tokenFeeScheduleUpdateTransactionBodyDescriptor instead')
const TokenFeeScheduleUpdateTransactionBody$json = {
  '1': 'TokenFeeScheduleUpdateTransactionBody',
  '2': [
    {
      '1': 'token_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenId'
    },
    {
      '1': 'custom_fees',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.CustomFee',
      '10': 'customFees'
    },
  ],
};

/// Descriptor for `TokenFeeScheduleUpdateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenFeeScheduleUpdateTransactionBodyDescriptor =
    $convert.base64Decode(
        'CiVUb2tlbkZlZVNjaGVkdWxlVXBkYXRlVHJhbnNhY3Rpb25Cb2R5EikKCHRva2VuX2lkGAEgAS'
        'gLMg4ucHJvdG8uVG9rZW5JRFIHdG9rZW5JZBIxCgtjdXN0b21fZmVlcxgCIAMoCzIQLnByb3Rv'
        'LkN1c3RvbUZlZVIKY3VzdG9tRmVlcw==');
