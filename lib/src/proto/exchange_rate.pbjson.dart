// This is a generated file - do not edit.
//
// Generated from exchange_rate.proto.

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

@$core.Deprecated('Use exchangeRateDescriptor instead')
const ExchangeRate$json = {
  '1': 'ExchangeRate',
  '2': [
    {'1': 'hbarEquiv', '3': 1, '4': 1, '5': 5, '10': 'hbarEquiv'},
    {'1': 'centEquiv', '3': 2, '4': 1, '5': 5, '10': 'centEquiv'},
    {
      '1': 'expirationTime',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.TimestampSeconds',
      '10': 'expirationTime'
    },
  ],
};

/// Descriptor for `ExchangeRate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exchangeRateDescriptor = $convert.base64Decode(
    'CgxFeGNoYW5nZVJhdGUSHAoJaGJhckVxdWl2GAEgASgFUgloYmFyRXF1aXYSHAoJY2VudEVxdW'
    'l2GAIgASgFUgljZW50RXF1aXYSPwoOZXhwaXJhdGlvblRpbWUYAyABKAsyFy5wcm90by5UaW1l'
    'c3RhbXBTZWNvbmRzUg5leHBpcmF0aW9uVGltZQ==');

@$core.Deprecated('Use exchangeRateSetDescriptor instead')
const ExchangeRateSet$json = {
  '1': 'ExchangeRateSet',
  '2': [
    {
      '1': 'currentRate',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ExchangeRate',
      '10': 'currentRate'
    },
    {
      '1': 'nextRate',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.ExchangeRate',
      '10': 'nextRate'
    },
  ],
};

/// Descriptor for `ExchangeRateSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exchangeRateSetDescriptor = $convert.base64Decode(
    'Cg9FeGNoYW5nZVJhdGVTZXQSNQoLY3VycmVudFJhdGUYASABKAsyEy5wcm90by5FeGNoYW5nZV'
    'JhdGVSC2N1cnJlbnRSYXRlEi8KCG5leHRSYXRlGAIgASgLMhMucHJvdG8uRXhjaGFuZ2VSYXRl'
    'UghuZXh0UmF0ZQ==');
