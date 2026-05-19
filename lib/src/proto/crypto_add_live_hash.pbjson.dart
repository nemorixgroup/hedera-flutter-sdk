// This is a generated file - do not edit.
//
// Generated from crypto_add_live_hash.proto.

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

@$core.Deprecated('Use liveHashDescriptor instead')
const LiveHash$json = {
  '1': 'LiveHash',
  '2': [
    {
      '1': 'accountId',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountId'
    },
    {'1': 'hash', '3': 2, '4': 1, '5': 12, '10': 'hash'},
    {'1': 'keys', '3': 3, '4': 1, '5': 11, '6': '.proto.KeyList', '10': 'keys'},
    {
      '1': 'duration',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'duration'
    },
  ],
};

/// Descriptor for `LiveHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveHashDescriptor = $convert.base64Decode(
    'CghMaXZlSGFzaBIuCglhY2NvdW50SWQYASABKAsyEC5wcm90by5BY2NvdW50SURSCWFjY291bn'
    'RJZBISCgRoYXNoGAIgASgMUgRoYXNoEiIKBGtleXMYAyABKAsyDi5wcm90by5LZXlMaXN0UgRr'
    'ZXlzEisKCGR1cmF0aW9uGAUgASgLMg8ucHJvdG8uRHVyYXRpb25SCGR1cmF0aW9u');

@$core.Deprecated('Use cryptoAddLiveHashTransactionBodyDescriptor instead')
const CryptoAddLiveHashTransactionBody$json = {
  '1': 'CryptoAddLiveHashTransactionBody',
  '2': [
    {
      '1': 'liveHash',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.LiveHash',
      '10': 'liveHash'
    },
  ],
};

/// Descriptor for `CryptoAddLiveHashTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoAddLiveHashTransactionBodyDescriptor =
    $convert.base64Decode(
        'CiBDcnlwdG9BZGRMaXZlSGFzaFRyYW5zYWN0aW9uQm9keRIrCghsaXZlSGFzaBgDIAEoCzIPLn'
        'Byb3RvLkxpdmVIYXNoUghsaXZlSGFzaA==');
