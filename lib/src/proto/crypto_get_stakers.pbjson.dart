// This is a generated file - do not edit.
//
// Generated from crypto_get_stakers.proto.

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

@$core.Deprecated('Use cryptoGetStakersQueryDescriptor instead')
const CryptoGetStakersQuery$json = {
  '1': 'CryptoGetStakersQuery',
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
      '1': 'accountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `CryptoGetStakersQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetStakersQueryDescriptor = $convert.base64Decode(
    'ChVDcnlwdG9HZXRTdGFrZXJzUXVlcnkSKgoGaGVhZGVyGAEgASgLMhIucHJvdG8uUXVlcnlIZW'
    'FkZXJSBmhlYWRlchIuCglhY2NvdW50SUQYAiABKAsyEC5wcm90by5BY2NvdW50SURSCWFjY291'
    'bnRJRDoCGAE=');

@$core.Deprecated('Use proxyStakerDescriptor instead')
const ProxyStaker$json = {
  '1': 'ProxyStaker',
  '2': [
    {
      '1': 'accountID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
  '7': {'3': true},
};

/// Descriptor for `ProxyStaker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proxyStakerDescriptor = $convert.base64Decode(
    'CgtQcm94eVN0YWtlchIuCglhY2NvdW50SUQYASABKAsyEC5wcm90by5BY2NvdW50SURSCWFjY2'
    '91bnRJRBIWCgZhbW91bnQYAiABKANSBmFtb3VudDoCGAE=');

@$core.Deprecated('Use allProxyStakersDescriptor instead')
const AllProxyStakers$json = {
  '1': 'AllProxyStakers',
  '2': [
    {
      '1': 'accountID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {
      '1': 'proxyStaker',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.ProxyStaker',
      '10': 'proxyStaker'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `AllProxyStakers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allProxyStakersDescriptor = $convert.base64Decode(
    'Cg9BbGxQcm94eVN0YWtlcnMSLgoJYWNjb3VudElEGAEgASgLMhAucHJvdG8uQWNjb3VudElEUg'
    'lhY2NvdW50SUQSNAoLcHJveHlTdGFrZXIYAiADKAsyEi5wcm90by5Qcm94eVN0YWtlclILcHJv'
    'eHlTdGFrZXI6AhgB');

@$core.Deprecated('Use cryptoGetStakersResponseDescriptor instead')
const CryptoGetStakersResponse$json = {
  '1': 'CryptoGetStakersResponse',
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
      '1': 'stakers',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.AllProxyStakers',
      '10': 'stakers'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `CryptoGetStakersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetStakersResponseDescriptor = $convert.base64Decode(
    'ChhDcnlwdG9HZXRTdGFrZXJzUmVzcG9uc2USLQoGaGVhZGVyGAEgASgLMhUucHJvdG8uUmVzcG'
    '9uc2VIZWFkZXJSBmhlYWRlchIwCgdzdGFrZXJzGAMgASgLMhYucHJvdG8uQWxsUHJveHlTdGFr'
    'ZXJzUgdzdGFrZXJzOgIYAQ==');
