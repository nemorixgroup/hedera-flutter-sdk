// This is a generated file - do not edit.
//
// Generated from get_by_key.proto.

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

@$core.Deprecated('Use getByKeyQueryDescriptor instead')
const GetByKeyQuery$json = {
  '1': 'GetByKeyQuery',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.QueryHeader',
      '10': 'header'
    },
    {'1': 'key', '3': 2, '4': 1, '5': 11, '6': '.proto.Key', '10': 'key'},
  ],
  '7': {'3': true},
};

/// Descriptor for `GetByKeyQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByKeyQueryDescriptor = $convert.base64Decode(
    'Cg1HZXRCeUtleVF1ZXJ5EioKBmhlYWRlchgBIAEoCzISLnByb3RvLlF1ZXJ5SGVhZGVyUgZoZW'
    'FkZXISHAoDa2V5GAIgASgLMgoucHJvdG8uS2V5UgNrZXk6AhgB');

@$core.Deprecated('Use entityIDDescriptor instead')
const EntityID$json = {
  '1': 'EntityID',
  '2': [
    {
      '1': 'accountID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '9': 0,
      '10': 'accountID'
    },
    {
      '1': 'liveHash',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.LiveHash',
      '9': 0,
      '10': 'liveHash'
    },
    {
      '1': 'fileID',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.FileID',
      '9': 0,
      '10': 'fileID'
    },
    {
      '1': 'contractID',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '9': 0,
      '10': 'contractID'
    },
  ],
  '7': {'3': true},
  '8': [
    {'1': 'entity'},
  ],
};

/// Descriptor for `EntityID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entityIDDescriptor = $convert.base64Decode(
    'CghFbnRpdHlJRBIwCglhY2NvdW50SUQYASABKAsyEC5wcm90by5BY2NvdW50SURIAFIJYWNjb3'
    'VudElEEi0KCGxpdmVIYXNoGAIgASgLMg8ucHJvdG8uTGl2ZUhhc2hIAFIIbGl2ZUhhc2gSJwoG'
    'ZmlsZUlEGAMgASgLMg0ucHJvdG8uRmlsZUlESABSBmZpbGVJRBIzCgpjb250cmFjdElEGAQgAS'
    'gLMhEucHJvdG8uQ29udHJhY3RJREgAUgpjb250cmFjdElEOgIYAUIICgZlbnRpdHk=');

@$core.Deprecated('Use getByKeyResponseDescriptor instead')
const GetByKeyResponse$json = {
  '1': 'GetByKeyResponse',
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
      '1': 'entities',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.EntityID',
      '10': 'entities'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `GetByKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByKeyResponseDescriptor = $convert.base64Decode(
    'ChBHZXRCeUtleVJlc3BvbnNlEi0KBmhlYWRlchgBIAEoCzIVLnByb3RvLlJlc3BvbnNlSGVhZG'
    'VyUgZoZWFkZXISKwoIZW50aXRpZXMYAiADKAsyDy5wcm90by5FbnRpdHlJRFIIZW50aXRpZXM6'
    'AhgB');
