// This is a generated file - do not edit.
//
// Generated from transaction.proto.

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

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = {
  '1': 'Transaction',
  '2': [
    {
      '1': 'body',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionBody',
      '8': {'3': true},
      '10': 'body',
    },
    {
      '1': 'sigs',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.SignatureList',
      '8': {'3': true},
      '10': 'sigs',
    },
    {
      '1': 'sigMap',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.SignatureMap',
      '8': {'3': true},
      '10': 'sigMap',
    },
    {
      '1': 'bodyBytes',
      '3': 4,
      '4': 1,
      '5': 12,
      '8': {'3': true},
      '10': 'bodyBytes',
    },
    {
      '1': 'signedTransactionBytes',
      '3': 5,
      '4': 1,
      '5': 12,
      '10': 'signedTransactionBytes'
    },
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhIuCgRib2R5GAEgASgLMhYucHJvdG8uVHJhbnNhY3Rpb25Cb2R5QgIYAV'
    'IEYm9keRIsCgRzaWdzGAIgASgLMhQucHJvdG8uU2lnbmF0dXJlTGlzdEICGAFSBHNpZ3MSLwoG'
    'c2lnTWFwGAMgASgLMhMucHJvdG8uU2lnbmF0dXJlTWFwQgIYAVIGc2lnTWFwEiAKCWJvZHlCeX'
    'RlcxgEIAEoDEICGAFSCWJvZHlCeXRlcxI2ChZzaWduZWRUcmFuc2FjdGlvbkJ5dGVzGAUgASgM'
    'UhZzaWduZWRUcmFuc2FjdGlvbkJ5dGVz');

@$core.Deprecated('Use transactionBodyDescriptor instead')
const TransactionBody$json = {
  '1': 'TransactionBody',
  '2': [
    {
      '1': 'transactionID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.TransactionID',
      '10': 'transactionID'
    },
    {
      '1': 'nodeAccountID',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'nodeAccountID'
    },
    {'1': 'transactionFee', '3': 3, '4': 1, '5': 4, '10': 'transactionFee'},
    {
      '1': 'transactionValidDuration',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.Duration',
      '10': 'transactionValidDuration'
    },
    {
      '1': 'generateRecord',
      '3': 5,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'generateRecord',
    },
    {'1': 'memo', '3': 6, '4': 1, '5': 9, '10': 'memo'},
    {
      '1': 'batch_key',
      '3': 73,
      '4': 1,
      '5': 11,
      '6': '.proto.Key',
      '10': 'batchKey'
    },
    {
      '1': 'contractCall',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractCallTransactionBody',
      '9': 0,
      '10': 'contractCall'
    },
    {
      '1': 'contractCreateInstance',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractCreateTransactionBody',
      '9': 0,
      '10': 'contractCreateInstance'
    },
    {
      '1': 'contractUpdateInstance',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractUpdateTransactionBody',
      '9': 0,
      '10': 'contractUpdateInstance'
    },
    {
      '1': 'cryptoAddLiveHash',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoAddLiveHashTransactionBody',
      '8': {'3': true},
      '9': 0,
      '10': 'cryptoAddLiveHash',
    },
    {
      '1': 'cryptoCreateAccount',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoCreateTransactionBody',
      '9': 0,
      '10': 'cryptoCreateAccount'
    },
    {
      '1': 'cryptoDelete',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoDeleteTransactionBody',
      '9': 0,
      '10': 'cryptoDelete'
    },
    {
      '1': 'cryptoDeleteLiveHash',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoDeleteLiveHashTransactionBody',
      '8': {'3': true},
      '9': 0,
      '10': 'cryptoDeleteLiveHash',
    },
    {
      '1': 'cryptoTransfer',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoTransferTransactionBody',
      '9': 0,
      '10': 'cryptoTransfer'
    },
    {
      '1': 'cryptoUpdateAccount',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoUpdateTransactionBody',
      '9': 0,
      '10': 'cryptoUpdateAccount'
    },
    {
      '1': 'fileAppend',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.proto.FileAppendTransactionBody',
      '9': 0,
      '10': 'fileAppend'
    },
    {
      '1': 'fileCreate',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.proto.FileCreateTransactionBody',
      '9': 0,
      '10': 'fileCreate'
    },
    {
      '1': 'fileDelete',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.proto.FileDeleteTransactionBody',
      '9': 0,
      '10': 'fileDelete'
    },
    {
      '1': 'fileUpdate',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.proto.FileUpdateTransactionBody',
      '9': 0,
      '10': 'fileUpdate'
    },
    {
      '1': 'systemDelete',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.proto.SystemDeleteTransactionBody',
      '9': 0,
      '10': 'systemDelete'
    },
    {
      '1': 'systemUndelete',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.proto.SystemUndeleteTransactionBody',
      '9': 0,
      '10': 'systemUndelete'
    },
    {
      '1': 'contractDeleteInstance',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractDeleteTransactionBody',
      '9': 0,
      '10': 'contractDeleteInstance'
    },
    {
      '1': 'freeze',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.proto.FreezeTransactionBody',
      '9': 0,
      '10': 'freeze'
    },
    {
      '1': 'consensusCreateTopic',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusCreateTopicTransactionBody',
      '9': 0,
      '10': 'consensusCreateTopic'
    },
    {
      '1': 'consensusUpdateTopic',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusUpdateTopicTransactionBody',
      '9': 0,
      '10': 'consensusUpdateTopic'
    },
    {
      '1': 'consensusDeleteTopic',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusDeleteTopicTransactionBody',
      '9': 0,
      '10': 'consensusDeleteTopic'
    },
    {
      '1': 'consensusSubmitMessage',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusSubmitMessageTransactionBody',
      '9': 0,
      '10': 'consensusSubmitMessage'
    },
    {
      '1': 'uncheckedSubmit',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.proto.UncheckedSubmitBody',
      '9': 0,
      '10': 'uncheckedSubmit'
    },
    {
      '1': 'tokenCreation',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenCreateTransactionBody',
      '9': 0,
      '10': 'tokenCreation'
    },
    {
      '1': 'tokenFreeze',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenFreezeAccountTransactionBody',
      '9': 0,
      '10': 'tokenFreeze'
    },
    {
      '1': 'tokenUnfreeze',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenUnfreezeAccountTransactionBody',
      '9': 0,
      '10': 'tokenUnfreeze'
    },
    {
      '1': 'tokenGrantKyc',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGrantKycTransactionBody',
      '9': 0,
      '10': 'tokenGrantKyc'
    },
    {
      '1': 'tokenRevokeKyc',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenRevokeKycTransactionBody',
      '9': 0,
      '10': 'tokenRevokeKyc'
    },
    {
      '1': 'tokenDeletion',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenDeleteTransactionBody',
      '9': 0,
      '10': 'tokenDeletion'
    },
    {
      '1': 'tokenUpdate',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenUpdateTransactionBody',
      '9': 0,
      '10': 'tokenUpdate'
    },
    {
      '1': 'tokenMint',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenMintTransactionBody',
      '9': 0,
      '10': 'tokenMint'
    },
    {
      '1': 'tokenBurn',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenBurnTransactionBody',
      '9': 0,
      '10': 'tokenBurn'
    },
    {
      '1': 'tokenWipe',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenWipeAccountTransactionBody',
      '9': 0,
      '10': 'tokenWipe'
    },
    {
      '1': 'tokenAssociate',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenAssociateTransactionBody',
      '9': 0,
      '10': 'tokenAssociate'
    },
    {
      '1': 'tokenDissociate',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenDissociateTransactionBody',
      '9': 0,
      '10': 'tokenDissociate'
    },
    {
      '1': 'scheduleCreate',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleCreateTransactionBody',
      '9': 0,
      '10': 'scheduleCreate'
    },
    {
      '1': 'scheduleDelete',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleDeleteTransactionBody',
      '9': 0,
      '10': 'scheduleDelete'
    },
    {
      '1': 'scheduleSign',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleSignTransactionBody',
      '9': 0,
      '10': 'scheduleSign'
    },
    {
      '1': 'token_fee_schedule_update',
      '3': 45,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenFeeScheduleUpdateTransactionBody',
      '9': 0,
      '10': 'tokenFeeScheduleUpdate'
    },
    {
      '1': 'token_pause',
      '3': 46,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenPauseTransactionBody',
      '9': 0,
      '10': 'tokenPause'
    },
    {
      '1': 'token_unpause',
      '3': 47,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenUnpauseTransactionBody',
      '9': 0,
      '10': 'tokenUnpause'
    },
    {
      '1': 'cryptoApproveAllowance',
      '3': 48,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoApproveAllowanceTransactionBody',
      '9': 0,
      '10': 'cryptoApproveAllowance'
    },
    {
      '1': 'cryptoDeleteAllowance',
      '3': 49,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoDeleteAllowanceTransactionBody',
      '9': 0,
      '10': 'cryptoDeleteAllowance'
    },
    {
      '1': 'ethereumTransaction',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.proto.EthereumTransactionBody',
      '9': 0,
      '10': 'ethereumTransaction'
    },
    {
      '1': 'node_stake_update',
      '3': 51,
      '4': 1,
      '5': 11,
      '6': '.proto.NodeStakeUpdateTransactionBody',
      '9': 0,
      '10': 'nodeStakeUpdate'
    },
    {
      '1': 'util_prng',
      '3': 52,
      '4': 1,
      '5': 11,
      '6': '.proto.UtilPrngTransactionBody',
      '9': 0,
      '10': 'utilPrng'
    },
    {
      '1': 'token_update_nfts',
      '3': 53,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenUpdateNftsTransactionBody',
      '9': 0,
      '10': 'tokenUpdateNfts'
    },
    {
      '1': 'nodeCreate',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.addressbook.NodeCreateTransactionBody',
      '9': 0,
      '10': 'nodeCreate'
    },
    {
      '1': 'nodeUpdate',
      '3': 55,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.addressbook.NodeUpdateTransactionBody',
      '9': 0,
      '10': 'nodeUpdate'
    },
    {
      '1': 'nodeDelete',
      '3': 56,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.addressbook.NodeDeleteTransactionBody',
      '9': 0,
      '10': 'nodeDelete'
    },
    {
      '1': 'tokenReject',
      '3': 57,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenRejectTransactionBody',
      '9': 0,
      '10': 'tokenReject'
    },
    {
      '1': 'tokenAirdrop',
      '3': 58,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenAirdropTransactionBody',
      '9': 0,
      '10': 'tokenAirdrop'
    },
    {
      '1': 'tokenCancelAirdrop',
      '3': 59,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenCancelAirdropTransactionBody',
      '9': 0,
      '10': 'tokenCancelAirdrop'
    },
    {
      '1': 'tokenClaimAirdrop',
      '3': 60,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenClaimAirdropTransactionBody',
      '9': 0,
      '10': 'tokenClaimAirdrop'
    },
    {
      '1': 'state_signature_transaction',
      '3': 65,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.platform.event.StateSignatureTransaction',
      '9': 0,
      '10': 'stateSignatureTransaction'
    },
    {
      '1': 'hints_preprocessing_vote',
      '3': 66,
      '4': 1,
      '5': 11,
      '6':
          '.com.hedera.hapi.services.auxiliary.hints.HintsPreprocessingVoteTransactionBody',
      '9': 0,
      '10': 'hintsPreprocessingVote'
    },
    {
      '1': 'hints_key_publication',
      '3': 67,
      '4': 1,
      '5': 11,
      '6':
          '.com.hedera.hapi.services.auxiliary.hints.HintsKeyPublicationTransactionBody',
      '9': 0,
      '10': 'hintsKeyPublication'
    },
    {
      '1': 'hints_partial_signature',
      '3': 68,
      '4': 1,
      '5': 11,
      '6':
          '.com.hedera.hapi.services.auxiliary.hints.HintsPartialSignatureTransactionBody',
      '9': 0,
      '10': 'hintsPartialSignature'
    },
    {
      '1': 'history_proof_signature',
      '3': 69,
      '4': 1,
      '5': 11,
      '6':
          '.com.hedera.hapi.services.auxiliary.history.HistoryProofSignatureTransactionBody',
      '9': 0,
      '10': 'historyProofSignature'
    },
    {
      '1': 'history_proof_key_publication',
      '3': 70,
      '4': 1,
      '5': 11,
      '6':
          '.com.hedera.hapi.services.auxiliary.history.HistoryProofKeyPublicationTransactionBody',
      '9': 0,
      '10': 'historyProofKeyPublication'
    },
    {
      '1': 'history_proof_vote',
      '3': 71,
      '4': 1,
      '5': 11,
      '6':
          '.com.hedera.hapi.services.auxiliary.history.HistoryProofVoteTransactionBody',
      '9': 0,
      '10': 'historyProofVote'
    },
    {
      '1': 'crs_publication',
      '3': 72,
      '4': 1,
      '5': 11,
      '6':
          '.com.hedera.hapi.services.auxiliary.hints.CrsPublicationTransactionBody',
      '9': 0,
      '10': 'crsPublication'
    },
    {
      '1': 'atomic_batch',
      '3': 74,
      '4': 1,
      '5': 11,
      '6': '.proto.AtomicBatchTransactionBody',
      '9': 0,
      '10': 'atomicBatch'
    },
    {
      '1': 'max_custom_fees',
      '3': 1001,
      '4': 3,
      '5': 11,
      '6': '.proto.CustomFeeLimit',
      '10': 'maxCustomFees'
    },
  ],
  '8': [
    {'1': 'data'},
  ],
  '9': [
    {'1': 30, '2': 31},
    {'1': 61, '2': 62},
    {'1': 62, '2': 63},
    {'1': 63, '2': 64},
    {'1': 64, '2': 65},
  ],
  '10': ['tssMessage', 'tssVote', 'tssShareSignature', 'tssEncryptionKey'],
};

/// Descriptor for `TransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionBodyDescriptor = $convert.base64Decode(
    'Cg9UcmFuc2FjdGlvbkJvZHkSOgoNdHJhbnNhY3Rpb25JRBgBIAEoCzIULnByb3RvLlRyYW5zYW'
    'N0aW9uSURSDXRyYW5zYWN0aW9uSUQSNgoNbm9kZUFjY291bnRJRBgCIAEoCzIQLnByb3RvLkFj'
    'Y291bnRJRFINbm9kZUFjY291bnRJRBImCg50cmFuc2FjdGlvbkZlZRgDIAEoBFIOdHJhbnNhY3'
    'Rpb25GZWUSSwoYdHJhbnNhY3Rpb25WYWxpZER1cmF0aW9uGAQgASgLMg8ucHJvdG8uRHVyYXRp'
    'b25SGHRyYW5zYWN0aW9uVmFsaWREdXJhdGlvbhIqCg5nZW5lcmF0ZVJlY29yZBgFIAEoCEICGA'
    'FSDmdlbmVyYXRlUmVjb3JkEhIKBG1lbW8YBiABKAlSBG1lbW8SJwoJYmF0Y2hfa2V5GEkgASgL'
    'MgoucHJvdG8uS2V5UghiYXRjaEtleRJICgxjb250cmFjdENhbGwYByABKAsyIi5wcm90by5Db2'
    '50cmFjdENhbGxUcmFuc2FjdGlvbkJvZHlIAFIMY29udHJhY3RDYWxsEl4KFmNvbnRyYWN0Q3Jl'
    'YXRlSW5zdGFuY2UYCCABKAsyJC5wcm90by5Db250cmFjdENyZWF0ZVRyYW5zYWN0aW9uQm9keU'
    'gAUhZjb250cmFjdENyZWF0ZUluc3RhbmNlEl4KFmNvbnRyYWN0VXBkYXRlSW5zdGFuY2UYCSAB'
    'KAsyJC5wcm90by5Db250cmFjdFVwZGF0ZVRyYW5zYWN0aW9uQm9keUgAUhZjb250cmFjdFVwZG'
    'F0ZUluc3RhbmNlElsKEWNyeXB0b0FkZExpdmVIYXNoGAogASgLMicucHJvdG8uQ3J5cHRvQWRk'
    'TGl2ZUhhc2hUcmFuc2FjdGlvbkJvZHlCAhgBSABSEWNyeXB0b0FkZExpdmVIYXNoElYKE2NyeX'
    'B0b0NyZWF0ZUFjY291bnQYCyABKAsyIi5wcm90by5DcnlwdG9DcmVhdGVUcmFuc2FjdGlvbkJv'
    'ZHlIAFITY3J5cHRvQ3JlYXRlQWNjb3VudBJICgxjcnlwdG9EZWxldGUYDCABKAsyIi5wcm90by'
    '5DcnlwdG9EZWxldGVUcmFuc2FjdGlvbkJvZHlIAFIMY3J5cHRvRGVsZXRlEmQKFGNyeXB0b0Rl'
    'bGV0ZUxpdmVIYXNoGA0gASgLMioucHJvdG8uQ3J5cHRvRGVsZXRlTGl2ZUhhc2hUcmFuc2FjdG'
    'lvbkJvZHlCAhgBSABSFGNyeXB0b0RlbGV0ZUxpdmVIYXNoEk4KDmNyeXB0b1RyYW5zZmVyGA4g'
    'ASgLMiQucHJvdG8uQ3J5cHRvVHJhbnNmZXJUcmFuc2FjdGlvbkJvZHlIAFIOY3J5cHRvVHJhbn'
    'NmZXISVgoTY3J5cHRvVXBkYXRlQWNjb3VudBgPIAEoCzIiLnByb3RvLkNyeXB0b1VwZGF0ZVRy'
    'YW5zYWN0aW9uQm9keUgAUhNjcnlwdG9VcGRhdGVBY2NvdW50EkIKCmZpbGVBcHBlbmQYECABKA'
    'syIC5wcm90by5GaWxlQXBwZW5kVHJhbnNhY3Rpb25Cb2R5SABSCmZpbGVBcHBlbmQSQgoKZmls'
    'ZUNyZWF0ZRgRIAEoCzIgLnByb3RvLkZpbGVDcmVhdGVUcmFuc2FjdGlvbkJvZHlIAFIKZmlsZU'
    'NyZWF0ZRJCCgpmaWxlRGVsZXRlGBIgASgLMiAucHJvdG8uRmlsZURlbGV0ZVRyYW5zYWN0aW9u'
    'Qm9keUgAUgpmaWxlRGVsZXRlEkIKCmZpbGVVcGRhdGUYEyABKAsyIC5wcm90by5GaWxlVXBkYX'
    'RlVHJhbnNhY3Rpb25Cb2R5SABSCmZpbGVVcGRhdGUSSAoMc3lzdGVtRGVsZXRlGBQgASgLMiIu'
    'cHJvdG8uU3lzdGVtRGVsZXRlVHJhbnNhY3Rpb25Cb2R5SABSDHN5c3RlbURlbGV0ZRJOCg5zeX'
    'N0ZW1VbmRlbGV0ZRgVIAEoCzIkLnByb3RvLlN5c3RlbVVuZGVsZXRlVHJhbnNhY3Rpb25Cb2R5'
    'SABSDnN5c3RlbVVuZGVsZXRlEl4KFmNvbnRyYWN0RGVsZXRlSW5zdGFuY2UYFiABKAsyJC5wcm'
    '90by5Db250cmFjdERlbGV0ZVRyYW5zYWN0aW9uQm9keUgAUhZjb250cmFjdERlbGV0ZUluc3Rh'
    'bmNlEjYKBmZyZWV6ZRgXIAEoCzIcLnByb3RvLkZyZWV6ZVRyYW5zYWN0aW9uQm9keUgAUgZmcm'
    'VlemUSYAoUY29uc2Vuc3VzQ3JlYXRlVG9waWMYGCABKAsyKi5wcm90by5Db25zZW5zdXNDcmVh'
    'dGVUb3BpY1RyYW5zYWN0aW9uQm9keUgAUhRjb25zZW5zdXNDcmVhdGVUb3BpYxJgChRjb25zZW'
    '5zdXNVcGRhdGVUb3BpYxgZIAEoCzIqLnByb3RvLkNvbnNlbnN1c1VwZGF0ZVRvcGljVHJhbnNh'
    'Y3Rpb25Cb2R5SABSFGNvbnNlbnN1c1VwZGF0ZVRvcGljEmAKFGNvbnNlbnN1c0RlbGV0ZVRvcG'
    'ljGBogASgLMioucHJvdG8uQ29uc2Vuc3VzRGVsZXRlVG9waWNUcmFuc2FjdGlvbkJvZHlIAFIU'
    'Y29uc2Vuc3VzRGVsZXRlVG9waWMSZgoWY29uc2Vuc3VzU3VibWl0TWVzc2FnZRgbIAEoCzIsLn'
    'Byb3RvLkNvbnNlbnN1c1N1Ym1pdE1lc3NhZ2VUcmFuc2FjdGlvbkJvZHlIAFIWY29uc2Vuc3Vz'
    'U3VibWl0TWVzc2FnZRJGCg91bmNoZWNrZWRTdWJtaXQYHCABKAsyGi5wcm90by5VbmNoZWNrZW'
    'RTdWJtaXRCb2R5SABSD3VuY2hlY2tlZFN1Ym1pdBJJCg10b2tlbkNyZWF0aW9uGB0gASgLMiEu'
    'cHJvdG8uVG9rZW5DcmVhdGVUcmFuc2FjdGlvbkJvZHlIAFINdG9rZW5DcmVhdGlvbhJMCgt0b2'
    'tlbkZyZWV6ZRgfIAEoCzIoLnByb3RvLlRva2VuRnJlZXplQWNjb3VudFRyYW5zYWN0aW9uQm9k'
    'eUgAUgt0b2tlbkZyZWV6ZRJSCg10b2tlblVuZnJlZXplGCAgASgLMioucHJvdG8uVG9rZW5Vbm'
    'ZyZWV6ZUFjY291bnRUcmFuc2FjdGlvbkJvZHlIAFINdG9rZW5VbmZyZWV6ZRJLCg10b2tlbkdy'
    'YW50S3ljGCEgASgLMiMucHJvdG8uVG9rZW5HcmFudEt5Y1RyYW5zYWN0aW9uQm9keUgAUg10b2'
    'tlbkdyYW50S3ljEk4KDnRva2VuUmV2b2tlS3ljGCIgASgLMiQucHJvdG8uVG9rZW5SZXZva2VL'
    'eWNUcmFuc2FjdGlvbkJvZHlIAFIOdG9rZW5SZXZva2VLeWMSSQoNdG9rZW5EZWxldGlvbhgjIA'
    'EoCzIhLnByb3RvLlRva2VuRGVsZXRlVHJhbnNhY3Rpb25Cb2R5SABSDXRva2VuRGVsZXRpb24S'
    'RQoLdG9rZW5VcGRhdGUYJCABKAsyIS5wcm90by5Ub2tlblVwZGF0ZVRyYW5zYWN0aW9uQm9keU'
    'gAUgt0b2tlblVwZGF0ZRI/Cgl0b2tlbk1pbnQYJSABKAsyHy5wcm90by5Ub2tlbk1pbnRUcmFu'
    'c2FjdGlvbkJvZHlIAFIJdG9rZW5NaW50Ej8KCXRva2VuQnVybhgmIAEoCzIfLnByb3RvLlRva2'
    'VuQnVyblRyYW5zYWN0aW9uQm9keUgAUgl0b2tlbkJ1cm4SRgoJdG9rZW5XaXBlGCcgASgLMiYu'
    'cHJvdG8uVG9rZW5XaXBlQWNjb3VudFRyYW5zYWN0aW9uQm9keUgAUgl0b2tlbldpcGUSTgoOdG'
    '9rZW5Bc3NvY2lhdGUYKCABKAsyJC5wcm90by5Ub2tlbkFzc29jaWF0ZVRyYW5zYWN0aW9uQm9k'
    'eUgAUg50b2tlbkFzc29jaWF0ZRJRCg90b2tlbkRpc3NvY2lhdGUYKSABKAsyJS5wcm90by5Ub2'
    'tlbkRpc3NvY2lhdGVUcmFuc2FjdGlvbkJvZHlIAFIPdG9rZW5EaXNzb2NpYXRlEk4KDnNjaGVk'
    'dWxlQ3JlYXRlGCogASgLMiQucHJvdG8uU2NoZWR1bGVDcmVhdGVUcmFuc2FjdGlvbkJvZHlIAF'
    'IOc2NoZWR1bGVDcmVhdGUSTgoOc2NoZWR1bGVEZWxldGUYKyABKAsyJC5wcm90by5TY2hlZHVs'
    'ZURlbGV0ZVRyYW5zYWN0aW9uQm9keUgAUg5zY2hlZHVsZURlbGV0ZRJICgxzY2hlZHVsZVNpZ2'
    '4YLCABKAsyIi5wcm90by5TY2hlZHVsZVNpZ25UcmFuc2FjdGlvbkJvZHlIAFIMc2NoZWR1bGVT'
    'aWduEmkKGXRva2VuX2ZlZV9zY2hlZHVsZV91cGRhdGUYLSABKAsyLC5wcm90by5Ub2tlbkZlZV'
    'NjaGVkdWxlVXBkYXRlVHJhbnNhY3Rpb25Cb2R5SABSFnRva2VuRmVlU2NoZWR1bGVVcGRhdGUS'
    'QwoLdG9rZW5fcGF1c2UYLiABKAsyIC5wcm90by5Ub2tlblBhdXNlVHJhbnNhY3Rpb25Cb2R5SA'
    'BSCnRva2VuUGF1c2USSQoNdG9rZW5fdW5wYXVzZRgvIAEoCzIiLnByb3RvLlRva2VuVW5wYXVz'
    'ZVRyYW5zYWN0aW9uQm9keUgAUgx0b2tlblVucGF1c2USZgoWY3J5cHRvQXBwcm92ZUFsbG93YW'
    '5jZRgwIAEoCzIsLnByb3RvLkNyeXB0b0FwcHJvdmVBbGxvd2FuY2VUcmFuc2FjdGlvbkJvZHlI'
    'AFIWY3J5cHRvQXBwcm92ZUFsbG93YW5jZRJjChVjcnlwdG9EZWxldGVBbGxvd2FuY2UYMSABKA'
    'syKy5wcm90by5DcnlwdG9EZWxldGVBbGxvd2FuY2VUcmFuc2FjdGlvbkJvZHlIAFIVY3J5cHRv'
    'RGVsZXRlQWxsb3dhbmNlElIKE2V0aGVyZXVtVHJhbnNhY3Rpb24YMiABKAsyHi5wcm90by5FdG'
    'hlcmV1bVRyYW5zYWN0aW9uQm9keUgAUhNldGhlcmV1bVRyYW5zYWN0aW9uElMKEW5vZGVfc3Rh'
    'a2VfdXBkYXRlGDMgASgLMiUucHJvdG8uTm9kZVN0YWtlVXBkYXRlVHJhbnNhY3Rpb25Cb2R5SA'
    'BSD25vZGVTdGFrZVVwZGF0ZRI9Cgl1dGlsX3BybmcYNCABKAsyHi5wcm90by5VdGlsUHJuZ1Ry'
    'YW5zYWN0aW9uQm9keUgAUgh1dGlsUHJuZxJTChF0b2tlbl91cGRhdGVfbmZ0cxg1IAEoCzIlLn'
    'Byb3RvLlRva2VuVXBkYXRlTmZ0c1RyYW5zYWN0aW9uQm9keUgAUg90b2tlblVwZGF0ZU5mdHMS'
    'XQoKbm9kZUNyZWF0ZRg2IAEoCzI7LmNvbS5oZWRlcmEuaGFwaS5ub2RlLmFkZHJlc3Nib29rLk'
    '5vZGVDcmVhdGVUcmFuc2FjdGlvbkJvZHlIAFIKbm9kZUNyZWF0ZRJdCgpub2RlVXBkYXRlGDcg'
    'ASgLMjsuY29tLmhlZGVyYS5oYXBpLm5vZGUuYWRkcmVzc2Jvb2suTm9kZVVwZGF0ZVRyYW5zYW'
    'N0aW9uQm9keUgAUgpub2RlVXBkYXRlEl0KCm5vZGVEZWxldGUYOCABKAsyOy5jb20uaGVkZXJh'
    'LmhhcGkubm9kZS5hZGRyZXNzYm9vay5Ob2RlRGVsZXRlVHJhbnNhY3Rpb25Cb2R5SABSCm5vZG'
    'VEZWxldGUSRQoLdG9rZW5SZWplY3QYOSABKAsyIS5wcm90by5Ub2tlblJlamVjdFRyYW5zYWN0'
    'aW9uQm9keUgAUgt0b2tlblJlamVjdBJICgx0b2tlbkFpcmRyb3AYOiABKAsyIi5wcm90by5Ub2'
    'tlbkFpcmRyb3BUcmFuc2FjdGlvbkJvZHlIAFIMdG9rZW5BaXJkcm9wEloKEnRva2VuQ2FuY2Vs'
    'QWlyZHJvcBg7IAEoCzIoLnByb3RvLlRva2VuQ2FuY2VsQWlyZHJvcFRyYW5zYWN0aW9uQm9keU'
    'gAUhJ0b2tlbkNhbmNlbEFpcmRyb3ASVwoRdG9rZW5DbGFpbUFpcmRyb3AYPCABKAsyJy5wcm90'
    'by5Ub2tlbkNsYWltQWlyZHJvcFRyYW5zYWN0aW9uQm9keUgAUhF0b2tlbkNsYWltQWlyZHJvcB'
    'J7ChtzdGF0ZV9zaWduYXR1cmVfdHJhbnNhY3Rpb24YQSABKAsyOS5jb20uaGVkZXJhLmhhcGku'
    'cGxhdGZvcm0uZXZlbnQuU3RhdGVTaWduYXR1cmVUcmFuc2FjdGlvbkgAUhlzdGF0ZVNpZ25hdH'
    'VyZVRyYW5zYWN0aW9uEosBChhoaW50c19wcmVwcm9jZXNzaW5nX3ZvdGUYQiABKAsyTy5jb20u'
    'aGVkZXJhLmhhcGkuc2VydmljZXMuYXV4aWxpYXJ5LmhpbnRzLkhpbnRzUHJlcHJvY2Vzc2luZ1'
    'ZvdGVUcmFuc2FjdGlvbkJvZHlIAFIWaGludHNQcmVwcm9jZXNzaW5nVm90ZRKCAQoVaGludHNf'
    'a2V5X3B1YmxpY2F0aW9uGEMgASgLMkwuY29tLmhlZGVyYS5oYXBpLnNlcnZpY2VzLmF1eGlsaW'
    'FyeS5oaW50cy5IaW50c0tleVB1YmxpY2F0aW9uVHJhbnNhY3Rpb25Cb2R5SABSE2hpbnRzS2V5'
    'UHVibGljYXRpb24SiAEKF2hpbnRzX3BhcnRpYWxfc2lnbmF0dXJlGEQgASgLMk4uY29tLmhlZG'
    'VyYS5oYXBpLnNlcnZpY2VzLmF1eGlsaWFyeS5oaW50cy5IaW50c1BhcnRpYWxTaWduYXR1cmVU'
    'cmFuc2FjdGlvbkJvZHlIAFIVaGludHNQYXJ0aWFsU2lnbmF0dXJlEooBChdoaXN0b3J5X3Byb2'
    '9mX3NpZ25hdHVyZRhFIAEoCzJQLmNvbS5oZWRlcmEuaGFwaS5zZXJ2aWNlcy5hdXhpbGlhcnku'
    'aGlzdG9yeS5IaXN0b3J5UHJvb2ZTaWduYXR1cmVUcmFuc2FjdGlvbkJvZHlIAFIVaGlzdG9yeV'
    'Byb29mU2lnbmF0dXJlEpoBCh1oaXN0b3J5X3Byb29mX2tleV9wdWJsaWNhdGlvbhhGIAEoCzJV'
    'LmNvbS5oZWRlcmEuaGFwaS5zZXJ2aWNlcy5hdXhpbGlhcnkuaGlzdG9yeS5IaXN0b3J5UHJvb2'
    'ZLZXlQdWJsaWNhdGlvblRyYW5zYWN0aW9uQm9keUgAUhpoaXN0b3J5UHJvb2ZLZXlQdWJsaWNh'
    'dGlvbhJ7ChJoaXN0b3J5X3Byb29mX3ZvdGUYRyABKAsySy5jb20uaGVkZXJhLmhhcGkuc2Vydm'
    'ljZXMuYXV4aWxpYXJ5Lmhpc3RvcnkuSGlzdG9yeVByb29mVm90ZVRyYW5zYWN0aW9uQm9keUgA'
    'UhBoaXN0b3J5UHJvb2ZWb3RlEnIKD2Nyc19wdWJsaWNhdGlvbhhIIAEoCzJHLmNvbS5oZWRlcm'
    'EuaGFwaS5zZXJ2aWNlcy5hdXhpbGlhcnkuaGludHMuQ3JzUHVibGljYXRpb25UcmFuc2FjdGlv'
    'bkJvZHlIAFIOY3JzUHVibGljYXRpb24SRgoMYXRvbWljX2JhdGNoGEogASgLMiEucHJvdG8uQX'
    'RvbWljQmF0Y2hUcmFuc2FjdGlvbkJvZHlIAFILYXRvbWljQmF0Y2gSPgoPbWF4X2N1c3RvbV9m'
    'ZWVzGOkHIAMoCzIVLnByb3RvLkN1c3RvbUZlZUxpbWl0Ug1tYXhDdXN0b21GZWVzQgYKBGRhdG'
    'FKBAgeEB9KBAg9ED5KBAg+ED9KBAg/EEBKBAhAEEFSCnRzc01lc3NhZ2VSB3Rzc1ZvdGVSEXRz'
    'c1NoYXJlU2lnbmF0dXJlUhB0c3NFbmNyeXB0aW9uS2V5');

@$core.Deprecated('Use atomicBatchTransactionBodyDescriptor instead')
const AtomicBatchTransactionBody$json = {
  '1': 'AtomicBatchTransactionBody',
  '2': [
    {'1': 'transactions', '3': 1, '4': 3, '5': 12, '10': 'transactions'},
  ],
};

/// Descriptor for `AtomicBatchTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List atomicBatchTransactionBodyDescriptor =
    $convert.base64Decode(
        'ChpBdG9taWNCYXRjaFRyYW5zYWN0aW9uQm9keRIiCgx0cmFuc2FjdGlvbnMYASADKAxSDHRyYW'
        '5zYWN0aW9ucw==');
