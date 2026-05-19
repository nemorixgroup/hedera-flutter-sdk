// This is a generated file - do not edit.
//
// Generated from node_create.proto.

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

@$core.Deprecated('Use nodeCreateTransactionBodyDescriptor instead')
const NodeCreateTransactionBody$json = {
  '1': 'NodeCreateTransactionBody',
  '2': [
    {
      '1': 'account_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountId'
    },
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'gossip_endpoint',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.proto.ServiceEndpoint',
      '10': 'gossipEndpoint'
    },
    {
      '1': 'service_endpoint',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.proto.ServiceEndpoint',
      '10': 'serviceEndpoint'
    },
    {
      '1': 'gossip_ca_certificate',
      '3': 5,
      '4': 1,
      '5': 12,
      '10': 'gossipCaCertificate'
    },
    {
      '1': 'grpc_certificate_hash',
      '3': 6,
      '4': 1,
      '5': 12,
      '10': 'grpcCertificateHash'
    },
    {
      '1': 'admin_key',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'adminKey'
    },
    {'1': 'decline_reward', '3': 8, '4': 1, '5': 8, '10': 'declineReward'},
    {
      '1': 'grpc_proxy_endpoint',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.ServiceEndpoint',
      '10': 'grpcProxyEndpoint'
    },
  ],
};

/// Descriptor for `NodeCreateTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeCreateTransactionBodyDescriptor = $convert.base64Decode(
    'ChlOb2RlQ3JlYXRlVHJhbnNhY3Rpb25Cb2R5Ei8KCmFjY291bnRfaWQYASABKAsyEC5wcm90by'
    '5BY2NvdW50SURSCWFjY291bnRJZBIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24S'
    'PwoPZ29zc2lwX2VuZHBvaW50GAMgAygLMhYucHJvdG8uU2VydmljZUVuZHBvaW50Ug5nb3NzaX'
    'BFbmRwb2ludBJBChBzZXJ2aWNlX2VuZHBvaW50GAQgAygLMhYucHJvdG8uU2VydmljZUVuZHBv'
    'aW50Ug9zZXJ2aWNlRW5kcG9pbnQSMgoVZ29zc2lwX2NhX2NlcnRpZmljYXRlGAUgASgMUhNnb3'
    'NzaXBDYUNlcnRpZmljYXRlEjIKFWdycGNfY2VydGlmaWNhdGVfaGFzaBgGIAEoDFITZ3JwY0Nl'
    'cnRpZmljYXRlSGFzaBInCglhZG1pbl9rZXkYByABKAsyCi5wcm90by5LZXlSCGFkbWluS2V5Ei'
    'UKDmRlY2xpbmVfcmV3YXJkGAggASgIUg1kZWNsaW5lUmV3YXJkEkYKE2dycGNfcHJveHlfZW5k'
    'cG9pbnQYCSABKAsyFi5wcm90by5TZXJ2aWNlRW5kcG9pbnRSEWdycGNQcm94eUVuZHBvaW50');
