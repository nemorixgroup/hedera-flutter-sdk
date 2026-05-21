// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment
// This is a generated file - do not edit.
//
// Generated from transaction.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'auxiliary/hints/crs_publication.pb.dart' as $62;
import 'auxiliary/hints/hints_key_publication.pb.dart' as $57;
import 'auxiliary/hints/hints_partial_signature.pb.dart' as $58;
import 'auxiliary/hints/hints_preprocessing_vote.pb.dart' as $56;
import 'auxiliary/history/history_proof_key_publication.pb.dart' as $60;
import 'auxiliary/history/history_proof_signature.pb.dart' as $59;
import 'auxiliary/history/history_proof_vote.pb.dart' as $61;
import 'basic_types.pb.dart' as $0;
import 'consensus_create_topic.pb.dart' as $19;
import 'consensus_delete_topic.pb.dart' as $21;
import 'consensus_submit_message.pb.dart' as $22;
import 'consensus_update_topic.pb.dart' as $20;
import 'contract_call.pb.dart' as $2;
import 'contract_create.pb.dart' as $3;
import 'contract_delete.pb.dart' as $17;
import 'contract_update.pb.dart' as $4;
import 'crypto_add_live_hash.pb.dart' as $5;
import 'crypto_approve_allowance.pb.dart' as $42;
import 'crypto_create.pb.dart' as $6;
import 'crypto_delete.pb.dart' as $7;
import 'crypto_delete_allowance.pb.dart' as $43;
import 'crypto_delete_live_hash.pb.dart' as $8;
import 'crypto_transfer.pb.dart' as $9;
import 'crypto_update.pb.dart' as $10;
import 'custom_fees.pb.dart' as $63;
import 'duration.pb.dart' as $1;
import 'ethereum_transaction.pb.dart' as $44;
import 'event/state_signature_transaction.pb.dart' as $55;
import 'file_append.pb.dart' as $11;
import 'file_create.pb.dart' as $12;
import 'file_delete.pb.dart' as $13;
import 'file_update.pb.dart' as $14;
import 'freeze.pb.dart' as $18;
import 'node_create.pb.dart' as $48;
import 'node_delete.pb.dart' as $50;
import 'node_stake_update.pb.dart' as $45;
import 'node_update.pb.dart' as $49;
import 'schedule_create.pb.dart' as $36;
import 'schedule_delete.pb.dart' as $37;
import 'schedule_sign.pb.dart' as $38;
import 'system_delete.pb.dart' as $15;
import 'system_undelete.pb.dart' as $16;
import 'token_airdrop.pb.dart' as $52;
import 'token_associate.pb.dart' as $34;
import 'token_burn.pb.dart' as $32;
import 'token_cancel_airdrop.pb.dart' as $53;
import 'token_claim_airdrop.pb.dart' as $54;
import 'token_create.pb.dart' as $24;
import 'token_delete.pb.dart' as $29;
import 'token_dissociate.pb.dart' as $35;
import 'token_fee_schedule_update.pb.dart' as $39;
import 'token_freeze_account.pb.dart' as $25;
import 'token_grant_kyc.pb.dart' as $27;
import 'token_mint.pb.dart' as $31;
import 'token_pause.pb.dart' as $40;
import 'token_reject.pb.dart' as $51;
import 'token_revoke_kyc.pb.dart' as $28;
import 'token_unfreeze_account.pb.dart' as $26;
import 'token_unpause.pb.dart' as $41;
import 'token_update.pb.dart' as $30;
import 'token_update_nfts.pb.dart' as $47;
import 'token_wipe_account.pb.dart' as $33;
import 'unchecked_submit.pb.dart' as $23;
import 'util_prng.pb.dart' as $46;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A wrapper around signed transaction bytes.<br/>
///  This was originally a transaction with body, signatures, and/or bytes,
///  but is not only a wrapper around a byte array containing signed transction
///  bytes.
///
///  The `signedTransactionBytes` field is REQUIRED and MUST contain a valid,
///  serialized, `SignedTransaction` message.<br/>
///  All other fields are deprecated and MUST NOT be set.
///
///  #### Additional Notes
///  The four deprecated fields will be removed and reserved in a future release.
class Transaction extends $pb.GeneratedMessage {
  factory Transaction({
    @$core.Deprecated('This field is deprecated.') TransactionBody? body,
    @$core.Deprecated('This field is deprecated.') $0.SignatureList? sigs,
    @$core.Deprecated('This field is deprecated.') $0.SignatureMap? sigMap,
    @$core.Deprecated('This field is deprecated.')
    $core.List<$core.int>? bodyBytes,
    $core.List<$core.int>? signedTransactionBytes,
  }) {
    final result = create();
    if (body != null) result.body = body;
    if (sigs != null) result.sigs = sigs;
    if (sigMap != null) result.sigMap = sigMap;
    if (bodyBytes != null) result.bodyBytes = bodyBytes;
    if (signedTransactionBytes != null)
      result.signedTransactionBytes = signedTransactionBytes;
    return result;
  }

  Transaction._();

  factory Transaction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Transaction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Transaction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<TransactionBody>(1, _omitFieldNames ? '' : 'body',
        subBuilder: TransactionBody.create)
    ..aOM<$0.SignatureList>(2, _omitFieldNames ? '' : 'sigs',
        subBuilder: $0.SignatureList.create)
    ..aOM<$0.SignatureMap>(3, _omitFieldNames ? '' : 'sigMap',
        protoName: 'sigMap', subBuilder: $0.SignatureMap.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'bodyBytes', $pb.PbFieldType.OY,
        protoName: 'bodyBytes')
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'signedTransactionBytes', $pb.PbFieldType.OY,
        protoName: 'signedTransactionBytes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transaction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transaction copyWith(void Function(Transaction) updates) =>
      super.copyWith((message) => updates(message as Transaction))
          as Transaction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  @$core.override
  Transaction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction? _defaultInstance;

  /// *
  ///  Replaced with `signedTransactionBytes`.<br/>
  ///  The body of the transaction.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  TransactionBody get body => $_getN(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set body(TransactionBody value) => $_setField(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearBody() => $_clearField(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  TransactionBody ensureBody() => $_ensure(0);

  /// *
  ///  Replaced with `signedTransactionBytes`.<br/>
  ///  The signatures on the body.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $0.SignatureList get sigs => $_getN(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set sigs($0.SignatureList value) => $_setField(2, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasSigs() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearSigs() => $_clearField(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $0.SignatureList ensureSigs() => $_ensure(1);

  /// *
  ///  Replaced with `signedTransactionBytes`.<br/>
  ///  The signatures on the body with a newer format.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $0.SignatureMap get sigMap => $_getN(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set sigMap($0.SignatureMap value) => $_setField(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasSigMap() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearSigMap() => $_clearField(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $0.SignatureMap ensureSigMap() => $_ensure(2);

  /// *
  ///  Replaced with `signedTransactionBytes`.<br/>
  ///  TransactionBody serialized into bytes.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.List<$core.int> get bodyBytes => $_getN(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set bodyBytes($core.List<$core.int> value) => $_setBytes(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasBodyBytes() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearBodyBytes() => $_clearField(4);

  /// *
  ///  A valid, serialized, `SignedTransaction` message.
  ///  <p>
  ///  This field MUST be present.
  ///  This field MUST NOT exceed the current network transaction size limit
  ///  (currently 6144 bytes).
  @$pb.TagNumber(5)
  $core.List<$core.int> get signedTransactionBytes => $_getN(4);
  @$pb.TagNumber(5)
  set signedTransactionBytes($core.List<$core.int> value) =>
      $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSignedTransactionBytes() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignedTransactionBytes() => $_clearField(5);
}

enum TransactionBody_Data {
  contractCall,
  contractCreateInstance,
  contractUpdateInstance,
  cryptoAddLiveHash,
  cryptoCreateAccount,
  cryptoDelete,
  cryptoDeleteLiveHash,
  cryptoTransfer,
  cryptoUpdateAccount,
  fileAppend,
  fileCreate,
  fileDelete,
  fileUpdate,
  systemDelete,
  systemUndelete,
  contractDeleteInstance,
  freeze_23,
  consensusCreateTopic,
  consensusUpdateTopic,
  consensusDeleteTopic,
  consensusSubmitMessage,
  uncheckedSubmit,
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
  scheduleCreate,
  scheduleDelete,
  scheduleSign,
  tokenFeeScheduleUpdate,
  tokenPause,
  tokenUnpause,
  cryptoApproveAllowance,
  cryptoDeleteAllowance,
  ethereumTransaction,
  nodeStakeUpdate,
  utilPrng,
  tokenUpdateNfts,
  nodeCreate,
  nodeUpdate,
  nodeDelete,
  tokenReject,
  tokenAirdrop,
  tokenCancelAirdrop,
  tokenClaimAirdrop,
  stateSignatureTransaction,
  hintsPreprocessingVote,
  hintsKeyPublication,
  hintsPartialSignature,
  historyProofSignature,
  historyProofKeyPublication,
  historyProofVote,
  crsPublication,
  atomicBatch,
  notSet
}

/// *
///  A transaction body.
///
///  Every transaction is structured as a signed byte array. That byte array
///  is a serialized `TransactionBody`.  The transaction body contains the full
///  content of the transaction, while the `SignedTransaction` includes a
///  signature map for signatures authenticating that byte array, and that is
///  serialized and transmitted wrapped in a `Transaction` message.<br/>
///  The bulk of this message is a `oneof` block which offers the option for
///  any one of the transaction messages for the network.
///  This message also includes several additional fields to specify
///  various parameters required to process a transaction.
class TransactionBody extends $pb.GeneratedMessage {
  factory TransactionBody({
    $0.TransactionID? transactionID,
    $0.AccountID? nodeAccountID,
    $fixnum.Int64? transactionFee,
    $1.Duration? transactionValidDuration,
    @$core.Deprecated('This field is deprecated.') $core.bool? generateRecord,
    $core.String? memo,
    $2.ContractCallTransactionBody? contractCall,
    $3.ContractCreateTransactionBody? contractCreateInstance,
    $4.ContractUpdateTransactionBody? contractUpdateInstance,
    @$core.Deprecated('This field is deprecated.')
    $5.CryptoAddLiveHashTransactionBody? cryptoAddLiveHash,
    $6.CryptoCreateTransactionBody? cryptoCreateAccount,
    $7.CryptoDeleteTransactionBody? cryptoDelete,
    @$core.Deprecated('This field is deprecated.')
    $8.CryptoDeleteLiveHashTransactionBody? cryptoDeleteLiveHash,
    $9.CryptoTransferTransactionBody? cryptoTransfer,
    $10.CryptoUpdateTransactionBody? cryptoUpdateAccount,
    $11.FileAppendTransactionBody? fileAppend,
    $12.FileCreateTransactionBody? fileCreate,
    $13.FileDeleteTransactionBody? fileDelete,
    $14.FileUpdateTransactionBody? fileUpdate,
    $15.SystemDeleteTransactionBody? systemDelete,
    $16.SystemUndeleteTransactionBody? systemUndelete,
    $17.ContractDeleteTransactionBody? contractDeleteInstance,
    $18.FreezeTransactionBody? freeze_23,
    $19.ConsensusCreateTopicTransactionBody? consensusCreateTopic,
    $20.ConsensusUpdateTopicTransactionBody? consensusUpdateTopic,
    $21.ConsensusDeleteTopicTransactionBody? consensusDeleteTopic,
    $22.ConsensusSubmitMessageTransactionBody? consensusSubmitMessage,
    $23.UncheckedSubmitBody? uncheckedSubmit,
    $24.TokenCreateTransactionBody? tokenCreation,
    $25.TokenFreezeAccountTransactionBody? tokenFreeze,
    $26.TokenUnfreezeAccountTransactionBody? tokenUnfreeze,
    $27.TokenGrantKycTransactionBody? tokenGrantKyc,
    $28.TokenRevokeKycTransactionBody? tokenRevokeKyc,
    $29.TokenDeleteTransactionBody? tokenDeletion,
    $30.TokenUpdateTransactionBody? tokenUpdate,
    $31.TokenMintTransactionBody? tokenMint,
    $32.TokenBurnTransactionBody? tokenBurn,
    $33.TokenWipeAccountTransactionBody? tokenWipe,
    $34.TokenAssociateTransactionBody? tokenAssociate,
    $35.TokenDissociateTransactionBody? tokenDissociate,
    $36.ScheduleCreateTransactionBody? scheduleCreate,
    $37.ScheduleDeleteTransactionBody? scheduleDelete,
    $38.ScheduleSignTransactionBody? scheduleSign,
    $39.TokenFeeScheduleUpdateTransactionBody? tokenFeeScheduleUpdate,
    $40.TokenPauseTransactionBody? tokenPause,
    $41.TokenUnpauseTransactionBody? tokenUnpause,
    $42.CryptoApproveAllowanceTransactionBody? cryptoApproveAllowance,
    $43.CryptoDeleteAllowanceTransactionBody? cryptoDeleteAllowance,
    $44.EthereumTransactionBody? ethereumTransaction,
    $45.NodeStakeUpdateTransactionBody? nodeStakeUpdate,
    $46.UtilPrngTransactionBody? utilPrng,
    $47.TokenUpdateNftsTransactionBody? tokenUpdateNfts,
    $48.NodeCreateTransactionBody? nodeCreate,
    $49.NodeUpdateTransactionBody? nodeUpdate,
    $50.NodeDeleteTransactionBody? nodeDelete,
    $51.TokenRejectTransactionBody? tokenReject,
    $52.TokenAirdropTransactionBody? tokenAirdrop,
    $53.TokenCancelAirdropTransactionBody? tokenCancelAirdrop,
    $54.TokenClaimAirdropTransactionBody? tokenClaimAirdrop,
    $55.StateSignatureTransaction? stateSignatureTransaction,
    $56.HintsPreprocessingVoteTransactionBody? hintsPreprocessingVote,
    $57.HintsKeyPublicationTransactionBody? hintsKeyPublication,
    $58.HintsPartialSignatureTransactionBody? hintsPartialSignature,
    $59.HistoryProofSignatureTransactionBody? historyProofSignature,
    $60.HistoryProofKeyPublicationTransactionBody? historyProofKeyPublication,
    $61.HistoryProofVoteTransactionBody? historyProofVote,
    $62.CrsPublicationTransactionBody? crsPublication,
    $0.Key? batchKey,
    AtomicBatchTransactionBody? atomicBatch,
    $core.Iterable<$63.CustomFeeLimit>? maxCustomFees,
  }) {
    final result = create();
    if (transactionID != null) result.transactionID = transactionID;
    if (nodeAccountID != null) result.nodeAccountID = nodeAccountID;
    if (transactionFee != null) result.transactionFee = transactionFee;
    if (transactionValidDuration != null)
      result.transactionValidDuration = transactionValidDuration;
    if (generateRecord != null) result.generateRecord = generateRecord;
    if (memo != null) result.memo = memo;
    if (contractCall != null) result.contractCall = contractCall;
    if (contractCreateInstance != null)
      result.contractCreateInstance = contractCreateInstance;
    if (contractUpdateInstance != null)
      result.contractUpdateInstance = contractUpdateInstance;
    if (cryptoAddLiveHash != null) result.cryptoAddLiveHash = cryptoAddLiveHash;
    if (cryptoCreateAccount != null)
      result.cryptoCreateAccount = cryptoCreateAccount;
    if (cryptoDelete != null) result.cryptoDelete = cryptoDelete;
    if (cryptoDeleteLiveHash != null)
      result.cryptoDeleteLiveHash = cryptoDeleteLiveHash;
    if (cryptoTransfer != null) result.cryptoTransfer = cryptoTransfer;
    if (cryptoUpdateAccount != null)
      result.cryptoUpdateAccount = cryptoUpdateAccount;
    if (fileAppend != null) result.fileAppend = fileAppend;
    if (fileCreate != null) result.fileCreate = fileCreate;
    if (fileDelete != null) result.fileDelete = fileDelete;
    if (fileUpdate != null) result.fileUpdate = fileUpdate;
    if (systemDelete != null) result.systemDelete = systemDelete;
    if (systemUndelete != null) result.systemUndelete = systemUndelete;
    if (contractDeleteInstance != null)
      result.contractDeleteInstance = contractDeleteInstance;
    if (freeze_23 != null) result.freeze_23 = freeze_23;
    if (consensusCreateTopic != null)
      result.consensusCreateTopic = consensusCreateTopic;
    if (consensusUpdateTopic != null)
      result.consensusUpdateTopic = consensusUpdateTopic;
    if (consensusDeleteTopic != null)
      result.consensusDeleteTopic = consensusDeleteTopic;
    if (consensusSubmitMessage != null)
      result.consensusSubmitMessage = consensusSubmitMessage;
    if (uncheckedSubmit != null) result.uncheckedSubmit = uncheckedSubmit;
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
    if (scheduleCreate != null) result.scheduleCreate = scheduleCreate;
    if (scheduleDelete != null) result.scheduleDelete = scheduleDelete;
    if (scheduleSign != null) result.scheduleSign = scheduleSign;
    if (tokenFeeScheduleUpdate != null)
      result.tokenFeeScheduleUpdate = tokenFeeScheduleUpdate;
    if (tokenPause != null) result.tokenPause = tokenPause;
    if (tokenUnpause != null) result.tokenUnpause = tokenUnpause;
    if (cryptoApproveAllowance != null)
      result.cryptoApproveAllowance = cryptoApproveAllowance;
    if (cryptoDeleteAllowance != null)
      result.cryptoDeleteAllowance = cryptoDeleteAllowance;
    if (ethereumTransaction != null)
      result.ethereumTransaction = ethereumTransaction;
    if (nodeStakeUpdate != null) result.nodeStakeUpdate = nodeStakeUpdate;
    if (utilPrng != null) result.utilPrng = utilPrng;
    if (tokenUpdateNfts != null) result.tokenUpdateNfts = tokenUpdateNfts;
    if (nodeCreate != null) result.nodeCreate = nodeCreate;
    if (nodeUpdate != null) result.nodeUpdate = nodeUpdate;
    if (nodeDelete != null) result.nodeDelete = nodeDelete;
    if (tokenReject != null) result.tokenReject = tokenReject;
    if (tokenAirdrop != null) result.tokenAirdrop = tokenAirdrop;
    if (tokenCancelAirdrop != null)
      result.tokenCancelAirdrop = tokenCancelAirdrop;
    if (tokenClaimAirdrop != null) result.tokenClaimAirdrop = tokenClaimAirdrop;
    if (stateSignatureTransaction != null)
      result.stateSignatureTransaction = stateSignatureTransaction;
    if (hintsPreprocessingVote != null)
      result.hintsPreprocessingVote = hintsPreprocessingVote;
    if (hintsKeyPublication != null)
      result.hintsKeyPublication = hintsKeyPublication;
    if (hintsPartialSignature != null)
      result.hintsPartialSignature = hintsPartialSignature;
    if (historyProofSignature != null)
      result.historyProofSignature = historyProofSignature;
    if (historyProofKeyPublication != null)
      result.historyProofKeyPublication = historyProofKeyPublication;
    if (historyProofVote != null) result.historyProofVote = historyProofVote;
    if (crsPublication != null) result.crsPublication = crsPublication;
    if (batchKey != null) result.batchKey = batchKey;
    if (atomicBatch != null) result.atomicBatch = atomicBatch;
    if (maxCustomFees != null) result.maxCustomFees.addAll(maxCustomFees);
    return result;
  }

  TransactionBody._();

  factory TransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TransactionBody_Data>
      _TransactionBody_DataByTag = {
    7: TransactionBody_Data.contractCall,
    8: TransactionBody_Data.contractCreateInstance,
    9: TransactionBody_Data.contractUpdateInstance,
    10: TransactionBody_Data.cryptoAddLiveHash,
    11: TransactionBody_Data.cryptoCreateAccount,
    12: TransactionBody_Data.cryptoDelete,
    13: TransactionBody_Data.cryptoDeleteLiveHash,
    14: TransactionBody_Data.cryptoTransfer,
    15: TransactionBody_Data.cryptoUpdateAccount,
    16: TransactionBody_Data.fileAppend,
    17: TransactionBody_Data.fileCreate,
    18: TransactionBody_Data.fileDelete,
    19: TransactionBody_Data.fileUpdate,
    20: TransactionBody_Data.systemDelete,
    21: TransactionBody_Data.systemUndelete,
    22: TransactionBody_Data.contractDeleteInstance,
    23: TransactionBody_Data.freeze_23,
    24: TransactionBody_Data.consensusCreateTopic,
    25: TransactionBody_Data.consensusUpdateTopic,
    26: TransactionBody_Data.consensusDeleteTopic,
    27: TransactionBody_Data.consensusSubmitMessage,
    28: TransactionBody_Data.uncheckedSubmit,
    29: TransactionBody_Data.tokenCreation,
    31: TransactionBody_Data.tokenFreeze,
    32: TransactionBody_Data.tokenUnfreeze,
    33: TransactionBody_Data.tokenGrantKyc,
    34: TransactionBody_Data.tokenRevokeKyc,
    35: TransactionBody_Data.tokenDeletion,
    36: TransactionBody_Data.tokenUpdate,
    37: TransactionBody_Data.tokenMint,
    38: TransactionBody_Data.tokenBurn,
    39: TransactionBody_Data.tokenWipe,
    40: TransactionBody_Data.tokenAssociate,
    41: TransactionBody_Data.tokenDissociate,
    42: TransactionBody_Data.scheduleCreate,
    43: TransactionBody_Data.scheduleDelete,
    44: TransactionBody_Data.scheduleSign,
    45: TransactionBody_Data.tokenFeeScheduleUpdate,
    46: TransactionBody_Data.tokenPause,
    47: TransactionBody_Data.tokenUnpause,
    48: TransactionBody_Data.cryptoApproveAllowance,
    49: TransactionBody_Data.cryptoDeleteAllowance,
    50: TransactionBody_Data.ethereumTransaction,
    51: TransactionBody_Data.nodeStakeUpdate,
    52: TransactionBody_Data.utilPrng,
    53: TransactionBody_Data.tokenUpdateNfts,
    54: TransactionBody_Data.nodeCreate,
    55: TransactionBody_Data.nodeUpdate,
    56: TransactionBody_Data.nodeDelete,
    57: TransactionBody_Data.tokenReject,
    58: TransactionBody_Data.tokenAirdrop,
    59: TransactionBody_Data.tokenCancelAirdrop,
    60: TransactionBody_Data.tokenClaimAirdrop,
    65: TransactionBody_Data.stateSignatureTransaction,
    66: TransactionBody_Data.hintsPreprocessingVote,
    67: TransactionBody_Data.hintsKeyPublication,
    68: TransactionBody_Data.hintsPartialSignature,
    69: TransactionBody_Data.historyProofSignature,
    70: TransactionBody_Data.historyProofKeyPublication,
    71: TransactionBody_Data.historyProofVote,
    72: TransactionBody_Data.crsPublication,
    74: TransactionBody_Data.atomicBatch,
    0: TransactionBody_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..oo(0, [
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
      48,
      49,
      50,
      51,
      52,
      53,
      54,
      55,
      56,
      57,
      58,
      59,
      60,
      65,
      66,
      67,
      68,
      69,
      70,
      71,
      72,
      74
    ])
    ..aOM<$0.TransactionID>(1, _omitFieldNames ? '' : 'transactionID',
        protoName: 'transactionID', subBuilder: $0.TransactionID.create)
    ..aOM<$0.AccountID>(2, _omitFieldNames ? '' : 'nodeAccountID',
        protoName: 'nodeAccountID', subBuilder: $0.AccountID.create)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'transactionFee', $pb.PbFieldType.OU6,
        protoName: 'transactionFee', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.Duration>(4, _omitFieldNames ? '' : 'transactionValidDuration',
        protoName: 'transactionValidDuration', subBuilder: $1.Duration.create)
    ..aOB(5, _omitFieldNames ? '' : 'generateRecord',
        protoName: 'generateRecord')
    ..aOS(6, _omitFieldNames ? '' : 'memo')
    ..aOM<$2.ContractCallTransactionBody>(
        7, _omitFieldNames ? '' : 'contractCall',
        protoName: 'contractCall',
        subBuilder: $2.ContractCallTransactionBody.create)
    ..aOM<$3.ContractCreateTransactionBody>(
        8, _omitFieldNames ? '' : 'contractCreateInstance',
        protoName: 'contractCreateInstance',
        subBuilder: $3.ContractCreateTransactionBody.create)
    ..aOM<$4.ContractUpdateTransactionBody>(
        9, _omitFieldNames ? '' : 'contractUpdateInstance',
        protoName: 'contractUpdateInstance',
        subBuilder: $4.ContractUpdateTransactionBody.create)
    ..aOM<$5.CryptoAddLiveHashTransactionBody>(
        10, _omitFieldNames ? '' : 'cryptoAddLiveHash',
        protoName: 'cryptoAddLiveHash',
        subBuilder: $5.CryptoAddLiveHashTransactionBody.create)
    ..aOM<$6.CryptoCreateTransactionBody>(
        11, _omitFieldNames ? '' : 'cryptoCreateAccount',
        protoName: 'cryptoCreateAccount',
        subBuilder: $6.CryptoCreateTransactionBody.create)
    ..aOM<$7.CryptoDeleteTransactionBody>(
        12, _omitFieldNames ? '' : 'cryptoDelete',
        protoName: 'cryptoDelete',
        subBuilder: $7.CryptoDeleteTransactionBody.create)
    ..aOM<$8.CryptoDeleteLiveHashTransactionBody>(
        13, _omitFieldNames ? '' : 'cryptoDeleteLiveHash',
        protoName: 'cryptoDeleteLiveHash',
        subBuilder: $8.CryptoDeleteLiveHashTransactionBody.create)
    ..aOM<$9.CryptoTransferTransactionBody>(
        14, _omitFieldNames ? '' : 'cryptoTransfer',
        protoName: 'cryptoTransfer',
        subBuilder: $9.CryptoTransferTransactionBody.create)
    ..aOM<$10.CryptoUpdateTransactionBody>(
        15, _omitFieldNames ? '' : 'cryptoUpdateAccount',
        protoName: 'cryptoUpdateAccount',
        subBuilder: $10.CryptoUpdateTransactionBody.create)
    ..aOM<$11.FileAppendTransactionBody>(
        16, _omitFieldNames ? '' : 'fileAppend',
        protoName: 'fileAppend',
        subBuilder: $11.FileAppendTransactionBody.create)
    ..aOM<$12.FileCreateTransactionBody>(
        17, _omitFieldNames ? '' : 'fileCreate',
        protoName: 'fileCreate',
        subBuilder: $12.FileCreateTransactionBody.create)
    ..aOM<$13.FileDeleteTransactionBody>(
        18, _omitFieldNames ? '' : 'fileDelete',
        protoName: 'fileDelete',
        subBuilder: $13.FileDeleteTransactionBody.create)
    ..aOM<$14.FileUpdateTransactionBody>(
        19, _omitFieldNames ? '' : 'fileUpdate',
        protoName: 'fileUpdate',
        subBuilder: $14.FileUpdateTransactionBody.create)
    ..aOM<$15.SystemDeleteTransactionBody>(
        20, _omitFieldNames ? '' : 'systemDelete',
        protoName: 'systemDelete',
        subBuilder: $15.SystemDeleteTransactionBody.create)
    ..aOM<$16.SystemUndeleteTransactionBody>(
        21, _omitFieldNames ? '' : 'systemUndelete',
        protoName: 'systemUndelete',
        subBuilder: $16.SystemUndeleteTransactionBody.create)
    ..aOM<$17.ContractDeleteTransactionBody>(
        22, _omitFieldNames ? '' : 'contractDeleteInstance',
        protoName: 'contractDeleteInstance',
        subBuilder: $17.ContractDeleteTransactionBody.create)
    ..aOM<$18.FreezeTransactionBody>(23, _omitFieldNames ? '' : 'freeze',
        subBuilder: $18.FreezeTransactionBody.create)
    ..aOM<$19.ConsensusCreateTopicTransactionBody>(
        24, _omitFieldNames ? '' : 'consensusCreateTopic',
        protoName: 'consensusCreateTopic',
        subBuilder: $19.ConsensusCreateTopicTransactionBody.create)
    ..aOM<$20.ConsensusUpdateTopicTransactionBody>(
        25, _omitFieldNames ? '' : 'consensusUpdateTopic',
        protoName: 'consensusUpdateTopic',
        subBuilder: $20.ConsensusUpdateTopicTransactionBody.create)
    ..aOM<$21.ConsensusDeleteTopicTransactionBody>(
        26, _omitFieldNames ? '' : 'consensusDeleteTopic',
        protoName: 'consensusDeleteTopic',
        subBuilder: $21.ConsensusDeleteTopicTransactionBody.create)
    ..aOM<$22.ConsensusSubmitMessageTransactionBody>(
        27, _omitFieldNames ? '' : 'consensusSubmitMessage',
        protoName: 'consensusSubmitMessage',
        subBuilder: $22.ConsensusSubmitMessageTransactionBody.create)
    ..aOM<$23.UncheckedSubmitBody>(28, _omitFieldNames ? '' : 'uncheckedSubmit',
        protoName: 'uncheckedSubmit',
        subBuilder: $23.UncheckedSubmitBody.create)
    ..aOM<$24.TokenCreateTransactionBody>(
        29, _omitFieldNames ? '' : 'tokenCreation',
        protoName: 'tokenCreation',
        subBuilder: $24.TokenCreateTransactionBody.create)
    ..aOM<$25.TokenFreezeAccountTransactionBody>(
        31, _omitFieldNames ? '' : 'tokenFreeze',
        protoName: 'tokenFreeze',
        subBuilder: $25.TokenFreezeAccountTransactionBody.create)
    ..aOM<$26.TokenUnfreezeAccountTransactionBody>(
        32, _omitFieldNames ? '' : 'tokenUnfreeze',
        protoName: 'tokenUnfreeze',
        subBuilder: $26.TokenUnfreezeAccountTransactionBody.create)
    ..aOM<$27.TokenGrantKycTransactionBody>(
        33, _omitFieldNames ? '' : 'tokenGrantKyc',
        protoName: 'tokenGrantKyc',
        subBuilder: $27.TokenGrantKycTransactionBody.create)
    ..aOM<$28.TokenRevokeKycTransactionBody>(
        34, _omitFieldNames ? '' : 'tokenRevokeKyc',
        protoName: 'tokenRevokeKyc',
        subBuilder: $28.TokenRevokeKycTransactionBody.create)
    ..aOM<$29.TokenDeleteTransactionBody>(
        35, _omitFieldNames ? '' : 'tokenDeletion',
        protoName: 'tokenDeletion',
        subBuilder: $29.TokenDeleteTransactionBody.create)
    ..aOM<$30.TokenUpdateTransactionBody>(
        36, _omitFieldNames ? '' : 'tokenUpdate',
        protoName: 'tokenUpdate',
        subBuilder: $30.TokenUpdateTransactionBody.create)
    ..aOM<$31.TokenMintTransactionBody>(37, _omitFieldNames ? '' : 'tokenMint',
        protoName: 'tokenMint', subBuilder: $31.TokenMintTransactionBody.create)
    ..aOM<$32.TokenBurnTransactionBody>(38, _omitFieldNames ? '' : 'tokenBurn',
        protoName: 'tokenBurn', subBuilder: $32.TokenBurnTransactionBody.create)
    ..aOM<$33.TokenWipeAccountTransactionBody>(
        39, _omitFieldNames ? '' : 'tokenWipe',
        protoName: 'tokenWipe',
        subBuilder: $33.TokenWipeAccountTransactionBody.create)
    ..aOM<$34.TokenAssociateTransactionBody>(
        40, _omitFieldNames ? '' : 'tokenAssociate',
        protoName: 'tokenAssociate',
        subBuilder: $34.TokenAssociateTransactionBody.create)
    ..aOM<$35.TokenDissociateTransactionBody>(
        41, _omitFieldNames ? '' : 'tokenDissociate',
        protoName: 'tokenDissociate',
        subBuilder: $35.TokenDissociateTransactionBody.create)
    ..aOM<$36.ScheduleCreateTransactionBody>(
        42, _omitFieldNames ? '' : 'scheduleCreate',
        protoName: 'scheduleCreate',
        subBuilder: $36.ScheduleCreateTransactionBody.create)
    ..aOM<$37.ScheduleDeleteTransactionBody>(
        43, _omitFieldNames ? '' : 'scheduleDelete',
        protoName: 'scheduleDelete',
        subBuilder: $37.ScheduleDeleteTransactionBody.create)
    ..aOM<$38.ScheduleSignTransactionBody>(
        44, _omitFieldNames ? '' : 'scheduleSign',
        protoName: 'scheduleSign',
        subBuilder: $38.ScheduleSignTransactionBody.create)
    ..aOM<$39.TokenFeeScheduleUpdateTransactionBody>(
        45, _omitFieldNames ? '' : 'tokenFeeScheduleUpdate',
        subBuilder: $39.TokenFeeScheduleUpdateTransactionBody.create)
    ..aOM<$40.TokenPauseTransactionBody>(
        46, _omitFieldNames ? '' : 'tokenPause',
        subBuilder: $40.TokenPauseTransactionBody.create)
    ..aOM<$41.TokenUnpauseTransactionBody>(
        47, _omitFieldNames ? '' : 'tokenUnpause',
        subBuilder: $41.TokenUnpauseTransactionBody.create)
    ..aOM<$42.CryptoApproveAllowanceTransactionBody>(
        48, _omitFieldNames ? '' : 'cryptoApproveAllowance',
        protoName: 'cryptoApproveAllowance',
        subBuilder: $42.CryptoApproveAllowanceTransactionBody.create)
    ..aOM<$43.CryptoDeleteAllowanceTransactionBody>(
        49, _omitFieldNames ? '' : 'cryptoDeleteAllowance',
        protoName: 'cryptoDeleteAllowance',
        subBuilder: $43.CryptoDeleteAllowanceTransactionBody.create)
    ..aOM<$44.EthereumTransactionBody>(
        50, _omitFieldNames ? '' : 'ethereumTransaction',
        protoName: 'ethereumTransaction',
        subBuilder: $44.EthereumTransactionBody.create)
    ..aOM<$45.NodeStakeUpdateTransactionBody>(
        51, _omitFieldNames ? '' : 'nodeStakeUpdate',
        subBuilder: $45.NodeStakeUpdateTransactionBody.create)
    ..aOM<$46.UtilPrngTransactionBody>(52, _omitFieldNames ? '' : 'utilPrng',
        subBuilder: $46.UtilPrngTransactionBody.create)
    ..aOM<$47.TokenUpdateNftsTransactionBody>(
        53, _omitFieldNames ? '' : 'tokenUpdateNfts',
        subBuilder: $47.TokenUpdateNftsTransactionBody.create)
    ..aOM<$48.NodeCreateTransactionBody>(
        54, _omitFieldNames ? '' : 'nodeCreate',
        protoName: 'nodeCreate',
        subBuilder: $48.NodeCreateTransactionBody.create)
    ..aOM<$49.NodeUpdateTransactionBody>(
        55, _omitFieldNames ? '' : 'nodeUpdate',
        protoName: 'nodeUpdate',
        subBuilder: $49.NodeUpdateTransactionBody.create)
    ..aOM<$50.NodeDeleteTransactionBody>(
        56, _omitFieldNames ? '' : 'nodeDelete',
        protoName: 'nodeDelete',
        subBuilder: $50.NodeDeleteTransactionBody.create)
    ..aOM<$51.TokenRejectTransactionBody>(
        57, _omitFieldNames ? '' : 'tokenReject',
        protoName: 'tokenReject',
        subBuilder: $51.TokenRejectTransactionBody.create)
    ..aOM<$52.TokenAirdropTransactionBody>(
        58, _omitFieldNames ? '' : 'tokenAirdrop',
        protoName: 'tokenAirdrop',
        subBuilder: $52.TokenAirdropTransactionBody.create)
    ..aOM<$53.TokenCancelAirdropTransactionBody>(
        59, _omitFieldNames ? '' : 'tokenCancelAirdrop',
        protoName: 'tokenCancelAirdrop',
        subBuilder: $53.TokenCancelAirdropTransactionBody.create)
    ..aOM<$54.TokenClaimAirdropTransactionBody>(
        60, _omitFieldNames ? '' : 'tokenClaimAirdrop',
        protoName: 'tokenClaimAirdrop',
        subBuilder: $54.TokenClaimAirdropTransactionBody.create)
    ..aOM<$55.StateSignatureTransaction>(
        65, _omitFieldNames ? '' : 'stateSignatureTransaction',
        subBuilder: $55.StateSignatureTransaction.create)
    ..aOM<$56.HintsPreprocessingVoteTransactionBody>(
        66, _omitFieldNames ? '' : 'hintsPreprocessingVote',
        subBuilder: $56.HintsPreprocessingVoteTransactionBody.create)
    ..aOM<$57.HintsKeyPublicationTransactionBody>(
        67, _omitFieldNames ? '' : 'hintsKeyPublication',
        subBuilder: $57.HintsKeyPublicationTransactionBody.create)
    ..aOM<$58.HintsPartialSignatureTransactionBody>(
        68, _omitFieldNames ? '' : 'hintsPartialSignature',
        subBuilder: $58.HintsPartialSignatureTransactionBody.create)
    ..aOM<$59.HistoryProofSignatureTransactionBody>(
        69, _omitFieldNames ? '' : 'historyProofSignature',
        subBuilder: $59.HistoryProofSignatureTransactionBody.create)
    ..aOM<$60.HistoryProofKeyPublicationTransactionBody>(
        70, _omitFieldNames ? '' : 'historyProofKeyPublication',
        subBuilder: $60.HistoryProofKeyPublicationTransactionBody.create)
    ..aOM<$61.HistoryProofVoteTransactionBody>(
        71, _omitFieldNames ? '' : 'historyProofVote',
        subBuilder: $61.HistoryProofVoteTransactionBody.create)
    ..aOM<$62.CrsPublicationTransactionBody>(
        72, _omitFieldNames ? '' : 'crsPublication',
        subBuilder: $62.CrsPublicationTransactionBody.create)
    ..aOM<$0.Key>(73, _omitFieldNames ? '' : 'batchKey',
        subBuilder: $0.Key.create)
    ..aOM<AtomicBatchTransactionBody>(74, _omitFieldNames ? '' : 'atomicBatch',
        subBuilder: AtomicBatchTransactionBody.create)
    ..pPM<$63.CustomFeeLimit>(1001, _omitFieldNames ? '' : 'maxCustomFees',
        subBuilder: $63.CustomFeeLimit.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionBody copyWith(void Function(TransactionBody) updates) =>
      super.copyWith((message) => updates(message as TransactionBody))
          as TransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionBody create() => TransactionBody._();
  @$core.override
  TransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionBody>(create);
  static TransactionBody? _defaultInstance;

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
  @$pb.TagNumber(49)
  @$pb.TagNumber(50)
  @$pb.TagNumber(51)
  @$pb.TagNumber(52)
  @$pb.TagNumber(53)
  @$pb.TagNumber(54)
  @$pb.TagNumber(55)
  @$pb.TagNumber(56)
  @$pb.TagNumber(57)
  @$pb.TagNumber(58)
  @$pb.TagNumber(59)
  @$pb.TagNumber(60)
  @$pb.TagNumber(65)
  @$pb.TagNumber(66)
  @$pb.TagNumber(67)
  @$pb.TagNumber(68)
  @$pb.TagNumber(69)
  @$pb.TagNumber(70)
  @$pb.TagNumber(71)
  @$pb.TagNumber(72)
  @$pb.TagNumber(74)
  TransactionBody_Data whichData() =>
      _TransactionBody_DataByTag[$_whichOneof(0)]!;
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
  @$pb.TagNumber(49)
  @$pb.TagNumber(50)
  @$pb.TagNumber(51)
  @$pb.TagNumber(52)
  @$pb.TagNumber(53)
  @$pb.TagNumber(54)
  @$pb.TagNumber(55)
  @$pb.TagNumber(56)
  @$pb.TagNumber(57)
  @$pb.TagNumber(58)
  @$pb.TagNumber(59)
  @$pb.TagNumber(60)
  @$pb.TagNumber(65)
  @$pb.TagNumber(66)
  @$pb.TagNumber(67)
  @$pb.TagNumber(68)
  @$pb.TagNumber(69)
  @$pb.TagNumber(70)
  @$pb.TagNumber(71)
  @$pb.TagNumber(72)
  @$pb.TagNumber(74)
  void clearData() => $_clearField($_whichOneof(0));

  /// *
  ///  A transaction identifier.<br/>
  ///  Each transaction is uniquely identified by its transaction
  ///  identifier.
  ///  <p>
  ///  Each transaction identifier MUST be unique.<br/>
  ///  Multiple transactions MAY be submitted with the same transaction
  ///  identifier, but all except the first SHALL be rejected as duplicate
  ///  transactions.<br/>
  ///  This identifier MUST specify a `payer` account to be charged
  ///  all fees associated with the transaction.<br/>
  ///  This identifier MUST specify a "valid start time".<br/>
  ///  The "valid start time" MUST be strictly _earlier_ than the current
  ///  network consensus time.<br/>
  ///  The "valid start time" MUST NOT be more than the current network
  ///  configuration value for `transaction.maxValidDuration` seconds
  ///  before the current network consensus time.<br/>
  ///  This identifier MUST NOT set the `scheduled` flag.<br/>
  ///  This identifier MUST NOT set a nonce value.
  @$pb.TagNumber(1)
  $0.TransactionID get transactionID => $_getN(0);
  @$pb.TagNumber(1)
  set transactionID($0.TransactionID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTransactionID() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionID() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.TransactionID ensureTransactionID() => $_ensure(0);

  /// *
  ///  A node account identifier.
  ///  <p>
  ///  This MUST identify the account of the consensus node to which
  ///  this transaction is submitted.
  @$pb.TagNumber(2)
  $0.AccountID get nodeAccountID => $_getN(1);
  @$pb.TagNumber(2)
  set nodeAccountID($0.AccountID value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNodeAccountID() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeAccountID() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AccountID ensureNodeAccountID() => $_ensure(1);

  /// *
  ///  A maximum transaction fee, in tinybar.
  ///  <p>
  ///  The network SHALL NOT charge a transaction fee that exceeds this
  ///  amount.<br/>
  ///  The network MAY charge up to this amount, and reject the transaction,
  ///  if the amount offered is insufficient to cover the required fees.<br/>
  ///  The network MAY charge a minimum fee equal to 80% of the amount offered
  ///  if the amount offered is much larger than the required fees.
  @$pb.TagNumber(3)
  $fixnum.Int64 get transactionFee => $_getI64(2);
  @$pb.TagNumber(3)
  set transactionFee($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTransactionFee() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransactionFee() => $_clearField(3);

  /// *
  ///  A maximum duration in which to execute this transaction.
  ///  <p>
  ///  This transaction SHALL be rejected as expired if the valid start time,
  ///  extended by this duration, is less than the current network consensus
  ///  time when the transaction is submitted.<br/>
  ///  This transaction SHALL be rejected with an invalid duration if this
  ///  value is greater than the current network configuration value for
  ///  `transaction.maxValidDuration`.
  @$pb.TagNumber(4)
  $1.Duration get transactionValidDuration => $_getN(3);
  @$pb.TagNumber(4)
  set transactionValidDuration($1.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTransactionValidDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransactionValidDuration() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Duration ensureTransactionValidDuration() => $_ensure(3);

  /// *
  ///  Records are always generated.<br/>
  ///  Obsolete option to not generate a record.
  ///  <p>
  ///  This flag SHALL be ignored. Every transaction SHALL generate a record,
  ///  or block stream equivalent.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool get generateRecord => $_getBF(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set generateRecord($core.bool value) => $_setBool(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasGenerateRecord() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearGenerateRecord() => $_clearField(5);

  /// *
  ///  A short description for this transaction.
  ///  <p>
  ///  This value, if set, MUST NOT exceed `transaction.maxMemoUtf8Bytes`
  ///  (default 100) bytes when encoded as UTF-8.
  @$pb.TagNumber(6)
  $core.String get memo => $_getSZ(5);
  @$pb.TagNumber(6)
  set memo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMemo() => $_has(5);
  @$pb.TagNumber(6)
  void clearMemo() => $_clearField(6);

  /// *
  ///  Call a function defined on a smart contract.
  @$pb.TagNumber(7)
  $2.ContractCallTransactionBody get contractCall => $_getN(6);
  @$pb.TagNumber(7)
  set contractCall($2.ContractCallTransactionBody value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasContractCall() => $_has(6);
  @$pb.TagNumber(7)
  void clearContractCall() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.ContractCallTransactionBody ensureContractCall() => $_ensure(6);

  /// *
  ///  Create a smart contract.
  @$pb.TagNumber(8)
  $3.ContractCreateTransactionBody get contractCreateInstance => $_getN(7);
  @$pb.TagNumber(8)
  set contractCreateInstance($3.ContractCreateTransactionBody value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasContractCreateInstance() => $_has(7);
  @$pb.TagNumber(8)
  void clearContractCreateInstance() => $_clearField(8);
  @$pb.TagNumber(8)
  $3.ContractCreateTransactionBody ensureContractCreateInstance() =>
      $_ensure(7);

  /// *
  ///  Update a smart contract.
  @$pb.TagNumber(9)
  $4.ContractUpdateTransactionBody get contractUpdateInstance => $_getN(8);
  @$pb.TagNumber(9)
  set contractUpdateInstance($4.ContractUpdateTransactionBody value) =>
      $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasContractUpdateInstance() => $_has(8);
  @$pb.TagNumber(9)
  void clearContractUpdateInstance() => $_clearField(9);
  @$pb.TagNumber(9)
  $4.ContractUpdateTransactionBody ensureContractUpdateInstance() =>
      $_ensure(8);

  /// *
  ///  An obsolete, and unsupported, operation to add a "live hash" to
  ///  an account.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $5.CryptoAddLiveHashTransactionBody get cryptoAddLiveHash => $_getN(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set cryptoAddLiveHash($5.CryptoAddLiveHashTransactionBody value) =>
      $_setField(10, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasCryptoAddLiveHash() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearCryptoAddLiveHash() => $_clearField(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $5.CryptoAddLiveHashTransactionBody ensureCryptoAddLiveHash() => $_ensure(9);

  /// *
  ///  Create a new Hedera account.
  @$pb.TagNumber(11)
  $6.CryptoCreateTransactionBody get cryptoCreateAccount => $_getN(10);
  @$pb.TagNumber(11)
  set cryptoCreateAccount($6.CryptoCreateTransactionBody value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasCryptoCreateAccount() => $_has(10);
  @$pb.TagNumber(11)
  void clearCryptoCreateAccount() => $_clearField(11);
  @$pb.TagNumber(11)
  $6.CryptoCreateTransactionBody ensureCryptoCreateAccount() => $_ensure(10);

  /// *
  ///  Delete an Hedera account.<br/>
  ///  This will mark the account as deleted, and transfer all remaining
  ///  HBAR to a receiver account.
  @$pb.TagNumber(12)
  $7.CryptoDeleteTransactionBody get cryptoDelete => $_getN(11);
  @$pb.TagNumber(12)
  set cryptoDelete($7.CryptoDeleteTransactionBody value) =>
      $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasCryptoDelete() => $_has(11);
  @$pb.TagNumber(12)
  void clearCryptoDelete() => $_clearField(12);
  @$pb.TagNumber(12)
  $7.CryptoDeleteTransactionBody ensureCryptoDelete() => $_ensure(11);

  /// *
  ///  An obsolete, and unsupported, operation to remove a "live hash" from
  ///  an account.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $8.CryptoDeleteLiveHashTransactionBody get cryptoDeleteLiveHash => $_getN(12);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  set cryptoDeleteLiveHash($8.CryptoDeleteLiveHashTransactionBody value) =>
      $_setField(13, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $core.bool hasCryptoDeleteLiveHash() => $_has(12);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  void clearCryptoDeleteLiveHash() => $_clearField(13);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $8.CryptoDeleteLiveHashTransactionBody ensureCryptoDeleteLiveHash() =>
      $_ensure(12);

  /// *
  ///  Transfer HBAR between accounts.
  @$pb.TagNumber(14)
  $9.CryptoTransferTransactionBody get cryptoTransfer => $_getN(13);
  @$pb.TagNumber(14)
  set cryptoTransfer($9.CryptoTransferTransactionBody value) =>
      $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasCryptoTransfer() => $_has(13);
  @$pb.TagNumber(14)
  void clearCryptoTransfer() => $_clearField(14);
  @$pb.TagNumber(14)
  $9.CryptoTransferTransactionBody ensureCryptoTransfer() => $_ensure(13);

  /// *
  ///  Modify an Hedera account.
  @$pb.TagNumber(15)
  $10.CryptoUpdateTransactionBody get cryptoUpdateAccount => $_getN(14);
  @$pb.TagNumber(15)
  set cryptoUpdateAccount($10.CryptoUpdateTransactionBody value) =>
      $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasCryptoUpdateAccount() => $_has(14);
  @$pb.TagNumber(15)
  void clearCryptoUpdateAccount() => $_clearField(15);
  @$pb.TagNumber(15)
  $10.CryptoUpdateTransactionBody ensureCryptoUpdateAccount() => $_ensure(14);

  /// *
  ///  Append data to the end of a file.
  @$pb.TagNumber(16)
  $11.FileAppendTransactionBody get fileAppend => $_getN(15);
  @$pb.TagNumber(16)
  set fileAppend($11.FileAppendTransactionBody value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasFileAppend() => $_has(15);
  @$pb.TagNumber(16)
  void clearFileAppend() => $_clearField(16);
  @$pb.TagNumber(16)
  $11.FileAppendTransactionBody ensureFileAppend() => $_ensure(15);

  /// *
  ///  Create a new file.
  @$pb.TagNumber(17)
  $12.FileCreateTransactionBody get fileCreate => $_getN(16);
  @$pb.TagNumber(17)
  set fileCreate($12.FileCreateTransactionBody value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasFileCreate() => $_has(16);
  @$pb.TagNumber(17)
  void clearFileCreate() => $_clearField(17);
  @$pb.TagNumber(17)
  $12.FileCreateTransactionBody ensureFileCreate() => $_ensure(16);

  /// *
  ///  Delete a file.<br/>
  ///  This will remove the content of the file, and mark the file as
  ///  deleted.
  @$pb.TagNumber(18)
  $13.FileDeleteTransactionBody get fileDelete => $_getN(17);
  @$pb.TagNumber(18)
  set fileDelete($13.FileDeleteTransactionBody value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasFileDelete() => $_has(17);
  @$pb.TagNumber(18)
  void clearFileDelete() => $_clearField(18);
  @$pb.TagNumber(18)
  $13.FileDeleteTransactionBody ensureFileDelete() => $_ensure(17);

  /// *
  ///  Modify a file.<br/>
  ///  This may modify any metadata, and/or _replace_ the content.
  @$pb.TagNumber(19)
  $14.FileUpdateTransactionBody get fileUpdate => $_getN(18);
  @$pb.TagNumber(19)
  set fileUpdate($14.FileUpdateTransactionBody value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasFileUpdate() => $_has(18);
  @$pb.TagNumber(19)
  void clearFileUpdate() => $_clearField(19);
  @$pb.TagNumber(19)
  $14.FileUpdateTransactionBody ensureFileUpdate() => $_ensure(18);

  /// *
  ///  Delete a file as an Hedera administrative function.<br/>
  ///  This is a privileged operation.
  @$pb.TagNumber(20)
  $15.SystemDeleteTransactionBody get systemDelete => $_getN(19);
  @$pb.TagNumber(20)
  set systemDelete($15.SystemDeleteTransactionBody value) =>
      $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasSystemDelete() => $_has(19);
  @$pb.TagNumber(20)
  void clearSystemDelete() => $_clearField(20);
  @$pb.TagNumber(20)
  $15.SystemDeleteTransactionBody ensureSystemDelete() => $_ensure(19);

  /// *
  ///  Restore a file deleted via `systemDelete`.<br/>
  ///  This is a privileged operation.
  @$pb.TagNumber(21)
  $16.SystemUndeleteTransactionBody get systemUndelete => $_getN(20);
  @$pb.TagNumber(21)
  set systemUndelete($16.SystemUndeleteTransactionBody value) =>
      $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasSystemUndelete() => $_has(20);
  @$pb.TagNumber(21)
  void clearSystemUndelete() => $_clearField(21);
  @$pb.TagNumber(21)
  $16.SystemUndeleteTransactionBody ensureSystemUndelete() => $_ensure(20);

  /// *
  ///  Delete a smart contract and transfer remaining balance
  ///  to a specified account.
  @$pb.TagNumber(22)
  $17.ContractDeleteTransactionBody get contractDeleteInstance => $_getN(21);
  @$pb.TagNumber(22)
  set contractDeleteInstance($17.ContractDeleteTransactionBody value) =>
      $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasContractDeleteInstance() => $_has(21);
  @$pb.TagNumber(22)
  void clearContractDeleteInstance() => $_clearField(22);
  @$pb.TagNumber(22)
  $17.ContractDeleteTransactionBody ensureContractDeleteInstance() =>
      $_ensure(21);

  /// *
  ///  Freeze the network.<br/>
  ///  This is actually several possible operations, and the caller
  ///  should examine the "freeze service" for more detail.<br/>
  ///  This is a privileged operation.
  @$pb.TagNumber(23)
  $18.FreezeTransactionBody get freeze_23 => $_getN(22);
  @$pb.TagNumber(23)
  set freeze_23($18.FreezeTransactionBody value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasFreeze_23() => $_has(22);
  @$pb.TagNumber(23)
  void clearFreeze_23() => $_clearField(23);
  @$pb.TagNumber(23)
  $18.FreezeTransactionBody ensureFreeze_23() => $_ensure(22);

  /// *
  ///  Create a topic.
  @$pb.TagNumber(24)
  $19.ConsensusCreateTopicTransactionBody get consensusCreateTopic =>
      $_getN(23);
  @$pb.TagNumber(24)
  set consensusCreateTopic($19.ConsensusCreateTopicTransactionBody value) =>
      $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasConsensusCreateTopic() => $_has(23);
  @$pb.TagNumber(24)
  void clearConsensusCreateTopic() => $_clearField(24);
  @$pb.TagNumber(24)
  $19.ConsensusCreateTopicTransactionBody ensureConsensusCreateTopic() =>
      $_ensure(23);

  /// *
  ///  Update a topic.
  @$pb.TagNumber(25)
  $20.ConsensusUpdateTopicTransactionBody get consensusUpdateTopic =>
      $_getN(24);
  @$pb.TagNumber(25)
  set consensusUpdateTopic($20.ConsensusUpdateTopicTransactionBody value) =>
      $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasConsensusUpdateTopic() => $_has(24);
  @$pb.TagNumber(25)
  void clearConsensusUpdateTopic() => $_clearField(25);
  @$pb.TagNumber(25)
  $20.ConsensusUpdateTopicTransactionBody ensureConsensusUpdateTopic() =>
      $_ensure(24);

  /// *
  ///  Delete a topic.
  @$pb.TagNumber(26)
  $21.ConsensusDeleteTopicTransactionBody get consensusDeleteTopic =>
      $_getN(25);
  @$pb.TagNumber(26)
  set consensusDeleteTopic($21.ConsensusDeleteTopicTransactionBody value) =>
      $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasConsensusDeleteTopic() => $_has(25);
  @$pb.TagNumber(26)
  void clearConsensusDeleteTopic() => $_clearField(26);
  @$pb.TagNumber(26)
  $21.ConsensusDeleteTopicTransactionBody ensureConsensusDeleteTopic() =>
      $_ensure(25);

  /// *
  ///  Submit a message to a topic.<br/>
  ///  A message may be "chunked", and submitted in parts, if the total
  ///  message size exceeds the limit for a single transaction.
  @$pb.TagNumber(27)
  $22.ConsensusSubmitMessageTransactionBody get consensusSubmitMessage =>
      $_getN(26);
  @$pb.TagNumber(27)
  set consensusSubmitMessage($22.ConsensusSubmitMessageTransactionBody value) =>
      $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasConsensusSubmitMessage() => $_has(26);
  @$pb.TagNumber(27)
  void clearConsensusSubmitMessage() => $_clearField(27);
  @$pb.TagNumber(27)
  $22.ConsensusSubmitMessageTransactionBody ensureConsensusSubmitMessage() =>
      $_ensure(26);

  /// *
  ///  Unsupported system transaction.
  ///  <p>
  ///  This transaction MAY be implemented in testing networks, but
  ///  SHALL NOT be enabled or supported in production environments.<br/>
  ///  Clients MUST NOT call this method, and any such transaction SHALL
  ///  be rejected.<br/>
  ///  A network MAY choose to charge punitive fees for attempting to
  ///  execute an `uncheckedSubmit`.
  @$pb.TagNumber(28)
  $23.UncheckedSubmitBody get uncheckedSubmit => $_getN(27);
  @$pb.TagNumber(28)
  set uncheckedSubmit($23.UncheckedSubmitBody value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasUncheckedSubmit() => $_has(27);
  @$pb.TagNumber(28)
  void clearUncheckedSubmit() => $_clearField(28);
  @$pb.TagNumber(28)
  $23.UncheckedSubmitBody ensureUncheckedSubmit() => $_ensure(27);

  /// *
  ///  Create a new Hedera token.
  @$pb.TagNumber(29)
  $24.TokenCreateTransactionBody get tokenCreation => $_getN(28);
  @$pb.TagNumber(29)
  set tokenCreation($24.TokenCreateTransactionBody value) =>
      $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasTokenCreation() => $_has(28);
  @$pb.TagNumber(29)
  void clearTokenCreation() => $_clearField(29);
  @$pb.TagNumber(29)
  $24.TokenCreateTransactionBody ensureTokenCreation() => $_ensure(28);

  /// *
  ///  Freeze an account with respect to a token.<br/>
  ///  A frozen account cannot transact in that token until unfrozen.
  @$pb.TagNumber(31)
  $25.TokenFreezeAccountTransactionBody get tokenFreeze => $_getN(29);
  @$pb.TagNumber(31)
  set tokenFreeze($25.TokenFreezeAccountTransactionBody value) =>
      $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasTokenFreeze() => $_has(29);
  @$pb.TagNumber(31)
  void clearTokenFreeze() => $_clearField(31);
  @$pb.TagNumber(31)
  $25.TokenFreezeAccountTransactionBody ensureTokenFreeze() => $_ensure(29);

  /// *
  ///  Unfreeze an account with respect to a token.
  @$pb.TagNumber(32)
  $26.TokenUnfreezeAccountTransactionBody get tokenUnfreeze => $_getN(30);
  @$pb.TagNumber(32)
  set tokenUnfreeze($26.TokenUnfreezeAccountTransactionBody value) =>
      $_setField(32, value);
  @$pb.TagNumber(32)
  $core.bool hasTokenUnfreeze() => $_has(30);
  @$pb.TagNumber(32)
  void clearTokenUnfreeze() => $_clearField(32);
  @$pb.TagNumber(32)
  $26.TokenUnfreezeAccountTransactionBody ensureTokenUnfreeze() => $_ensure(30);

  /// *
  ///  Grant KYC to an account with respect to a token.<br/>
  ///  KYC is generally a "know your customer" assertion that a
  ///  responsible entity has sufficient information to positively
  ///  identify the account holder to relevant authorities.
  @$pb.TagNumber(33)
  $27.TokenGrantKycTransactionBody get tokenGrantKyc => $_getN(31);
  @$pb.TagNumber(33)
  set tokenGrantKyc($27.TokenGrantKycTransactionBody value) =>
      $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasTokenGrantKyc() => $_has(31);
  @$pb.TagNumber(33)
  void clearTokenGrantKyc() => $_clearField(33);
  @$pb.TagNumber(33)
  $27.TokenGrantKycTransactionBody ensureTokenGrantKyc() => $_ensure(31);

  /// *
  ///  Revoke KYC from an account with respect to a token.
  @$pb.TagNumber(34)
  $28.TokenRevokeKycTransactionBody get tokenRevokeKyc => $_getN(32);
  @$pb.TagNumber(34)
  set tokenRevokeKyc($28.TokenRevokeKycTransactionBody value) =>
      $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasTokenRevokeKyc() => $_has(32);
  @$pb.TagNumber(34)
  void clearTokenRevokeKyc() => $_clearField(34);
  @$pb.TagNumber(34)
  $28.TokenRevokeKycTransactionBody ensureTokenRevokeKyc() => $_ensure(32);

  /// *
  ///  Delete an Hedera token.<br/>
  ///  The token will be marked deleted.
  @$pb.TagNumber(35)
  $29.TokenDeleteTransactionBody get tokenDeletion => $_getN(33);
  @$pb.TagNumber(35)
  set tokenDeletion($29.TokenDeleteTransactionBody value) =>
      $_setField(35, value);
  @$pb.TagNumber(35)
  $core.bool hasTokenDeletion() => $_has(33);
  @$pb.TagNumber(35)
  void clearTokenDeletion() => $_clearField(35);
  @$pb.TagNumber(35)
  $29.TokenDeleteTransactionBody ensureTokenDeletion() => $_ensure(33);

  /// *
  ///  Update an Hedera token.<br/>
  ///  Depending on what fields are to be modified, the signature
  ///  requirements will vary. See `TokenUpdateTransactionBody` for
  ///  further detail.
  @$pb.TagNumber(36)
  $30.TokenUpdateTransactionBody get tokenUpdate => $_getN(34);
  @$pb.TagNumber(36)
  set tokenUpdate($30.TokenUpdateTransactionBody value) =>
      $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasTokenUpdate() => $_has(34);
  @$pb.TagNumber(36)
  void clearTokenUpdate() => $_clearField(36);
  @$pb.TagNumber(36)
  $30.TokenUpdateTransactionBody ensureTokenUpdate() => $_ensure(34);

  /// *
  ///  Mint new tokens.<br/>
  ///  All minted tokens will be delivered to the treasury account for
  ///  the token type. The "mint key" for the token must sign this
  ///  transaction.
  @$pb.TagNumber(37)
  $31.TokenMintTransactionBody get tokenMint => $_getN(35);
  @$pb.TagNumber(37)
  set tokenMint($31.TokenMintTransactionBody value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasTokenMint() => $_has(35);
  @$pb.TagNumber(37)
  void clearTokenMint() => $_clearField(37);
  @$pb.TagNumber(37)
  $31.TokenMintTransactionBody ensureTokenMint() => $_ensure(35);

  /// *
  ///  Burn tokens from the treasury account.<br/>
  ///  The "burn key" for the token must sign this transaction.
  @$pb.TagNumber(38)
  $32.TokenBurnTransactionBody get tokenBurn => $_getN(36);
  @$pb.TagNumber(38)
  set tokenBurn($32.TokenBurnTransactionBody value) => $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasTokenBurn() => $_has(36);
  @$pb.TagNumber(38)
  void clearTokenBurn() => $_clearField(38);
  @$pb.TagNumber(38)
  $32.TokenBurnTransactionBody ensureTokenBurn() => $_ensure(36);

  /// *
  ///  Wipe tokens from an account.<br/>
  ///  This will remove a specified amount of fungible/common tokens or
  ///  a specified list of non-fungible/unique serial numbered tokens
  ///  of a given token type from an Hedera account. The removed tokens
  ///  are _burned_ as if by a `tokenBurn` transaction.<br/>
  ///  The "wipe key" for the token must sign this transaction.
  @$pb.TagNumber(39)
  $33.TokenWipeAccountTransactionBody get tokenWipe => $_getN(37);
  @$pb.TagNumber(39)
  set tokenWipe($33.TokenWipeAccountTransactionBody value) =>
      $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasTokenWipe() => $_has(37);
  @$pb.TagNumber(39)
  void clearTokenWipe() => $_clearField(39);
  @$pb.TagNumber(39)
  $33.TokenWipeAccountTransactionBody ensureTokenWipe() => $_ensure(37);

  /// *
  ///  Associate tokens to an account.
  @$pb.TagNumber(40)
  $34.TokenAssociateTransactionBody get tokenAssociate => $_getN(38);
  @$pb.TagNumber(40)
  set tokenAssociate($34.TokenAssociateTransactionBody value) =>
      $_setField(40, value);
  @$pb.TagNumber(40)
  $core.bool hasTokenAssociate() => $_has(38);
  @$pb.TagNumber(40)
  void clearTokenAssociate() => $_clearField(40);
  @$pb.TagNumber(40)
  $34.TokenAssociateTransactionBody ensureTokenAssociate() => $_ensure(38);

  /// *
  ///  Dissociate tokens from an account.
  @$pb.TagNumber(41)
  $35.TokenDissociateTransactionBody get tokenDissociate => $_getN(39);
  @$pb.TagNumber(41)
  set tokenDissociate($35.TokenDissociateTransactionBody value) =>
      $_setField(41, value);
  @$pb.TagNumber(41)
  $core.bool hasTokenDissociate() => $_has(39);
  @$pb.TagNumber(41)
  void clearTokenDissociate() => $_clearField(41);
  @$pb.TagNumber(41)
  $35.TokenDissociateTransactionBody ensureTokenDissociate() => $_ensure(39);

  /// *
  ///  Create a schedule.<br/>
  ///  A schedule is a request to execute a specific transaction, included
  ///  in the create body, in the future. The scheduled transaction may
  ///  execute as soon as all signature requirements are met with the
  ///  schedule create or a subsequent schedule sign transaction.
  ///  A schedule may, alternatively, execute on expiration if
  ///  long-term schedules are enabled and the schedule meets signature
  ///  requirements at that time.
  @$pb.TagNumber(42)
  $36.ScheduleCreateTransactionBody get scheduleCreate => $_getN(40);
  @$pb.TagNumber(42)
  set scheduleCreate($36.ScheduleCreateTransactionBody value) =>
      $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasScheduleCreate() => $_has(40);
  @$pb.TagNumber(42)
  void clearScheduleCreate() => $_clearField(42);
  @$pb.TagNumber(42)
  $36.ScheduleCreateTransactionBody ensureScheduleCreate() => $_ensure(40);

  /// *
  ///  Delete a schedule.<br/>
  ///  The schedule will be marked as deleted.
  @$pb.TagNumber(43)
  $37.ScheduleDeleteTransactionBody get scheduleDelete => $_getN(41);
  @$pb.TagNumber(43)
  set scheduleDelete($37.ScheduleDeleteTransactionBody value) =>
      $_setField(43, value);
  @$pb.TagNumber(43)
  $core.bool hasScheduleDelete() => $_has(41);
  @$pb.TagNumber(43)
  void clearScheduleDelete() => $_clearField(43);
  @$pb.TagNumber(43)
  $37.ScheduleDeleteTransactionBody ensureScheduleDelete() => $_ensure(41);

  /// *
  ///  Sign a schedule.<br/>
  ///  Add one or more cryptographic keys to the list of keys that have
  ///  signed a schedule, and which may serve to meet the signature
  ///  requirements for the scheduled transaction.
  @$pb.TagNumber(44)
  $38.ScheduleSignTransactionBody get scheduleSign => $_getN(42);
  @$pb.TagNumber(44)
  set scheduleSign($38.ScheduleSignTransactionBody value) =>
      $_setField(44, value);
  @$pb.TagNumber(44)
  $core.bool hasScheduleSign() => $_has(42);
  @$pb.TagNumber(44)
  void clearScheduleSign() => $_clearField(44);
  @$pb.TagNumber(44)
  $38.ScheduleSignTransactionBody ensureScheduleSign() => $_ensure(42);

  /// *
  ///  Update the custom fee schedule for a token.<br/>
  ///  This transaction must be signed by the "fee schedule key"
  ///  for the token.
  @$pb.TagNumber(45)
  $39.TokenFeeScheduleUpdateTransactionBody get tokenFeeScheduleUpdate =>
      $_getN(43);
  @$pb.TagNumber(45)
  set tokenFeeScheduleUpdate($39.TokenFeeScheduleUpdateTransactionBody value) =>
      $_setField(45, value);
  @$pb.TagNumber(45)
  $core.bool hasTokenFeeScheduleUpdate() => $_has(43);
  @$pb.TagNumber(45)
  void clearTokenFeeScheduleUpdate() => $_clearField(45);
  @$pb.TagNumber(45)
  $39.TokenFeeScheduleUpdateTransactionBody ensureTokenFeeScheduleUpdate() =>
      $_ensure(43);

  /// *
  ///  Pause a Token.
  ///  <p>
  ///  This transaction MUST be signed by the "pause key" for the token.
  @$pb.TagNumber(46)
  $40.TokenPauseTransactionBody get tokenPause => $_getN(44);
  @$pb.TagNumber(46)
  set tokenPause($40.TokenPauseTransactionBody value) => $_setField(46, value);
  @$pb.TagNumber(46)
  $core.bool hasTokenPause() => $_has(44);
  @$pb.TagNumber(46)
  void clearTokenPause() => $_clearField(46);
  @$pb.TagNumber(46)
  $40.TokenPauseTransactionBody ensureTokenPause() => $_ensure(44);

  /// *
  ///  Unpause a Token.
  ///  <p>
  ///  This transaction MUST be signed by the "pause key" for the token.
  @$pb.TagNumber(47)
  $41.TokenUnpauseTransactionBody get tokenUnpause => $_getN(45);
  @$pb.TagNumber(47)
  set tokenUnpause($41.TokenUnpauseTransactionBody value) =>
      $_setField(47, value);
  @$pb.TagNumber(47)
  $core.bool hasTokenUnpause() => $_has(45);
  @$pb.TagNumber(47)
  void clearTokenUnpause() => $_clearField(47);
  @$pb.TagNumber(47)
  $41.TokenUnpauseTransactionBody ensureTokenUnpause() => $_ensure(45);

  /// *
  ///  Add one or more approved allowances for spenders to transfer the
  ///  paying account's hbar or tokens.
  @$pb.TagNumber(48)
  $42.CryptoApproveAllowanceTransactionBody get cryptoApproveAllowance =>
      $_getN(46);
  @$pb.TagNumber(48)
  set cryptoApproveAllowance($42.CryptoApproveAllowanceTransactionBody value) =>
      $_setField(48, value);
  @$pb.TagNumber(48)
  $core.bool hasCryptoApproveAllowance() => $_has(46);
  @$pb.TagNumber(48)
  void clearCryptoApproveAllowance() => $_clearField(48);
  @$pb.TagNumber(48)
  $42.CryptoApproveAllowanceTransactionBody ensureCryptoApproveAllowance() =>
      $_ensure(46);

  /// *
  ///  Delete one or more approvals for spenders to transfer the
  ///  paying account's hbar or tokens.
  @$pb.TagNumber(49)
  $43.CryptoDeleteAllowanceTransactionBody get cryptoDeleteAllowance =>
      $_getN(47);
  @$pb.TagNumber(49)
  set cryptoDeleteAllowance($43.CryptoDeleteAllowanceTransactionBody value) =>
      $_setField(49, value);
  @$pb.TagNumber(49)
  $core.bool hasCryptoDeleteAllowance() => $_has(47);
  @$pb.TagNumber(49)
  void clearCryptoDeleteAllowance() => $_clearField(49);
  @$pb.TagNumber(49)
  $43.CryptoDeleteAllowanceTransactionBody ensureCryptoDeleteAllowance() =>
      $_ensure(47);

  /// *
  ///  Perform an Ethereum encoded transaction.
  @$pb.TagNumber(50)
  $44.EthereumTransactionBody get ethereumTransaction => $_getN(48);
  @$pb.TagNumber(50)
  set ethereumTransaction($44.EthereumTransactionBody value) =>
      $_setField(50, value);
  @$pb.TagNumber(50)
  $core.bool hasEthereumTransaction() => $_has(48);
  @$pb.TagNumber(50)
  void clearEthereumTransaction() => $_clearField(50);
  @$pb.TagNumber(50)
  $44.EthereumTransactionBody ensureEthereumTransaction() => $_ensure(48);

  /// *
  ///  Update the staking information.<br/>
  ///  This internal transaction is performed at the end of a staking
  ///  period to complete staking calculations and indicate that new
  ///  staking period has started.
  @$pb.TagNumber(51)
  $45.NodeStakeUpdateTransactionBody get nodeStakeUpdate => $_getN(49);
  @$pb.TagNumber(51)
  set nodeStakeUpdate($45.NodeStakeUpdateTransactionBody value) =>
      $_setField(51, value);
  @$pb.TagNumber(51)
  $core.bool hasNodeStakeUpdate() => $_has(49);
  @$pb.TagNumber(51)
  void clearNodeStakeUpdate() => $_clearField(51);
  @$pb.TagNumber(51)
  $45.NodeStakeUpdateTransactionBody ensureNodeStakeUpdate() => $_ensure(49);

  /// *
  ///  Provide a deterministic pseudorandom number based on network state.
  @$pb.TagNumber(52)
  $46.UtilPrngTransactionBody get utilPrng => $_getN(50);
  @$pb.TagNumber(52)
  set utilPrng($46.UtilPrngTransactionBody value) => $_setField(52, value);
  @$pb.TagNumber(52)
  $core.bool hasUtilPrng() => $_has(50);
  @$pb.TagNumber(52)
  void clearUtilPrng() => $_clearField(52);
  @$pb.TagNumber(52)
  $46.UtilPrngTransactionBody ensureUtilPrng() => $_ensure(50);

  /// *
  ///  Update one or more non-fungible/unique tokens.<br/>
  ///  This will update metadata for one or more serial numbers within
  ///  a collection (token type).
  @$pb.TagNumber(53)
  $47.TokenUpdateNftsTransactionBody get tokenUpdateNfts => $_getN(51);
  @$pb.TagNumber(53)
  set tokenUpdateNfts($47.TokenUpdateNftsTransactionBody value) =>
      $_setField(53, value);
  @$pb.TagNumber(53)
  $core.bool hasTokenUpdateNfts() => $_has(51);
  @$pb.TagNumber(53)
  void clearTokenUpdateNfts() => $_clearField(53);
  @$pb.TagNumber(53)
  $47.TokenUpdateNftsTransactionBody ensureTokenUpdateNfts() => $_ensure(51);

  /// *
  ///  Create a new node in the network address book.<br/>
  ///  This is a privileged operation.
  ///  <p>
  ///  This transaction SHALL create a new consensus node record and add
  ///  that record to the network address book.
  @$pb.TagNumber(54)
  $48.NodeCreateTransactionBody get nodeCreate => $_getN(52);
  @$pb.TagNumber(54)
  set nodeCreate($48.NodeCreateTransactionBody value) => $_setField(54, value);
  @$pb.TagNumber(54)
  $core.bool hasNodeCreate() => $_has(52);
  @$pb.TagNumber(54)
  void clearNodeCreate() => $_clearField(54);
  @$pb.TagNumber(54)
  $48.NodeCreateTransactionBody ensureNodeCreate() => $_ensure(52);

  /// *
  ///  Update a node in the network address book.<br/>
  ///  This is a privileged operation.
  ///  <p>
  ///  This transaction SHALL update an existing consensus node record in
  ///  the network address book.
  @$pb.TagNumber(55)
  $49.NodeUpdateTransactionBody get nodeUpdate => $_getN(53);
  @$pb.TagNumber(55)
  set nodeUpdate($49.NodeUpdateTransactionBody value) => $_setField(55, value);
  @$pb.TagNumber(55)
  $core.bool hasNodeUpdate() => $_has(53);
  @$pb.TagNumber(55)
  void clearNodeUpdate() => $_clearField(55);
  @$pb.TagNumber(55)
  $49.NodeUpdateTransactionBody ensureNodeUpdate() => $_ensure(53);

  /// *
  ///  Delete a node from the network address book.<br/>
  ///  This is a privileged operation.
  ///  <p>
  ///  This transaction SHALL mark an existing consensus node record as
  ///  deleted and remove that node from the network address book.
  @$pb.TagNumber(56)
  $50.NodeDeleteTransactionBody get nodeDelete => $_getN(54);
  @$pb.TagNumber(56)
  set nodeDelete($50.NodeDeleteTransactionBody value) => $_setField(56, value);
  @$pb.TagNumber(56)
  $core.bool hasNodeDelete() => $_has(54);
  @$pb.TagNumber(56)
  void clearNodeDelete() => $_clearField(56);
  @$pb.TagNumber(56)
  $50.NodeDeleteTransactionBody ensureNodeDelete() => $_ensure(54);

  /// *
  ///  Reject and return a token to treasury.<br/>
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
  @$pb.TagNumber(57)
  $51.TokenRejectTransactionBody get tokenReject => $_getN(55);
  @$pb.TagNumber(57)
  set tokenReject($51.TokenRejectTransactionBody value) =>
      $_setField(57, value);
  @$pb.TagNumber(57)
  $core.bool hasTokenReject() => $_has(55);
  @$pb.TagNumber(57)
  void clearTokenReject() => $_clearField(57);
  @$pb.TagNumber(57)
  $51.TokenRejectTransactionBody ensureTokenReject() => $_ensure(55);

  /// *
  ///  "Airdrop" tokens.<br/>
  ///  This transaction sends tokens from one or more "sender" accounts
  ///  to one or more "recipient" accounts.
  ///  <p>
  ///  If a recipient account cannot immediately receive the token(s) sent,
  ///  a "pending" airdrop SHALL be created and MUST be claimed.
  @$pb.TagNumber(58)
  $52.TokenAirdropTransactionBody get tokenAirdrop => $_getN(56);
  @$pb.TagNumber(58)
  set tokenAirdrop($52.TokenAirdropTransactionBody value) =>
      $_setField(58, value);
  @$pb.TagNumber(58)
  $core.bool hasTokenAirdrop() => $_has(56);
  @$pb.TagNumber(58)
  void clearTokenAirdrop() => $_clearField(58);
  @$pb.TagNumber(58)
  $52.TokenAirdropTransactionBody ensureTokenAirdrop() => $_ensure(56);

  /// *
  ///  Cancel one or more "pending" airdrops that are not yet claimed.
  @$pb.TagNumber(59)
  $53.TokenCancelAirdropTransactionBody get tokenCancelAirdrop => $_getN(57);
  @$pb.TagNumber(59)
  set tokenCancelAirdrop($53.TokenCancelAirdropTransactionBody value) =>
      $_setField(59, value);
  @$pb.TagNumber(59)
  $core.bool hasTokenCancelAirdrop() => $_has(57);
  @$pb.TagNumber(59)
  void clearTokenCancelAirdrop() => $_clearField(59);
  @$pb.TagNumber(59)
  $53.TokenCancelAirdropTransactionBody ensureTokenCancelAirdrop() =>
      $_ensure(57);

  /// *
  ///  Claim one or more "pending" airdrops.
  @$pb.TagNumber(60)
  $54.TokenClaimAirdropTransactionBody get tokenClaimAirdrop => $_getN(58);
  @$pb.TagNumber(60)
  set tokenClaimAirdrop($54.TokenClaimAirdropTransactionBody value) =>
      $_setField(60, value);
  @$pb.TagNumber(60)
  $core.bool hasTokenClaimAirdrop() => $_has(58);
  @$pb.TagNumber(60)
  void clearTokenClaimAirdrop() => $_clearField(60);
  @$pb.TagNumber(60)
  $54.TokenClaimAirdropTransactionBody ensureTokenClaimAirdrop() =>
      $_ensure(58);

  /// *
  ///  A transaction body for signature of a state root hash gossiped to other nodes
  @$pb.TagNumber(65)
  $55.StateSignatureTransaction get stateSignatureTransaction => $_getN(59);
  @$pb.TagNumber(65)
  set stateSignatureTransaction($55.StateSignatureTransaction value) =>
      $_setField(65, value);
  @$pb.TagNumber(65)
  $core.bool hasStateSignatureTransaction() => $_has(59);
  @$pb.TagNumber(65)
  void clearStateSignatureTransaction() => $_clearField(65);
  @$pb.TagNumber(65)
  $55.StateSignatureTransaction ensureStateSignatureTransaction() =>
      $_ensure(59);

  /// *
  ///  A transaction body for voting on hinTS aggregation keys.
  @$pb.TagNumber(66)
  $56.HintsPreprocessingVoteTransactionBody get hintsPreprocessingVote =>
      $_getN(60);
  @$pb.TagNumber(66)
  set hintsPreprocessingVote($56.HintsPreprocessingVoteTransactionBody value) =>
      $_setField(66, value);
  @$pb.TagNumber(66)
  $core.bool hasHintsPreprocessingVote() => $_has(60);
  @$pb.TagNumber(66)
  void clearHintsPreprocessingVote() => $_clearField(66);
  @$pb.TagNumber(66)
  $56.HintsPreprocessingVoteTransactionBody ensureHintsPreprocessingVote() =>
      $_ensure(60);

  /// *
  ///  A transaction body for publishing a node's hintTS key.
  @$pb.TagNumber(67)
  $57.HintsKeyPublicationTransactionBody get hintsKeyPublication => $_getN(61);
  @$pb.TagNumber(67)
  set hintsKeyPublication($57.HintsKeyPublicationTransactionBody value) =>
      $_setField(67, value);
  @$pb.TagNumber(67)
  $core.bool hasHintsKeyPublication() => $_has(61);
  @$pb.TagNumber(67)
  void clearHintsKeyPublication() => $_clearField(67);
  @$pb.TagNumber(67)
  $57.HintsKeyPublicationTransactionBody ensureHintsKeyPublication() =>
      $_ensure(61);

  /// *
  ///  A transaction body for broadcasting a node's hintTS partial signature on a message.
  @$pb.TagNumber(68)
  $58.HintsPartialSignatureTransactionBody get hintsPartialSignature =>
      $_getN(62);
  @$pb.TagNumber(68)
  set hintsPartialSignature($58.HintsPartialSignatureTransactionBody value) =>
      $_setField(68, value);
  @$pb.TagNumber(68)
  $core.bool hasHintsPartialSignature() => $_has(62);
  @$pb.TagNumber(68)
  void clearHintsPartialSignature() => $_clearField(68);
  @$pb.TagNumber(68)
  $58.HintsPartialSignatureTransactionBody ensureHintsPartialSignature() =>
      $_ensure(62);

  /// *
  ///  A transaction body for contributed a signature with a node's proof key to a history proof.
  @$pb.TagNumber(69)
  $59.HistoryProofSignatureTransactionBody get historyProofSignature =>
      $_getN(63);
  @$pb.TagNumber(69)
  set historyProofSignature($59.HistoryProofSignatureTransactionBody value) =>
      $_setField(69, value);
  @$pb.TagNumber(69)
  $core.bool hasHistoryProofSignature() => $_has(63);
  @$pb.TagNumber(69)
  void clearHistoryProofSignature() => $_clearField(69);
  @$pb.TagNumber(69)
  $59.HistoryProofSignatureTransactionBody ensureHistoryProofSignature() =>
      $_ensure(63);

  /// *
  ///  A transaction body for publishing a node's metadata proof key.
  @$pb.TagNumber(70)
  $60.HistoryProofKeyPublicationTransactionBody
      get historyProofKeyPublication => $_getN(64);
  @$pb.TagNumber(70)
  set historyProofKeyPublication(
          $60.HistoryProofKeyPublicationTransactionBody value) =>
      $_setField(70, value);
  @$pb.TagNumber(70)
  $core.bool hasHistoryProofKeyPublication() => $_has(64);
  @$pb.TagNumber(70)
  void clearHistoryProofKeyPublication() => $_clearField(70);
  @$pb.TagNumber(70)
  $60.HistoryProofKeyPublicationTransactionBody
      ensureHistoryProofKeyPublication() => $_ensure(64);

  /// *
  ///  A transaction body for voting on a metadata proof descending from the ledger id.
  @$pb.TagNumber(71)
  $61.HistoryProofVoteTransactionBody get historyProofVote => $_getN(65);
  @$pb.TagNumber(71)
  set historyProofVote($61.HistoryProofVoteTransactionBody value) =>
      $_setField(71, value);
  @$pb.TagNumber(71)
  $core.bool hasHistoryProofVote() => $_has(65);
  @$pb.TagNumber(71)
  void clearHistoryProofVote() => $_clearField(71);
  @$pb.TagNumber(71)
  $61.HistoryProofVoteTransactionBody ensureHistoryProofVote() => $_ensure(65);

  /// *
  ///  A transaction body for broadcasting a node's crs publication
  @$pb.TagNumber(72)
  $62.CrsPublicationTransactionBody get crsPublication => $_getN(66);
  @$pb.TagNumber(72)
  set crsPublication($62.CrsPublicationTransactionBody value) =>
      $_setField(72, value);
  @$pb.TagNumber(72)
  $core.bool hasCrsPublication() => $_has(66);
  @$pb.TagNumber(72)
  void clearCrsPublication() => $_clearField(72);
  @$pb.TagNumber(72)
  $62.CrsPublicationTransactionBody ensureCrsPublication() => $_ensure(66);

  /// *
  ///  The <b>public key</b> of the trusted batch assembler.
  @$pb.TagNumber(73)
  $0.Key get batchKey => $_getN(67);
  @$pb.TagNumber(73)
  set batchKey($0.Key value) => $_setField(73, value);
  @$pb.TagNumber(73)
  $core.bool hasBatchKey() => $_has(67);
  @$pb.TagNumber(73)
  void clearBatchKey() => $_clearField(73);
  @$pb.TagNumber(73)
  $0.Key ensureBatchKey() => $_ensure(67);

  /// *
  ///  A transaction body for handling a set of transactions atomically.
  @$pb.TagNumber(74)
  AtomicBatchTransactionBody get atomicBatch => $_getN(68);
  @$pb.TagNumber(74)
  set atomicBatch(AtomicBatchTransactionBody value) => $_setField(74, value);
  @$pb.TagNumber(74)
  $core.bool hasAtomicBatch() => $_has(68);
  @$pb.TagNumber(74)
  void clearAtomicBatch() => $_clearField(74);
  @$pb.TagNumber(74)
  AtomicBatchTransactionBody ensureAtomicBatch() => $_ensure(68);

  /// *
  ///  A list of maximum custom fees that the users are willing to pay.
  ///  <p>
  ///  This field is OPTIONAL.<br/>
  ///  If left empty, the users are accepting to pay any custom fee.<br/>
  ///  If used with a transaction type that does not support custom fee limits, the transaction will fail.
  @$pb.TagNumber(1001)
  $pb.PbList<$63.CustomFeeLimit> get maxCustomFees => $_getList(69);
}

/// *
///  A transaction body for handling a set of transactions atomically.
class AtomicBatchTransactionBody extends $pb.GeneratedMessage {
  factory AtomicBatchTransactionBody({
    $core.Iterable<$core.List<$core.int>>? transactions,
  }) {
    final result = create();
    if (transactions != null) result.transactions.addAll(transactions);
    return result;
  }

  AtomicBatchTransactionBody._();

  factory AtomicBatchTransactionBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AtomicBatchTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AtomicBatchTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'transactions', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AtomicBatchTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AtomicBatchTransactionBody copyWith(
          void Function(AtomicBatchTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as AtomicBatchTransactionBody))
          as AtomicBatchTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AtomicBatchTransactionBody create() => AtomicBatchTransactionBody._();
  @$core.override
  AtomicBatchTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AtomicBatchTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AtomicBatchTransactionBody>(create);
  static AtomicBatchTransactionBody? _defaultInstance;

  /// *
  ///  A list of signed bytes that represent the batch transactions.
  @$pb.TagNumber(1)
  $pb.PbList<$core.List<$core.int>> get transactions => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
