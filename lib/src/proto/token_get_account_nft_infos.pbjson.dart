// This is a generated file - do not edit.
//
// Generated from token_get_account_nft_infos.proto.

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

@$core.Deprecated('Use tokenGetAccountNftInfosQueryDescriptor instead')
const TokenGetAccountNftInfosQuery$json = {
  '1': 'TokenGetAccountNftInfosQuery',
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
    {'1': 'start', '3': 3, '4': 1, '5': 3, '10': 'start'},
    {'1': 'end', '3': 4, '4': 1, '5': 3, '10': 'end'},
  ],
};

/// Descriptor for `TokenGetAccountNftInfosQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGetAccountNftInfosQueryDescriptor =
    $convert.base64Decode(
        'ChxUb2tlbkdldEFjY291bnROZnRJbmZvc1F1ZXJ5EioKBmhlYWRlchgBIAEoCzISLnByb3RvLl'
        'F1ZXJ5SGVhZGVyUgZoZWFkZXISLgoJYWNjb3VudElEGAIgASgLMhAucHJvdG8uQWNjb3VudElE'
        'UglhY2NvdW50SUQSFAoFc3RhcnQYAyABKANSBXN0YXJ0EhAKA2VuZBgEIAEoA1IDZW5k');

@$core.Deprecated('Use tokenGetAccountNftInfosResponseDescriptor instead')
const TokenGetAccountNftInfosResponse$json = {
  '1': 'TokenGetAccountNftInfosResponse',
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
      '1': 'nfts',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenNftInfo',
      '10': 'nfts'
    },
  ],
};

/// Descriptor for `TokenGetAccountNftInfosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGetAccountNftInfosResponseDescriptor =
    $convert.base64Decode(
        'Ch9Ub2tlbkdldEFjY291bnROZnRJbmZvc1Jlc3BvbnNlEi0KBmhlYWRlchgBIAEoCzIVLnByb3'
        'RvLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISJwoEbmZ0cxgCIAMoCzITLnByb3RvLlRva2VuTmZ0'
        'SW5mb1IEbmZ0cw==');
