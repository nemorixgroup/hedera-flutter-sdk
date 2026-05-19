// This is a generated file - do not edit.
//
// Generated from crypto_delete_live_hash.proto.

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

@$core.Deprecated('Use cryptoDeleteLiveHashTransactionBodyDescriptor instead')
const CryptoDeleteLiveHashTransactionBody$json = {
  '1': 'CryptoDeleteLiveHashTransactionBody',
  '2': [
    {
      '1': 'accountOfLiveHash',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountOfLiveHash'
    },
    {
      '1': 'liveHashToDelete',
      '3': 2,
      '4': 1,
      '5': 12,
      '10': 'liveHashToDelete'
    },
  ],
};

/// Descriptor for `CryptoDeleteLiveHashTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoDeleteLiveHashTransactionBodyDescriptor =
    $convert.base64Decode(
        'CiNDcnlwdG9EZWxldGVMaXZlSGFzaFRyYW5zYWN0aW9uQm9keRI+ChFhY2NvdW50T2ZMaXZlSG'
        'FzaBgBIAEoCzIQLnByb3RvLkFjY291bnRJRFIRYWNjb3VudE9mTGl2ZUhhc2gSKgoQbGl2ZUhh'
        'c2hUb0RlbGV0ZRgCIAEoDFIQbGl2ZUhhc2hUb0RlbGV0ZQ==');
