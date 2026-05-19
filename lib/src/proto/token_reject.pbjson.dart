// This is a generated file - do not edit.
//
// Generated from token_reject.proto.

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

@$core.Deprecated('Use tokenRejectTransactionBodyDescriptor instead')
const TokenRejectTransactionBody$json = {
  '1': 'TokenRejectTransactionBody',
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
      '1': 'rejections',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenReference',
      '10': 'rejections'
    },
  ],
};

/// Descriptor for `TokenRejectTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenRejectTransactionBodyDescriptor =
    $convert.base64Decode(
        'ChpUb2tlblJlamVjdFRyYW5zYWN0aW9uQm9keRImCgVvd25lchgBIAEoCzIQLnByb3RvLkFjY2'
        '91bnRJRFIFb3duZXISNQoKcmVqZWN0aW9ucxgCIAMoCzIVLnByb3RvLlRva2VuUmVmZXJlbmNl'
        'UgpyZWplY3Rpb25z');

@$core.Deprecated('Use tokenReferenceDescriptor instead')
const TokenReference$json = {
  '1': 'TokenReference',
  '2': [
    {
      '1': 'fungible_token',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '9': 0,
      '10': 'fungibleToken'
    },
    {
      '1': 'nft',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.NftID',
      '9': 0,
      '10': 'nft'
    },
  ],
  '8': [
    {'1': 'token_identifier'},
  ],
};

/// Descriptor for `TokenReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenReferenceDescriptor = $convert.base64Decode(
    'Cg5Ub2tlblJlZmVyZW5jZRI3Cg5mdW5naWJsZV90b2tlbhgBIAEoCzIOLnByb3RvLlRva2VuSU'
    'RIAFINZnVuZ2libGVUb2tlbhIgCgNuZnQYAiABKAsyDC5wcm90by5OZnRJREgAUgNuZnRCEgoQ'
    'dG9rZW5faWRlbnRpZmllcg==');
