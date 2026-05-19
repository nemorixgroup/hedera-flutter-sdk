// This is a generated file - do not edit.
//
// Generated from response.proto.

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

@$core.Deprecated('Use responseDescriptor instead')
const Response$json = {
  '1': 'Response',
  '2': [
    {
      '1': 'getByKey',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.GetByKeyResponse',
      '9': 0,
      '10': 'getByKey'
    },
    {
      '1': 'getBySolidityID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.GetBySolidityIDResponse',
      '9': 0,
      '10': 'getBySolidityID'
    },
    {
      '1': 'contractCallLocal',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractCallLocalResponse',
      '9': 0,
      '10': 'contractCallLocal'
    },
    {
      '1': 'contractGetBytecodeResponse',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractGetBytecodeResponse',
      '9': 0,
      '10': 'contractGetBytecodeResponse'
    },
    {
      '1': 'contractGetInfo',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractGetInfoResponse',
      '9': 0,
      '10': 'contractGetInfo'
    },
    {
      '1': 'contractGetRecordsResponse',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractGetRecordsResponse',
      '9': 0,
      '10': 'contractGetRecordsResponse'
    },
    {
      '1': 'cryptogetAccountBalance',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetAccountBalanceResponse',
      '9': 0,
      '10': 'cryptogetAccountBalance'
    },
    {
      '1': 'cryptoGetAccountRecords',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetAccountRecordsResponse',
      '9': 0,
      '10': 'cryptoGetAccountRecords'
    },
    {
      '1': 'cryptoGetInfo',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetInfoResponse',
      '9': 0,
      '10': 'cryptoGetInfo'
    },
    {
      '1': 'cryptoGetLiveHash',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetLiveHashResponse',
      '9': 0,
      '10': 'cryptoGetLiveHash'
    },
    {
      '1': 'cryptoGetProxyStakers',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetStakersResponse',
      '9': 0,
      '10': 'cryptoGetProxyStakers'
    },
    {
      '1': 'fileGetContents',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.FileGetContentsResponse',
      '9': 0,
      '10': 'fileGetContents'
    },
    {
      '1': 'fileGetInfo',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.FileGetInfoResponse',
      '9': 0,
      '10': 'fileGetInfo'
    },
    {
      '1': 'transactionGetReceipt',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionGetReceiptResponse',
      '9': 0,
      '10': 'transactionGetReceipt'
    },
    {
      '1': 'transactionGetRecord',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionGetRecordResponse',
      '9': 0,
      '10': 'transactionGetRecord'
    },
    {
      '1': 'transactionGetFastRecord',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionGetFastRecordResponse',
      '9': 0,
      '10': 'transactionGetFastRecord'
    },
    {
      '1': 'consensusGetTopicInfo',
      '3': 150,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusGetTopicInfoResponse',
      '9': 0,
      '10': 'consensusGetTopicInfo'
    },
    {
      '1': 'networkGetVersionInfo',
      '3': 151,
      '4': 1,
      '5': 11,
      '6': '.proto.NetworkGetVersionInfoResponse',
      '9': 0,
      '10': 'networkGetVersionInfo'
    },
    {
      '1': 'tokenGetInfo',
      '3': 152,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGetInfoResponse',
      '9': 0,
      '10': 'tokenGetInfo'
    },
    {
      '1': 'scheduleGetInfo',
      '3': 153,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleGetInfoResponse',
      '9': 0,
      '10': 'scheduleGetInfo'
    },
    {
      '1': 'tokenGetAccountNftInfos',
      '3': 154,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGetAccountNftInfosResponse',
      '9': 0,
      '10': 'tokenGetAccountNftInfos'
    },
    {
      '1': 'tokenGetNftInfo',
      '3': 155,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGetNftInfoResponse',
      '9': 0,
      '10': 'tokenGetNftInfo'
    },
    {
      '1': 'tokenGetNftInfos',
      '3': 156,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGetNftInfosResponse',
      '9': 0,
      '10': 'tokenGetNftInfos'
    },
    {
      '1': 'networkGetExecutionTime',
      '3': 157,
      '4': 1,
      '5': 11,
      '6': '.proto.NetworkGetExecutionTimeResponse',
      '9': 0,
      '10': 'networkGetExecutionTime'
    },
    {
      '1': 'accountDetails',
      '3': 158,
      '4': 1,
      '5': 11,
      '6': '.proto.GetAccountDetailsResponse',
      '9': 0,
      '10': 'accountDetails'
    },
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRI1CghnZXRCeUtleRgBIAEoCzIXLnByb3RvLkdldEJ5S2V5UmVzcG9uc2VIAF'
    'IIZ2V0QnlLZXkSSgoPZ2V0QnlTb2xpZGl0eUlEGAIgASgLMh4ucHJvdG8uR2V0QnlTb2xpZGl0'
    'eUlEUmVzcG9uc2VIAFIPZ2V0QnlTb2xpZGl0eUlEElAKEWNvbnRyYWN0Q2FsbExvY2FsGAMgAS'
    'gLMiAucHJvdG8uQ29udHJhY3RDYWxsTG9jYWxSZXNwb25zZUgAUhFjb250cmFjdENhbGxMb2Nh'
    'bBJmChtjb250cmFjdEdldEJ5dGVjb2RlUmVzcG9uc2UYBSABKAsyIi5wcm90by5Db250cmFjdE'
    'dldEJ5dGVjb2RlUmVzcG9uc2VIAFIbY29udHJhY3RHZXRCeXRlY29kZVJlc3BvbnNlEkoKD2Nv'
    'bnRyYWN0R2V0SW5mbxgEIAEoCzIeLnByb3RvLkNvbnRyYWN0R2V0SW5mb1Jlc3BvbnNlSABSD2'
    'NvbnRyYWN0R2V0SW5mbxJjChpjb250cmFjdEdldFJlY29yZHNSZXNwb25zZRgGIAEoCzIhLnBy'
    'b3RvLkNvbnRyYWN0R2V0UmVjb3Jkc1Jlc3BvbnNlSABSGmNvbnRyYWN0R2V0UmVjb3Jkc1Jlc3'
    'BvbnNlEmIKF2NyeXB0b2dldEFjY291bnRCYWxhbmNlGAcgASgLMiYucHJvdG8uQ3J5cHRvR2V0'
    'QWNjb3VudEJhbGFuY2VSZXNwb25zZUgAUhdjcnlwdG9nZXRBY2NvdW50QmFsYW5jZRJiChdjcn'
    'lwdG9HZXRBY2NvdW50UmVjb3JkcxgIIAEoCzImLnByb3RvLkNyeXB0b0dldEFjY291bnRSZWNv'
    'cmRzUmVzcG9uc2VIAFIXY3J5cHRvR2V0QWNjb3VudFJlY29yZHMSRAoNY3J5cHRvR2V0SW5mbx'
    'gJIAEoCzIcLnByb3RvLkNyeXB0b0dldEluZm9SZXNwb25zZUgAUg1jcnlwdG9HZXRJbmZvElAK'
    'EWNyeXB0b0dldExpdmVIYXNoGAogASgLMiAucHJvdG8uQ3J5cHRvR2V0TGl2ZUhhc2hSZXNwb2'
    '5zZUgAUhFjcnlwdG9HZXRMaXZlSGFzaBJXChVjcnlwdG9HZXRQcm94eVN0YWtlcnMYCyABKAsy'
    'Hy5wcm90by5DcnlwdG9HZXRTdGFrZXJzUmVzcG9uc2VIAFIVY3J5cHRvR2V0UHJveHlTdGFrZX'
    'JzEkoKD2ZpbGVHZXRDb250ZW50cxgMIAEoCzIeLnByb3RvLkZpbGVHZXRDb250ZW50c1Jlc3Bv'
    'bnNlSABSD2ZpbGVHZXRDb250ZW50cxI+CgtmaWxlR2V0SW5mbxgNIAEoCzIaLnByb3RvLkZpbG'
    'VHZXRJbmZvUmVzcG9uc2VIAFILZmlsZUdldEluZm8SXAoVdHJhbnNhY3Rpb25HZXRSZWNlaXB0'
    'GA4gASgLMiQucHJvdG8uVHJhbnNhY3Rpb25HZXRSZWNlaXB0UmVzcG9uc2VIAFIVdHJhbnNhY3'
    'Rpb25HZXRSZWNlaXB0ElkKFHRyYW5zYWN0aW9uR2V0UmVjb3JkGA8gASgLMiMucHJvdG8uVHJh'
    'bnNhY3Rpb25HZXRSZWNvcmRSZXNwb25zZUgAUhR0cmFuc2FjdGlvbkdldFJlY29yZBJlChh0cm'
    'Fuc2FjdGlvbkdldEZhc3RSZWNvcmQYECABKAsyJy5wcm90by5UcmFuc2FjdGlvbkdldEZhc3RS'
    'ZWNvcmRSZXNwb25zZUgAUhh0cmFuc2FjdGlvbkdldEZhc3RSZWNvcmQSXQoVY29uc2Vuc3VzR2'
    'V0VG9waWNJbmZvGJYBIAEoCzIkLnByb3RvLkNvbnNlbnN1c0dldFRvcGljSW5mb1Jlc3BvbnNl'
    'SABSFWNvbnNlbnN1c0dldFRvcGljSW5mbxJdChVuZXR3b3JrR2V0VmVyc2lvbkluZm8YlwEgAS'
    'gLMiQucHJvdG8uTmV0d29ya0dldFZlcnNpb25JbmZvUmVzcG9uc2VIAFIVbmV0d29ya0dldFZl'
    'cnNpb25JbmZvEkIKDHRva2VuR2V0SW5mbxiYASABKAsyGy5wcm90by5Ub2tlbkdldEluZm9SZX'
    'Nwb25zZUgAUgx0b2tlbkdldEluZm8SSwoPc2NoZWR1bGVHZXRJbmZvGJkBIAEoCzIeLnByb3Rv'
    'LlNjaGVkdWxlR2V0SW5mb1Jlc3BvbnNlSABSD3NjaGVkdWxlR2V0SW5mbxJjChd0b2tlbkdldE'
    'FjY291bnROZnRJbmZvcxiaASABKAsyJi5wcm90by5Ub2tlbkdldEFjY291bnROZnRJbmZvc1Jl'
    'c3BvbnNlSABSF3Rva2VuR2V0QWNjb3VudE5mdEluZm9zEksKD3Rva2VuR2V0TmZ0SW5mbxibAS'
    'ABKAsyHi5wcm90by5Ub2tlbkdldE5mdEluZm9SZXNwb25zZUgAUg90b2tlbkdldE5mdEluZm8S'
    'TgoQdG9rZW5HZXROZnRJbmZvcxicASABKAsyHy5wcm90by5Ub2tlbkdldE5mdEluZm9zUmVzcG'
    '9uc2VIAFIQdG9rZW5HZXROZnRJbmZvcxJjChduZXR3b3JrR2V0RXhlY3V0aW9uVGltZRidASAB'
    'KAsyJi5wcm90by5OZXR3b3JrR2V0RXhlY3V0aW9uVGltZVJlc3BvbnNlSABSF25ldHdvcmtHZX'
    'RFeGVjdXRpb25UaW1lEksKDmFjY291bnREZXRhaWxzGJ4BIAEoCzIgLnByb3RvLkdldEFjY291'
    'bnREZXRhaWxzUmVzcG9uc2VIAFIOYWNjb3VudERldGFpbHNCCgoIcmVzcG9uc2U=');
