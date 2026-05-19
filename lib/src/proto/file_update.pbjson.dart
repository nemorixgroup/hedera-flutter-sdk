// This is a generated file - do not edit.
//
// Generated from file_update.proto.

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

@$core.Deprecated('Use fileUpdateTransactionBodyDescriptor instead')
const FileUpdateTransactionBody$json = {
  '1': 'FileUpdateTransactionBody',
  '2': [
    {
      '1': 'fileID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '10': 'fileID'
    },
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
      '1': 'memo',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'memo'
    },
  ],
};

/// Descriptor for `FileUpdateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileUpdateTransactionBodyDescriptor = $convert.base64Decode(
    'ChlGaWxlVXBkYXRlVHJhbnNhY3Rpb25Cb2R5EiUKBmZpbGVJRBgBIAEoCzINLnByb3RvLkZpbG'
    'VJRFIGZmlsZUlEEjgKDmV4cGlyYXRpb25UaW1lGAIgASgLMhAucHJvdG8uVGltZXN0YW1wUg5l'
    'eHBpcmF0aW9uVGltZRIiCgRrZXlzGAMgASgLMg4ucHJvdG8uS2V5TGlzdFIEa2V5cxIaCghjb2'
    '50ZW50cxgEIAEoDFIIY29udGVudHMSMAoEbWVtbxgFIAEoCzIcLmdvb2dsZS5wcm90b2J1Zi5T'
    'dHJpbmdWYWx1ZVIEbWVtbw==');
