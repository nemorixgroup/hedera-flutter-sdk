// This is a generated file - do not edit.
//
// Generated from get_by_solidity_id.proto.

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

@$core.Deprecated('Use getBySolidityIDQueryDescriptor instead')
const GetBySolidityIDQuery$json = {
  '1': 'GetBySolidityIDQuery',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.QueryHeader',
      '10': 'header'
    },
    {'1': 'solidityID', '3': 2, '4': 1, '5': 9, '10': 'solidityID'},
  ],
  '7': {'3': true},
};

/// Descriptor for `GetBySolidityIDQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBySolidityIDQueryDescriptor = $convert.base64Decode(
    'ChRHZXRCeVNvbGlkaXR5SURRdWVyeRIqCgZoZWFkZXIYASABKAsyEi5wcm90by5RdWVyeUhlYW'
    'RlclIGaGVhZGVyEh4KCnNvbGlkaXR5SUQYAiABKAlSCnNvbGlkaXR5SUQ6AhgB');

@$core.Deprecated('Use getBySolidityIDResponseDescriptor instead')
const GetBySolidityIDResponse$json = {
  '1': 'GetBySolidityIDResponse',
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
      '1': 'accountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {
      '1': 'fileID',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '10': 'fileID'
    },
    {
      '1': 'contractID',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractID'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `GetBySolidityIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBySolidityIDResponseDescriptor = $convert.base64Decode(
    'ChdHZXRCeVNvbGlkaXR5SURSZXNwb25zZRItCgZoZWFkZXIYASABKAsyFS5wcm90by5SZXNwb2'
    '5zZUhlYWRlclIGaGVhZGVyEi4KCWFjY291bnRJRBgCIAEoCzIQLnByb3RvLkFjY291bnRJRFIJ'
    'YWNjb3VudElEEiUKBmZpbGVJRBgDIAEoCzINLnByb3RvLkZpbGVJRFIGZmlsZUlEEjEKCmNvbn'
    'RyYWN0SUQYBCABKAsyES5wcm90by5Db250cmFjdElEUgpjb250cmFjdElEOgIYAQ==');
