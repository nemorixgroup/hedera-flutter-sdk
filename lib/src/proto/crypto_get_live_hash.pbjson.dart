// This is a generated file - do not edit.
//
// Generated from crypto_get_live_hash.proto.

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

@$core.Deprecated('Use cryptoGetLiveHashQueryDescriptor instead')
const CryptoGetLiveHashQuery$json = {
  '1': 'CryptoGetLiveHashQuery',
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
    {'1': 'hash', '3': 3, '4': 1, '5': 12, '10': 'hash'},
  ],
};

/// Descriptor for `CryptoGetLiveHashQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetLiveHashQueryDescriptor = $convert.base64Decode(
    'ChZDcnlwdG9HZXRMaXZlSGFzaFF1ZXJ5EioKBmhlYWRlchgBIAEoCzISLnByb3RvLlF1ZXJ5SG'
    'VhZGVyUgZoZWFkZXISLgoJYWNjb3VudElEGAIgASgLMhAucHJvdG8uQWNjb3VudElEUglhY2Nv'
    'dW50SUQSEgoEaGFzaBgDIAEoDFIEaGFzaA==');

@$core.Deprecated('Use cryptoGetLiveHashResponseDescriptor instead')
const CryptoGetLiveHashResponse$json = {
  '1': 'CryptoGetLiveHashResponse',
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
      '1': 'liveHash',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.LiveHash',
      '10': 'liveHash'
    },
  ],
};

/// Descriptor for `CryptoGetLiveHashResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoGetLiveHashResponseDescriptor = $convert.base64Decode(
    'ChlDcnlwdG9HZXRMaXZlSGFzaFJlc3BvbnNlEi0KBmhlYWRlchgBIAEoCzIVLnByb3RvLlJlc3'
    'BvbnNlSGVhZGVyUgZoZWFkZXISKwoIbGl2ZUhhc2gYAiABKAsyDy5wcm90by5MaXZlSGFzaFII'
    'bGl2ZUhhc2g=');
