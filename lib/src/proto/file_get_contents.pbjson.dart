// This is a generated file - do not edit.
//
// Generated from file_get_contents.proto.

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

@$core.Deprecated('Use fileGetContentsQueryDescriptor instead')
const FileGetContentsQuery$json = {
  '1': 'FileGetContentsQuery',
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
      '1': 'fileID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '10': 'fileID'
    },
  ],
};

/// Descriptor for `FileGetContentsQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileGetContentsQueryDescriptor = $convert.base64Decode(
    'ChRGaWxlR2V0Q29udGVudHNRdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdWVyeUhlYW'
    'RlclIGaGVhZGVyEiUKBmZpbGVJRBgCIAEoCzINLnByb3RvLkZpbGVJRFIGZmlsZUlE');

@$core.Deprecated('Use fileGetContentsResponseDescriptor instead')
const FileGetContentsResponse$json = {
  '1': 'FileGetContentsResponse',
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
      '1': 'fileContents',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.FileGetContentsResponse.FileContents',
      '10': 'fileContents'
    },
  ],
  '3': [FileGetContentsResponse_FileContents$json],
};

@$core.Deprecated('Use fileGetContentsResponseDescriptor instead')
const FileGetContentsResponse_FileContents$json = {
  '1': 'FileContents',
  '2': [
    {
      '1': 'fileID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '10': 'fileID'
    },
    {'1': 'contents', '3': 2, '4': 1, '5': 12, '10': 'contents'},
  ],
};

/// Descriptor for `FileGetContentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileGetContentsResponseDescriptor = $convert.base64Decode(
    'ChdGaWxlR2V0Q29udGVudHNSZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by5SZXNwb2'
    '5zZUhlYWRlclIGaGVhZGVyEk8KDGZpbGVDb250ZW50cxgCIAEoCzIrLnByb3RvLkZpbGVHZXRD'
    'b250ZW50c1Jlc3BvbnNlLkZpbGVDb250ZW50c1IMZmlsZUNvbnRlbnRzGlEKDEZpbGVDb250ZW'
    '50cxIlCgZmaWxlSUQYASABKAsyDS5wcm90by5GaWxlSURSBmZpbGVJRBIaCghjb250ZW50cxgC'
    'IAEoDFIIY29udGVudHM=');
