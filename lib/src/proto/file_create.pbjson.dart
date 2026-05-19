// This is a generated file - do not edit.
//
// Generated from file_create.proto.

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

@$core.Deprecated('Use fileCreateTransactionBodyDescriptor instead')
const FileCreateTransactionBody$json = {
  '1': 'FileCreateTransactionBody',
  '2': [
    {
      '1': 'expirationTime',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expirationTime'
    },
    {'1': 'keys', '3': 3, '4': 1, '5': 11, '6': '.proto.KeyList', '10': 'keys'},
    {'1': 'contents', '3': 4, '4': 1, '5': 12, '10': 'contents'},
    {
      '1': 'shardID',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.ShardID',
      '10': 'shardID'
    },
    {
      '1': 'realmID',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.RealmID',
      '10': 'realmID'
    },
    {
      '1': 'newRealmAdminKey',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '8': {'3': true},
      '10': 'newRealmAdminKey',
    },
    {'1': 'memo', '3': 8, '4': 1, '5': 9, '10': 'memo'},
  ],
};

/// Descriptor for `FileCreateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileCreateTransactionBodyDescriptor = $convert.base64Decode(
    'ChlGaWxlQ3JlYXRlVHJhbnNhY3Rpb25Cb2R5EjgKDmV4cGlyYXRpb25UaW1lGAIgASgLMhAucH'
    'JvdG8uVGltZXN0YW1wUg5leHBpcmF0aW9uVGltZRIiCgRrZXlzGAMgASgLMg4ucHJvdG8uS2V5'
    'TGlzdFIEa2V5cxIaCghjb250ZW50cxgEIAEoDFIIY29udGVudHMSKAoHc2hhcmRJRBgFIAEoCz'
    'IOLnByb3RvLlNoYXJkSURSB3NoYXJkSUQSKAoHcmVhbG1JRBgGIAEoCzIOLnByb3RvLlJlYWxt'
    'SURSB3JlYWxtSUQSOgoQbmV3UmVhbG1BZG1pbktleRgHIAEoCzIKLnByb3RvLktleUICGAFSEG'
    '5ld1JlYWxtQWRtaW5LZXkSEgoEbWVtbxgIIAEoCVIEbWVtbw==');
