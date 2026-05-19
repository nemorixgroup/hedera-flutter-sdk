// This is a generated file - do not edit.
//
// Generated from schedulable_transaction_body.proto.

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

@$core.Deprecated('Use schedulableTransactionBodyDescriptor instead')
const SchedulableTransactionBody$json = {
  '1': 'SchedulableTransactionBody',
  '2': [
    {'1': 'transactionFee', '3': 1, '4': 1, '5': 4, '10': 'transactionFee'},
    {'1': 'memo', '3': 2, '4': 1, '5': 9, '10': 'memo'},
    {
      '1': 'contractCall',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractCallTransactionBody',
      '9': 0,
      '10': 'contractCall'
    },
    {
      '1': 'contractCreateInstance',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractCreateTransactionBody',
      '9': 0,
      '10': 'contractCreateInstance'
    },
    {
      '1': 'contractUpdateInstance',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractUpdateTransactionBody',
      '9': 0,
      '10': 'contractUpdateInstance'
    },
    {
      '1': 'contractDeleteInstance',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractDeleteTransactionBody',
      '9': 0,
      '10': 'contractDeleteInstance'
    },
    {
      '1': 'cryptoCreateAccount',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoCreateTransactionBody',
      '9': 0,
      '10': 'cryptoCreateAccount'
    },
    {
      '1': 'cryptoDelete',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoDeleteTransactionBody',
      '9': 0,
      '10': 'cryptoDelete'
    },
    {
      '1': 'cryptoTransfer',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoTransferTransactionBody',
      '9': 0,
      '10': 'cryptoTransfer'
    },
    {
      '1': 'cryptoUpdateAccount',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoUpdateTransactionBody',
      '9': 0,
      '10': 'cryptoUpdateAccount'
    },
    {
      '1': 'fileAppend',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.proto.FileAppendTransactionBody',
      '9': 0,
      '10': 'fileAppend'
    },
    {
      '1': 'fileCreate',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.proto.FileCreateTransactionBody',
      '9': 0,
      '10': 'fileCreate'
    },
    {
      '1': 'fileDelete',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.FileDeleteTransactionBody',
      '9': 0,
      '10': 'fileDelete'
    },
    {
      '1': 'fileUpdate',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.proto.FileUpdateTransactionBody',
      '9': 0,
      '10': 'fileUpdate'
    },
    {
      '1': 'systemDelete',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.proto.SystemDeleteTransactionBody',
      '9': 0,
      '10': 'systemDelete'
    },
    {
      '1': 'systemUndelete',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.proto.SystemUndeleteTransactionBody',
      '9': 0,
      '10': 'systemUndelete'
    },
    {
      '1': 'freeze',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.proto.FreezeTransactionBody',
      '9': 0,
      '10': 'freeze'
    },
    {
      '1': 'consensusCreateTopic',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusCreateTopicTransactionBody',
      '9': 0,
      '10': 'consensusCreateTopic'
    },
    {
      '1': 'consensusUpdateTopic',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusUpdateTopicTransactionBody',
      '9': 0,
      '10': 'consensusUpdateTopic'
    },
    {
      '1': 'consensusDeleteTopic',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusDeleteTopicTransactionBody',
      '9': 0,
      '10': 'consensusDeleteTopic'
    },
    {
      '1': 'consensusSubmitMessage',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.proto.ConsensusSubmitMessageTransactionBody',
      '9': 0,
      '10': 'consensusSubmitMessage'
    },
    {
      '1': 'tokenCreation',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenCreateTransactionBody',
      '9': 0,
      '10': 'tokenCreation'
    },
    {
      '1': 'tokenFreeze',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenFreezeAccountTransactionBody',
      '9': 0,
      '10': 'tokenFreeze'
    },
    {
      '1': 'tokenUnfreeze',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenUnfreezeAccountTransactionBody',
      '9': 0,
      '10': 'tokenUnfreeze'
    },
    {
      '1': 'tokenGrantKyc',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenGrantKycTransactionBody',
      '9': 0,
      '10': 'tokenGrantKyc'
    },
    {
      '1': 'tokenRevokeKyc',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenRevokeKycTransactionBody',
      '9': 0,
      '10': 'tokenRevokeKyc'
    },
    {
      '1': 'tokenDeletion',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenDeleteTransactionBody',
      '9': 0,
      '10': 'tokenDeletion'
    },
    {
      '1': 'tokenUpdate',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenUpdateTransactionBody',
      '9': 0,
      '10': 'tokenUpdate'
    },
    {
      '1': 'tokenMint',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenMintTransactionBody',
      '9': 0,
      '10': 'tokenMint'
    },
    {
      '1': 'tokenBurn',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenBurnTransactionBody',
      '9': 0,
      '10': 'tokenBurn'
    },
    {
      '1': 'tokenWipe',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenWipeAccountTransactionBody',
      '9': 0,
      '10': 'tokenWipe'
    },
    {
      '1': 'tokenAssociate',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenAssociateTransactionBody',
      '9': 0,
      '10': 'tokenAssociate'
    },
    {
      '1': 'tokenDissociate',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenDissociateTransactionBody',
      '9': 0,
      '10': 'tokenDissociate'
    },
    {
      '1': 'scheduleDelete',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.proto.ScheduleDeleteTransactionBody',
      '9': 0,
      '10': 'scheduleDelete'
    },
    {
      '1': 'token_pause',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenPauseTransactionBody',
      '9': 0,
      '10': 'tokenPause'
    },
    {
      '1': 'token_unpause',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenUnpauseTransactionBody',
      '9': 0,
      '10': 'tokenUnpause'
    },
    {
      '1': 'cryptoApproveAllowance',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoApproveAllowanceTransactionBody',
      '9': 0,
      '10': 'cryptoApproveAllowance'
    },
    {
      '1': 'cryptoDeleteAllowance',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.proto.CryptoDeleteAllowanceTransactionBody',
      '9': 0,
      '10': 'cryptoDeleteAllowance'
    },
    {
      '1': 'token_fee_schedule_update',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenFeeScheduleUpdateTransactionBody',
      '9': 0,
      '10': 'tokenFeeScheduleUpdate'
    },
    {
      '1': 'util_prng',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.proto.UtilPrngTransactionBody',
      '9': 0,
      '10': 'utilPrng'
    },
    {
      '1': 'token_update_nfts',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenUpdateNftsTransactionBody',
      '9': 0,
      '10': 'tokenUpdateNfts'
    },
    {
      '1': 'nodeCreate',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.addressbook.NodeCreateTransactionBody',
      '9': 0,
      '10': 'nodeCreate'
    },
    {
      '1': 'nodeUpdate',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.addressbook.NodeUpdateTransactionBody',
      '9': 0,
      '10': 'nodeUpdate'
    },
    {
      '1': 'nodeDelete',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.node.addressbook.NodeDeleteTransactionBody',
      '9': 0,
      '10': 'nodeDelete'
    },
    {
      '1': 'tokenReject',
      '3': 45,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenRejectTransactionBody',
      '9': 0,
      '10': 'tokenReject'
    },
    {
      '1': 'tokenCancelAirdrop',
      '3': 46,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenCancelAirdropTransactionBody',
      '9': 0,
      '10': 'tokenCancelAirdrop'
    },
    {
      '1': 'tokenClaimAirdrop',
      '3': 47,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenClaimAirdropTransactionBody',
      '9': 0,
      '10': 'tokenClaimAirdrop'
    },
    {
      '1': 'tokenAirdrop',
      '3': 48,
      '4': 1,
      '5': 11,
      '6': '.proto.TokenAirdropTransactionBody',
      '9': 0,
      '10': 'tokenAirdrop'
    },
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `SchedulableTransactionBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List schedulableTransactionBodyDescriptor = $convert.base64Decode(
    'ChpTY2hlZHVsYWJsZVRyYW5zYWN0aW9uQm9keRImCg50cmFuc2FjdGlvbkZlZRgBIAEoBFIOdH'
    'JhbnNhY3Rpb25GZWUSEgoEbWVtbxgCIAEoCVIEbWVtbxJICgxjb250cmFjdENhbGwYAyABKAsy'
    'Ii5wcm90by5Db250cmFjdENhbGxUcmFuc2FjdGlvbkJvZHlIAFIMY29udHJhY3RDYWxsEl4KFm'
    'NvbnRyYWN0Q3JlYXRlSW5zdGFuY2UYBCABKAsyJC5wcm90by5Db250cmFjdENyZWF0ZVRyYW5z'
    'YWN0aW9uQm9keUgAUhZjb250cmFjdENyZWF0ZUluc3RhbmNlEl4KFmNvbnRyYWN0VXBkYXRlSW'
    '5zdGFuY2UYBSABKAsyJC5wcm90by5Db250cmFjdFVwZGF0ZVRyYW5zYWN0aW9uQm9keUgAUhZj'
    'b250cmFjdFVwZGF0ZUluc3RhbmNlEl4KFmNvbnRyYWN0RGVsZXRlSW5zdGFuY2UYBiABKAsyJC'
    '5wcm90by5Db250cmFjdERlbGV0ZVRyYW5zYWN0aW9uQm9keUgAUhZjb250cmFjdERlbGV0ZUlu'
    'c3RhbmNlElYKE2NyeXB0b0NyZWF0ZUFjY291bnQYByABKAsyIi5wcm90by5DcnlwdG9DcmVhdG'
    'VUcmFuc2FjdGlvbkJvZHlIAFITY3J5cHRvQ3JlYXRlQWNjb3VudBJICgxjcnlwdG9EZWxldGUY'
    'CCABKAsyIi5wcm90by5DcnlwdG9EZWxldGVUcmFuc2FjdGlvbkJvZHlIAFIMY3J5cHRvRGVsZX'
    'RlEk4KDmNyeXB0b1RyYW5zZmVyGAkgASgLMiQucHJvdG8uQ3J5cHRvVHJhbnNmZXJUcmFuc2Fj'
    'dGlvbkJvZHlIAFIOY3J5cHRvVHJhbnNmZXISVgoTY3J5cHRvVXBkYXRlQWNjb3VudBgKIAEoCz'
    'IiLnByb3RvLkNyeXB0b1VwZGF0ZVRyYW5zYWN0aW9uQm9keUgAUhNjcnlwdG9VcGRhdGVBY2Nv'
    'dW50EkIKCmZpbGVBcHBlbmQYCyABKAsyIC5wcm90by5GaWxlQXBwZW5kVHJhbnNhY3Rpb25Cb2'
    'R5SABSCmZpbGVBcHBlbmQSQgoKZmlsZUNyZWF0ZRgMIAEoCzIgLnByb3RvLkZpbGVDcmVhdGVU'
    'cmFuc2FjdGlvbkJvZHlIAFIKZmlsZUNyZWF0ZRJCCgpmaWxlRGVsZXRlGA0gASgLMiAucHJvdG'
    '8uRmlsZURlbGV0ZVRyYW5zYWN0aW9uQm9keUgAUgpmaWxlRGVsZXRlEkIKCmZpbGVVcGRhdGUY'
    'DiABKAsyIC5wcm90by5GaWxlVXBkYXRlVHJhbnNhY3Rpb25Cb2R5SABSCmZpbGVVcGRhdGUSSA'
    'oMc3lzdGVtRGVsZXRlGA8gASgLMiIucHJvdG8uU3lzdGVtRGVsZXRlVHJhbnNhY3Rpb25Cb2R5'
    'SABSDHN5c3RlbURlbGV0ZRJOCg5zeXN0ZW1VbmRlbGV0ZRgQIAEoCzIkLnByb3RvLlN5c3RlbV'
    'VuZGVsZXRlVHJhbnNhY3Rpb25Cb2R5SABSDnN5c3RlbVVuZGVsZXRlEjYKBmZyZWV6ZRgRIAEo'
    'CzIcLnByb3RvLkZyZWV6ZVRyYW5zYWN0aW9uQm9keUgAUgZmcmVlemUSYAoUY29uc2Vuc3VzQ3'
    'JlYXRlVG9waWMYEiABKAsyKi5wcm90by5Db25zZW5zdXNDcmVhdGVUb3BpY1RyYW5zYWN0aW9u'
    'Qm9keUgAUhRjb25zZW5zdXNDcmVhdGVUb3BpYxJgChRjb25zZW5zdXNVcGRhdGVUb3BpYxgTIA'
    'EoCzIqLnByb3RvLkNvbnNlbnN1c1VwZGF0ZVRvcGljVHJhbnNhY3Rpb25Cb2R5SABSFGNvbnNl'
    'bnN1c1VwZGF0ZVRvcGljEmAKFGNvbnNlbnN1c0RlbGV0ZVRvcGljGBQgASgLMioucHJvdG8uQ2'
    '9uc2Vuc3VzRGVsZXRlVG9waWNUcmFuc2FjdGlvbkJvZHlIAFIUY29uc2Vuc3VzRGVsZXRlVG9w'
    'aWMSZgoWY29uc2Vuc3VzU3VibWl0TWVzc2FnZRgVIAEoCzIsLnByb3RvLkNvbnNlbnN1c1N1Ym'
    '1pdE1lc3NhZ2VUcmFuc2FjdGlvbkJvZHlIAFIWY29uc2Vuc3VzU3VibWl0TWVzc2FnZRJJCg10'
    'b2tlbkNyZWF0aW9uGBYgASgLMiEucHJvdG8uVG9rZW5DcmVhdGVUcmFuc2FjdGlvbkJvZHlIAF'
    'INdG9rZW5DcmVhdGlvbhJMCgt0b2tlbkZyZWV6ZRgXIAEoCzIoLnByb3RvLlRva2VuRnJlZXpl'
    'QWNjb3VudFRyYW5zYWN0aW9uQm9keUgAUgt0b2tlbkZyZWV6ZRJSCg10b2tlblVuZnJlZXplGB'
    'ggASgLMioucHJvdG8uVG9rZW5VbmZyZWV6ZUFjY291bnRUcmFuc2FjdGlvbkJvZHlIAFINdG9r'
    'ZW5VbmZyZWV6ZRJLCg10b2tlbkdyYW50S3ljGBkgASgLMiMucHJvdG8uVG9rZW5HcmFudEt5Y1'
    'RyYW5zYWN0aW9uQm9keUgAUg10b2tlbkdyYW50S3ljEk4KDnRva2VuUmV2b2tlS3ljGBogASgL'
    'MiQucHJvdG8uVG9rZW5SZXZva2VLeWNUcmFuc2FjdGlvbkJvZHlIAFIOdG9rZW5SZXZva2VLeW'
    'MSSQoNdG9rZW5EZWxldGlvbhgbIAEoCzIhLnByb3RvLlRva2VuRGVsZXRlVHJhbnNhY3Rpb25C'
    'b2R5SABSDXRva2VuRGVsZXRpb24SRQoLdG9rZW5VcGRhdGUYHCABKAsyIS5wcm90by5Ub2tlbl'
    'VwZGF0ZVRyYW5zYWN0aW9uQm9keUgAUgt0b2tlblVwZGF0ZRI/Cgl0b2tlbk1pbnQYHSABKAsy'
    'Hy5wcm90by5Ub2tlbk1pbnRUcmFuc2FjdGlvbkJvZHlIAFIJdG9rZW5NaW50Ej8KCXRva2VuQn'
    'VybhgeIAEoCzIfLnByb3RvLlRva2VuQnVyblRyYW5zYWN0aW9uQm9keUgAUgl0b2tlbkJ1cm4S'
    'RgoJdG9rZW5XaXBlGB8gASgLMiYucHJvdG8uVG9rZW5XaXBlQWNjb3VudFRyYW5zYWN0aW9uQm'
    '9keUgAUgl0b2tlbldpcGUSTgoOdG9rZW5Bc3NvY2lhdGUYICABKAsyJC5wcm90by5Ub2tlbkFz'
    'c29jaWF0ZVRyYW5zYWN0aW9uQm9keUgAUg50b2tlbkFzc29jaWF0ZRJRCg90b2tlbkRpc3NvY2'
    'lhdGUYISABKAsyJS5wcm90by5Ub2tlbkRpc3NvY2lhdGVUcmFuc2FjdGlvbkJvZHlIAFIPdG9r'
    'ZW5EaXNzb2NpYXRlEk4KDnNjaGVkdWxlRGVsZXRlGCIgASgLMiQucHJvdG8uU2NoZWR1bGVEZW'
    'xldGVUcmFuc2FjdGlvbkJvZHlIAFIOc2NoZWR1bGVEZWxldGUSQwoLdG9rZW5fcGF1c2UYIyAB'
    'KAsyIC5wcm90by5Ub2tlblBhdXNlVHJhbnNhY3Rpb25Cb2R5SABSCnRva2VuUGF1c2USSQoNdG'
    '9rZW5fdW5wYXVzZRgkIAEoCzIiLnByb3RvLlRva2VuVW5wYXVzZVRyYW5zYWN0aW9uQm9keUgA'
    'Ugx0b2tlblVucGF1c2USZgoWY3J5cHRvQXBwcm92ZUFsbG93YW5jZRglIAEoCzIsLnByb3RvLk'
    'NyeXB0b0FwcHJvdmVBbGxvd2FuY2VUcmFuc2FjdGlvbkJvZHlIAFIWY3J5cHRvQXBwcm92ZUFs'
    'bG93YW5jZRJjChVjcnlwdG9EZWxldGVBbGxvd2FuY2UYJiABKAsyKy5wcm90by5DcnlwdG9EZW'
    'xldGVBbGxvd2FuY2VUcmFuc2FjdGlvbkJvZHlIAFIVY3J5cHRvRGVsZXRlQWxsb3dhbmNlEmkK'
    'GXRva2VuX2ZlZV9zY2hlZHVsZV91cGRhdGUYJyABKAsyLC5wcm90by5Ub2tlbkZlZVNjaGVkdW'
    'xlVXBkYXRlVHJhbnNhY3Rpb25Cb2R5SABSFnRva2VuRmVlU2NoZWR1bGVVcGRhdGUSPQoJdXRp'
    'bF9wcm5nGCggASgLMh4ucHJvdG8uVXRpbFBybmdUcmFuc2FjdGlvbkJvZHlIAFIIdXRpbFBybm'
    'cSUwoRdG9rZW5fdXBkYXRlX25mdHMYKSABKAsyJS5wcm90by5Ub2tlblVwZGF0ZU5mdHNUcmFu'
    'c2FjdGlvbkJvZHlIAFIPdG9rZW5VcGRhdGVOZnRzEl0KCm5vZGVDcmVhdGUYKiABKAsyOy5jb2'
    '0uaGVkZXJhLmhhcGkubm9kZS5hZGRyZXNzYm9vay5Ob2RlQ3JlYXRlVHJhbnNhY3Rpb25Cb2R5'
    'SABSCm5vZGVDcmVhdGUSXQoKbm9kZVVwZGF0ZRgrIAEoCzI7LmNvbS5oZWRlcmEuaGFwaS5ub2'
    'RlLmFkZHJlc3Nib29rLk5vZGVVcGRhdGVUcmFuc2FjdGlvbkJvZHlIAFIKbm9kZVVwZGF0ZRJd'
    'Cgpub2RlRGVsZXRlGCwgASgLMjsuY29tLmhlZGVyYS5oYXBpLm5vZGUuYWRkcmVzc2Jvb2suTm'
    '9kZURlbGV0ZVRyYW5zYWN0aW9uQm9keUgAUgpub2RlRGVsZXRlEkUKC3Rva2VuUmVqZWN0GC0g'
    'ASgLMiEucHJvdG8uVG9rZW5SZWplY3RUcmFuc2FjdGlvbkJvZHlIAFILdG9rZW5SZWplY3QSWg'
    'oSdG9rZW5DYW5jZWxBaXJkcm9wGC4gASgLMigucHJvdG8uVG9rZW5DYW5jZWxBaXJkcm9wVHJh'
    'bnNhY3Rpb25Cb2R5SABSEnRva2VuQ2FuY2VsQWlyZHJvcBJXChF0b2tlbkNsYWltQWlyZHJvcB'
    'gvIAEoCzInLnByb3RvLlRva2VuQ2xhaW1BaXJkcm9wVHJhbnNhY3Rpb25Cb2R5SABSEXRva2Vu'
    'Q2xhaW1BaXJkcm9wEkgKDHRva2VuQWlyZHJvcBgwIAEoCzIiLnByb3RvLlRva2VuQWlyZHJvcF'
    'RyYW5zYWN0aW9uQm9keUgAUgx0b2tlbkFpcmRyb3BCBgoEZGF0YQ==');
