// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from schedulable_transaction_body.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'consensus_create_topic.pb.dart' as $15;
import 'consensus_delete_topic.pb.dart' as $17;
import 'consensus_submit_message.pb.dart' as $18;
import 'consensus_update_topic.pb.dart' as $16;
import 'contract_call.pb.dart' as $0;
import 'contract_create.pb.dart' as $1;
import 'contract_delete.pb.dart' as $3;
import 'contract_update.pb.dart' as $2;
import 'crypto_approve_allowance.pb.dart' as $34;
import 'crypto_create.pb.dart' as $4;
import 'crypto_delete.pb.dart' as $5;
import 'crypto_delete_allowance.pb.dart' as $35;
import 'crypto_transfer.pb.dart' as $6;
import 'crypto_update.pb.dart' as $7;
import 'file_append.pb.dart' as $8;
import 'file_create.pb.dart' as $9;
import 'file_delete.pb.dart' as $10;
import 'file_update.pb.dart' as $11;
import 'freeze.pb.dart' as $14;
import 'node_create.pb.dart' as $39;
import 'node_delete.pb.dart' as $41;
import 'node_update.pb.dart' as $40;
import 'schedule_delete.pb.dart' as $31;
import 'system_delete.pb.dart' as $12;
import 'system_undelete.pb.dart' as $13;
import 'token_airdrop.pb.dart' as $45;
import 'token_associate.pb.dart' as $29;
import 'token_burn.pb.dart' as $27;
import 'token_cancel_airdrop.pb.dart' as $43;
import 'token_claim_airdrop.pb.dart' as $44;
import 'token_create.pb.dart' as $19;
import 'token_delete.pb.dart' as $24;
import 'token_dissociate.pb.dart' as $30;
import 'token_fee_schedule_update.pb.dart' as $36;
import 'token_freeze_account.pb.dart' as $20;
import 'token_grant_kyc.pb.dart' as $22;
import 'token_mint.pb.dart' as $26;
import 'token_pause.pb.dart' as $32;
import 'token_reject.pb.dart' as $42;
import 'token_revoke_kyc.pb.dart' as $23;
import 'token_unfreeze_account.pb.dart' as $21;
import 'token_unpause.pb.dart' as $33;
import 'token_update.pb.dart' as $25;
import 'token_update_nfts.pb.dart' as $38;
import 'token_wipe_account.pb.dart' as $28;
import 'util_prng.pb.dart' as $37;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum SchedulableTransactionBody_Data {
  contractCall,
  contractCreateInstance,
  contractUpdateInstance,
  contractDeleteInstance,
  cryptoCreateAccount,
  cryptoDelete,
  cryptoTransfer,
  cryptoUpdateAccount,
  fileAppend,
  fileCreate,
  fileDelete,
  fileUpdate,
  systemDelete,
  systemUndelete,
  freeze_17,
  consensusCreateTopic,
  consensusUpdateTopic,
  consensusDeleteTopic,
  consensusSubmitMessage,
  tokenCreation,
  tokenFreeze,
  tokenUnfreeze,
  tokenGrantKyc,
  tokenRevokeKyc,
  tokenDeletion,
  tokenUpdate,
  tokenMint,
  tokenBurn,
  tokenWipe,
  tokenAssociate,
  tokenDissociate,
  scheduleDelete,
  tokenPause,
  tokenUnpause,
  cryptoApproveAllowance,
  cryptoDeleteAllowance,
  tokenFeeScheduleUpdate,
  utilPrng,
  tokenUpdateNfts,
  nodeCreate,
  nodeUpdate,
  nodeDelete,
  tokenReject,
  tokenCancelAirdrop,
  tokenClaimAirdrop,
  tokenAirdrop,
  notSet
}

/// *
///  A schedulable transaction.
///
///  The network configuration `scheduling.whitelist` limits which of these
///  transaction types may actually be scheduled. As of version `0.50.0` of the
///  consensus node software this list contains only `CryptoTransfer`,
///  `ConsensusSubmitMessage`, `TokenBurn`, `TokenMint`,
///  and `CryptoApproveAllowance`.
class SchedulableTransactionBody extends $pb.GeneratedMessage {
  factory SchedulableTransactionBody({
    $fixnum.Int64? transactionFee,
    $core.String? memo,
    $0.ContractCallTransactionBody? contractCall,
    $1.ContractCreateTransactionBody? contractCreateInstance,
    $2.ContractUpdateTransactionBody? contractUpdateInstance,
    $3.ContractDeleteTransactionBody? contractDeleteInstance,
    $4.CryptoCreateTransactionBody? cryptoCreateAccount,
    $5.CryptoDeleteTransactionBody? cryptoDelete,
    $6.CryptoTransferTransactionBody? cryptoTransfer,
    $7.CryptoUpdateTransactionBody? cryptoUpdateAccount,
    $8.FileAppendTransactionBody? fileAppend,
    $9.FileCreateTransactionBody? fileCreate,
    $10.FileDeleteTransactionBody? fileDelete,
    $11.FileUpdateTransactionBody? fileUpdate,
    $12.SystemDeleteTransactionBody? systemDelete,
    $13.SystemUndeleteTransactionBody? systemUndelete,
    $14.FreezeTransactionBody? freeze_17,
    $15.ConsensusCreateTopicTransactionBody? consensusCreateTopic,
    $16.ConsensusUpdateTopicTransactionBody? consensusUpdateTopic,
    $17.ConsensusDeleteTopicTransactionBody? consensusDeleteTopic,
    $18.ConsensusSubmitMessageTransactionBody? consensusSubmitMessage,
    $19.TokenCreateTransactionBody? tokenCreation,
    $20.TokenFreezeAccountTransactionBody? tokenFreeze,
    $21.TokenUnfreezeAccountTransactionBody? tokenUnfreeze,
    $22.TokenGrantKycTransactionBody? tokenGrantKyc,
    $23.TokenRevokeKycTransactionBody? tokenRevokeKyc,
    $24.TokenDeleteTransactionBody? tokenDeletion,
    $25.TokenUpdateTransactionBody? tokenUpdate,
    $26.TokenMintTransactionBody? tokenMint,
    $27.TokenBurnTransactionBody? tokenBurn,
    $28.TokenWipeAccountTransactionBody? tokenWipe,
    $29.TokenAssociateTransactionBody? tokenAssociate,
    $30.TokenDissociateTransactionBody? tokenDissociate,
    $31.ScheduleDeleteTransactionBody? scheduleDelete,
    $32.TokenPauseTransactionBody? tokenPause,
    $33.TokenUnpauseTransactionBody? tokenUnpause,
    $34.CryptoApproveAllowanceTransactionBody? cryptoApproveAllowance,
    $35.CryptoDeleteAllowanceTransactionBody? cryptoDeleteAllowance,
    $36.TokenFeeScheduleUpdateTransactionBody? tokenFeeScheduleUpdate,
    $37.UtilPrngTransactionBody? utilPrng,
    $38.TokenUpdateNftsTransactionBody? tokenUpdateNfts,
    $39.NodeCreateTransactionBody? nodeCreate,
    $40.NodeUpdateTransactionBody? nodeUpdate,
    $41.NodeDeleteTransactionBody? nodeDelete,
    $42.TokenRejectTransactionBody? tokenReject,
    $43.TokenCancelAirdropTransactionBody? tokenCancelAirdrop,
    $44.TokenClaimAirdropTransactionBody? tokenClaimAirdrop,
    $45.TokenAirdropTransactionBody? tokenAirdrop,
  }) {
    final result = create();
    if (transactionFee != null) result.transactionFee = transactionFee;
    if (memo != null) result.memo = memo;
    if (contractCall != null) result.contractCall = contractCall;
    if (contractCreateInstance != null)
      result.contractCreateInstance = contractCreateInstance;
    if (contractUpdateInstance != null)
      result.contractUpdateInstance = contractUpdateInstance;
    if (contractDeleteInstance != null)
      result.contractDeleteInstance = contractDeleteInstance;
    if (cryptoCreateAccount != null)
      result.cryptoCreateAccount = cryptoCreateAccount;
    if (cryptoDelete != null) result.cryptoDelete = cryptoDelete;
    if (cryptoTransfer != null) result.cryptoTransfer = cryptoTransfer;
    if (cryptoUpdateAccount != null)
      result.cryptoUpdateAccount = cryptoUpdateAccount;
    if (fileAppend != null) result.fileAppend = fileAppend;
    if (fileCreate != null) result.fileCreate = fileCreate;
    if (fileDelete != null) result.fileDelete = fileDelete;
    if (fileUpdate != null) result.fileUpdate = fileUpdate;
    if (systemDelete != null) result.systemDelete = systemDelete;
    if (systemUndelete != null) result.systemUndelete = systemUndelete;
    if (freeze_17 != null) result.freeze_17 = freeze_17;
    if (consensusCreateTopic != null)
      result.consensusCreateTopic = consensusCreateTopic;
    if (consensusUpdateTopic != null)
      result.consensusUpdateTopic = consensusUpdateTopic;
    if (consensusDeleteTopic != null)
      result.consensusDeleteTopic = consensusDeleteTopic;
    if (consensusSubmitMessage != null)
      result.consensusSubmitMessage = consensusSubmitMessage;
    if (tokenCreation != null) result.tokenCreation = tokenCreation;
    if (tokenFreeze != null) result.tokenFreeze = tokenFreeze;
    if (tokenUnfreeze != null) result.tokenUnfreeze = tokenUnfreeze;
    if (tokenGrantKyc != null) result.tokenGrantKyc = tokenGrantKyc;
    if (tokenRevokeKyc != null) result.tokenRevokeKyc = tokenRevokeKyc;
    if (tokenDeletion != null) result.tokenDeletion = tokenDeletion;
    if (tokenUpdate != null) result.tokenUpdate = tokenUpdate;
    if (tokenMint != null) result.tokenMint = tokenMint;
    if (tokenBurn != null) result.tokenBurn = tokenBurn;
    if (tokenWipe != null) result.tokenWipe = tokenWipe;
    if (tokenAssociate != null) result.tokenAssociate = tokenAssociate;
    if (tokenDissociate != null) result.tokenDissociate = tokenDissociate;
    if (scheduleDelete != null) result.scheduleDelete = scheduleDelete;
    if (tokenPause != null) result.tokenPause = tokenPause;
    if (tokenUnpause != null) result.tokenUnpause = tokenUnpause;
    if (cryptoApproveAllowance != null)
      result.cryptoApproveAllowance = cryptoApproveAllowance;
    if (cryptoDeleteAllowance != null)
      result.cryptoDeleteAllowance = cryptoDeleteAllowance;
    if (tokenFeeScheduleUpdate != null)
      result.tokenFeeScheduleUpdate = tokenFeeScheduleUpdate;
    if (utilPrng != null) result.utilPrng = utilPrng;
    if (tokenUpdateNfts != null) result.tokenUpdateNfts = tokenUpdateNfts;
    if (nodeCreate != null) result.nodeCreate = nodeCreate;
    if (nodeUpdate != null) result.nodeUpdate = nodeUpdate;
    if (nodeDelete != null) result.nodeDelete = nodeDelete;
    if (tokenReject != null) result.tokenReject = tokenReject;
    if (tokenCancelAirdrop != null)
      result.tokenCancelAirdrop = tokenCancelAirdrop;
    if (tokenClaimAirdrop != null) result.tokenClaimAirdrop = tokenClaimAirdrop;
    if (tokenAirdrop != null) result.tokenAirdrop = tokenAirdrop;
    return result;
  }

  SchedulableTransactionBody._();

  factory SchedulableTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SchedulableTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SchedulableTransactionBody_Data>
      _SchedulableTransactionBody_DataByTag = {
    3: SchedulableTransactionBody_Data.contractCall,
    4: SchedulableTransactionBody_Data.contractCreateInstance,
    5: SchedulableTransactionBody_Data.contractUpdateInstance,
    6: SchedulableTransactionBody_Data.contractDeleteInstance,
    7: SchedulableTransactionBody_Data.cryptoCreateAccount,
    8: SchedulableTransactionBody_Data.cryptoDelete,
    9: SchedulableTransactionBody_Data.cryptoTransfer,
    10: SchedulableTransactionBody_Data.cryptoUpdateAccount,
    11: SchedulableTransactionBody_Data.fileAppend,
    12: SchedulableTransactionBody_Data.fileCreate,
    13: SchedulableTransactionBody_Data.fileDelete,
    14: SchedulableTransactionBody_Data.fileUpdate,
    15: SchedulableTransactionBody_Data.systemDelete,
    16: SchedulableTransactionBody_Data.systemUndelete,
    17: SchedulableTransactionBody_Data.freeze_17,
    18: SchedulableTransactionBody_Data.consensusCreateTopic,
    19: SchedulableTransactionBody_Data.consensusUpdateTopic,
    20: SchedulableTransactionBody_Data.consensusDeleteTopic,
    21: SchedulableTransactionBody_Data.consensusSubmitMessage,
    22: SchedulableTransactionBody_Data.tokenCreation,
    23: SchedulableTransactionBody_Data.tokenFreeze,
    24: SchedulableTransactionBody_Data.tokenUnfreeze,
    25: SchedulableTransactionBody_Data.tokenGrantKyc,
    26: SchedulableTransactionBody_Data.tokenRevokeKyc,
    27: SchedulableTransactionBody_Data.tokenDeletion,
    28: SchedulableTransactionBody_Data.tokenUpdate,
    29: SchedulableTransactionBody_Data.tokenMint,
    30: SchedulableTransactionBody_Data.tokenBurn,
    31: SchedulableTransactionBody_Data.tokenWipe,
    32: SchedulableTransactionBody_Data.tokenAssociate,
    33: SchedulableTransactionBody_Data.tokenDissociate,
    34: SchedulableTransactionBody_Data.scheduleDelete,
    35: SchedulableTransactionBody_Data.tokenPause,
    36: SchedulableTransactionBody_Data.tokenUnpause,
    37: SchedulableTransactionBody_Data.cryptoApproveAllowance,
    38: SchedulableTransactionBody_Data.cryptoDeleteAllowance,
    39: SchedulableTransactionBody_Data.tokenFeeScheduleUpdate,
    40: SchedulableTransactionBody_Data.utilPrng,
    41: SchedulableTransactionBody_Data.tokenUpdateNfts,
    42: SchedulableTransactionBody_Data.nodeCreate,
    43: SchedulableTransactionBody_Data.nodeUpdate,
    44: SchedulableTransactionBody_Data.nodeDelete,
    45: SchedulableTransactionBody_Data.tokenReject,
    46: SchedulableTransactionBody_Data.tokenCancelAirdrop,
    47: SchedulableTransactionBody_Data.tokenClaimAirdrop,
    48: SchedulableTransactionBody_Data.tokenAirdrop,
    0: SchedulableTransactionBody_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SchedulableTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      29,
      30,
      31,
      32,
      33,
      34,
      35,
      36,
      37,
      38,
      39,
      40,
      41,
      42,
      43,
      44,
      45,
      46,
      47,
      48
    ])
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'transactionFee', $pb.PbFieldType.OU6,
        protoName: 'transactionFee', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'memo')
    ..aOM<$0.ContractCallTransactionBody>(
        3, _omitFieldNames ? '' : 'contractCall',
        protoName: 'contractCall',
        subBuilder: $0.ContractCallTransactionBody.create)
    ..aOM<$1.ContractCreateTransactionBody>(
        4, _omitFieldNames ? '' : 'contractCreateInstance',
        protoName: 'contractCreateInstance',
        subBuilder: $1.ContractCreateTransactionBody.create)
    ..aOM<$2.ContractUpdateTransactionBody>(
        5, _omitFieldNames ? '' : 'contractUpdateInstance',
        protoName: 'contractUpdateInstance',
        subBuilder: $2.ContractUpdateTransactionBody.create)
    ..aOM<$3.ContractDeleteTransactionBody>(
        6, _omitFieldNames ? '' : 'contractDeleteInstance',
        protoName: 'contractDeleteInstance',
        subBuilder: $3.ContractDeleteTransactionBody.create)
    ..aOM<$4.CryptoCreateTransactionBody>(
        7, _omitFieldNames ? '' : 'cryptoCreateAccount',
        protoName: 'cryptoCreateAccount',
        subBuilder: $4.CryptoCreateTransactionBody.create)
    ..aOM<$5.CryptoDeleteTransactionBody>(
        8, _omitFieldNames ? '' : 'cryptoDelete',
        protoName: 'cryptoDelete',
        subBuilder: $5.CryptoDeleteTransactionBody.create)
    ..aOM<$6.CryptoTransferTransactionBody>(
        9, _omitFieldNames ? '' : 'cryptoTransfer',
        protoName: 'cryptoTransfer',
        subBuilder: $6.CryptoTransferTransactionBody.create)
    ..aOM<$7.CryptoUpdateTransactionBody>(
        10, _omitFieldNames ? '' : 'cryptoUpdateAccount',
        protoName: 'cryptoUpdateAccount',
        subBuilder: $7.CryptoUpdateTransactionBody.create)
    ..aOM<$8.FileAppendTransactionBody>(11, _omitFieldNames ? '' : 'fileAppend',
        protoName: 'fileAppend',
        subBuilder: $8.FileAppendTransactionBody.create)
    ..aOM<$9.FileCreateTransactionBody>(12, _omitFieldNames ? '' : 'fileCreate',
        protoName: 'fileCreate',
        subBuilder: $9.FileCreateTransactionBody.create)
    ..aOM<$10.FileDeleteTransactionBody>(
        13, _omitFieldNames ? '' : 'fileDelete',
        protoName: 'fileDelete',
        subBuilder: $10.FileDeleteTransactionBody.create)
    ..aOM<$11.FileUpdateTransactionBody>(
        14, _omitFieldNames ? '' : 'fileUpdate',
        protoName: 'fileUpdate',
        subBuilder: $11.FileUpdateTransactionBody.create)
    ..aOM<$12.SystemDeleteTransactionBody>(
        15, _omitFieldNames ? '' : 'systemDelete',
        protoName: 'systemDelete',
        subBuilder: $12.SystemDeleteTransactionBody.create)
    ..aOM<$13.SystemUndeleteTransactionBody>(
        16, _omitFieldNames ? '' : 'systemUndelete',
        protoName: 'systemUndelete',
        subBuilder: $13.SystemUndeleteTransactionBody.create)
    ..aOM<$14.FreezeTransactionBody>(17, _omitFieldNames ? '' : 'freeze',
        subBuilder: $14.FreezeTransactionBody.create)
    ..aOM<$15.ConsensusCreateTopicTransactionBody>(
        18, _omitFieldNames ? '' : 'consensusCreateTopic',
        protoName: 'consensusCreateTopic',
        subBuilder: $15.ConsensusCreateTopicTransactionBody.create)
    ..aOM<$16.ConsensusUpdateTopicTransactionBody>(
        19, _omitFieldNames ? '' : 'consensusUpdateTopic',
        protoName: 'consensusUpdateTopic',
        subBuilder: $16.ConsensusUpdateTopicTransactionBody.create)
    ..aOM<$17.ConsensusDeleteTopicTransactionBody>(
        20, _omitFieldNames ? '' : 'consensusDeleteTopic',
        protoName: 'consensusDeleteTopic',
        subBuilder: $17.ConsensusDeleteTopicTransactionBody.create)
    ..aOM<$18.ConsensusSubmitMessageTransactionBody>(
        21, _omitFieldNames ? '' : 'consensusSubmitMessage',
        protoName: 'consensusSubmitMessage',
        subBuilder: $18.ConsensusSubmitMessageTransactionBody.create)
    ..aOM<$19.TokenCreateTransactionBody>(
        22, _omitFieldNames ? '' : 'tokenCreation',
        protoName: 'tokenCreation',
        subBuilder: $19.TokenCreateTransactionBody.create)
    ..aOM<$20.TokenFreezeAccountTransactionBody>(
        23, _omitFieldNames ? '' : 'tokenFreeze',
        protoName: 'tokenFreeze',
        subBuilder: $20.TokenFreezeAccountTransactionBody.create)
    ..aOM<$21.TokenUnfreezeAccountTransactionBody>(
        24, _omitFieldNames ? '' : 'tokenUnfreeze',
        protoName: 'tokenUnfreeze',
        subBuilder: $21.TokenUnfreezeAccountTransactionBody.create)
    ..aOM<$22.TokenGrantKycTransactionBody>(
        25, _omitFieldNames ? '' : 'tokenGrantKyc',
        protoName: 'tokenGrantKyc',
        subBuilder: $22.TokenGrantKycTransactionBody.create)
    ..aOM<$23.TokenRevokeKycTransactionBody>(
        26, _omitFieldNames ? '' : 'tokenRevokeKyc',
        protoName: 'tokenRevokeKyc',
        subBuilder: $23.TokenRevokeKycTransactionBody.create)
    ..aOM<$24.TokenDeleteTransactionBody>(
        27, _omitFieldNames ? '' : 'tokenDeletion',
        protoName: 'tokenDeletion',
        subBuilder: $24.TokenDeleteTransactionBody.create)
    ..aOM<$25.TokenUpdateTransactionBody>(
        28, _omitFieldNames ? '' : 'tokenUpdate',
        protoName: 'tokenUpdate',
        subBuilder: $25.TokenUpdateTransactionBody.create)
    ..aOM<$26.TokenMintTransactionBody>(29, _omitFieldNames ? '' : 'tokenMint',
        protoName: 'tokenMint', subBuilder: $26.TokenMintTransactionBody.create)
    ..aOM<$27.TokenBurnTransactionBody>(30, _omitFieldNames ? '' : 'tokenBurn',
        protoName: 'tokenBurn', subBuilder: $27.TokenBurnTransactionBody.create)
    ..aOM<$28.TokenWipeAccountTransactionBody>(
        31, _omitFieldNames ? '' : 'tokenWipe',
        protoName: 'tokenWipe',
        subBuilder: $28.TokenWipeAccountTransactionBody.create)
    ..aOM<$29.TokenAssociateTransactionBody>(
        32, _omitFieldNames ? '' : 'tokenAssociate',
        protoName: 'tokenAssociate',
        subBuilder: $29.TokenAssociateTransactionBody.create)
    ..aOM<$30.TokenDissociateTransactionBody>(
        33, _omitFieldNames ? '' : 'tokenDissociate',
        protoName: 'tokenDissociate',
        subBuilder: $30.TokenDissociateTransactionBody.create)
    ..aOM<$31.ScheduleDeleteTransactionBody>(
        34, _omitFieldNames ? '' : 'scheduleDelete',
        protoName: 'scheduleDelete',
        subBuilder: $31.ScheduleDeleteTransactionBody.create)
    ..aOM<$32.TokenPauseTransactionBody>(
        35, _omitFieldNames ? '' : 'tokenPause',
        subBuilder: $32.TokenPauseTransactionBody.create)
    ..aOM<$33.TokenUnpauseTransactionBody>(
        36, _omitFieldNames ? '' : 'tokenUnpause',
        subBuilder: $33.TokenUnpauseTransactionBody.create)
    ..aOM<$34.CryptoApproveAllowanceTransactionBody>(
        37, _omitFieldNames ? '' : 'cryptoApproveAllowance',
        protoName: 'cryptoApproveAllowance',
        subBuilder: $34.CryptoApproveAllowanceTransactionBody.create)
    ..aOM<$35.CryptoDeleteAllowanceTransactionBody>(
        38, _omitFieldNames ? '' : 'cryptoDeleteAllowance',
        protoName: 'cryptoDeleteAllowance',
        subBuilder: $35.CryptoDeleteAllowanceTransactionBody.create)
    ..aOM<$36.TokenFeeScheduleUpdateTransactionBody>(
        39, _omitFieldNames ? '' : 'tokenFeeScheduleUpdate',
        subBuilder: $36.TokenFeeScheduleUpdateTransactionBody.create)
    ..aOM<$37.UtilPrngTransactionBody>(40, _omitFieldNames ? '' : 'utilPrng',
        subBuilder: $37.UtilPrngTransactionBody.create)
    ..aOM<$38.TokenUpdateNftsTransactionBody>(
        41, _omitFieldNames ? '' : 'tokenUpdateNfts',
        subBuilder: $38.TokenUpdateNftsTransactionBody.create)
    ..aOM<$39.NodeCreateTransactionBody>(
        42, _omitFieldNames ? '' : 'nodeCreate',
        protoName: 'nodeCreate',
        subBuilder: $39.NodeCreateTransactionBody.create)
    ..aOM<$40.NodeUpdateTransactionBody>(
        43, _omitFieldNames ? '' : 'nodeUpdate',
        protoName: 'nodeUpdate',
        subBuilder: $40.NodeUpdateTransactionBody.create)
    ..aOM<$41.NodeDeleteTransactionBody>(
        44, _omitFieldNames ? '' : 'nodeDelete',
        protoName: 'nodeDelete',
        subBuilder: $41.NodeDeleteTransactionBody.create)
    ..aOM<$42.TokenRejectTransactionBody>(
        45, _omitFieldNames ? '' : 'tokenReject',
        protoName: 'tokenReject',
        subBuilder: $42.TokenRejectTransactionBody.create)
    ..aOM<$43.TokenCancelAirdropTransactionBody>(
        46, _omitFieldNames ? '' : 'tokenCancelAirdrop',
        protoName: 'tokenCancelAirdrop',
        subBuilder: $43.TokenCancelAirdropTransactionBody.create)
    ..aOM<$44.TokenClaimAirdropTransactionBody>(
        47, _omitFieldNames ? '' : 'tokenClaimAirdrop',
        protoName: 'tokenClaimAirdrop',
        subBuilder: $44.TokenClaimAirdropTransactionBody.create)
    ..aOM<$45.TokenAirdropTransactionBody>(
        48, _omitFieldNames ? '' : 'tokenAirdrop',
        protoName: 'tokenAirdrop',
        subBuilder: $45.TokenAirdropTransactionBody.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SchedulableTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SchedulableTransactionBody copyWith(
          void Function(SchedulableTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as SchedulableTransactionBody))
          as SchedulableTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SchedulableTransactionBody create() => SchedulableTransactionBody._();
  @$core.override
  SchedulableTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SchedulableTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SchedulableTransactionBody>(create);
  static SchedulableTransactionBody? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  @$pb.TagNumber(39)
  @$pb.TagNumber(40)
  @$pb.TagNumber(41)
  @$pb.TagNumber(42)
  @$pb.TagNumber(43)
  @$pb.TagNumber(44)
  @$pb.TagNumber(45)
  @$pb.TagNumber(46)
  @$pb.TagNumber(47)
  @$pb.TagNumber(48)
  SchedulableTransactionBody_Data whichData() =>
      _SchedulableTransactionBody_DataByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  @$pb.TagNumber(39)
  @$pb.TagNumber(40)
  @$pb.TagNumber(41)
  @$pb.TagNumber(42)
  @$pb.TagNumber(43)
  @$pb.TagNumber(44)
  @$pb.TagNumber(45)
  @$pb.TagNumber(46)
  @$pb.TagNumber(47)
  @$pb.TagNumber(48)
  void clearData() => $_clearField($_whichOneof(0));

  /// *
  ///  A limit for the transaction fee the client is willing to pay.
  ///  <p>
  ///  The network SHALL NOT charge fees greater than this value.
  @$pb.TagNumber(1)
  $fixnum.Int64 get transactionFee => $_getI64(0);
  @$pb.TagNumber(1)
  set transactionFee($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTransactionFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionFee() => $_clearField(1);

  /// *
  ///  A short description of the schedulable transaction.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(2)
  $core.String get memo => $_getSZ(1);
  @$pb.TagNumber(2)
  set memo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMemo() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemo() => $_clearField(2);

  /// *
  ///  Call a function defined on a smart contract.
  @$pb.TagNumber(3)
  $0.ContractCallTransactionBody get contractCall => $_getN(2);
  @$pb.TagNumber(3)
  set contractCall($0.ContractCallTransactionBody value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasContractCall() => $_has(2);
  @$pb.TagNumber(3)
  void clearContractCall() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.ContractCallTransactionBody ensureContractCall() => $_ensure(2);

  /// *
  ///  Create a smart contract.
  @$pb.TagNumber(4)
  $1.ContractCreateTransactionBody get contractCreateInstance => $_getN(3);
  @$pb.TagNumber(4)
  set contractCreateInstance($1.ContractCreateTransactionBody value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasContractCreateInstance() => $_has(3);
  @$pb.TagNumber(4)
  void clearContractCreateInstance() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.ContractCreateTransactionBody ensureContractCreateInstance() =>
      $_ensure(3);

  /// *
  ///  Update a smart contract.
  @$pb.TagNumber(5)
  $2.ContractUpdateTransactionBody get contractUpdateInstance => $_getN(4);
  @$pb.TagNumber(5)
  set contractUpdateInstance($2.ContractUpdateTransactionBody value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasContractUpdateInstance() => $_has(4);
  @$pb.TagNumber(5)
  void clearContractUpdateInstance() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.ContractUpdateTransactionBody ensureContractUpdateInstance() =>
      $_ensure(4);

  /// *
  ///  Delete a smart contract and transfer remaining balance
  ///  to a specified account.
  @$pb.TagNumber(6)
  $3.ContractDeleteTransactionBody get contractDeleteInstance => $_getN(5);
  @$pb.TagNumber(6)
  set contractDeleteInstance($3.ContractDeleteTransactionBody value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasContractDeleteInstance() => $_has(5);
  @$pb.TagNumber(6)
  void clearContractDeleteInstance() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.ContractDeleteTransactionBody ensureContractDeleteInstance() =>
      $_ensure(5);

  /// *
  ///  Create a new Hedera account.
  @$pb.TagNumber(7)
  $4.CryptoCreateTransactionBody get cryptoCreateAccount => $_getN(6);
  @$pb.TagNumber(7)
  set cryptoCreateAccount($4.CryptoCreateTransactionBody value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCryptoCreateAccount() => $_has(6);
  @$pb.TagNumber(7)
  void clearCryptoCreateAccount() => $_clearField(7);
  @$pb.TagNumber(7)
  $4.CryptoCreateTransactionBody ensureCryptoCreateAccount() => $_ensure(6);

  /// *
  ///  Delete an Hedera account.<br/>
  ///  This will mark the account as deleted, and transfer all remaining
  ///  HBAR to a receiver account.
  @$pb.TagNumber(8)
  $5.CryptoDeleteTransactionBody get cryptoDelete => $_getN(7);
  @$pb.TagNumber(8)
  set cryptoDelete($5.CryptoDeleteTransactionBody value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCryptoDelete() => $_has(7);
  @$pb.TagNumber(8)
  void clearCryptoDelete() => $_clearField(8);
  @$pb.TagNumber(8)
  $5.CryptoDeleteTransactionBody ensureCryptoDelete() => $_ensure(7);

  /// *
  ///  Transfer HBAR between accounts.
  @$pb.TagNumber(9)
  $6.CryptoTransferTransactionBody get cryptoTransfer => $_getN(8);
  @$pb.TagNumber(9)
  set cryptoTransfer($6.CryptoTransferTransactionBody value) =>
      $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCryptoTransfer() => $_has(8);
  @$pb.TagNumber(9)
  void clearCryptoTransfer() => $_clearField(9);
  @$pb.TagNumber(9)
  $6.CryptoTransferTransactionBody ensureCryptoTransfer() => $_ensure(8);

  /// *
  ///  Modify an Hedera account.
  @$pb.TagNumber(10)
  $7.CryptoUpdateTransactionBody get cryptoUpdateAccount => $_getN(9);
  @$pb.TagNumber(10)
  set cryptoUpdateAccount($7.CryptoUpdateTransactionBody value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasCryptoUpdateAccount() => $_has(9);
  @$pb.TagNumber(10)
  void clearCryptoUpdateAccount() => $_clearField(10);
  @$pb.TagNumber(10)
  $7.CryptoUpdateTransactionBody ensureCryptoUpdateAccount() => $_ensure(9);

  /// *
  ///  Append data to the end of a file.
  @$pb.TagNumber(11)
  $8.FileAppendTransactionBody get fileAppend => $_getN(10);
  @$pb.TagNumber(11)
  set fileAppend($8.FileAppendTransactionBody value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasFileAppend() => $_has(10);
  @$pb.TagNumber(11)
  void clearFileAppend() => $_clearField(11);
  @$pb.TagNumber(11)
  $8.FileAppendTransactionBody ensureFileAppend() => $_ensure(10);

  /// *
  ///  Create a new file.
  @$pb.TagNumber(12)
  $9.FileCreateTransactionBody get fileCreate => $_getN(11);
  @$pb.TagNumber(12)
  set fileCreate($9.FileCreateTransactionBody value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasFileCreate() => $_has(11);
  @$pb.TagNumber(12)
  void clearFileCreate() => $_clearField(12);
  @$pb.TagNumber(12)
  $9.FileCreateTransactionBody ensureFileCreate() => $_ensure(11);

  /// *
  ///  Delete a file.<br/>
  ///  This will remove the content of the file, and mark the file as
  ///  deleted.
  @$pb.TagNumber(13)
  $10.FileDeleteTransactionBody get fileDelete => $_getN(12);
  @$pb.TagNumber(13)
  set fileDelete($10.FileDeleteTransactionBody value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasFileDelete() => $_has(12);
  @$pb.TagNumber(13)
  void clearFileDelete() => $_clearField(13);
  @$pb.TagNumber(13)
  $10.FileDeleteTransactionBody ensureFileDelete() => $_ensure(12);

  /// *
  ///  Modify a file.<br/>
  ///  This may modify any metadata, and/or _replace_ the content.
  @$pb.TagNumber(14)
  $11.FileUpdateTransactionBody get fileUpdate => $_getN(13);
  @$pb.TagNumber(14)
  set fileUpdate($11.FileUpdateTransactionBody value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasFileUpdate() => $_has(13);
  @$pb.TagNumber(14)
  void clearFileUpdate() => $_clearField(14);
  @$pb.TagNumber(14)
  $11.FileUpdateTransactionBody ensureFileUpdate() => $_ensure(13);

  /// *
  ///  Delete a file as an Hedera administrative function.<br/>
  ///  This is a privileged operation.
  @$pb.TagNumber(15)
  $12.SystemDeleteTransactionBody get systemDelete => $_getN(14);
  @$pb.TagNumber(15)
  set systemDelete($12.SystemDeleteTransactionBody value) =>
      $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasSystemDelete() => $_has(14);
  @$pb.TagNumber(15)
  void clearSystemDelete() => $_clearField(15);
  @$pb.TagNumber(15)
  $12.SystemDeleteTransactionBody ensureSystemDelete() => $_ensure(14);

  /// *
  ///  Restore a file deleted via `systemDelete`.<br/>
  ///  This is a privileged operation.
  @$pb.TagNumber(16)
  $13.SystemUndeleteTransactionBody get systemUndelete => $_getN(15);
  @$pb.TagNumber(16)
  set systemUndelete($13.SystemUndeleteTransactionBody value) =>
      $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasSystemUndelete() => $_has(15);
  @$pb.TagNumber(16)
  void clearSystemUndelete() => $_clearField(16);
  @$pb.TagNumber(16)
  $13.SystemUndeleteTransactionBody ensureSystemUndelete() => $_ensure(15);

  /// *
  ///  Freeze the network.<br/>
  ///  This is actually several possible operations, and the caller
  ///  should examine the "freeze service" for more detail.<br/>
  ///  This is a privileged operation.
  @$pb.TagNumber(17)
  $14.FreezeTransactionBody get freeze_17 => $_getN(16);
  @$pb.TagNumber(17)
  set freeze_17($14.FreezeTransactionBody value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasFreeze_17() => $_has(16);
  @$pb.TagNumber(17)
  void clearFreeze_17() => $_clearField(17);
  @$pb.TagNumber(17)
  $14.FreezeTransactionBody ensureFreeze_17() => $_ensure(16);

  /// *
  ///  Create a topic.
  @$pb.TagNumber(18)
  $15.ConsensusCreateTopicTransactionBody get consensusCreateTopic =>
      $_getN(17);
  @$pb.TagNumber(18)
  set consensusCreateTopic($15.ConsensusCreateTopicTransactionBody value) =>
      $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasConsensusCreateTopic() => $_has(17);
  @$pb.TagNumber(18)
  void clearConsensusCreateTopic() => $_clearField(18);
  @$pb.TagNumber(18)
  $15.ConsensusCreateTopicTransactionBody ensureConsensusCreateTopic() =>
      $_ensure(17);

  /// *
  ///  Update a topic.
  @$pb.TagNumber(19)
  $16.ConsensusUpdateTopicTransactionBody get consensusUpdateTopic =>
      $_getN(18);
  @$pb.TagNumber(19)
  set consensusUpdateTopic($16.ConsensusUpdateTopicTransactionBody value) =>
      $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasConsensusUpdateTopic() => $_has(18);
  @$pb.TagNumber(19)
  void clearConsensusUpdateTopic() => $_clearField(19);
  @$pb.TagNumber(19)
  $16.ConsensusUpdateTopicTransactionBody ensureConsensusUpdateTopic() =>
      $_ensure(18);

  /// *
  ///  Delete a topic.
  @$pb.TagNumber(20)
  $17.ConsensusDeleteTopicTransactionBody get consensusDeleteTopic =>
      $_getN(19);
  @$pb.TagNumber(20)
  set consensusDeleteTopic($17.ConsensusDeleteTopicTransactionBody value) =>
      $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasConsensusDeleteTopic() => $_has(19);
  @$pb.TagNumber(20)
  void clearConsensusDeleteTopic() => $_clearField(20);
  @$pb.TagNumber(20)
  $17.ConsensusDeleteTopicTransactionBody ensureConsensusDeleteTopic() =>
      $_ensure(19);

  /// *
  ///  Submit a message to a topic.<br/>
  ///  A message may be "chunked", and submitted in parts, if the total
  ///  message size exceeds the limit for a single transaction.
  @$pb.TagNumber(21)
  $18.ConsensusSubmitMessageTransactionBody get consensusSubmitMessage =>
      $_getN(20);
  @$pb.TagNumber(21)
  set consensusSubmitMessage($18.ConsensusSubmitMessageTransactionBody value) =>
      $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasConsensusSubmitMessage() => $_has(20);
  @$pb.TagNumber(21)
  void clearConsensusSubmitMessage() => $_clearField(21);
  @$pb.TagNumber(21)
  $18.ConsensusSubmitMessageTransactionBody ensureConsensusSubmitMessage() =>
      $_ensure(20);

  /// *
  ///  Create a new Hedera token.
  @$pb.TagNumber(22)
  $19.TokenCreateTransactionBody get tokenCreation => $_getN(21);
  @$pb.TagNumber(22)
  set tokenCreation($19.TokenCreateTransactionBody value) =>
      $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasTokenCreation() => $_has(21);
  @$pb.TagNumber(22)
  void clearTokenCreation() => $_clearField(22);
  @$pb.TagNumber(22)
  $19.TokenCreateTransactionBody ensureTokenCreation() => $_ensure(21);

  /// *
  ///  Freeze an account with respect to a token.<br/>
  ///  A frozen account cannot transact in that token until unfrozen.
  @$pb.TagNumber(23)
  $20.TokenFreezeAccountTransactionBody get tokenFreeze => $_getN(22);
  @$pb.TagNumber(23)
  set tokenFreeze($20.TokenFreezeAccountTransactionBody value) =>
      $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasTokenFreeze() => $_has(22);
  @$pb.TagNumber(23)
  void clearTokenFreeze() => $_clearField(23);
  @$pb.TagNumber(23)
  $20.TokenFreezeAccountTransactionBody ensureTokenFreeze() => $_ensure(22);

  /// *
  ///  Unfreeze an account with respect to a token.
  @$pb.TagNumber(24)
  $21.TokenUnfreezeAccountTransactionBody get tokenUnfreeze => $_getN(23);
  @$pb.TagNumber(24)
  set tokenUnfreeze($21.TokenUnfreezeAccountTransactionBody value) =>
      $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasTokenUnfreeze() => $_has(23);
  @$pb.TagNumber(24)
  void clearTokenUnfreeze() => $_clearField(24);
  @$pb.TagNumber(24)
  $21.TokenUnfreezeAccountTransactionBody ensureTokenUnfreeze() => $_ensure(23);

  /// *
  ///  Grant KYC to an account with respect to a token.<br/>
  ///  KYC is generally a "know your customer" assertion that a
  ///  responsible entity has sufficient information to positively
  ///  identify the account holder to relevant authorities.
  @$pb.TagNumber(25)
  $22.TokenGrantKycTransactionBody get tokenGrantKyc => $_getN(24);
  @$pb.TagNumber(25)
  set tokenGrantKyc($22.TokenGrantKycTransactionBody value) =>
      $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasTokenGrantKyc() => $_has(24);
  @$pb.TagNumber(25)
  void clearTokenGrantKyc() => $_clearField(25);
  @$pb.TagNumber(25)
  $22.TokenGrantKycTransactionBody ensureTokenGrantKyc() => $_ensure(24);

  /// *
  ///  Revoke KYC from an account with respect to a token.
  @$pb.TagNumber(26)
  $23.TokenRevokeKycTransactionBody get tokenRevokeKyc => $_getN(25);
  @$pb.TagNumber(26)
  set tokenRevokeKyc($23.TokenRevokeKycTransactionBody value) =>
      $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasTokenRevokeKyc() => $_has(25);
  @$pb.TagNumber(26)
  void clearTokenRevokeKyc() => $_clearField(26);
  @$pb.TagNumber(26)
  $23.TokenRevokeKycTransactionBody ensureTokenRevokeKyc() => $_ensure(25);

  /// *
  ///  Deletes an Hedera token.<br/>
  ///  The token will be marked deleted.
  @$pb.TagNumber(27)
  $24.TokenDeleteTransactionBody get tokenDeletion => $_getN(26);
  @$pb.TagNumber(27)
  set tokenDeletion($24.TokenDeleteTransactionBody value) =>
      $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasTokenDeletion() => $_has(26);
  @$pb.TagNumber(27)
  void clearTokenDeletion() => $_clearField(27);
  @$pb.TagNumber(27)
  $24.TokenDeleteTransactionBody ensureTokenDeletion() => $_ensure(26);

  /// *
  ///  Update an Hedera token.<br/>
  ///  Depending on what fields are to be modified, the signature
  ///  requirements will vary. See `TokenUpdateTransactionBody` for
  ///  further detail.
  @$pb.TagNumber(28)
  $25.TokenUpdateTransactionBody get tokenUpdate => $_getN(27);
  @$pb.TagNumber(28)
  set tokenUpdate($25.TokenUpdateTransactionBody value) =>
      $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasTokenUpdate() => $_has(27);
  @$pb.TagNumber(28)
  void clearTokenUpdate() => $_clearField(28);
  @$pb.TagNumber(28)
  $25.TokenUpdateTransactionBody ensureTokenUpdate() => $_ensure(27);

  /// *
  ///  Mint new tokens.<br/>
  ///  All minted tokens will be delivered to the treasury account for
  ///  the token type. The "mint key" for the token must sign this
  ///  transaction.
  @$pb.TagNumber(29)
  $26.TokenMintTransactionBody get tokenMint => $_getN(28);
  @$pb.TagNumber(29)
  set tokenMint($26.TokenMintTransactionBody value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasTokenMint() => $_has(28);
  @$pb.TagNumber(29)
  void clearTokenMint() => $_clearField(29);
  @$pb.TagNumber(29)
  $26.TokenMintTransactionBody ensureTokenMint() => $_ensure(28);

  /// *
  ///  Burn tokens from the treasury account.<br/>
  ///  The "burn key" for the token must sign this transaction.
  @$pb.TagNumber(30)
  $27.TokenBurnTransactionBody get tokenBurn => $_getN(29);
  @$pb.TagNumber(30)
  set tokenBurn($27.TokenBurnTransactionBody value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasTokenBurn() => $_has(29);
  @$pb.TagNumber(30)
  void clearTokenBurn() => $_clearField(30);
  @$pb.TagNumber(30)
  $27.TokenBurnTransactionBody ensureTokenBurn() => $_ensure(29);

  /// *
  ///  Wipe tokens from an account.<br/>
  ///  This will remove a specified amount of fungible/common tokens or
  ///  a specified list of non-fungible/unique serial numbered tokens
  ///  of a given token type from an Hedera account. The removed tokens
  ///  are _burned_ as if by a `tokenBurn` transaction.<br/>
  ///  The "wipe key" for the token must sign this transaction.
  @$pb.TagNumber(31)
  $28.TokenWipeAccountTransactionBody get tokenWipe => $_getN(30);
  @$pb.TagNumber(31)
  set tokenWipe($28.TokenWipeAccountTransactionBody value) =>
      $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasTokenWipe() => $_has(30);
  @$pb.TagNumber(31)
  void clearTokenWipe() => $_clearField(31);
  @$pb.TagNumber(31)
  $28.TokenWipeAccountTransactionBody ensureTokenWipe() => $_ensure(30);

  /// *
  ///  Associate tokens to an account.
  @$pb.TagNumber(32)
  $29.TokenAssociateTransactionBody get tokenAssociate => $_getN(31);
  @$pb.TagNumber(32)
  set tokenAssociate($29.TokenAssociateTransactionBody value) =>
      $_setField(32, value);
  @$pb.TagNumber(32)
  $core.bool hasTokenAssociate() => $_has(31);
  @$pb.TagNumber(32)
  void clearTokenAssociate() => $_clearField(32);
  @$pb.TagNumber(32)
  $29.TokenAssociateTransactionBody ensureTokenAssociate() => $_ensure(31);

  /// *
  ///  Dissociate tokens from an account.
  @$pb.TagNumber(33)
  $30.TokenDissociateTransactionBody get tokenDissociate => $_getN(32);
  @$pb.TagNumber(33)
  set tokenDissociate($30.TokenDissociateTransactionBody value) =>
      $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasTokenDissociate() => $_has(32);
  @$pb.TagNumber(33)
  void clearTokenDissociate() => $_clearField(33);
  @$pb.TagNumber(33)
  $30.TokenDissociateTransactionBody ensureTokenDissociate() => $_ensure(32);

  /// *
  ///  Delete a schedule.<br/>
  ///  The schedule will be marked as deleted.
  @$pb.TagNumber(34)
  $31.ScheduleDeleteTransactionBody get scheduleDelete => $_getN(33);
  @$pb.TagNumber(34)
  set scheduleDelete($31.ScheduleDeleteTransactionBody value) =>
      $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasScheduleDelete() => $_has(33);
  @$pb.TagNumber(34)
  void clearScheduleDelete() => $_clearField(34);
  @$pb.TagNumber(34)
  $31.ScheduleDeleteTransactionBody ensureScheduleDelete() => $_ensure(33);

  /// *
  ///  Pause a Token.<br/>
  ///  This transaction must be signed by the "pause key" for the token.
  @$pb.TagNumber(35)
  $32.TokenPauseTransactionBody get tokenPause => $_getN(34);
  @$pb.TagNumber(35)
  set tokenPause($32.TokenPauseTransactionBody value) => $_setField(35, value);
  @$pb.TagNumber(35)
  $core.bool hasTokenPause() => $_has(34);
  @$pb.TagNumber(35)
  void clearTokenPause() => $_clearField(35);
  @$pb.TagNumber(35)
  $32.TokenPauseTransactionBody ensureTokenPause() => $_ensure(34);

  /// *
  ///  Unpause a Token.<br/>
  ///  This transaction must be signed by the "pause key" for the token.
  @$pb.TagNumber(36)
  $33.TokenUnpauseTransactionBody get tokenUnpause => $_getN(35);
  @$pb.TagNumber(36)
  set tokenUnpause($33.TokenUnpauseTransactionBody value) =>
      $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasTokenUnpause() => $_has(35);
  @$pb.TagNumber(36)
  void clearTokenUnpause() => $_clearField(36);
  @$pb.TagNumber(36)
  $33.TokenUnpauseTransactionBody ensureTokenUnpause() => $_ensure(35);

  /// *
  ///  Add one or more approved allowances for spenders to transfer the
  ///  paying account's hbar or tokens.
  @$pb.TagNumber(37)
  $34.CryptoApproveAllowanceTransactionBody get cryptoApproveAllowance =>
      $_getN(36);
  @$pb.TagNumber(37)
  set cryptoApproveAllowance($34.CryptoApproveAllowanceTransactionBody value) =>
      $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasCryptoApproveAllowance() => $_has(36);
  @$pb.TagNumber(37)
  void clearCryptoApproveAllowance() => $_clearField(37);
  @$pb.TagNumber(37)
  $34.CryptoApproveAllowanceTransactionBody ensureCryptoApproveAllowance() =>
      $_ensure(36);

  /// *
  ///  Delete one or more approvals for spenders to transfer the
  ///  paying account's hbar or tokens.
  @$pb.TagNumber(38)
  $35.CryptoDeleteAllowanceTransactionBody get cryptoDeleteAllowance =>
      $_getN(37);
  @$pb.TagNumber(38)
  set cryptoDeleteAllowance($35.CryptoDeleteAllowanceTransactionBody value) =>
      $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasCryptoDeleteAllowance() => $_has(37);
  @$pb.TagNumber(38)
  void clearCryptoDeleteAllowance() => $_clearField(38);
  @$pb.TagNumber(38)
  $35.CryptoDeleteAllowanceTransactionBody ensureCryptoDeleteAllowance() =>
      $_ensure(37);

  /// *
  ///  Update the custom fee schedule for a token.<br/>
  ///  This transaction must be signed by the "fee schedule key"
  ///  for the token.
  @$pb.TagNumber(39)
  $36.TokenFeeScheduleUpdateTransactionBody get tokenFeeScheduleUpdate =>
      $_getN(38);
  @$pb.TagNumber(39)
  set tokenFeeScheduleUpdate($36.TokenFeeScheduleUpdateTransactionBody value) =>
      $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasTokenFeeScheduleUpdate() => $_has(38);
  @$pb.TagNumber(39)
  void clearTokenFeeScheduleUpdate() => $_clearField(39);
  @$pb.TagNumber(39)
  $36.TokenFeeScheduleUpdateTransactionBody ensureTokenFeeScheduleUpdate() =>
      $_ensure(38);

  /// *
  ///  Provide a deterministic pseudorandom number based on network state.
  @$pb.TagNumber(40)
  $37.UtilPrngTransactionBody get utilPrng => $_getN(39);
  @$pb.TagNumber(40)
  set utilPrng($37.UtilPrngTransactionBody value) => $_setField(40, value);
  @$pb.TagNumber(40)
  $core.bool hasUtilPrng() => $_has(39);
  @$pb.TagNumber(40)
  void clearUtilPrng() => $_clearField(40);
  @$pb.TagNumber(40)
  $37.UtilPrngTransactionBody ensureUtilPrng() => $_ensure(39);

  /// *
  ///  Update one or more non-fungible/unique tokens.<br/>
  ///  This will update metadata for one or more serial numbers within
  ///  a collection (token type).
  @$pb.TagNumber(41)
  $38.TokenUpdateNftsTransactionBody get tokenUpdateNfts => $_getN(40);
  @$pb.TagNumber(41)
  set tokenUpdateNfts($38.TokenUpdateNftsTransactionBody value) =>
      $_setField(41, value);
  @$pb.TagNumber(41)
  $core.bool hasTokenUpdateNfts() => $_has(40);
  @$pb.TagNumber(41)
  void clearTokenUpdateNfts() => $_clearField(41);
  @$pb.TagNumber(41)
  $38.TokenUpdateNftsTransactionBody ensureTokenUpdateNfts() => $_ensure(40);

  /// *
  ///  Create a new node in the network address book.<br/>
  ///  This is a privileged operation.
  @$pb.TagNumber(42)
  $39.NodeCreateTransactionBody get nodeCreate => $_getN(41);
  @$pb.TagNumber(42)
  set nodeCreate($39.NodeCreateTransactionBody value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasNodeCreate() => $_has(41);
  @$pb.TagNumber(42)
  void clearNodeCreate() => $_clearField(42);
  @$pb.TagNumber(42)
  $39.NodeCreateTransactionBody ensureNodeCreate() => $_ensure(41);

  /// *
  ///  Update a node in the network address book.<br/>
  ///  This is a privileged operation.
  @$pb.TagNumber(43)
  $40.NodeUpdateTransactionBody get nodeUpdate => $_getN(42);
  @$pb.TagNumber(43)
  set nodeUpdate($40.NodeUpdateTransactionBody value) => $_setField(43, value);
  @$pb.TagNumber(43)
  $core.bool hasNodeUpdate() => $_has(42);
  @$pb.TagNumber(43)
  void clearNodeUpdate() => $_clearField(43);
  @$pb.TagNumber(43)
  $40.NodeUpdateTransactionBody ensureNodeUpdate() => $_ensure(42);

  /// *
  ///  Delete a node from the network address book.<br/>
  ///  This will mark the node as deleted.<br/>
  ///  This is a privileged operation.
  @$pb.TagNumber(44)
  $41.NodeDeleteTransactionBody get nodeDelete => $_getN(43);
  @$pb.TagNumber(44)
  set nodeDelete($41.NodeDeleteTransactionBody value) => $_setField(44, value);
  @$pb.TagNumber(44)
  $core.bool hasNodeDelete() => $_has(43);
  @$pb.TagNumber(44)
  void clearNodeDelete() => $_clearField(44);
  @$pb.TagNumber(44)
  $41.NodeDeleteTransactionBody ensureNodeDelete() => $_ensure(43);

  /// *
  ///  "Reject" undesired tokens.<br/>
  ///  This transaction will transfer one or more tokens or token
  ///  balances held by the requesting account to the treasury
  ///  for each token type.
  ///  <p>
  ///  Each transfer MUST be one of the following:
  ///  <ul>
  ///    <li>A single non-fungible/unique token.</li>
  ///    <li>The full balance held for a fungible/common
  ///        token type.</li>
  ///  </ul>
  ///  When complete, the requesting account SHALL NOT hold the
  ///  rejected tokens.<br/>
  ///  Custom fees and royalties defined for the tokens rejected
  ///  SHALL NOT be charged for this transaction.
  @$pb.TagNumber(45)
  $42.TokenRejectTransactionBody get tokenReject => $_getN(44);
  @$pb.TagNumber(45)
  set tokenReject($42.TokenRejectTransactionBody value) =>
      $_setField(45, value);
  @$pb.TagNumber(45)
  $core.bool hasTokenReject() => $_has(44);
  @$pb.TagNumber(45)
  void clearTokenReject() => $_clearField(45);
  @$pb.TagNumber(45)
  $42.TokenRejectTransactionBody ensureTokenReject() => $_ensure(44);

  /// *
  ///  Cancel an "airdrop".<br/>
  ///  This transaction cancels a pending airdrop for one or more
  ///  recipients.
  ///  <p>
  ///  The airdrop(s) to cancel MUST be pending, and not claimed.<br/>
  @$pb.TagNumber(46)
  $43.TokenCancelAirdropTransactionBody get tokenCancelAirdrop => $_getN(45);
  @$pb.TagNumber(46)
  set tokenCancelAirdrop($43.TokenCancelAirdropTransactionBody value) =>
      $_setField(46, value);
  @$pb.TagNumber(46)
  $core.bool hasTokenCancelAirdrop() => $_has(45);
  @$pb.TagNumber(46)
  void clearTokenCancelAirdrop() => $_clearField(46);
  @$pb.TagNumber(46)
  $43.TokenCancelAirdropTransactionBody ensureTokenCancelAirdrop() =>
      $_ensure(45);

  /// *
  ///  Claim an "airdrop".
  ///  This transaction "claims" one or more pending "airdrops".
  ///  <p>
  ///  The airdrop(s) to claim MUST be pending, and not
  ///  already claimed.<br/>
  @$pb.TagNumber(47)
  $44.TokenClaimAirdropTransactionBody get tokenClaimAirdrop => $_getN(46);
  @$pb.TagNumber(47)
  set tokenClaimAirdrop($44.TokenClaimAirdropTransactionBody value) =>
      $_setField(47, value);
  @$pb.TagNumber(47)
  $core.bool hasTokenClaimAirdrop() => $_has(46);
  @$pb.TagNumber(47)
  void clearTokenClaimAirdrop() => $_clearField(47);
  @$pb.TagNumber(47)
  $44.TokenClaimAirdropTransactionBody ensureTokenClaimAirdrop() =>
      $_ensure(46);

  /// *
  ///  Send an "airdrop" of tokens to one or more recipients.
  ///  <p>
  ///  This transaction unilaterally "gifts" tokens by transferring them
  ///  from a "sender" account to the "recipient" account(s). If any
  ///  recipient is not already associated to the token to airdrop, or
  ///  has set a "reciever signature required" flag, then that recipient
  ///  is recorded as a "pending" airdrop which must be "claimed".  All
  ///  other recipients receive the "airdropped" tokens immediately.
  @$pb.TagNumber(48)
  $45.TokenAirdropTransactionBody get tokenAirdrop => $_getN(47);
  @$pb.TagNumber(48)
  set tokenAirdrop($45.TokenAirdropTransactionBody value) =>
      $_setField(48, value);
  @$pb.TagNumber(48)
  $core.bool hasTokenAirdrop() => $_has(47);
  @$pb.TagNumber(48)
  void clearTokenAirdrop() => $_clearField(48);
  @$pb.TagNumber(48)
  $45.TokenAirdropTransactionBody ensureTokenAirdrop() => $_ensure(47);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
