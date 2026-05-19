// This is a generated file - do not edit.
//
// Generated from file_get_info.proto.

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

@$core.Deprecated('Use fileGetInfoQueryDescriptor instead')
const FileGetInfoQuery$json = {
  '1': 'FileGetInfoQuery',
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

/// Descriptor for `FileGetInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileGetInfoQueryDescriptor = $convert.base64Decode(
    'ChBGaWxlR2V0SW5mb1F1ZXJ5EioKBmhlYWRlchgBIAEoCzISLnByb3RvLlF1ZXJ5SGVhZGVyUg'
    'ZoZWFkZXISJQoGZmlsZUlEGAIgASgLMg0ucHJvdG8uRmlsZUlEUgZmaWxlSUQ=');

@$core.Deprecated('Use fileGetInfoResponseDescriptor instead')
const FileGetInfoResponse$json = {
  '1': 'FileGetInfoResponse',
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
      '1': 'fileInfo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.FileGetInfoResponse.FileInfo',
      '10': 'fileInfo'
    },
  ],
  '3': [FileGetInfoResponse_FileInfo$json],
};

@$core.Deprecated('Use fileGetInfoResponseDescriptor instead')
const FileGetInfoResponse_FileInfo$json = {
  '1': 'FileInfo',
  '2': [
    {
      '1': 'fileID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '10': 'fileID'
    },
    {'1': 'size', '3': 2, '4': 1, '5': 3, '10': 'size'},
    {
      '1': 'expirationTime',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'expirationTime'
    },
    {'1': 'deleted', '3': 4, '4': 1, '5': 8, '10': 'deleted'},
    {'1': 'keys', '3': 5, '4': 1, '5': 11, '6': '.proto.KeyList', '10': 'keys'},
    {'1': 'memo', '3': 6, '4': 1, '5': 9, '10': 'memo'},
    {'1': 'ledger_id', '3': 7, '4': 1, '5': 12, '10': 'ledgerId'},
  ],
};

/// Descriptor for `FileGetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileGetInfoResponseDescriptor = $convert.base64Decode(
    'ChNGaWxlR2V0SW5mb1Jlc3BvbnNlEi0KBmhlYWRlchgBIAEoCzIVLnByb3RvLlJlc3BvbnNlSG'
    'VhZGVyUgZoZWFkZXISPwoIZmlsZUluZm8YAiABKAsyIy5wcm90by5GaWxlR2V0SW5mb1Jlc3Bv'
    'bnNlLkZpbGVJbmZvUghmaWxlSW5mbxruAQoIRmlsZUluZm8SJQoGZmlsZUlEGAEgASgLMg0ucH'
    'JvdG8uRmlsZUlEUgZmaWxlSUQSEgoEc2l6ZRgCIAEoA1IEc2l6ZRI4Cg5leHBpcmF0aW9uVGlt'
    'ZRgDIAEoCzIQLnByb3RvLlRpbWVzdGFtcFIOZXhwaXJhdGlvblRpbWUSGAoHZGVsZXRlZBgEIA'
    'EoCFIHZGVsZXRlZBIiCgRrZXlzGAUgASgLMg4ucHJvdG8uS2V5TGlzdFIEa2V5cxISCgRtZW1v'
    'GAYgASgJUgRtZW1vEhsKCWxlZGdlcl9pZBgHIAEoDFIIbGVkZ2VySWQ=');
