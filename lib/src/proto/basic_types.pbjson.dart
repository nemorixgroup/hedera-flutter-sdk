// This is a generated file - do not edit.
//
// Generated from basic_types.proto.

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

@$core.Deprecated('Use blockHashAlgorithmDescriptor instead')
const BlockHashAlgorithm$json = {
  '1': 'BlockHashAlgorithm',
  '2': [
    {'1': 'SHA2_384', '2': 0},
  ],
};

/// Descriptor for `BlockHashAlgorithm`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blockHashAlgorithmDescriptor =
    $convert.base64Decode('ChJCbG9ja0hhc2hBbGdvcml0aG0SDAoIU0hBMl8zODQQAA==');

@$core.Deprecated('Use tokenTypeDescriptor instead')
const TokenType$json = {
  '1': 'TokenType',
  '2': [
    {'1': 'FUNGIBLE_COMMON', '2': 0},
    {'1': 'NON_FUNGIBLE_UNIQUE', '2': 1},
  ],
};

/// Descriptor for `TokenType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tokenTypeDescriptor = $convert.base64Decode(
    'CglUb2tlblR5cGUSEwoPRlVOR0lCTEVfQ09NTU9OEAASFwoTTk9OX0ZVTkdJQkxFX1VOSVFVRR'
    'AB');

@$core.Deprecated('Use subTypeDescriptor instead')
const SubType$json = {
  '1': 'SubType',
  '2': [
    {'1': 'DEFAULT', '2': 0},
    {'1': 'TOKEN_FUNGIBLE_COMMON', '2': 1},
    {'1': 'TOKEN_NON_FUNGIBLE_UNIQUE', '2': 2},
    {'1': 'TOKEN_FUNGIBLE_COMMON_WITH_CUSTOM_FEES', '2': 3},
    {'1': 'TOKEN_NON_FUNGIBLE_UNIQUE_WITH_CUSTOM_FEES', '2': 4},
    {'1': 'SCHEDULE_CREATE_CONTRACT_CALL', '2': 5},
    {'1': 'TOPIC_CREATE_WITH_CUSTOM_FEES', '2': 6},
    {'1': 'SUBMIT_MESSAGE_WITH_CUSTOM_FEES', '2': 7},
  ],
};

/// Descriptor for `SubType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List subTypeDescriptor = $convert.base64Decode(
    'CgdTdWJUeXBlEgsKB0RFRkFVTFQQABIZChVUT0tFTl9GVU5HSUJMRV9DT01NT04QARIdChlUT0'
    'tFTl9OT05fRlVOR0lCTEVfVU5JUVVFEAISKgomVE9LRU5fRlVOR0lCTEVfQ09NTU9OX1dJVEhf'
    'Q1VTVE9NX0ZFRVMQAxIuCipUT0tFTl9OT05fRlVOR0lCTEVfVU5JUVVFX1dJVEhfQ1VTVE9NX0'
    'ZFRVMQBBIhCh1TQ0hFRFVMRV9DUkVBVEVfQ09OVFJBQ1RfQ0FMTBAFEiEKHVRPUElDX0NSRUFU'
    'RV9XSVRIX0NVU1RPTV9GRUVTEAYSIwofU1VCTUlUX01FU1NBR0VfV0lUSF9DVVNUT01fRkVFUx'
    'AH');

@$core.Deprecated('Use tokenSupplyTypeDescriptor instead')
const TokenSupplyType$json = {
  '1': 'TokenSupplyType',
  '2': [
    {'1': 'INFINITE', '2': 0},
    {'1': 'FINITE', '2': 1},
  ],
};

/// Descriptor for `TokenSupplyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tokenSupplyTypeDescriptor = $convert.base64Decode(
    'Cg9Ub2tlblN1cHBseVR5cGUSDAoISU5GSU5JVEUQABIKCgZGSU5JVEUQAQ==');

@$core.Deprecated('Use tokenKeyValidationDescriptor instead')
const TokenKeyValidation$json = {
  '1': 'TokenKeyValidation',
  '2': [
    {'1': 'FULL_VALIDATION', '2': 0},
    {'1': 'NO_VALIDATION', '2': 1},
  ],
};

/// Descriptor for `TokenKeyValidation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tokenKeyValidationDescriptor = $convert.base64Decode(
    'ChJUb2tlbktleVZhbGlkYXRpb24SEwoPRlVMTF9WQUxJREFUSU9OEAASEQoNTk9fVkFMSURBVE'
    'lPThAB');

@$core.Deprecated('Use tokenFreezeStatusDescriptor instead')
const TokenFreezeStatus$json = {
  '1': 'TokenFreezeStatus',
  '2': [
    {'1': 'FreezeNotApplicable', '2': 0},
    {'1': 'Frozen', '2': 1},
    {'1': 'Unfrozen', '2': 2},
  ],
};

/// Descriptor for `TokenFreezeStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tokenFreezeStatusDescriptor = $convert.base64Decode(
    'ChFUb2tlbkZyZWV6ZVN0YXR1cxIXChNGcmVlemVOb3RBcHBsaWNhYmxlEAASCgoGRnJvemVuEA'
    'ESDAoIVW5mcm96ZW4QAg==');

@$core.Deprecated('Use tokenKycStatusDescriptor instead')
const TokenKycStatus$json = {
  '1': 'TokenKycStatus',
  '2': [
    {'1': 'KycNotApplicable', '2': 0},
    {'1': 'Granted', '2': 1},
    {'1': 'Revoked', '2': 2},
  ],
};

/// Descriptor for `TokenKycStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tokenKycStatusDescriptor = $convert.base64Decode(
    'Cg5Ub2tlbkt5Y1N0YXR1cxIUChBLeWNOb3RBcHBsaWNhYmxlEAASCwoHR3JhbnRlZBABEgsKB1'
    'Jldm9rZWQQAg==');

@$core.Deprecated('Use tokenPauseStatusDescriptor instead')
const TokenPauseStatus$json = {
  '1': 'TokenPauseStatus',
  '2': [
    {'1': 'PauseNotApplicable', '2': 0},
    {'1': 'Paused', '2': 1},
    {'1': 'Unpaused', '2': 2},
  ],
};

/// Descriptor for `TokenPauseStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tokenPauseStatusDescriptor = $convert.base64Decode(
    'ChBUb2tlblBhdXNlU3RhdHVzEhYKElBhdXNlTm90QXBwbGljYWJsZRAAEgoKBlBhdXNlZBABEg'
    'wKCFVucGF1c2VkEAI=');

@$core.Deprecated('Use hederaFunctionalityDescriptor instead')
const HederaFunctionality$json = {
  '1': 'HederaFunctionality',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'CryptoTransfer', '2': 1},
    {'1': 'CryptoUpdate', '2': 2},
    {'1': 'CryptoDelete', '2': 3},
    {
      '1': 'CryptoAddLiveHash',
      '2': 4,
      '3': {'1': true},
    },
    {
      '1': 'CryptoDeleteLiveHash',
      '2': 5,
      '3': {'1': true},
    },
    {'1': 'ContractCall', '2': 6},
    {'1': 'ContractCreate', '2': 7},
    {'1': 'ContractUpdate', '2': 8},
    {'1': 'FileCreate', '2': 9},
    {'1': 'FileAppend', '2': 10},
    {'1': 'FileUpdate', '2': 11},
    {'1': 'FileDelete', '2': 12},
    {'1': 'CryptoGetAccountBalance', '2': 13},
    {'1': 'CryptoGetAccountRecords', '2': 14},
    {'1': 'CryptoGetInfo', '2': 15},
    {'1': 'ContractCallLocal', '2': 16},
    {'1': 'ContractGetInfo', '2': 17},
    {'1': 'ContractGetBytecode', '2': 18},
    {'1': 'GetBySolidityID', '2': 19},
    {'1': 'GetByKey', '2': 20},
    {
      '1': 'CryptoGetLiveHash',
      '2': 21,
      '3': {'1': true},
    },
    {
      '1': 'CryptoGetStakers',
      '2': 22,
      '3': {'1': true},
    },
    {'1': 'FileGetContents', '2': 23},
    {'1': 'FileGetInfo', '2': 24},
    {'1': 'TransactionGetRecord', '2': 25},
    {
      '1': 'ContractGetRecords',
      '2': 26,
      '3': {'1': true},
    },
    {'1': 'CryptoCreate', '2': 27},
    {'1': 'SystemDelete', '2': 28},
    {'1': 'SystemUndelete', '2': 29},
    {'1': 'ContractDelete', '2': 30},
    {'1': 'Freeze', '2': 31},
    {'1': 'CreateTransactionRecord', '2': 32},
    {'1': 'CryptoAccountAutoRenew', '2': 33},
    {'1': 'ContractAutoRenew', '2': 34},
    {'1': 'GetVersionInfo', '2': 35},
    {'1': 'TransactionGetReceipt', '2': 36},
    {'1': 'ConsensusCreateTopic', '2': 50},
    {'1': 'ConsensusUpdateTopic', '2': 51},
    {'1': 'ConsensusDeleteTopic', '2': 52},
    {'1': 'ConsensusGetTopicInfo', '2': 53},
    {'1': 'ConsensusSubmitMessage', '2': 54},
    {'1': 'UncheckedSubmit', '2': 55},
    {'1': 'TokenCreate', '2': 56},
    {'1': 'TokenGetInfo', '2': 58},
    {'1': 'TokenFreezeAccount', '2': 59},
    {'1': 'TokenUnfreezeAccount', '2': 60},
    {'1': 'TokenGrantKycToAccount', '2': 61},
    {'1': 'TokenRevokeKycFromAccount', '2': 62},
    {'1': 'TokenDelete', '2': 63},
    {'1': 'TokenUpdate', '2': 64},
    {'1': 'TokenMint', '2': 65},
    {'1': 'TokenBurn', '2': 66},
    {'1': 'TokenAccountWipe', '2': 67},
    {'1': 'TokenAssociateToAccount', '2': 68},
    {'1': 'TokenDissociateFromAccount', '2': 69},
    {'1': 'ScheduleCreate', '2': 70},
    {'1': 'ScheduleDelete', '2': 71},
    {'1': 'ScheduleSign', '2': 72},
    {'1': 'ScheduleGetInfo', '2': 73},
    {
      '1': 'TokenGetAccountNftInfos',
      '2': 74,
      '3': {'1': true},
    },
    {
      '1': 'TokenGetNftInfo',
      '2': 75,
      '3': {'1': true},
    },
    {'1': 'TokenGetNftInfos', '2': 76},
    {'1': 'TokenFeeScheduleUpdate', '2': 77},
    {
      '1': 'NetworkGetExecutionTime',
      '2': 78,
      '3': {'1': true},
    },
    {'1': 'TokenPause', '2': 79},
    {'1': 'TokenUnpause', '2': 80},
    {'1': 'CryptoApproveAllowance', '2': 81},
    {'1': 'CryptoDeleteAllowance', '2': 82},
    {'1': 'GetAccountDetails', '2': 83},
    {'1': 'EthereumTransaction', '2': 84},
    {'1': 'NodeStakeUpdate', '2': 85},
    {'1': 'UtilPrng', '2': 86},
    {
      '1': 'TransactionGetFastRecord',
      '2': 87,
      '3': {'1': true},
    },
    {'1': 'TokenUpdateNfts', '2': 88},
    {'1': 'NodeCreate', '2': 89},
    {'1': 'NodeUpdate', '2': 90},
    {'1': 'NodeDelete', '2': 91},
    {'1': 'TokenReject', '2': 92},
    {'1': 'TokenAirdrop', '2': 93},
    {'1': 'TokenCancelAirdrop', '2': 94},
    {'1': 'TokenClaimAirdrop', '2': 95},
    {'1': 'StateSignatureTransaction', '2': 100},
    {'1': 'HintsKeyPublication', '2': 101},
    {'1': 'HintsPreprocessingVote', '2': 102},
    {'1': 'HintsPartialSignature', '2': 103},
    {'1': 'HistoryAssemblySignature', '2': 104},
    {'1': 'HistoryProofKeyPublication', '2': 105},
    {'1': 'HistoryProofVote', '2': 106},
    {'1': 'CrsPublication', '2': 107},
    {'1': 'AtomicBatch', '2': 108},
  ],
};

/// Descriptor for `HederaFunctionality`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hederaFunctionalityDescriptor = $convert.base64Decode(
    'ChNIZWRlcmFGdW5jdGlvbmFsaXR5EggKBE5PTkUQABISCg5DcnlwdG9UcmFuc2ZlchABEhAKDE'
    'NyeXB0b1VwZGF0ZRACEhAKDENyeXB0b0RlbGV0ZRADEhkKEUNyeXB0b0FkZExpdmVIYXNoEAQa'
    'AggBEhwKFENyeXB0b0RlbGV0ZUxpdmVIYXNoEAUaAggBEhAKDENvbnRyYWN0Q2FsbBAGEhIKDk'
    'NvbnRyYWN0Q3JlYXRlEAcSEgoOQ29udHJhY3RVcGRhdGUQCBIOCgpGaWxlQ3JlYXRlEAkSDgoK'
    'RmlsZUFwcGVuZBAKEg4KCkZpbGVVcGRhdGUQCxIOCgpGaWxlRGVsZXRlEAwSGwoXQ3J5cHRvR2'
    'V0QWNjb3VudEJhbGFuY2UQDRIbChdDcnlwdG9HZXRBY2NvdW50UmVjb3JkcxAOEhEKDUNyeXB0'
    'b0dldEluZm8QDxIVChFDb250cmFjdENhbGxMb2NhbBAQEhMKD0NvbnRyYWN0R2V0SW5mbxAREh'
    'cKE0NvbnRyYWN0R2V0Qnl0ZWNvZGUQEhITCg9HZXRCeVNvbGlkaXR5SUQQExIMCghHZXRCeUtl'
    'eRAUEhkKEUNyeXB0b0dldExpdmVIYXNoEBUaAggBEhgKEENyeXB0b0dldFN0YWtlcnMQFhoCCA'
    'ESEwoPRmlsZUdldENvbnRlbnRzEBcSDwoLRmlsZUdldEluZm8QGBIYChRUcmFuc2FjdGlvbkdl'
    'dFJlY29yZBAZEhoKEkNvbnRyYWN0R2V0UmVjb3JkcxAaGgIIARIQCgxDcnlwdG9DcmVhdGUQGx'
    'IQCgxTeXN0ZW1EZWxldGUQHBISCg5TeXN0ZW1VbmRlbGV0ZRAdEhIKDkNvbnRyYWN0RGVsZXRl'
    'EB4SCgoGRnJlZXplEB8SGwoXQ3JlYXRlVHJhbnNhY3Rpb25SZWNvcmQQIBIaChZDcnlwdG9BY2'
    'NvdW50QXV0b1JlbmV3ECESFQoRQ29udHJhY3RBdXRvUmVuZXcQIhISCg5HZXRWZXJzaW9uSW5m'
    'bxAjEhkKFVRyYW5zYWN0aW9uR2V0UmVjZWlwdBAkEhgKFENvbnNlbnN1c0NyZWF0ZVRvcGljED'
    'ISGAoUQ29uc2Vuc3VzVXBkYXRlVG9waWMQMxIYChRDb25zZW5zdXNEZWxldGVUb3BpYxA0EhkK'
    'FUNvbnNlbnN1c0dldFRvcGljSW5mbxA1EhoKFkNvbnNlbnN1c1N1Ym1pdE1lc3NhZ2UQNhITCg'
    '9VbmNoZWNrZWRTdWJtaXQQNxIPCgtUb2tlbkNyZWF0ZRA4EhAKDFRva2VuR2V0SW5mbxA6EhYK'
    'ElRva2VuRnJlZXplQWNjb3VudBA7EhgKFFRva2VuVW5mcmVlemVBY2NvdW50EDwSGgoWVG9rZW'
    '5HcmFudEt5Y1RvQWNjb3VudBA9Eh0KGVRva2VuUmV2b2tlS3ljRnJvbUFjY291bnQQPhIPCgtU'
    'b2tlbkRlbGV0ZRA/Eg8KC1Rva2VuVXBkYXRlEEASDQoJVG9rZW5NaW50EEESDQoJVG9rZW5CdX'
    'JuEEISFAoQVG9rZW5BY2NvdW50V2lwZRBDEhsKF1Rva2VuQXNzb2NpYXRlVG9BY2NvdW50EEQS'
    'HgoaVG9rZW5EaXNzb2NpYXRlRnJvbUFjY291bnQQRRISCg5TY2hlZHVsZUNyZWF0ZRBGEhIKDl'
    'NjaGVkdWxlRGVsZXRlEEcSEAoMU2NoZWR1bGVTaWduEEgSEwoPU2NoZWR1bGVHZXRJbmZvEEkS'
    'HwoXVG9rZW5HZXRBY2NvdW50TmZ0SW5mb3MQShoCCAESFwoPVG9rZW5HZXROZnRJbmZvEEsaAg'
    'gBEhQKEFRva2VuR2V0TmZ0SW5mb3MQTBIaChZUb2tlbkZlZVNjaGVkdWxlVXBkYXRlEE0SHwoX'
    'TmV0d29ya0dldEV4ZWN1dGlvblRpbWUQThoCCAESDgoKVG9rZW5QYXVzZRBPEhAKDFRva2VuVW'
    '5wYXVzZRBQEhoKFkNyeXB0b0FwcHJvdmVBbGxvd2FuY2UQURIZChVDcnlwdG9EZWxldGVBbGxv'
    'd2FuY2UQUhIVChFHZXRBY2NvdW50RGV0YWlscxBTEhcKE0V0aGVyZXVtVHJhbnNhY3Rpb24QVB'
    'ITCg9Ob2RlU3Rha2VVcGRhdGUQVRIMCghVdGlsUHJuZxBWEiAKGFRyYW5zYWN0aW9uR2V0RmFz'
    'dFJlY29yZBBXGgIIARITCg9Ub2tlblVwZGF0ZU5mdHMQWBIOCgpOb2RlQ3JlYXRlEFkSDgoKTm'
    '9kZVVwZGF0ZRBaEg4KCk5vZGVEZWxldGUQWxIPCgtUb2tlblJlamVjdBBcEhAKDFRva2VuQWly'
    'ZHJvcBBdEhYKElRva2VuQ2FuY2VsQWlyZHJvcBBeEhUKEVRva2VuQ2xhaW1BaXJkcm9wEF8SHQ'
    'oZU3RhdGVTaWduYXR1cmVUcmFuc2FjdGlvbhBkEhcKE0hpbnRzS2V5UHVibGljYXRpb24QZRIa'
    'ChZIaW50c1ByZXByb2Nlc3NpbmdWb3RlEGYSGQoVSGludHNQYXJ0aWFsU2lnbmF0dXJlEGcSHA'
    'oYSGlzdG9yeUFzc2VtYmx5U2lnbmF0dXJlEGgSHgoaSGlzdG9yeVByb29mS2V5UHVibGljYXRp'
    'b24QaRIUChBIaXN0b3J5UHJvb2ZWb3RlEGoSEgoOQ3JzUHVibGljYXRpb24QaxIPCgtBdG9taW'
    'NCYXRjaBBs');

@$core.Deprecated('Use shardIDDescriptor instead')
const ShardID$json = {
  '1': 'ShardID',
  '2': [
    {'1': 'shardNum', '3': 1, '4': 1, '5': 3, '10': 'shardNum'},
  ],
};

/// Descriptor for `ShardID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shardIDDescriptor = $convert
    .base64Decode('CgdTaGFyZElEEhoKCHNoYXJkTnVtGAEgASgDUghzaGFyZE51bQ==');

@$core.Deprecated('Use realmIDDescriptor instead')
const RealmID$json = {
  '1': 'RealmID',
  '2': [
    {'1': 'shardNum', '3': 1, '4': 1, '5': 3, '10': 'shardNum'},
    {'1': 'realmNum', '3': 2, '4': 1, '5': 3, '10': 'realmNum'},
  ],
};

/// Descriptor for `RealmID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List realmIDDescriptor = $convert.base64Decode(
    'CgdSZWFsbUlEEhoKCHNoYXJkTnVtGAEgASgDUghzaGFyZE51bRIaCghyZWFsbU51bRgCIAEoA1'
    'IIcmVhbG1OdW0=');

@$core.Deprecated('Use tokenIDDescriptor instead')
const TokenID$json = {
  '1': 'TokenID',
  '2': [
    {'1': 'shardNum', '3': 1, '4': 1, '5': 3, '10': 'shardNum'},
    {'1': 'realmNum', '3': 2, '4': 1, '5': 3, '10': 'realmNum'},
    {'1': 'tokenNum', '3': 3, '4': 1, '5': 3, '10': 'tokenNum'},
  ],
};

/// Descriptor for `TokenID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenIDDescriptor = $convert.base64Decode(
    'CgdUb2tlbklEEhoKCHNoYXJkTnVtGAEgASgDUghzaGFyZE51bRIaCghyZWFsbU51bRgCIAEoA1'
    'IIcmVhbG1OdW0SGgoIdG9rZW5OdW0YAyABKANSCHRva2VuTnVt');

@$core.Deprecated('Use accountIDDescriptor instead')
const AccountID$json = {
  '1': 'AccountID',
  '2': [
    {'1': 'shardNum', '3': 1, '4': 1, '5': 3, '10': 'shardNum'},
    {'1': 'realmNum', '3': 2, '4': 1, '5': 3, '10': 'realmNum'},
    {'1': 'accountNum', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'accountNum'},
    {'1': 'alias', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'alias'},
  ],
  '8': [
    {'1': 'account'},
  ],
};

/// Descriptor for `AccountID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountIDDescriptor = $convert.base64Decode(
    'CglBY2NvdW50SUQSGgoIc2hhcmROdW0YASABKANSCHNoYXJkTnVtEhoKCHJlYWxtTnVtGAIgAS'
    'gDUghyZWFsbU51bRIgCgphY2NvdW50TnVtGAMgASgDSABSCmFjY291bnROdW0SFgoFYWxpYXMY'
    'BCABKAxIAFIFYWxpYXNCCQoHYWNjb3VudA==');

@$core.Deprecated('Use nftIDDescriptor instead')
const NftID$json = {
  '1': 'NftID',
  '2': [
    {
      '1': 'token_ID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenID'
    },
    {'1': 'serial_number', '3': 2, '4': 1, '5': 3, '10': 'serialNumber'},
  ],
};

/// Descriptor for `NftID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nftIDDescriptor = $convert.base64Decode(
    'CgVOZnRJRBIpCgh0b2tlbl9JRBgBIAEoCzIOLnByb3RvLlRva2VuSURSB3Rva2VuSUQSIwoNc2'
    'VyaWFsX251bWJlchgCIAEoA1IMc2VyaWFsTnVtYmVy');

@$core.Deprecated('Use fileIDDescriptor instead')
const FileID$json = {
  '1': 'FileID',
  '2': [
    {'1': 'shardNum', '3': 1, '4': 1, '5': 3, '10': 'shardNum'},
    {'1': 'realmNum', '3': 2, '4': 1, '5': 3, '10': 'realmNum'},
    {'1': 'fileNum', '3': 3, '4': 1, '5': 3, '10': 'fileNum'},
  ],
};

/// Descriptor for `FileID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileIDDescriptor = $convert.base64Decode(
    'CgZGaWxlSUQSGgoIc2hhcmROdW0YASABKANSCHNoYXJkTnVtEhoKCHJlYWxtTnVtGAIgASgDUg'
    'hyZWFsbU51bRIYCgdmaWxlTnVtGAMgASgDUgdmaWxlTnVt');

@$core.Deprecated('Use contractIDDescriptor instead')
const ContractID$json = {
  '1': 'ContractID',
  '2': [
    {'1': 'shardNum', '3': 1, '4': 1, '5': 3, '10': 'shardNum'},
    {'1': 'realmNum', '3': 2, '4': 1, '5': 3, '10': 'realmNum'},
    {'1': 'contractNum', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'contractNum'},
    {'1': 'evm_address', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'evmAddress'},
  ],
  '8': [
    {'1': 'contract'},
  ],
};

/// Descriptor for `ContractID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractIDDescriptor = $convert.base64Decode(
    'CgpDb250cmFjdElEEhoKCHNoYXJkTnVtGAEgASgDUghzaGFyZE51bRIaCghyZWFsbU51bRgCIA'
    'EoA1IIcmVhbG1OdW0SIgoLY29udHJhY3ROdW0YAyABKANIAFILY29udHJhY3ROdW0SIQoLZXZt'
    'X2FkZHJlc3MYBCABKAxIAFIKZXZtQWRkcmVzc0IKCghjb250cmFjdA==');

@$core.Deprecated('Use topicIDDescriptor instead')
const TopicID$json = {
  '1': 'TopicID',
  '2': [
    {'1': 'shardNum', '3': 1, '4': 1, '5': 3, '10': 'shardNum'},
    {'1': 'realmNum', '3': 2, '4': 1, '5': 3, '10': 'realmNum'},
    {'1': 'topicNum', '3': 3, '4': 1, '5': 3, '10': 'topicNum'},
  ],
};

/// Descriptor for `TopicID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicIDDescriptor = $convert.base64Decode(
    'CgdUb3BpY0lEEhoKCHNoYXJkTnVtGAEgASgDUghzaGFyZE51bRIaCghyZWFsbU51bRgCIAEoA1'
    'IIcmVhbG1OdW0SGgoIdG9waWNOdW0YAyABKANSCHRvcGljTnVt');

@$core.Deprecated('Use scheduleIDDescriptor instead')
const ScheduleID$json = {
  '1': 'ScheduleID',
  '2': [
    {'1': 'shardNum', '3': 1, '4': 1, '5': 3, '10': 'shardNum'},
    {'1': 'realmNum', '3': 2, '4': 1, '5': 3, '10': 'realmNum'},
    {'1': 'scheduleNum', '3': 3, '4': 1, '5': 3, '10': 'scheduleNum'},
  ],
};

/// Descriptor for `ScheduleID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleIDDescriptor = $convert.base64Decode(
    'CgpTY2hlZHVsZUlEEhoKCHNoYXJkTnVtGAEgASgDUghzaGFyZE51bRIaCghyZWFsbU51bRgCIA'
    'EoA1IIcmVhbG1OdW0SIAoLc2NoZWR1bGVOdW0YAyABKANSC3NjaGVkdWxlTnVt');

@$core.Deprecated('Use transactionIDDescriptor instead')
const TransactionID$json = {
  '1': 'TransactionID',
  '2': [
    {
      '1': 'transactionValidStart',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'transactionValidStart'
    },
    {
      '1': 'accountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {'1': 'scheduled', '3': 3, '4': 1, '5': 8, '10': 'scheduled'},
    {'1': 'nonce', '3': 4, '4': 1, '5': 5, '10': 'nonce'},
  ],
};

/// Descriptor for `TransactionID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionIDDescriptor = $convert.base64Decode(
    'Cg1UcmFuc2FjdGlvbklEEkYKFXRyYW5zYWN0aW9uVmFsaWRTdGFydBgBIAEoCzIQLnByb3RvLl'
    'RpbWVzdGFtcFIVdHJhbnNhY3Rpb25WYWxpZFN0YXJ0Ei4KCWFjY291bnRJRBgCIAEoCzIQLnBy'
    'b3RvLkFjY291bnRJRFIJYWNjb3VudElEEhwKCXNjaGVkdWxlZBgDIAEoCFIJc2NoZWR1bGVkEh'
    'QKBW5vbmNlGAQgASgFUgVub25jZQ==');

@$core.Deprecated('Use accountAmountDescriptor instead')
const AccountAmount$json = {
  '1': 'AccountAmount',
  '2': [
    {
      '1': 'accountID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountID'
    },
    {'1': 'amount', '3': 2, '4': 1, '5': 18, '10': 'amount'},
    {'1': 'is_approval', '3': 3, '4': 1, '5': 8, '10': 'isApproval'},
  ],
};

/// Descriptor for `AccountAmount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAmountDescriptor = $convert.base64Decode(
    'Cg1BY2NvdW50QW1vdW50Ei4KCWFjY291bnRJRBgBIAEoCzIQLnByb3RvLkFjY291bnRJRFIJYW'
    'Njb3VudElEEhYKBmFtb3VudBgCIAEoElIGYW1vdW50Eh8KC2lzX2FwcHJvdmFsGAMgASgIUgpp'
    'c0FwcHJvdmFs');

@$core.Deprecated('Use transferListDescriptor instead')
const TransferList$json = {
  '1': 'TransferList',
  '2': [
    {
      '1': 'accountAmounts',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.AccountAmount',
      '10': 'accountAmounts'
    },
  ],
};

/// Descriptor for `TransferList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferListDescriptor = $convert.base64Decode(
    'CgxUcmFuc2Zlckxpc3QSPAoOYWNjb3VudEFtb3VudHMYASADKAsyFC5wcm90by5BY2NvdW50QW'
    '1vdW50Ug5hY2NvdW50QW1vdW50cw==');

@$core.Deprecated('Use nftTransferDescriptor instead')
const NftTransfer$json = {
  '1': 'NftTransfer',
  '2': [
    {
      '1': 'senderAccountID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'senderAccountID'
    },
    {
      '1': 'receiverAccountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'receiverAccountID'
    },
    {'1': 'serialNumber', '3': 3, '4': 1, '5': 3, '10': 'serialNumber'},
    {'1': 'is_approval', '3': 4, '4': 1, '5': 8, '10': 'isApproval'},
  ],
};

/// Descriptor for `NftTransfer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nftTransferDescriptor = $convert.base64Decode(
    'CgtOZnRUcmFuc2ZlchI6Cg9zZW5kZXJBY2NvdW50SUQYASABKAsyEC5wcm90by5BY2NvdW50SU'
    'RSD3NlbmRlckFjY291bnRJRBI+ChFyZWNlaXZlckFjY291bnRJRBgCIAEoCzIQLnByb3RvLkFj'
    'Y291bnRJRFIRcmVjZWl2ZXJBY2NvdW50SUQSIgoMc2VyaWFsTnVtYmVyGAMgASgDUgxzZXJpYW'
    'xOdW1iZXISHwoLaXNfYXBwcm92YWwYBCABKAhSCmlzQXBwcm92YWw=');

@$core.Deprecated('Use tokenTransferListDescriptor instead')
const TokenTransferList$json = {
  '1': 'TokenTransferList',
  '2': [
    {
      '1': 'token',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'token'
    },
    {
      '1': 'transfers',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.AccountAmount',
      '10': 'transfers'
    },
    {
      '1': 'nftTransfers',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.proto.NftTransfer',
      '10': 'nftTransfers'
    },
    {
      '1': 'expected_decimals',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.UInt32Value',
      '10': 'expectedDecimals'
    },
  ],
};

/// Descriptor for `TokenTransferList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenTransferListDescriptor = $convert.base64Decode(
    'ChFUb2tlblRyYW5zZmVyTGlzdBIkCgV0b2tlbhgBIAEoCzIOLnByb3RvLlRva2VuSURSBXRva2'
    'VuEjIKCXRyYW5zZmVycxgCIAMoCzIULnByb3RvLkFjY291bnRBbW91bnRSCXRyYW5zZmVycxI2'
    'CgxuZnRUcmFuc2ZlcnMYAyADKAsyEi5wcm90by5OZnRUcmFuc2ZlclIMbmZ0VHJhbnNmZXJzEk'
    'kKEWV4cGVjdGVkX2RlY2ltYWxzGAQgASgLMhwuZ29vZ2xlLnByb3RvYnVmLlVJbnQzMlZhbHVl'
    'UhBleHBlY3RlZERlY2ltYWxz');

@$core.Deprecated('Use fractionDescriptor instead')
const Fraction$json = {
  '1': 'Fraction',
  '2': [
    {'1': 'numerator', '3': 1, '4': 1, '5': 3, '10': 'numerator'},
    {'1': 'denominator', '3': 2, '4': 1, '5': 3, '10': 'denominator'},
  ],
};

/// Descriptor for `Fraction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fractionDescriptor = $convert.base64Decode(
    'CghGcmFjdGlvbhIcCgludW1lcmF0b3IYASABKANSCW51bWVyYXRvchIgCgtkZW5vbWluYXRvch'
    'gCIAEoA1ILZGVub21pbmF0b3I=');

@$core.Deprecated('Use keyDescriptor instead')
const Key$json = {
  '1': 'Key',
  '2': [
    {
      '1': 'contractID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '9': 0,
      '10': 'contractID'
    },
    {'1': 'ed25519', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'ed25519'},
    {
      '1': 'RSA_3072',
      '3': 3,
      '4': 1,
      '5': 12,
      '8': {'3': true},
      '9': 0,
      '10': 'RSA3072',
    },
    {
      '1': 'ECDSA_384',
      '3': 4,
      '4': 1,
      '5': 12,
      '8': {'3': true},
      '9': 0,
      '10': 'ECDSA384',
    },
    {
      '1': 'thresholdKey',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.ThresholdKey',
      '9': 0,
      '10': 'thresholdKey'
    },
    {
      '1': 'keyList',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.KeyList',
      '9': 0,
      '10': 'keyList'
    },
    {
      '1': 'ECDSA_secp256k1',
      '3': 7,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'ECDSASecp256k1'
    },
    {
      '1': 'delegatable_contract_id',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '9': 0,
      '10': 'delegatableContractId'
    },
  ],
  '8': [
    {'1': 'key'},
  ],
};

/// Descriptor for `Key`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyDescriptor = $convert.base64Decode(
    'CgNLZXkSMwoKY29udHJhY3RJRBgBIAEoCzIRLnByb3RvLkNvbnRyYWN0SURIAFIKY29udHJhY3'
    'RJRBIaCgdlZDI1NTE5GAIgASgMSABSB2VkMjU1MTkSHwoIUlNBXzMwNzIYAyABKAxCAhgBSABS'
    'B1JTQTMwNzISIQoJRUNEU0FfMzg0GAQgASgMQgIYAUgAUghFQ0RTQTM4NBI5Cgx0aHJlc2hvbG'
    'RLZXkYBSABKAsyEy5wcm90by5UaHJlc2hvbGRLZXlIAFIMdGhyZXNob2xkS2V5EioKB2tleUxp'
    'c3QYBiABKAsyDi5wcm90by5LZXlMaXN0SABSB2tleUxpc3QSKQoPRUNEU0Ffc2VjcDI1NmsxGA'
    'cgASgMSABSDkVDRFNBU2VjcDI1NmsxEksKF2RlbGVnYXRhYmxlX2NvbnRyYWN0X2lkGAggASgL'
    'MhEucHJvdG8uQ29udHJhY3RJREgAUhVkZWxlZ2F0YWJsZUNvbnRyYWN0SWRCBQoDa2V5');

@$core.Deprecated('Use thresholdKeyDescriptor instead')
const ThresholdKey$json = {
  '1': 'ThresholdKey',
  '2': [
    {'1': 'threshold', '3': 1, '4': 1, '5': 13, '10': 'threshold'},
    {'1': 'keys', '3': 2, '4': 1, '5': 11, '6': '.proto.KeyList', '10': 'keys'},
  ],
};

/// Descriptor for `ThresholdKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thresholdKeyDescriptor = $convert.base64Decode(
    'CgxUaHJlc2hvbGRLZXkSHAoJdGhyZXNob2xkGAEgASgNUgl0aHJlc2hvbGQSIgoEa2V5cxgCIA'
    'EoCzIOLnByb3RvLktleUxpc3RSBGtleXM=');

@$core.Deprecated('Use keyListDescriptor instead')
const KeyList$json = {
  '1': 'KeyList',
  '2': [
    {'1': 'keys', '3': 1, '4': 3, '5': 11, '6': '.proto.Key', '10': 'keys'},
  ],
};

/// Descriptor for `KeyList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyListDescriptor = $convert
    .base64Decode('CgdLZXlMaXN0Eh4KBGtleXMYASADKAsyCi5wcm90by5LZXlSBGtleXM=');

@$core.Deprecated('Use signatureDescriptor instead')
const Signature$json = {
  '1': 'Signature',
  '2': [
    {'1': 'contract', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'contract'},
    {'1': 'ed25519', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'ed25519'},
    {'1': 'RSA_3072', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'RSA3072'},
    {'1': 'ECDSA_384', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'ECDSA384'},
    {
      '1': 'thresholdSignature',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.ThresholdSignature',
      '9': 0,
      '10': 'thresholdSignature'
    },
    {
      '1': 'signatureList',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.SignatureList',
      '9': 0,
      '10': 'signatureList'
    },
  ],
  '7': {'3': true},
  '8': [
    {'1': 'signature'},
  ],
};

/// Descriptor for `Signature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureDescriptor = $convert.base64Decode(
    'CglTaWduYXR1cmUSHAoIY29udHJhY3QYASABKAxIAFIIY29udHJhY3QSGgoHZWQyNTUxORgCIA'
    'EoDEgAUgdlZDI1NTE5EhsKCFJTQV8zMDcyGAMgASgMSABSB1JTQTMwNzISHQoJRUNEU0FfMzg0'
    'GAQgASgMSABSCEVDRFNBMzg0EksKEnRocmVzaG9sZFNpZ25hdHVyZRgFIAEoCzIZLnByb3RvLl'
    'RocmVzaG9sZFNpZ25hdHVyZUgAUhJ0aHJlc2hvbGRTaWduYXR1cmUSPAoNc2lnbmF0dXJlTGlz'
    'dBgGIAEoCzIULnByb3RvLlNpZ25hdHVyZUxpc3RIAFINc2lnbmF0dXJlTGlzdDoCGAFCCwoJc2'
    'lnbmF0dXJl');

@$core.Deprecated('Use thresholdSignatureDescriptor instead')
const ThresholdSignature$json = {
  '1': 'ThresholdSignature',
  '2': [
    {
      '1': 'sigs',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.SignatureList',
      '10': 'sigs'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `ThresholdSignature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thresholdSignatureDescriptor = $convert.base64Decode(
    'ChJUaHJlc2hvbGRTaWduYXR1cmUSKAoEc2lncxgCIAEoCzIULnByb3RvLlNpZ25hdHVyZUxpc3'
    'RSBHNpZ3M6AhgB');

@$core.Deprecated('Use signatureListDescriptor instead')
const SignatureList$json = {
  '1': 'SignatureList',
  '2': [
    {
      '1': 'sigs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.Signature',
      '10': 'sigs'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `SignatureList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureListDescriptor = $convert.base64Decode(
    'Cg1TaWduYXR1cmVMaXN0EiQKBHNpZ3MYAiADKAsyEC5wcm90by5TaWduYXR1cmVSBHNpZ3M6Ah'
    'gB');

@$core.Deprecated('Use signaturePairDescriptor instead')
const SignaturePair$json = {
  '1': 'SignaturePair',
  '2': [
    {'1': 'pubKeyPrefix', '3': 1, '4': 1, '5': 12, '10': 'pubKeyPrefix'},
    {'1': 'contract', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'contract'},
    {'1': 'ed25519', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'ed25519'},
    {
      '1': 'RSA_3072',
      '3': 4,
      '4': 1,
      '5': 12,
      '8': {'3': true},
      '9': 0,
      '10': 'RSA3072',
    },
    {
      '1': 'ECDSA_384',
      '3': 5,
      '4': 1,
      '5': 12,
      '8': {'3': true},
      '9': 0,
      '10': 'ECDSA384',
    },
    {
      '1': 'ECDSA_secp256k1',
      '3': 6,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'ECDSASecp256k1'
    },
  ],
  '8': [
    {'1': 'signature'},
  ],
};

/// Descriptor for `SignaturePair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signaturePairDescriptor = $convert.base64Decode(
    'Cg1TaWduYXR1cmVQYWlyEiIKDHB1YktleVByZWZpeBgBIAEoDFIMcHViS2V5UHJlZml4EhwKCG'
    'NvbnRyYWN0GAIgASgMSABSCGNvbnRyYWN0EhoKB2VkMjU1MTkYAyABKAxIAFIHZWQyNTUxORIf'
    'CghSU0FfMzA3MhgEIAEoDEICGAFIAFIHUlNBMzA3MhIhCglFQ0RTQV8zODQYBSABKAxCAhgBSA'
    'BSCEVDRFNBMzg0EikKD0VDRFNBX3NlY3AyNTZrMRgGIAEoDEgAUg5FQ0RTQVNlY3AyNTZrMUIL'
    'CglzaWduYXR1cmU=');

@$core.Deprecated('Use signatureMapDescriptor instead')
const SignatureMap$json = {
  '1': 'SignatureMap',
  '2': [
    {
      '1': 'sigPair',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.SignaturePair',
      '10': 'sigPair'
    },
  ],
};

/// Descriptor for `SignatureMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureMapDescriptor = $convert.base64Decode(
    'CgxTaWduYXR1cmVNYXASLgoHc2lnUGFpchgBIAMoCzIULnByb3RvLlNpZ25hdHVyZVBhaXJSB3'
    'NpZ1BhaXI=');

@$core.Deprecated('Use feeComponentsDescriptor instead')
const FeeComponents$json = {
  '1': 'FeeComponents',
  '2': [
    {'1': 'min', '3': 1, '4': 1, '5': 3, '10': 'min'},
    {'1': 'max', '3': 2, '4': 1, '5': 3, '10': 'max'},
    {'1': 'constant', '3': 3, '4': 1, '5': 3, '10': 'constant'},
    {'1': 'bpt', '3': 4, '4': 1, '5': 3, '10': 'bpt'},
    {'1': 'vpt', '3': 5, '4': 1, '5': 3, '10': 'vpt'},
    {'1': 'rbh', '3': 6, '4': 1, '5': 3, '10': 'rbh'},
    {'1': 'sbh', '3': 7, '4': 1, '5': 3, '10': 'sbh'},
    {'1': 'gas', '3': 8, '4': 1, '5': 3, '10': 'gas'},
    {'1': 'tv', '3': 9, '4': 1, '5': 3, '10': 'tv'},
    {'1': 'bpr', '3': 10, '4': 1, '5': 3, '10': 'bpr'},
    {'1': 'sbpr', '3': 11, '4': 1, '5': 3, '10': 'sbpr'},
  ],
};

/// Descriptor for `FeeComponents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeComponentsDescriptor = $convert.base64Decode(
    'Cg1GZWVDb21wb25lbnRzEhAKA21pbhgBIAEoA1IDbWluEhAKA21heBgCIAEoA1IDbWF4EhoKCG'
    'NvbnN0YW50GAMgASgDUghjb25zdGFudBIQCgNicHQYBCABKANSA2JwdBIQCgN2cHQYBSABKANS'
    'A3ZwdBIQCgNyYmgYBiABKANSA3JiaBIQCgNzYmgYByABKANSA3NiaBIQCgNnYXMYCCABKANSA2'
    'dhcxIOCgJ0dhgJIAEoA1ICdHYSEAoDYnByGAogASgDUgNicHISEgoEc2JwchgLIAEoA1IEc2Jw'
    'cg==');

@$core.Deprecated('Use transactionFeeScheduleDescriptor instead')
const TransactionFeeSchedule$json = {
  '1': 'TransactionFeeSchedule',
  '2': [
    {
      '1': 'hederaFunctionality',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.proto.HederaFunctionality',
      '10': 'hederaFunctionality'
    },
    {
      '1': 'feeData',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.FeeData',
      '8': {'3': true},
      '10': 'feeData',
    },
    {'1': 'fees', '3': 3, '4': 3, '5': 11, '6': '.proto.FeeData', '10': 'fees'},
  ],
};

/// Descriptor for `TransactionFeeSchedule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionFeeScheduleDescriptor = $convert.base64Decode(
    'ChZUcmFuc2FjdGlvbkZlZVNjaGVkdWxlEkwKE2hlZGVyYUZ1bmN0aW9uYWxpdHkYASABKA4yGi'
    '5wcm90by5IZWRlcmFGdW5jdGlvbmFsaXR5UhNoZWRlcmFGdW5jdGlvbmFsaXR5EiwKB2ZlZURh'
    'dGEYAiABKAsyDi5wcm90by5GZWVEYXRhQgIYAVIHZmVlRGF0YRIiCgRmZWVzGAMgAygLMg4ucH'
    'JvdG8uRmVlRGF0YVIEZmVlcw==');

@$core.Deprecated('Use feeDataDescriptor instead')
const FeeData$json = {
  '1': 'FeeData',
  '2': [
    {
      '1': 'nodedata',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.FeeComponents',
      '10': 'nodedata'
    },
    {
      '1': 'networkdata',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.FeeComponents',
      '10': 'networkdata'
    },
    {
      '1': 'servicedata',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.FeeComponents',
      '10': 'servicedata'
    },
    {
      '1': 'subType',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.proto.SubType',
      '10': 'subType'
    },
  ],
};

/// Descriptor for `FeeData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeDataDescriptor = $convert.base64Decode(
    'CgdGZWVEYXRhEjAKCG5vZGVkYXRhGAEgASgLMhQucHJvdG8uRmVlQ29tcG9uZW50c1IIbm9kZW'
    'RhdGESNgoLbmV0d29ya2RhdGEYAiABKAsyFC5wcm90by5GZWVDb21wb25lbnRzUgtuZXR3b3Jr'
    'ZGF0YRI2CgtzZXJ2aWNlZGF0YRgDIAEoCzIULnByb3RvLkZlZUNvbXBvbmVudHNSC3NlcnZpY2'
    'VkYXRhEigKB3N1YlR5cGUYBCABKA4yDi5wcm90by5TdWJUeXBlUgdzdWJUeXBl');

@$core.Deprecated('Use feeScheduleDescriptor instead')
const FeeSchedule$json = {
  '1': 'FeeSchedule',
  '2': [
    {
      '1': 'transactionFeeSchedule',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.TransactionFeeSchedule',
      '10': 'transactionFeeSchedule'
    },
    {
      '1': 'expiryTime',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.TimestampSeconds',
      '10': 'expiryTime'
    },
  ],
};

/// Descriptor for `FeeSchedule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeScheduleDescriptor = $convert.base64Decode(
    'CgtGZWVTY2hlZHVsZRJVChZ0cmFuc2FjdGlvbkZlZVNjaGVkdWxlGAEgAygLMh0ucHJvdG8uVH'
    'JhbnNhY3Rpb25GZWVTY2hlZHVsZVIWdHJhbnNhY3Rpb25GZWVTY2hlZHVsZRI3CgpleHBpcnlU'
    'aW1lGAIgASgLMhcucHJvdG8uVGltZXN0YW1wU2Vjb25kc1IKZXhwaXJ5VGltZQ==');

@$core.Deprecated('Use currentAndNextFeeScheduleDescriptor instead')
const CurrentAndNextFeeSchedule$json = {
  '1': 'CurrentAndNextFeeSchedule',
  '2': [
    {
      '1': 'currentFeeSchedule',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.FeeSchedule',
      '10': 'currentFeeSchedule'
    },
    {
      '1': 'nextFeeSchedule',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.FeeSchedule',
      '10': 'nextFeeSchedule'
    },
  ],
};

/// Descriptor for `CurrentAndNextFeeSchedule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List currentAndNextFeeScheduleDescriptor = $convert.base64Decode(
    'ChlDdXJyZW50QW5kTmV4dEZlZVNjaGVkdWxlEkIKEmN1cnJlbnRGZWVTY2hlZHVsZRgBIAEoCz'
    'ISLnByb3RvLkZlZVNjaGVkdWxlUhJjdXJyZW50RmVlU2NoZWR1bGUSPAoPbmV4dEZlZVNjaGVk'
    'dWxlGAIgASgLMhIucHJvdG8uRmVlU2NoZWR1bGVSD25leHRGZWVTY2hlZHVsZQ==');

@$core.Deprecated('Use serviceEndpointDescriptor instead')
const ServiceEndpoint$json = {
  '1': 'ServiceEndpoint',
  '2': [
    {'1': 'ipAddressV4', '3': 1, '4': 1, '5': 12, '10': 'ipAddressV4'},
    {'1': 'port', '3': 2, '4': 1, '5': 5, '10': 'port'},
    {'1': 'domain_name', '3': 3, '4': 1, '5': 9, '10': 'domainName'},
  ],
};

/// Descriptor for `ServiceEndpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceEndpointDescriptor = $convert.base64Decode(
    'Cg9TZXJ2aWNlRW5kcG9pbnQSIAoLaXBBZGRyZXNzVjQYASABKAxSC2lwQWRkcmVzc1Y0EhIKBH'
    'BvcnQYAiABKAVSBHBvcnQSHwoLZG9tYWluX25hbWUYAyABKAlSCmRvbWFpbk5hbWU=');

@$core.Deprecated('Use nodeAddressDescriptor instead')
const NodeAddress$json = {
  '1': 'NodeAddress',
  '2': [
    {
      '1': 'ipAddress',
      '3': 1,
      '4': 1,
      '5': 12,
      '8': {'3': true},
      '10': 'ipAddress',
    },
    {
      '1': 'portno',
      '3': 2,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'portno',
    },
    {
      '1': 'memo',
      '3': 3,
      '4': 1,
      '5': 12,
      '8': {'3': true},
      '10': 'memo',
    },
    {'1': 'RSA_PubKey', '3': 4, '4': 1, '5': 9, '10': 'RSAPubKey'},
    {'1': 'nodeId', '3': 5, '4': 1, '5': 3, '10': 'nodeId'},
    {
      '1': 'nodeAccountId',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'nodeAccountId'
    },
    {'1': 'nodeCertHash', '3': 7, '4': 1, '5': 12, '10': 'nodeCertHash'},
    {
      '1': 'serviceEndpoint',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.proto.ServiceEndpoint',
      '10': 'serviceEndpoint'
    },
    {'1': 'description', '3': 9, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'stake',
      '3': 10,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '10': 'stake',
    },
  ],
};

/// Descriptor for `NodeAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeAddressDescriptor = $convert.base64Decode(
    'CgtOb2RlQWRkcmVzcxIgCglpcEFkZHJlc3MYASABKAxCAhgBUglpcEFkZHJlc3MSGgoGcG9ydG'
    '5vGAIgASgFQgIYAVIGcG9ydG5vEhYKBG1lbW8YAyABKAxCAhgBUgRtZW1vEh0KClJTQV9QdWJL'
    'ZXkYBCABKAlSCVJTQVB1YktleRIWCgZub2RlSWQYBSABKANSBm5vZGVJZBI2Cg1ub2RlQWNjb3'
    'VudElkGAYgASgLMhAucHJvdG8uQWNjb3VudElEUg1ub2RlQWNjb3VudElkEiIKDG5vZGVDZXJ0'
    'SGFzaBgHIAEoDFIMbm9kZUNlcnRIYXNoEkAKD3NlcnZpY2VFbmRwb2ludBgIIAMoCzIWLnByb3'
    'RvLlNlcnZpY2VFbmRwb2ludFIPc2VydmljZUVuZHBvaW50EiAKC2Rlc2NyaXB0aW9uGAkgASgJ'
    'UgtkZXNjcmlwdGlvbhIYCgVzdGFrZRgKIAEoA0ICGAFSBXN0YWtl');

@$core.Deprecated('Use nodeAddressBookDescriptor instead')
const NodeAddressBook$json = {
  '1': 'NodeAddressBook',
  '2': [
    {
      '1': 'nodeAddress',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.NodeAddress',
      '10': 'nodeAddress'
    },
  ],
};

/// Descriptor for `NodeAddressBook`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeAddressBookDescriptor = $convert.base64Decode(
    'Cg9Ob2RlQWRkcmVzc0Jvb2sSNAoLbm9kZUFkZHJlc3MYASADKAsyEi5wcm90by5Ob2RlQWRkcm'
    'Vzc1ILbm9kZUFkZHJlc3M=');

@$core.Deprecated('Use semanticVersionDescriptor instead')
const SemanticVersion$json = {
  '1': 'SemanticVersion',
  '2': [
    {'1': 'major', '3': 1, '4': 1, '5': 5, '10': 'major'},
    {'1': 'minor', '3': 2, '4': 1, '5': 5, '10': 'minor'},
    {'1': 'patch', '3': 3, '4': 1, '5': 5, '10': 'patch'},
    {'1': 'pre', '3': 4, '4': 1, '5': 9, '10': 'pre'},
    {'1': 'build', '3': 5, '4': 1, '5': 9, '10': 'build'},
  ],
};

/// Descriptor for `SemanticVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List semanticVersionDescriptor = $convert.base64Decode(
    'Cg9TZW1hbnRpY1ZlcnNpb24SFAoFbWFqb3IYASABKAVSBW1ham9yEhQKBW1pbm9yGAIgASgFUg'
    'VtaW5vchIUCgVwYXRjaBgDIAEoBVIFcGF0Y2gSEAoDcHJlGAQgASgJUgNwcmUSFAoFYnVpbGQY'
    'BSABKAlSBWJ1aWxk');

@$core.Deprecated('Use settingDescriptor instead')
const Setting$json = {
  '1': 'Setting',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `Setting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settingDescriptor = $convert.base64Decode(
    'CgdTZXR0aW5nEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFdmFsdWUYAiABKAlSBXZhbHVlEhIKBG'
    'RhdGEYAyABKAxSBGRhdGE=');

@$core.Deprecated('Use servicesConfigurationListDescriptor instead')
const ServicesConfigurationList$json = {
  '1': 'ServicesConfigurationList',
  '2': [
    {
      '1': 'nameValue',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.Setting',
      '10': 'nameValue'
    },
  ],
};

/// Descriptor for `ServicesConfigurationList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List servicesConfigurationListDescriptor =
    $convert.base64Decode(
        'ChlTZXJ2aWNlc0NvbmZpZ3VyYXRpb25MaXN0EiwKCW5hbWVWYWx1ZRgBIAMoCzIOLnByb3RvLl'
        'NldHRpbmdSCW5hbWVWYWx1ZQ==');

@$core.Deprecated('Use tokenRelationshipDescriptor instead')
const TokenRelationship$json = {
  '1': 'TokenRelationship',
  '2': [
    {
      '1': 'tokenId',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenId'
    },
    {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'balance', '3': 3, '4': 1, '5': 4, '10': 'balance'},
    {
      '1': 'kycStatus',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenKycStatus',
      '10': 'kycStatus'
    },
    {
      '1': 'freezeStatus',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.proto.TokenFreezeStatus',
      '10': 'freezeStatus'
    },
    {'1': 'decimals', '3': 6, '4': 1, '5': 13, '10': 'decimals'},
    {
      '1': 'automatic_association',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'automaticAssociation'
    },
  ],
};

/// Descriptor for `TokenRelationship`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenRelationshipDescriptor = $convert.base64Decode(
    'ChFUb2tlblJlbGF0aW9uc2hpcBIoCgd0b2tlbklkGAEgASgLMg4ucHJvdG8uVG9rZW5JRFIHdG'
    '9rZW5JZBIWCgZzeW1ib2wYAiABKAlSBnN5bWJvbBIYCgdiYWxhbmNlGAMgASgEUgdiYWxhbmNl'
    'EjMKCWt5Y1N0YXR1cxgEIAEoDjIVLnByb3RvLlRva2VuS3ljU3RhdHVzUglreWNTdGF0dXMSPA'
    'oMZnJlZXplU3RhdHVzGAUgASgOMhgucHJvdG8uVG9rZW5GcmVlemVTdGF0dXNSDGZyZWV6ZVN0'
    'YXR1cxIaCghkZWNpbWFscxgGIAEoDVIIZGVjaW1hbHMSMwoVYXV0b21hdGljX2Fzc29jaWF0aW'
    '9uGAcgASgIUhRhdXRvbWF0aWNBc3NvY2lhdGlvbg==');

@$core.Deprecated('Use tokenBalanceDescriptor instead')
const TokenBalance$json = {
  '1': 'TokenBalance',
  '2': [
    {
      '1': 'tokenId',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenId'
    },
    {'1': 'balance', '3': 2, '4': 1, '5': 4, '10': 'balance'},
    {'1': 'decimals', '3': 3, '4': 1, '5': 13, '10': 'decimals'},
  ],
};

/// Descriptor for `TokenBalance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenBalanceDescriptor = $convert.base64Decode(
    'CgxUb2tlbkJhbGFuY2USKAoHdG9rZW5JZBgBIAEoCzIOLnByb3RvLlRva2VuSURSB3Rva2VuSW'
    'QSGAoHYmFsYW5jZRgCIAEoBFIHYmFsYW5jZRIaCghkZWNpbWFscxgDIAEoDVIIZGVjaW1hbHM=');

@$core.Deprecated('Use tokenBalancesDescriptor instead')
const TokenBalances$json = {
  '1': 'TokenBalances',
  '2': [
    {
      '1': 'tokenBalances',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.TokenBalance',
      '10': 'tokenBalances'
    },
  ],
};

/// Descriptor for `TokenBalances`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenBalancesDescriptor = $convert.base64Decode(
    'Cg1Ub2tlbkJhbGFuY2VzEjkKDXRva2VuQmFsYW5jZXMYASADKAsyEy5wcm90by5Ub2tlbkJhbG'
    'FuY2VSDXRva2VuQmFsYW5jZXM=');

@$core.Deprecated('Use tokenAssociationDescriptor instead')
const TokenAssociation$json = {
  '1': 'TokenAssociation',
  '2': [
    {
      '1': 'token_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '10': 'tokenId'
    },
    {
      '1': 'account_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'accountId'
    },
  ],
};

/// Descriptor for `TokenAssociation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenAssociationDescriptor = $convert.base64Decode(
    'ChBUb2tlbkFzc29jaWF0aW9uEikKCHRva2VuX2lkGAEgASgLMg4ucHJvdG8uVG9rZW5JRFIHdG'
    '9rZW5JZBIvCgphY2NvdW50X2lkGAIgASgLMhAucHJvdG8uQWNjb3VudElEUglhY2NvdW50SWQ=');

@$core.Deprecated('Use stakingInfoDescriptor instead')
const StakingInfo$json = {
  '1': 'StakingInfo',
  '2': [
    {'1': 'decline_reward', '3': 1, '4': 1, '5': 8, '10': 'declineReward'},
    {
      '1': 'stake_period_start',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.Timestamp',
      '10': 'stakePeriodStart'
    },
    {'1': 'pending_reward', '3': 3, '4': 1, '5': 3, '10': 'pendingReward'},
    {'1': 'staked_to_me', '3': 4, '4': 1, '5': 3, '10': 'stakedToMe'},
    {
      '1': 'staked_account_id',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '9': 0,
      '10': 'stakedAccountId'
    },
    {
      '1': 'staked_node_id',
      '3': 6,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'stakedNodeId'
    },
  ],
  '8': [
    {'1': 'staked_id'},
  ],
};

/// Descriptor for `StakingInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stakingInfoDescriptor = $convert.base64Decode(
    'CgtTdGFraW5nSW5mbxIlCg5kZWNsaW5lX3Jld2FyZBgBIAEoCFINZGVjbGluZVJld2FyZBI+Ch'
    'JzdGFrZV9wZXJpb2Rfc3RhcnQYAiABKAsyEC5wcm90by5UaW1lc3RhbXBSEHN0YWtlUGVyaW9k'
    'U3RhcnQSJQoOcGVuZGluZ19yZXdhcmQYAyABKANSDXBlbmRpbmdSZXdhcmQSIAoMc3Rha2VkX3'
    'RvX21lGAQgASgDUgpzdGFrZWRUb01lEj4KEXN0YWtlZF9hY2NvdW50X2lkGAUgASgLMhAucHJv'
    'dG8uQWNjb3VudElESABSD3N0YWtlZEFjY291bnRJZBImCg5zdGFrZWRfbm9kZV9pZBgGIAEoA0'
    'gAUgxzdGFrZWROb2RlSWRCCwoJc3Rha2VkX2lk');

@$core.Deprecated('Use pendingAirdropIdDescriptor instead')
const PendingAirdropId$json = {
  '1': 'PendingAirdropId',
  '2': [
    {
      '1': 'sender_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'senderId'
    },
    {
      '1': 'receiver_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'receiverId'
    },
    {
      '1': 'fungible_token_type',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenID',
      '9': 0,
      '10': 'fungibleTokenType'
    },
    {
      '1': 'non_fungible_token',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.NftID',
      '9': 0,
      '10': 'nonFungibleToken'
    },
  ],
  '8': [
    {'1': 'token_reference'},
  ],
};

/// Descriptor for `PendingAirdropId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingAirdropIdDescriptor = $convert.base64Decode(
    'ChBQZW5kaW5nQWlyZHJvcElkEi0KCXNlbmRlcl9pZBgBIAEoCzIQLnByb3RvLkFjY291bnRJRF'
    'IIc2VuZGVySWQSMQoLcmVjZWl2ZXJfaWQYAiABKAsyEC5wcm90by5BY2NvdW50SURSCnJlY2Vp'
    'dmVySWQSQAoTZnVuZ2libGVfdG9rZW5fdHlwZRgDIAEoCzIOLnByb3RvLlRva2VuSURIAFIRZn'
    'VuZ2libGVUb2tlblR5cGUSPAoSbm9uX2Z1bmdpYmxlX3Rva2VuGAQgASgLMgwucHJvdG8uTmZ0'
    'SURIAFIQbm9uRnVuZ2libGVUb2tlbkIRCg90b2tlbl9yZWZlcmVuY2U=');

@$core.Deprecated('Use pendingAirdropValueDescriptor instead')
const PendingAirdropValue$json = {
  '1': 'PendingAirdropValue',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 4, '10': 'amount'},
  ],
};

/// Descriptor for `PendingAirdropValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingAirdropValueDescriptor =
    $convert.base64Decode(
        'ChNQZW5kaW5nQWlyZHJvcFZhbHVlEhYKBmFtb3VudBgBIAEoBFIGYW1vdW50');
