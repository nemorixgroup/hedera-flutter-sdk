// This is a generated file - do not edit.
//
// Generated from crypto_delete.proto.

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

@$core.Deprecated('Use cryptoDeleteTransactionBodyDescriptor instead')
const CryptoDeleteTransactionBody$json = {
  '1': 'CryptoDeleteTransactionBody',
  '2': [
    {
      '1': 'transferAccountID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'transferAccountID'
    },
    {
      '1': 'deleteAccountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'deleteAccountID'
    },
  ],
};

/// Descriptor for `CryptoDeleteTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoDeleteTransactionBodyDescriptor =
    $convert.base64Decode(
        'ChtDcnlwdG9EZWxldGVUcmFuc2FjdGlvbkJvZHkSPgoRdHJhbnNmZXJBY2NvdW50SUQYASABKA'
        'syEC5wcm90by5BY2NvdW50SURSEXRyYW5zZmVyQWNjb3VudElEEjoKD2RlbGV0ZUFjY291bnRJ'
        'RBgCIAEoCzIQLnByb3RvLkFjY291bnRJRFIPZGVsZXRlQWNjb3VudElE');
