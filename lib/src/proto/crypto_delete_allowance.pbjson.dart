// This is a generated file - do not edit.
//
// Generated from crypto_delete_allowance.proto.

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

@$core.Deprecated('Use cryptoDeleteAllowanceTransactionBodyDescriptor instead')
const CryptoDeleteAllowanceTransactionBody$json = {
  '1': 'CryptoDeleteAllowanceTransactionBody',
  '2': [
    {
      '1': 'nftAllowances',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.NftRemoveAllowance',
      '10': 'nftAllowances'
    },
  ],
};

/// Descriptor for `CryptoDeleteAllowanceTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoDeleteAllowanceTransactionBodyDescriptor =
    $convert.base64Decode(
        'CiRDcnlwdG9EZWxldGVBbGxvd2FuY2VUcmFuc2FjdGlvbkJvZHkSPwoNbmZ0QWxsb3dhbmNlcx'
        'gCIAMoCzIZLnByb3RvLk5mdFJlbW92ZUFsbG93YW5jZVINbmZ0QWxsb3dhbmNlcw==');

@$core.Deprecated('Use nftRemoveAllowanceDescriptor instead')
const NftRemoveAllowance$json = {
  '1': 'NftRemoveAllowance',
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
      '1': 'owner',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'owner'
    },
    {'1': 'serial_numbers', '3': 3, '4': 3, '5': 3, '10': 'serialNumbers'},
  ],
};

/// Descriptor for `NftRemoveAllowance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nftRemoveAllowanceDescriptor = $convert.base64Decode(
    'ChJOZnRSZW1vdmVBbGxvd2FuY2USKQoIdG9rZW5faWQYASABKAsyDi5wcm90by5Ub2tlbklEUg'
    'd0b2tlbklkEiYKBW93bmVyGAIgASgLMhAucHJvdG8uQWNjb3VudElEUgVvd25lchIlCg5zZXJp'
    'YWxfbnVtYmVycxgDIAMoA1INc2VyaWFsTnVtYmVycw==');
