// This is a generated file - do not edit.
//
// Generated from custom_fees.proto.

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

@$core.Deprecated('Use fractionalFeeDescriptor instead')
const FractionalFee$json = {
  '1': 'FractionalFee',
  '2': [
    {
      '1': 'fractional_amount',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.Fraction',
      '10': 'fractionalAmount'
    },
    {'1': 'minimum_amount', '3': 2, '4': 1, '5': 3, '10': 'minimumAmount'},
    {'1': 'maximum_amount', '3': 3, '4': 1, '5': 3, '10': 'maximumAmount'},
    {'1': 'net_of_transfers', '3': 4, '4': 1, '5': 8, '10': 'netOfTransfers'},
  ],
};

/// Descriptor for `FractionalFee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fractionalFeeDescriptor = $convert.base64Decode(
    'Cg1GcmFjdGlvbmFsRmVlEjwKEWZyYWN0aW9uYWxfYW1vdW50GAEgASgLMg8ucHJvdG8uRnJhY3'
    'Rpb25SEGZyYWN0aW9uYWxBbW91bnQSJQoObWluaW11bV9hbW91bnQYAiABKANSDW1pbmltdW1B'
    'bW91bnQSJQoObWF4aW11bV9hbW91bnQYAyABKANSDW1heGltdW1BbW91bnQSKAoQbmV0X29mX3'
    'RyYW5zZmVycxgEIAEoCFIObmV0T2ZUcmFuc2ZlcnM=');

@$core.Deprecated('Use fixedFeeDescriptor instead')
const FixedFee$json = {
  '1': 'FixedFee',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 3, '10': 'amount'},
    {
      '1': 'denominating_token_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'denominatingTokenId'
    },
  ],
};

/// Descriptor for `FixedFee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixedFeeDescriptor = $convert.base64Decode(
    'CghGaXhlZEZlZRIWCgZhbW91bnQYASABKANSBmFtb3VudBJCChVkZW5vbWluYXRpbmdfdG9rZW'
    '5faWQYAiABKAsyDi5wcm90by5Ub2tlbklEUhNkZW5vbWluYXRpbmdUb2tlbklk');

@$core.Deprecated('Use royaltyFeeDescriptor instead')
const RoyaltyFee$json = {
  '1': 'RoyaltyFee',
  '2': [
    {
      '1': 'exchange_value_fraction',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.Fraction',
      '10': 'exchangeValueFraction'
    },
    {
      '1': 'fallback_fee',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.FixedFee',
      '10': 'fallbackFee'
    },
  ],
};

/// Descriptor for `RoyaltyFee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List royaltyFeeDescriptor = $convert.base64Decode(
    'CgpSb3lhbHR5RmVlEkcKF2V4Y2hhbmdlX3ZhbHVlX2ZyYWN0aW9uGAEgASgLMg8ucHJvdG8uRn'
    'JhY3Rpb25SFWV4Y2hhbmdlVmFsdWVGcmFjdGlvbhIyCgxmYWxsYmFja19mZWUYAiABKAsyDy5w'
    'cm90by5GaXhlZEZlZVILZmFsbGJhY2tGZWU=');

@$core.Deprecated('Use customFeeDescriptor instead')
const CustomFee$json = {
  '1': 'CustomFee',
  '2': [
    {
      '1': 'fixed_fee',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.FixedFee',
      '9': 0,
      '10': 'fixedFee'
    },
    {
      '1': 'fractional_fee',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.FractionalFee',
      '9': 0,
      '10': 'fractionalFee'
    },
    {
      '1': 'royalty_fee',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.RoyaltyFee',
      '9': 0,
      '10': 'royaltyFee'
    },
    {
      '1': 'fee_collector_account_id',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'feeCollectorAccountId'
    },
    {
      '1': 'all_collectors_are_exempt',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'allCollectorsAreExempt'
    },
  ],
  '8': [
    {'1': 'fee'},
  ],
};

/// Descriptor for `CustomFee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customFeeDescriptor = $convert.base64Decode(
    'CglDdXN0b21GZWUSLgoJZml4ZWRfZmVlGAEgASgLMg8ucHJvdG8uRml4ZWRGZWVIAFIIZml4ZW'
    'RGZWUSPQoOZnJhY3Rpb25hbF9mZWUYAiABKAsyFC5wcm90by5GcmFjdGlvbmFsRmVlSABSDWZy'
    'YWN0aW9uYWxGZWUSNAoLcm95YWx0eV9mZWUYBCABKAsyES5wcm90by5Sb3lhbHR5RmVlSABSCn'
    'JveWFsdHlGZWUSSQoYZmVlX2NvbGxlY3Rvcl9hY2NvdW50X2lkGAMgASgLMhAucHJvdG8uQWNj'
    'b3VudElEUhVmZWVDb2xsZWN0b3JBY2NvdW50SWQSOQoZYWxsX2NvbGxlY3RvcnNfYXJlX2V4ZW'
    '1wdBgFIAEoCFIWYWxsQ29sbGVjdG9yc0FyZUV4ZW1wdEIFCgNmZWU=');

@$core.Deprecated('Use assessedCustomFeeDescriptor instead')
const AssessedCustomFee$json = {
  '1': 'AssessedCustomFee',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 3, '10': 'amount'},
    {
      '1': 'token_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenId'
    },
    {
      '1': 'fee_collector_account_id',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'feeCollectorAccountId'
    },
    {
      '1': 'effective_payer_account_id',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'effectivePayerAccountId'
    },
  ],
};

/// Descriptor for `AssessedCustomFee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assessedCustomFeeDescriptor = $convert.base64Decode(
    'ChFBc3Nlc3NlZEN1c3RvbUZlZRIWCgZhbW91bnQYASABKANSBmFtb3VudBIpCgh0b2tlbl9pZB'
    'gCIAEoCzIOLnByb3RvLlRva2VuSURSB3Rva2VuSWQSSQoYZmVlX2NvbGxlY3Rvcl9hY2NvdW50'
    'X2lkGAMgASgLMhAucHJvdG8uQWNjb3VudElEUhVmZWVDb2xsZWN0b3JBY2NvdW50SWQSTQoaZW'
    'ZmZWN0aXZlX3BheWVyX2FjY291bnRfaWQYBCADKAsyEC5wcm90by5BY2NvdW50SURSF2VmZmVj'
    'dGl2ZVBheWVyQWNjb3VudElk');

@$core.Deprecated('Use fixedCustomFeeDescriptor instead')
const FixedCustomFee$json = {
  '1': 'FixedCustomFee',
  '2': [
    {
      '1': 'fixed_fee',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.FixedFee',
      '10': 'fixedFee'
    },
    {
      '1': 'fee_collector_account_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'feeCollectorAccountId'
    },
  ],
};

/// Descriptor for `FixedCustomFee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixedCustomFeeDescriptor = $convert.base64Decode(
    'Cg5GaXhlZEN1c3RvbUZlZRIsCglmaXhlZF9mZWUYASABKAsyDy5wcm90by5GaXhlZEZlZVIIZm'
    'l4ZWRGZWUSSQoYZmVlX2NvbGxlY3Rvcl9hY2NvdW50X2lkGAIgASgLMhAucHJvdG8uQWNjb3Vu'
    'dElEUhVmZWVDb2xsZWN0b3JBY2NvdW50SWQ=');

@$core.Deprecated('Use fixedCustomFeeListDescriptor instead')
const FixedCustomFeeList$json = {
  '1': 'FixedCustomFeeList',
  '2': [
    {
      '1': 'fees',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.FixedCustomFee',
      '10': 'fees'
    },
  ],
};

/// Descriptor for `FixedCustomFeeList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixedCustomFeeListDescriptor = $convert.base64Decode(
    'ChJGaXhlZEN1c3RvbUZlZUxpc3QSKQoEZmVlcxgBIAMoCzIVLnByb3RvLkZpeGVkQ3VzdG9tRm'
    'VlUgRmZWVz');

@$core.Deprecated('Use feeExemptKeyListDescriptor instead')
const FeeExemptKeyList$json = {
  '1': 'FeeExemptKeyList',
  '2': [
    {'1': 'keys', '3': 1, '4': 3, '5': 11, '6': '.proto.Key', '10': 'keys'},
  ],
};

/// Descriptor for `FeeExemptKeyList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeExemptKeyListDescriptor = $convert.base64Decode(
    'ChBGZWVFeGVtcHRLZXlMaXN0Eh4KBGtleXMYASADKAsyCi5wcm90by5LZXlSBGtleXM=');

@$core.Deprecated('Use customFeeLimitDescriptor instead')
const CustomFeeLimit$json = {
  '1': 'CustomFeeLimit',
  '2': [
    {
      '1': 'account_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountId'
    },
    {
      '1': 'fees',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.FixedFee',
      '10': 'fees'
    },
  ],
};

/// Descriptor for `CustomFeeLimit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customFeeLimitDescriptor = $convert.base64Decode(
    'Cg5DdXN0b21GZWVMaW1pdBIvCgphY2NvdW50X2lkGAEgASgLMhAucHJvdG8uQWNjb3VudElEUg'
    'lhY2NvdW50SWQSIwoEZmVlcxgCIAMoCzIPLnByb3RvLkZpeGVkRmVlUgRmZWVz');
