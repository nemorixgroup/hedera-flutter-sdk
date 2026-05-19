// This is a generated file - do not edit.
//
// Generated from crypto_approve_allowance.proto.

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

@$core.Deprecated('Use cryptoApproveAllowanceTransactionBodyDescriptor instead')
const CryptoApproveAllowanceTransactionBody$json = {
  '1': 'CryptoApproveAllowanceTransactionBody',
  '2': [
    {
      '1': 'cryptoAllowances',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.CryptoAllowance',
      '10': 'cryptoAllowances'
    },
    {
      '1': 'nftAllowances',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.NftAllowance',
      '10': 'nftAllowances'
    },
    {
      '1': 'tokenAllowances',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenAllowance',
      '10': 'tokenAllowances'
    },
  ],
};

/// Descriptor for `CryptoApproveAllowanceTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoApproveAllowanceTransactionBodyDescriptor =
    $convert.base64Decode(
        'CiVDcnlwdG9BcHByb3ZlQWxsb3dhbmNlVHJhbnNhY3Rpb25Cb2R5EkIKEGNyeXB0b0FsbG93YW'
        '5jZXMYASADKAsyFi5wcm90by5DcnlwdG9BbGxvd2FuY2VSEGNyeXB0b0FsbG93YW5jZXMSOQoN'
        'bmZ0QWxsb3dhbmNlcxgCIAMoCzITLnByb3RvLk5mdEFsbG93YW5jZVINbmZ0QWxsb3dhbmNlcx'
        'I/Cg90b2tlbkFsbG93YW5jZXMYAyADKAsyFS5wcm90by5Ub2tlbkFsbG93YW5jZVIPdG9rZW5B'
        'bGxvd2FuY2Vz');

@$core.Deprecated('Use cryptoAllowanceDescriptor instead')
const CryptoAllowance$json = {
  '1': 'CryptoAllowance',
  '2': [
    {
      '1': 'owner',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'owner'
    },
    {
      '1': 'spender',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'spender'
    },
    {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `CryptoAllowance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoAllowanceDescriptor = $convert.base64Decode(
    'Cg9DcnlwdG9BbGxvd2FuY2USJgoFb3duZXIYASABKAsyEC5wcm90by5BY2NvdW50SURSBW93bm'
    'VyEioKB3NwZW5kZXIYAiABKAsyEC5wcm90by5BY2NvdW50SURSB3NwZW5kZXISFgoGYW1vdW50'
    'GAMgASgDUgZhbW91bnQ=');

@$core.Deprecated('Use nftAllowanceDescriptor instead')
const NftAllowance$json = {
  '1': 'NftAllowance',
  '2': [
    {
      '1': 'tokenId',
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
    {
      '1': 'spender',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'spender'
    },
    {'1': 'serial_numbers', '3': 4, '4': 3, '5': 3, '10': 'serialNumbers'},
    {
      '1': 'approved_for_all',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'approvedForAll'
    },
    {
      '1': 'delegating_spender',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'delegatingSpender'
    },
  ],
};

/// Descriptor for `NftAllowance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nftAllowanceDescriptor = $convert.base64Decode(
    'CgxOZnRBbGxvd2FuY2USKAoHdG9rZW5JZBgBIAEoCzIOLnByb3RvLlRva2VuSURSB3Rva2VuSW'
    'QSJgoFb3duZXIYAiABKAsyEC5wcm90by5BY2NvdW50SURSBW93bmVyEioKB3NwZW5kZXIYAyAB'
    'KAsyEC5wcm90by5BY2NvdW50SURSB3NwZW5kZXISJQoOc2VyaWFsX251bWJlcnMYBCADKANSDX'
    'NlcmlhbE51bWJlcnMSRAoQYXBwcm92ZWRfZm9yX2FsbBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1'
    'Zi5Cb29sVmFsdWVSDmFwcHJvdmVkRm9yQWxsEj8KEmRlbGVnYXRpbmdfc3BlbmRlchgGIAEoCz'
    'IQLnByb3RvLkFjY291bnRJRFIRZGVsZWdhdGluZ1NwZW5kZXI=');

@$core.Deprecated('Use tokenAllowanceDescriptor instead')
const TokenAllowance$json = {
  '1': 'TokenAllowance',
  '2': [
    {
      '1': 'tokenId',
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
    {
      '1': 'spender',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'spender'
    },
    {'1': 'amount', '3': 4, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `TokenAllowance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenAllowanceDescriptor = $convert.base64Decode(
    'Cg5Ub2tlbkFsbG93YW5jZRIoCgd0b2tlbklkGAEgASgLMg4ucHJvdG8uVG9rZW5JRFIHdG9rZW'
    '5JZBImCgVvd25lchgCIAEoCzIQLnByb3RvLkFjY291bnRJRFIFb3duZXISKgoHc3BlbmRlchgD'
    'IAEoCzIQLnByb3RvLkFjY291bnRJRFIHc3BlbmRlchIWCgZhbW91bnQYBCABKANSBmFtb3VudA'
    '==');
