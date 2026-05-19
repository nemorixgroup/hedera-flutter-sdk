// This is a generated file - do not edit.
//
// Generated from token_get_nft_infos.proto.

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

@$core.Deprecated('Use tokenGetNftInfosQueryDescriptor instead')
const TokenGetNftInfosQuery$json = {
  '1': 'TokenGetNftInfosQuery',
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
      '1': 'tokenID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenID'
    },
    {'1': 'start', '3': 3, '4': 1, '5': 3, '10': 'start'},
    {'1': 'end', '3': 4, '4': 1, '5': 3, '10': 'end'},
  ],
};

/// Descriptor for `TokenGetNftInfosQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGetNftInfosQueryDescriptor = $convert.base64Decode(
    'ChVUb2tlbkdldE5mdEluZm9zUXVlcnkSKgoGaGVhZGVyGAEgASgLMhIucHJvdG8uUXVlcnlIZW'
    'FkZXJSBmhlYWRlchIoCgd0b2tlbklEGAIgASgLMg4ucHJvdG8uVG9rZW5JRFIHdG9rZW5JRBIU'
    'CgVzdGFydBgDIAEoA1IFc3RhcnQSEAoDZW5kGAQgASgDUgNlbmQ=');

@$core.Deprecated('Use tokenGetNftInfosResponseDescriptor instead')
const TokenGetNftInfosResponse$json = {
  '1': 'TokenGetNftInfosResponse',
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
      '1': 'tokenID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenID'
    },
    {
      '1': 'nfts',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenNftInfo',
      '10': 'nfts'
    },
  ],
};

/// Descriptor for `TokenGetNftInfosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGetNftInfosResponseDescriptor = $convert.base64Decode(
    'ChhUb2tlbkdldE5mdEluZm9zUmVzcG9uc2USLQoGaGVhZGVyGAEgASgLMhUucHJvdG8uUmVzcG'
    '9uc2VIZWFkZXJSBmhlYWRlchIoCgd0b2tlbklEGAIgASgLMg4ucHJvdG8uVG9rZW5JRFIHdG9r'
    'ZW5JRBInCgRuZnRzGAMgAygLMhMucHJvdG8uVG9rZW5OZnRJbmZvUgRuZnRz');
