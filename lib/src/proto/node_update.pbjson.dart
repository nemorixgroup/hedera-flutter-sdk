// This is a generated file - do not edit.
//
// Generated from node_update.proto.

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

@$core.Deprecated('Use nodeUpdateTransactionBodyDescriptor instead')
const NodeUpdateTransactionBody$json = {
  '1': 'NodeUpdateTransactionBody',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 4, '10': 'nodeId'},
    {
      '1': 'account_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountId'
    },
    {
      '1': 'description',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'description'
    },
    {
      '1': 'gossip_endpoint',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.proto.ServiceEndpoint',
      '10': 'gossipEndpoint'
    },
    {
      '1': 'service_endpoint',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.proto.ServiceEndpoint',
      '10': 'serviceEndpoint'
    },
    {
      '1': 'gossip_ca_certificate',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BytesValue',
      '10': 'gossipCaCertificate'
    },
    {
      '1': 'grpc_certificate_hash',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BytesValue',
      '10': 'grpcCertificateHash'
    },
    {
      '1': 'admin_key',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {
      '1': 'decline_reward',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'declineReward'
    },
    {
      '1': 'grpc_proxy_endpoint',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.ServiceEndpoint',
      '10': 'grpcProxyEndpoint'
    },
  ],
};

/// Descriptor for `NodeUpdateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeUpdateTransactionBodyDescriptor = $convert.base64Decode(
    'ChlOb2RlVXBkYXRlVHJhbnNhY3Rpb25Cb2R5EhcKB25vZGVfaWQYASABKARSBm5vZGVJZBIvCg'
    'phY2NvdW50X2lkGAIgASgLMhAucHJvdG8uQWNjb3VudElEUglhY2NvdW50SWQSPgoLZGVzY3Jp'
    'cHRpb24YAyABKAsyHC5nb29nbGUucHJvdG9idWYuU3RyaW5nVmFsdWVSC2Rlc2NyaXB0aW9uEj'
    '8KD2dvc3NpcF9lbmRwb2ludBgEIAMoCzIWLnByb3RvLlNlcnZpY2VFbmRwb2ludFIOZ29zc2lw'
    'RW5kcG9pbnQSQQoQc2VydmljZV9lbmRwb2ludBgFIAMoCzIWLnByb3RvLlNlcnZpY2VFbmRwb2'
    'ludFIPc2VydmljZUVuZHBvaW50Ek8KFWdvc3NpcF9jYV9jZXJ0aWZpY2F0ZRgGIAEoCzIbLmdv'
    'b2dsZS5wcm90b2J1Zi5CeXRlc1ZhbHVlUhNnb3NzaXBDYUNlcnRpZmljYXRlEk8KFWdycGNfY2'
    'VydGlmaWNhdGVfaGFzaBgHIAEoCzIbLmdvb2dsZS5wcm90b2J1Zi5CeXRlc1ZhbHVlUhNncnBj'
    'Q2VydGlmaWNhdGVIYXNoEicKCWFkbWluX2tleRgIIAEoCzIKLnByb3RvLktleVIIYWRtaW5LZX'
    'kSQQoOZGVjbGluZV9yZXdhcmQYCSABKAsyGi5nb29nbGUucHJvdG9idWYuQm9vbFZhbHVlUg1k'
    'ZWNsaW5lUmV3YXJkEkYKE2dycGNfcHJveHlfZW5kcG9pbnQYCiABKAsyFi5wcm90by5TZXJ2aW'
    'NlRW5kcG9pbnRSEWdycGNQcm94eUVuZHBvaW50');
