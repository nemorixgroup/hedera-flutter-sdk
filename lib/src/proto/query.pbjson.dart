// This is a generated file - do not edit.
//
// Generated from query.proto.

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

@$core.Deprecated('Use queryDescriptor instead')
const Query$json = {
  '1': 'Query',
  '2': [
    {
      '1': 'getByKey',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.GetByKeyQuery',
      '9': 0,
      '10': 'getByKey'
    },
    {
      '1': 'getBySolidityID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.GetBySolidityIDQuery',
      '9': 0,
      '10': 'getBySolidityID'
    },
    {
      '1': 'contractCallLocal',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractCallLocalQuery',
      '9': 0,
      '10': 'contractCallLocal'
    },
    {
      '1': 'contractGetInfo',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractGetInfoQuery',
      '9': 0,
      '10': 'contractGetInfo'
    },
    {
      '1': 'contractGetBytecode',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractGetBytecodeQuery',
      '9': 0,
      '10': 'contractGetBytecode'
    },
    {
      '1': 'ContractGetRecords',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractGetRecordsQuery',
      '8': {'3': true},
      '9': 0,
      '10': 'ContractGetRecords',
    },
    {
      '1': 'cryptogetAccountBalance',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetAccountBalanceQuery',
      '9': 0,
      '10': 'cryptogetAccountBalance'
    },
    {
      '1': 'cryptoGetAccountRecords',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetAccountRecordsQuery',
      '9': 0,
      '10': 'cryptoGetAccountRecords'
    },
    {
      '1': 'cryptoGetInfo',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetInfoQuery',
      '9': 0,
      '10': 'cryptoGetInfo'
    },
    {
      '1': 'cryptoGetLiveHash',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetLiveHashQuery',
      '8': {'3': true},
      '9': 0,
      '10': 'cryptoGetLiveHash',
    },
    {
      '1': 'cryptoGetProxyStakers',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoGetStakersQuery',
      '8': {'3': true},
      '9': 0,
      '10': 'cryptoGetProxyStakers',
    },
    {
      '1': 'fileGetContents',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.FileGetContentsQuery',
      '9': 0,
      '10': 'fileGetContents'
    },
    {
      '1': 'fileGetInfo',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.FileGetInfoQuery',
      '9': 0,
      '10': 'fileGetInfo'
    },
    {
      '1': 'transactionGetReceipt',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionGetReceiptQuery',
      '9': 0,
      '10': 'transactionGetReceipt'
    },
    {
      '1': 'transactionGetRecord',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionGetRecordQuery',
      '9': 0,
      '10': 'transactionGetRecord'
    },
    {
      '1': 'transactionGetFastRecord',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionGetFastRecordQuery',
      '9': 0,
      '10': 'transactionGetFastRecord'
    },
    {
      '1': 'consensusGetTopicInfo',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusGetTopicInfoQuery',
      '9': 0,
      '10': 'consensusGetTopicInfo'
    },
    {
      '1': 'networkGetVersionInfo',
      '3': 51,
      '4': 1,
      '5': 11,
      '6': '.proto.NetworkGetVersionInfoQuery',
      '9': 0,
      '10': 'networkGetVersionInfo'
    },
    {
      '1': 'tokenGetInfo',
      '3': 52,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGetInfoQuery',
      '9': 0,
      '10': 'tokenGetInfo'
    },
    {
      '1': 'scheduleGetInfo',
      '3': 53,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleGetInfoQuery',
      '9': 0,
      '10': 'scheduleGetInfo'
    },
    {
      '1': 'tokenGetAccountNftInfos',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGetAccountNftInfosQuery',
      '8': {'3': true},
      '9': 0,
      '10': 'tokenGetAccountNftInfos',
    },
    {
      '1': 'tokenGetNftInfo',
      '3': 55,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGetNftInfoQuery',
      '9': 0,
      '10': 'tokenGetNftInfo'
    },
    {
      '1': 'tokenGetNftInfos',
      '3': 56,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGetNftInfosQuery',
      '8': {'3': true},
      '9': 0,
      '10': 'tokenGetNftInfos',
    },
    {
      '1': 'networkGetExecutionTime',
      '3': 57,
      '4': 1,
      '5': 11,
      '6': '.proto.NetworkGetExecutionTimeQuery',
      '8': {'3': true},
      '9': 0,
      '10': 'networkGetExecutionTime',
    },
    {
      '1': 'accountDetails',
      '3': 58,
      '4': 1,
      '5': 11,
      '6': '.proto.GetAccountDetailsQuery',
      '9': 0,
      '10': 'accountDetails'
    },
  ],
  '8': [
    {'1': 'query'},
  ],
};

/// Descriptor for `Query`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDescriptor = $convert.base64Decode(
    'CgVRdWVyeRIyCghnZXRCeUtleRgBIAEoCzIULnByb3RvLkdldEJ5S2V5UXVlcnlIAFIIZ2V0Qn'
    'lLZXkSRwoPZ2V0QnlTb2xpZGl0eUlEGAIgASgLMhsucHJvdG8uR2V0QnlTb2xpZGl0eUlEUXVl'
    'cnlIAFIPZ2V0QnlTb2xpZGl0eUlEEk0KEWNvbnRyYWN0Q2FsbExvY2FsGAMgASgLMh0ucHJvdG'
    '8uQ29udHJhY3RDYWxsTG9jYWxRdWVyeUgAUhFjb250cmFjdENhbGxMb2NhbBJHCg9jb250cmFj'
    'dEdldEluZm8YBCABKAsyGy5wcm90by5Db250cmFjdEdldEluZm9RdWVyeUgAUg9jb250cmFjdE'
    'dldEluZm8SUwoTY29udHJhY3RHZXRCeXRlY29kZRgFIAEoCzIfLnByb3RvLkNvbnRyYWN0R2V0'
    'Qnl0ZWNvZGVRdWVyeUgAUhNjb250cmFjdEdldEJ5dGVjb2RlElQKEkNvbnRyYWN0R2V0UmVjb3'
    'JkcxgGIAEoCzIeLnByb3RvLkNvbnRyYWN0R2V0UmVjb3Jkc1F1ZXJ5QgIYAUgAUhJDb250cmFj'
    'dEdldFJlY29yZHMSXwoXY3J5cHRvZ2V0QWNjb3VudEJhbGFuY2UYByABKAsyIy5wcm90by5Dcn'
    'lwdG9HZXRBY2NvdW50QmFsYW5jZVF1ZXJ5SABSF2NyeXB0b2dldEFjY291bnRCYWxhbmNlEl8K'
    'F2NyeXB0b0dldEFjY291bnRSZWNvcmRzGAggASgLMiMucHJvdG8uQ3J5cHRvR2V0QWNjb3VudF'
    'JlY29yZHNRdWVyeUgAUhdjcnlwdG9HZXRBY2NvdW50UmVjb3JkcxJBCg1jcnlwdG9HZXRJbmZv'
    'GAkgASgLMhkucHJvdG8uQ3J5cHRvR2V0SW5mb1F1ZXJ5SABSDWNyeXB0b0dldEluZm8SUQoRY3'
    'J5cHRvR2V0TGl2ZUhhc2gYCiABKAsyHS5wcm90by5DcnlwdG9HZXRMaXZlSGFzaFF1ZXJ5QgIY'
    'AUgAUhFjcnlwdG9HZXRMaXZlSGFzaBJYChVjcnlwdG9HZXRQcm94eVN0YWtlcnMYCyABKAsyHC'
    '5wcm90by5DcnlwdG9HZXRTdGFrZXJzUXVlcnlCAhgBSABSFWNyeXB0b0dldFByb3h5U3Rha2Vy'
    'cxJHCg9maWxlR2V0Q29udGVudHMYDCABKAsyGy5wcm90by5GaWxlR2V0Q29udGVudHNRdWVyeU'
    'gAUg9maWxlR2V0Q29udGVudHMSOwoLZmlsZUdldEluZm8YDSABKAsyFy5wcm90by5GaWxlR2V0'
    'SW5mb1F1ZXJ5SABSC2ZpbGVHZXRJbmZvElkKFXRyYW5zYWN0aW9uR2V0UmVjZWlwdBgOIAEoCz'
    'IhLnByb3RvLlRyYW5zYWN0aW9uR2V0UmVjZWlwdFF1ZXJ5SABSFXRyYW5zYWN0aW9uR2V0UmVj'
    'ZWlwdBJWChR0cmFuc2FjdGlvbkdldFJlY29yZBgPIAEoCzIgLnByb3RvLlRyYW5zYWN0aW9uR2'
    'V0UmVjb3JkUXVlcnlIAFIUdHJhbnNhY3Rpb25HZXRSZWNvcmQSYgoYdHJhbnNhY3Rpb25HZXRG'
    'YXN0UmVjb3JkGBAgASgLMiQucHJvdG8uVHJhbnNhY3Rpb25HZXRGYXN0UmVjb3JkUXVlcnlIAF'
    'IYdHJhbnNhY3Rpb25HZXRGYXN0UmVjb3JkElkKFWNvbnNlbnN1c0dldFRvcGljSW5mbxgyIAEo'
    'CzIhLnByb3RvLkNvbnNlbnN1c0dldFRvcGljSW5mb1F1ZXJ5SABSFWNvbnNlbnN1c0dldFRvcG'
    'ljSW5mbxJZChVuZXR3b3JrR2V0VmVyc2lvbkluZm8YMyABKAsyIS5wcm90by5OZXR3b3JrR2V0'
    'VmVyc2lvbkluZm9RdWVyeUgAUhVuZXR3b3JrR2V0VmVyc2lvbkluZm8SPgoMdG9rZW5HZXRJbm'
    'ZvGDQgASgLMhgucHJvdG8uVG9rZW5HZXRJbmZvUXVlcnlIAFIMdG9rZW5HZXRJbmZvEkcKD3Nj'
    'aGVkdWxlR2V0SW5mbxg1IAEoCzIbLnByb3RvLlNjaGVkdWxlR2V0SW5mb1F1ZXJ5SABSD3NjaG'
    'VkdWxlR2V0SW5mbxJjChd0b2tlbkdldEFjY291bnROZnRJbmZvcxg2IAEoCzIjLnByb3RvLlRv'
    'a2VuR2V0QWNjb3VudE5mdEluZm9zUXVlcnlCAhgBSABSF3Rva2VuR2V0QWNjb3VudE5mdEluZm'
    '9zEkcKD3Rva2VuR2V0TmZ0SW5mbxg3IAEoCzIbLnByb3RvLlRva2VuR2V0TmZ0SW5mb1F1ZXJ5'
    'SABSD3Rva2VuR2V0TmZ0SW5mbxJOChB0b2tlbkdldE5mdEluZm9zGDggASgLMhwucHJvdG8uVG'
    '9rZW5HZXROZnRJbmZvc1F1ZXJ5QgIYAUgAUhB0b2tlbkdldE5mdEluZm9zEmMKF25ldHdvcmtH'
    'ZXRFeGVjdXRpb25UaW1lGDkgASgLMiMucHJvdG8uTmV0d29ya0dldEV4ZWN1dGlvblRpbWVRdW'
    'VyeUICGAFIAFIXbmV0d29ya0dldEV4ZWN1dGlvblRpbWUSRwoOYWNjb3VudERldGFpbHMYOiAB'
    'KAsyHS5wcm90by5HZXRBY2NvdW50RGV0YWlsc1F1ZXJ5SABSDmFjY291bnREZXRhaWxzQgcKBX'
    'F1ZXJ5');
