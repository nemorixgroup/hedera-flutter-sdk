// This is a generated file - do not edit.
//
// Generated from basic_types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// *
///  A specific hash algorithm.
///
///  We did not reuse Record Stream `HashAlgorithm` here because in all cases,
///  currently, this will be `SHA2_384` and if that is the default value then
///  we can save space by not serializing it, whereas `HASH_ALGORITHM_UNKNOWN`
///  is the default for Record Stream `HashAlgorithm`.
///
///  Note that enum values here MUST NOT match the name of any other enum value
///  in the same `package`, as protobuf follows `C++` scope rules and all enum
///  _names_ are treated as global constants within the `package`.
class BlockHashAlgorithm extends $pb.ProtobufEnum {
  /// *
  ///  A SHA2 algorithm SHA-384 hash.
  ///  <p>
  ///  This is the default value, if a field of this enumerated type is
  ///  not set, then this is the value that will be decoded when the
  ///  serialized message is read.
  static const BlockHashAlgorithm SHA2_384 =
      BlockHashAlgorithm._(0, _omitEnumNames ? '' : 'SHA2_384');

  static const $core.List<BlockHashAlgorithm> values = <BlockHashAlgorithm>[
    SHA2_384,
  ];

  static final $core.List<BlockHashAlgorithm?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 0);
  static BlockHashAlgorithm? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BlockHashAlgorithm._(super.value, super.name);
}

/// *
///  Possible Token Types (IWA Compatibility).
///
///  Apart from fungible and non-fungible, Tokens can have either a common or
///  unique representation. Furthermore, tokens can have intrinsic or referential
///  value, and can be whole and indivisible or fractional.<br/>
///  These distinction might seem subtle, but it is important when considering
///  how tokens can be traced, used, transferred, and if they can have isolated
///  unique properties.
///
///  A few examples (these may not match enumerations below) using IWA taxonomy.
///  <dl>
///    <dt>fungible, whole, intrinsic, unique</dt>
///      <dd>Physical fiat currency</dd>
///    <dt>fungible, fractional, intrinsic, common</dt>
///      <dd>bank balance fiat currency</dd>
///    <dt>non-fungible, fractional, reference, unique</dt>
///      <dd>"mutual" collectible/art/property ownership</dd>
///    <dt>non-fungible, whole, intrinsic, unique</dt>
///      <dd>Physical work of fine art</dd>
///    <dt>non-fungible, whole, reference, unique</dt>
///      <dd>Registered property title</dd>
///  </dl>
class TokenType extends $pb.ProtobufEnum {
  /// *
  ///  A fungible/common token.<br/>
  ///  Tokens of this type are interchangeable with one another, where any
  ///  quantity of tokens has the same value as another equal quantity, if
  ///  they are in the same class. Tokens share a single set of properties,
  ///  and are not distinct from one another. Ownership is represented as a
  ///  balance or quantity associated to a given account. Tokens may be
  ///  divided into fractional tokens, within reasonable limits.
  ///  <p>
  ///  IWA taxonomy _fungible, fractional, intrinsic, common_
  static const TokenType FUNGIBLE_COMMON =
      TokenType._(0, _omitEnumNames ? '' : 'FUNGIBLE_COMMON');

  /// *
  ///  A non-fungible/unique token.<br/>
  ///  Tokens of this type are unique, and are not interchangeable with other
  ///  tokens of the same type. Each token carries a serial number which is
  ///  unique for that token, these tokens may have a different trade value
  ///  for each individual token. The tokens are individually accounted and
  ///  often carry additional unique properties. Tokens cannot be subdivided,
  ///  and value is related to what the individual token represents.
  ///  <p>
  ///  IWA taxonomy _non-fungible, whole, reference, unique_
  static const TokenType NON_FUNGIBLE_UNIQUE =
      TokenType._(1, _omitEnumNames ? '' : 'NON_FUNGIBLE_UNIQUE');

  static const $core.List<TokenType> values = <TokenType>[
    FUNGIBLE_COMMON,
    NON_FUNGIBLE_UNIQUE,
  ];

  static final $core.List<TokenType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static TokenType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TokenType._(super.value, super.name);
}

/// *
///  A transaction sub type.<br/>
///  This enumeration enables a set of transaction base fees to be broadly
///  defined for a type of operation and also be modified, when necessary,
///  based on specifics of the operation.
///
///  ### Explanation
///  The resource cost for a TokenMint operation is different between minting
///  fungible/common and non-fungible/unique tokens. This `enum` is used to
///  "mark" a cost as applying to one or the other.<br/>
///  Similarly, the resource cost for a basic `tokenCreate` without a custom
///  fee schedule may yield a _base_ fee of $1. The resource cost for a
///  `tokenCreate` _with_ a custom fee schedule is different and may yield a
///  _base_ fee of $2 or more.
class SubType extends $pb.ProtobufEnum {
  /// *
  ///  The resource cost for the transaction type has no additional attributes
  static const SubType DEFAULT = SubType._(0, _omitEnumNames ? '' : 'DEFAULT');

  /// *
  ///  The resource cost for the transaction type includes an operation on a
  ///  fungible/common token
  static const SubType TOKEN_FUNGIBLE_COMMON =
      SubType._(1, _omitEnumNames ? '' : 'TOKEN_FUNGIBLE_COMMON');

  /// *
  ///  The resource cost for the transaction type includes an operation on
  ///  a non-fungible/unique token
  static const SubType TOKEN_NON_FUNGIBLE_UNIQUE =
      SubType._(2, _omitEnumNames ? '' : 'TOKEN_NON_FUNGIBLE_UNIQUE');

  /// *
  ///  The resource cost for the transaction type includes an operation on a
  ///  fungible/common token with a custom fee schedule
  static const SubType TOKEN_FUNGIBLE_COMMON_WITH_CUSTOM_FEES = SubType._(
      3, _omitEnumNames ? '' : 'TOKEN_FUNGIBLE_COMMON_WITH_CUSTOM_FEES');

  /// *
  ///  The resource cost for the transaction type includes an operation on a
  ///  non-fungible/unique token with a custom fee schedule
  static const SubType TOKEN_NON_FUNGIBLE_UNIQUE_WITH_CUSTOM_FEES = SubType._(
      4, _omitEnumNames ? '' : 'TOKEN_NON_FUNGIBLE_UNIQUE_WITH_CUSTOM_FEES');

  /// *
  ///  The resource cost for the transaction type includes a ScheduleCreate
  ///  containing a ContractCall.
  static const SubType SCHEDULE_CREATE_CONTRACT_CALL =
      SubType._(5, _omitEnumNames ? '' : 'SCHEDULE_CREATE_CONTRACT_CALL');

  /// *
  ///  The resource cost for the transaction type includes a TopicCreate
  ///  with custom fees.
  static const SubType TOPIC_CREATE_WITH_CUSTOM_FEES =
      SubType._(6, _omitEnumNames ? '' : 'TOPIC_CREATE_WITH_CUSTOM_FEES');

  /// *
  ///  The resource cost for the transaction type includes a ConsensusSubmitMessage
  ///  for a topic with custom fees.
  static const SubType SUBMIT_MESSAGE_WITH_CUSTOM_FEES =
      SubType._(7, _omitEnumNames ? '' : 'SUBMIT_MESSAGE_WITH_CUSTOM_FEES');

  static const $core.List<SubType> values = <SubType>[
    DEFAULT,
    TOKEN_FUNGIBLE_COMMON,
    TOKEN_NON_FUNGIBLE_UNIQUE,
    TOKEN_FUNGIBLE_COMMON_WITH_CUSTOM_FEES,
    TOKEN_NON_FUNGIBLE_UNIQUE_WITH_CUSTOM_FEES,
    SCHEDULE_CREATE_CONTRACT_CALL,
    TOPIC_CREATE_WITH_CUSTOM_FEES,
    SUBMIT_MESSAGE_WITH_CUSTOM_FEES,
  ];

  static final $core.List<SubType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static SubType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SubType._(super.value, super.name);
}

/// *
///  Possible Token Supply Types (IWA Compatibility).
///
///  This `enum` indicates the limit of tokens that can exist during the
///  lifetime of a token definition. The "infinite" supply is only theoretically
///  infinite, as it is still limited to the magnitude of a 64-bit signed
///  integer. A "finite" supply is further limited to a value specified when
///  the token is created (or updated, if not immutable).
class TokenSupplyType extends $pb.ProtobufEnum {
  /// *
  ///  An unlimited supply.<br/>
  ///  This indicates that tokens of this type have an upper bound of
  ///  Long.MAX_VALUE.<br/>
  ///  The supply is accounted in the smallest units of the token
  ///  (i.e. 10<sup>-`decimals`</sup> whole tokens)
  static const TokenSupplyType INFINITE =
      TokenSupplyType._(0, _omitEnumNames ? '' : 'INFINITE');

  /// *
  ///  A limited supply.<br/>
  ///  This indicates that tokens of this type have an upper bound of
  ///  `maxSupply`.<br/>
  ///  The maximum supply SHALL be provided on token creation, but MAY be
  ///  changed thereafter if the token has an `admin_key` set.
  static const TokenSupplyType FINITE =
      TokenSupplyType._(1, _omitEnumNames ? '' : 'FINITE');

  static const $core.List<TokenSupplyType> values = <TokenSupplyType>[
    INFINITE,
    FINITE,
  ];

  static final $core.List<TokenSupplyType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static TokenSupplyType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TokenSupplyType._(super.value, super.name);
}

/// *
///  Types of validation strategies for token keys.
class TokenKeyValidation extends $pb.ProtobufEnum {
  /// *
  ///  Perform all token key validations.<br/>
  ///  This is the default value and behavior.
  static const TokenKeyValidation FULL_VALIDATION =
      TokenKeyValidation._(0, _omitEnumNames ? '' : 'FULL_VALIDATION');

  /// *
  ///  Perform no validations at all for all passed token keys.
  static const TokenKeyValidation NO_VALIDATION =
      TokenKeyValidation._(1, _omitEnumNames ? '' : 'NO_VALIDATION');

  static const $core.List<TokenKeyValidation> values = <TokenKeyValidation>[
    FULL_VALIDATION,
    NO_VALIDATION,
  ];

  static final $core.List<TokenKeyValidation?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static TokenKeyValidation? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TokenKeyValidation._(super.value, super.name);
}

/// *
///  Possible token freeze status values.
///
///  This is returned by `TokenGetInfoQuery` or `CryptoGetInfoResponse`
///  in `TokenRelationship`.
class TokenFreezeStatus extends $pb.ProtobufEnum {
  /// *
  ///  The token does not support freeze or cannot be frozen for the designated
  ///  account.<br/>
  ///  Typically this indicates that the token does not have a `freeze_key` set.
  static const TokenFreezeStatus FreezeNotApplicable =
      TokenFreezeStatus._(0, _omitEnumNames ? '' : 'FreezeNotApplicable');

  /// *
  ///  The token is currently frozen for the designated account.
  static const TokenFreezeStatus Frozen =
      TokenFreezeStatus._(1, _omitEnumNames ? '' : 'Frozen');

  /// *
  ///  The token is not currently frozen for the designated account.
  static const TokenFreezeStatus Unfrozen =
      TokenFreezeStatus._(2, _omitEnumNames ? '' : 'Unfrozen');

  static const $core.List<TokenFreezeStatus> values = <TokenFreezeStatus>[
    FreezeNotApplicable,
    Frozen,
    Unfrozen,
  ];

  static final $core.List<TokenFreezeStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TokenFreezeStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TokenFreezeStatus._(super.value, super.name);
}

/// *
///  Possible token "KYC" status values.
///
///  This is returned by `TokenGetInfoQuery` or `CryptoGetInfoResponse`
///  in `TokenRelationship`.
class TokenKycStatus extends $pb.ProtobufEnum {
  /// *
  ///  The token does not support KYC or cannot grant KYC for the
  ///  designated account.<br/>
  ///  Typically this indicates that the token does not have a `kyc_key` set.
  static const TokenKycStatus KycNotApplicable =
      TokenKycStatus._(0, _omitEnumNames ? '' : 'KycNotApplicable');

  /// *
  ///  The designated account is currently granted KYC status for the
  ///  designated token.
  static const TokenKycStatus Granted =
      TokenKycStatus._(1, _omitEnumNames ? '' : 'Granted');

  /// *
  ///  The designated account is not currently granted KYC status for the
  ///  designated token.
  static const TokenKycStatus Revoked =
      TokenKycStatus._(2, _omitEnumNames ? '' : 'Revoked');

  static const $core.List<TokenKycStatus> values = <TokenKycStatus>[
    KycNotApplicable,
    Granted,
    Revoked,
  ];

  static final $core.List<TokenKycStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TokenKycStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TokenKycStatus._(super.value, super.name);
}

/// *
///  Possible Pause status values.
///
///  This is returned by `TokenGetInfoQuery` in `TokenRelationship`.
class TokenPauseStatus extends $pb.ProtobufEnum {
  /// *
  ///  The token does not support pause or cannot be paused.<br/>
  ///  Typically this indicates that the token does not have a `pause_key` set.
  static const TokenPauseStatus PauseNotApplicable =
      TokenPauseStatus._(0, _omitEnumNames ? '' : 'PauseNotApplicable');

  /// *
  ///  The token is currently paused.
  static const TokenPauseStatus Paused =
      TokenPauseStatus._(1, _omitEnumNames ? '' : 'Paused');

  /// *
  ///  The token is not currently paused.
  static const TokenPauseStatus Unpaused =
      TokenPauseStatus._(2, _omitEnumNames ? '' : 'Unpaused');

  static const $core.List<TokenPauseStatus> values = <TokenPauseStatus>[
    PauseNotApplicable,
    Paused,
    Unpaused,
  ];

  static final $core.List<TokenPauseStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TokenPauseStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TokenPauseStatus._(super.value, super.name);
}

/// *
///  The transactions and queries supported by Hedera Hashgraph.
class HederaFunctionality extends $pb.ProtobufEnum {
  /// *
  ///  Unused - The first value is unused because this default value is
  ///  ambiguous with an "unset" value and therefore should not be used.
  static const HederaFunctionality NONE =
      HederaFunctionality._(0, _omitEnumNames ? '' : 'NONE');

  /// *
  ///  Transfer tokens among accounts.
  static const HederaFunctionality CryptoTransfer =
      HederaFunctionality._(1, _omitEnumNames ? '' : 'CryptoTransfer');

  /// *
  ///  Update an account.
  static const HederaFunctionality CryptoUpdate =
      HederaFunctionality._(2, _omitEnumNames ? '' : 'CryptoUpdate');

  /// *
  ///  Delete an account.
  static const HederaFunctionality CryptoDelete =
      HederaFunctionality._(3, _omitEnumNames ? '' : 'CryptoDelete');

  /// *
  ///  Add a livehash to an account
  @$core.Deprecated('This enum value is deprecated')
  static const HederaFunctionality CryptoAddLiveHash =
      HederaFunctionality._(4, _omitEnumNames ? '' : 'CryptoAddLiveHash');

  /// *
  ///  Delete a livehash from an account
  @$core.Deprecated('This enum value is deprecated')
  static const HederaFunctionality CryptoDeleteLiveHash =
      HederaFunctionality._(5, _omitEnumNames ? '' : 'CryptoDeleteLiveHash');

  /// *
  ///  Execute a smart contract call.
  static const HederaFunctionality ContractCall =
      HederaFunctionality._(6, _omitEnumNames ? '' : 'ContractCall');

  /// *
  ///  Create a smart contract.
  static const HederaFunctionality ContractCreate =
      HederaFunctionality._(7, _omitEnumNames ? '' : 'ContractCreate');

  /// *
  ///  Update a smart contract.
  static const HederaFunctionality ContractUpdate =
      HederaFunctionality._(8, _omitEnumNames ? '' : 'ContractUpdate');

  /// *
  ///  Create a "file" stored in the ledger.
  static const HederaFunctionality FileCreate =
      HederaFunctionality._(9, _omitEnumNames ? '' : 'FileCreate');

  /// *
  ///  Append data to a "file" stored in the ledger.
  static const HederaFunctionality FileAppend =
      HederaFunctionality._(10, _omitEnumNames ? '' : 'FileAppend');

  /// *
  ///  Update a "file" stored in the ledger.
  static const HederaFunctionality FileUpdate =
      HederaFunctionality._(11, _omitEnumNames ? '' : 'FileUpdate');

  /// *
  ///  Delete a "file" stored in the ledger.
  static const HederaFunctionality FileDelete =
      HederaFunctionality._(12, _omitEnumNames ? '' : 'FileDelete');

  /// *
  ///  Get the balance for an account.
  static const HederaFunctionality CryptoGetAccountBalance =
      HederaFunctionality._(
          13, _omitEnumNames ? '' : 'CryptoGetAccountBalance');

  /// *
  ///  Get a full account record.
  static const HederaFunctionality CryptoGetAccountRecords =
      HederaFunctionality._(
          14, _omitEnumNames ? '' : 'CryptoGetAccountRecords');

  /// *
  ///  Get information about a token.
  static const HederaFunctionality CryptoGetInfo =
      HederaFunctionality._(15, _omitEnumNames ? '' : 'CryptoGetInfo');

  /// *
  ///  Execute a local smart contract call.<br/>
  ///  Used by contracts to call other contracts.
  static const HederaFunctionality ContractCallLocal =
      HederaFunctionality._(16, _omitEnumNames ? '' : 'ContractCallLocal');

  /// *
  ///  Get information about a smart contract.
  static const HederaFunctionality ContractGetInfo =
      HederaFunctionality._(17, _omitEnumNames ? '' : 'ContractGetInfo');

  /// *
  ///  Get the compiled bytecode that implements a smart contract.
  static const HederaFunctionality ContractGetBytecode =
      HederaFunctionality._(18, _omitEnumNames ? '' : 'ContractGetBytecode');

  /// *
  ///  Get a smart contract record by reference to the solidity ID.
  static const HederaFunctionality GetBySolidityID =
      HederaFunctionality._(19, _omitEnumNames ? '' : 'GetBySolidityID');

  /// *
  ///  Get a smart contract by reference to the contract key.
  static const HederaFunctionality GetByKey =
      HederaFunctionality._(20, _omitEnumNames ? '' : 'GetByKey');

  /// *
  ///  Get the live hash for an account
  @$core.Deprecated('This enum value is deprecated')
  static const HederaFunctionality CryptoGetLiveHash =
      HederaFunctionality._(21, _omitEnumNames ? '' : 'CryptoGetLiveHash');

  /// *
  ///  Get the accounts proxy staking to a given account.
  @$core.Deprecated('This enum value is deprecated')
  static const HederaFunctionality CryptoGetStakers =
      HederaFunctionality._(22, _omitEnumNames ? '' : 'CryptoGetStakers');

  /// *
  ///  Get the contents of a "file" stored in the ledger.
  static const HederaFunctionality FileGetContents =
      HederaFunctionality._(23, _omitEnumNames ? '' : 'FileGetContents');

  /// *
  ///  Get the metadata for a "file" stored in the ledger.
  static const HederaFunctionality FileGetInfo =
      HederaFunctionality._(24, _omitEnumNames ? '' : 'FileGetInfo');

  /// *
  ///  Get transaction record(s) for a specified transaction ID.
  static const HederaFunctionality TransactionGetRecord =
      HederaFunctionality._(25, _omitEnumNames ? '' : 'TransactionGetRecord');

  /// *
  ///  Get all transaction records for a specified contract ID in
  ///  the past 24 hours.<br/>
  ///  deprecated since version 0.9.0
  @$core.Deprecated('This enum value is deprecated')
  static const HederaFunctionality ContractGetRecords =
      HederaFunctionality._(26, _omitEnumNames ? '' : 'ContractGetRecords');

  /// *
  ///  Create a new account
  static const HederaFunctionality CryptoCreate =
      HederaFunctionality._(27, _omitEnumNames ? '' : 'CryptoCreate');

  /// *
  ///  Delete a "system" "file" stored in the ledger.<br/>
  ///  "System" files are files with special purpose and ID values within a
  ///  specific range.<br/>
  ///  These files require additional controls and can only be deleted when
  ///  authorized by accounts with elevated privilege.
  static const HederaFunctionality SystemDelete =
      HederaFunctionality._(28, _omitEnumNames ? '' : 'SystemDelete');

  /// *
  ///  Undo the delete of a "system" "file" stored in the ledger.<br/>
  ///  "System" files are files with special purpose and ID values within a
  ///  specific range.<br/>
  ///  These files require additional controls and can only be deleted when
  ///  authorized by accounts with elevated privilege. This operation allows
  ///  such files to be restored, within a reasonable timeframe, if
  ///  deleted improperly.
  static const HederaFunctionality SystemUndelete =
      HederaFunctionality._(29, _omitEnumNames ? '' : 'SystemUndelete');

  /// *
  ///  Delete a smart contract
  static const HederaFunctionality ContractDelete =
      HederaFunctionality._(30, _omitEnumNames ? '' : 'ContractDelete');

  /// *
  ///  Stop all processing and "freeze" the entire network.<br/>
  ///  This is generally sent immediately prior to upgrading the network.<br/>
  ///  After processing this transactions all nodes enter a quiescent state.
  static const HederaFunctionality Freeze =
      HederaFunctionality._(31, _omitEnumNames ? '' : 'Freeze');

  /// *
  ///  Create a Transaction Record.<br/>
  ///  This appears to be purely internal and unused.
  static const HederaFunctionality CreateTransactionRecord =
      HederaFunctionality._(
          32, _omitEnumNames ? '' : 'CreateTransactionRecord');

  /// *
  ///  Auto-renew an account.<br/>
  ///  This is used for internal fee calculations.
  static const HederaFunctionality CryptoAccountAutoRenew =
      HederaFunctionality._(33, _omitEnumNames ? '' : 'CryptoAccountAutoRenew');

  /// *
  ///  Auto-renew a smart contract.<br/>
  ///  This is used for internal fee calculations.
  static const HederaFunctionality ContractAutoRenew =
      HederaFunctionality._(34, _omitEnumNames ? '' : 'ContractAutoRenew');

  /// *
  ///  Get version information for the ledger.<br/>
  ///  This returns a the version of the software currently running the network
  ///  for both the protocol buffers and the network services (node).
  static const HederaFunctionality GetVersionInfo =
      HederaFunctionality._(35, _omitEnumNames ? '' : 'GetVersionInfo');

  /// *
  ///  Get a receipt for a specified transaction ID.
  static const HederaFunctionality TransactionGetReceipt =
      HederaFunctionality._(36, _omitEnumNames ? '' : 'TransactionGetReceipt');

  /// *
  ///  Create a topic for the Hedera Consensus Service (HCS).
  static const HederaFunctionality ConsensusCreateTopic =
      HederaFunctionality._(50, _omitEnumNames ? '' : 'ConsensusCreateTopic');

  /// *
  ///  Update an HCS topic.
  static const HederaFunctionality ConsensusUpdateTopic =
      HederaFunctionality._(51, _omitEnumNames ? '' : 'ConsensusUpdateTopic');

  /// *
  ///  Delete an HCS topic.
  static const HederaFunctionality ConsensusDeleteTopic =
      HederaFunctionality._(52, _omitEnumNames ? '' : 'ConsensusDeleteTopic');

  /// *
  ///  Get metadata (information) for an HCS topic.
  static const HederaFunctionality ConsensusGetTopicInfo =
      HederaFunctionality._(53, _omitEnumNames ? '' : 'ConsensusGetTopicInfo');

  /// *
  ///  Publish a message to an HCS topic.
  static const HederaFunctionality ConsensusSubmitMessage =
      HederaFunctionality._(54, _omitEnumNames ? '' : 'ConsensusSubmitMessage');

  /// *
  ///  Submit a transaction, bypassing intake checking.
  ///  Only enabled in local-mode.
  static const HederaFunctionality UncheckedSubmit =
      HederaFunctionality._(55, _omitEnumNames ? '' : 'UncheckedSubmit');

  /// *
  ///  Create a token for the Hedera Token Service (HTS).
  static const HederaFunctionality TokenCreate =
      HederaFunctionality._(56, _omitEnumNames ? '' : 'TokenCreate');

  /// *
  ///  Get metadata (information) for an HTS token.
  static const HederaFunctionality TokenGetInfo =
      HederaFunctionality._(58, _omitEnumNames ? '' : 'TokenGetInfo');

  /// *
  ///  Freeze a specific account with respect to a specific HTS token.
  ///  <p>
  ///  Once this transaction completes that account CANNOT send or receive
  ///  the specified token.
  static const HederaFunctionality TokenFreezeAccount =
      HederaFunctionality._(59, _omitEnumNames ? '' : 'TokenFreezeAccount');

  /// *
  ///  Remove a "freeze" from an account with respect to a specific HTS token.
  static const HederaFunctionality TokenUnfreezeAccount =
      HederaFunctionality._(60, _omitEnumNames ? '' : 'TokenUnfreezeAccount');

  /// *
  ///  Grant KYC status to an account for a specific HTS token.
  static const HederaFunctionality TokenGrantKycToAccount =
      HederaFunctionality._(61, _omitEnumNames ? '' : 'TokenGrantKycToAccount');

  /// *
  ///  Revoke KYC status from an account for a specific HTS token.
  static const HederaFunctionality TokenRevokeKycFromAccount =
      HederaFunctionality._(
          62, _omitEnumNames ? '' : 'TokenRevokeKycFromAccount');

  /// *
  ///  Delete a specific HTS token.
  static const HederaFunctionality TokenDelete =
      HederaFunctionality._(63, _omitEnumNames ? '' : 'TokenDelete');

  /// *
  ///  Update a specific HTS token.
  static const HederaFunctionality TokenUpdate =
      HederaFunctionality._(64, _omitEnumNames ? '' : 'TokenUpdate');

  /// *
  ///  Mint HTS token amounts to the treasury account for that token.
  static const HederaFunctionality TokenMint =
      HederaFunctionality._(65, _omitEnumNames ? '' : 'TokenMint');

  /// *
  ///  Burn HTS token amounts from the treasury account for that token.
  static const HederaFunctionality TokenBurn =
      HederaFunctionality._(66, _omitEnumNames ? '' : 'TokenBurn');

  /// *
  ///  Wipe all amounts for a specific HTS token from a specified account.
  static const HederaFunctionality TokenAccountWipe =
      HederaFunctionality._(67, _omitEnumNames ? '' : 'TokenAccountWipe');

  /// *
  ///  Associate a specific HTS token to an account.
  static const HederaFunctionality TokenAssociateToAccount =
      HederaFunctionality._(
          68, _omitEnumNames ? '' : 'TokenAssociateToAccount');

  /// *
  ///  Dissociate a specific HTS token from an account.
  static const HederaFunctionality TokenDissociateFromAccount =
      HederaFunctionality._(
          69, _omitEnumNames ? '' : 'TokenDissociateFromAccount');

  /// *
  ///  Create a scheduled transaction
  static const HederaFunctionality ScheduleCreate =
      HederaFunctionality._(70, _omitEnumNames ? '' : 'ScheduleCreate');

  /// *
  ///  Delete a scheduled transaction
  static const HederaFunctionality ScheduleDelete =
      HederaFunctionality._(71, _omitEnumNames ? '' : 'ScheduleDelete');

  /// *
  ///  Sign a scheduled transaction
  static const HederaFunctionality ScheduleSign =
      HederaFunctionality._(72, _omitEnumNames ? '' : 'ScheduleSign');

  /// *
  ///  Get metadata (information) for a scheduled transaction
  static const HederaFunctionality ScheduleGetInfo =
      HederaFunctionality._(73, _omitEnumNames ? '' : 'ScheduleGetInfo');

  /// *
  ///  Get NFT metadata (information) for a range of NFTs associated to a
  ///  specific non-fungible/unique HTS token and owned by a specific account.
  @$core.Deprecated('This enum value is deprecated')
  static const HederaFunctionality TokenGetAccountNftInfos =
      HederaFunctionality._(
          74, _omitEnumNames ? '' : 'TokenGetAccountNftInfos');

  /// *
  ///  Get metadata (information) for a specific NFT identified by token and
  ///  serial number.
  @$core.Deprecated('This enum value is deprecated')
  static const HederaFunctionality TokenGetNftInfo =
      HederaFunctionality._(75, _omitEnumNames ? '' : 'TokenGetNftInfo');

  /// *
  ///  Get NFT metadata (information) for a range of NFTs associated to a
  ///  specific non-fungible/unique HTS token.
  static const HederaFunctionality TokenGetNftInfos =
      HederaFunctionality._(76, _omitEnumNames ? '' : 'TokenGetNftInfos');

  /// *
  ///  Update a token's custom fee schedule.
  ///  <p>
  ///  If a transaction of this type is not signed by the token
  ///  `fee_schedule_key` it SHALL fail with INVALID_SIGNATURE, or
  ///  TOKEN_HAS_NO_FEE_SCHEDULE_KEY if there is no `fee_schedule_key` set.
  static const HederaFunctionality TokenFeeScheduleUpdate =
      HederaFunctionality._(77, _omitEnumNames ? '' : 'TokenFeeScheduleUpdate');

  /// *
  ///  Get execution time(s) for one or more "recent" TransactionIDs.
  @$core.Deprecated('This enum value is deprecated')
  static const HederaFunctionality NetworkGetExecutionTime =
      HederaFunctionality._(
          78, _omitEnumNames ? '' : 'NetworkGetExecutionTime');

  /// *
  ///  Pause a specific HTS token
  static const HederaFunctionality TokenPause =
      HederaFunctionality._(79, _omitEnumNames ? '' : 'TokenPause');

  /// *
  ///  Unpause a paused HTS token.
  static const HederaFunctionality TokenUnpause =
      HederaFunctionality._(80, _omitEnumNames ? '' : 'TokenUnpause');

  /// *
  ///  Approve an allowance for a spender relative to the owner account, which
  ///  MUST sign the transaction.
  static const HederaFunctionality CryptoApproveAllowance =
      HederaFunctionality._(81, _omitEnumNames ? '' : 'CryptoApproveAllowance');

  /// *
  ///  Delete (unapprove) an allowance previously approved
  ///  for the owner account.
  static const HederaFunctionality CryptoDeleteAllowance =
      HederaFunctionality._(82, _omitEnumNames ? '' : 'CryptoDeleteAllowance');

  /// *
  ///  Get all the information about an account, including balance
  ///  and allowances.<br/>
  ///  This does not get a list of account records.
  static const HederaFunctionality GetAccountDetails =
      HederaFunctionality._(83, _omitEnumNames ? '' : 'GetAccountDetails');

  /// *
  ///  Perform an Ethereum (EVM) transaction.<br/>
  ///  CallData may be inline if small, or in a "file" if large.
  static const HederaFunctionality EthereumTransaction =
      HederaFunctionality._(84, _omitEnumNames ? '' : 'EthereumTransaction');

  /// *
  ///  Used to indicate when the network has updated the staking information
  ///  at the end of a staking period and to indicate a new staking period
  ///  has started.
  static const HederaFunctionality NodeStakeUpdate =
      HederaFunctionality._(85, _omitEnumNames ? '' : 'NodeStakeUpdate');

  /// *
  ///  Generate and return a pseudorandom number based on network state.
  static const HederaFunctionality UtilPrng =
      HederaFunctionality._(86, _omitEnumNames ? '' : 'UtilPrng');

  /// *
  ///  Get a record for a "recent" transaction.
  @$core.Deprecated('This enum value is deprecated')
  static const HederaFunctionality TransactionGetFastRecord =
      HederaFunctionality._(
          87, _omitEnumNames ? '' : 'TransactionGetFastRecord');

  /// *
  ///  Update the metadata of one or more NFT's of a specific token type.
  static const HederaFunctionality TokenUpdateNfts =
      HederaFunctionality._(88, _omitEnumNames ? '' : 'TokenUpdateNfts');

  /// *
  ///  Create a node
  static const HederaFunctionality NodeCreate =
      HederaFunctionality._(89, _omitEnumNames ? '' : 'NodeCreate');

  /// *
  ///  Update a node
  static const HederaFunctionality NodeUpdate =
      HederaFunctionality._(90, _omitEnumNames ? '' : 'NodeUpdate');

  /// *
  ///  Delete a node
  static const HederaFunctionality NodeDelete =
      HederaFunctionality._(91, _omitEnumNames ? '' : 'NodeDelete');

  /// *
  ///  Transfer one or more token balances held by the requesting account
  ///  to the treasury for each token type.
  static const HederaFunctionality TokenReject =
      HederaFunctionality._(92, _omitEnumNames ? '' : 'TokenReject');

  /// *
  ///  Airdrop one or more tokens to one or more accounts.
  static const HederaFunctionality TokenAirdrop =
      HederaFunctionality._(93, _omitEnumNames ? '' : 'TokenAirdrop');

  /// *
  ///  Remove one or more pending airdrops from state on behalf of
  ///  the sender(s) for each airdrop.
  static const HederaFunctionality TokenCancelAirdrop =
      HederaFunctionality._(94, _omitEnumNames ? '' : 'TokenCancelAirdrop');

  /// *
  ///  Claim one or more pending airdrops
  static const HederaFunctionality TokenClaimAirdrop =
      HederaFunctionality._(95, _omitEnumNames ? '' : 'TokenClaimAirdrop');

  /// *
  ///  Submit a signature of a state root hash gossiped to other nodes
  static const HederaFunctionality StateSignatureTransaction =
      HederaFunctionality._(
          100, _omitEnumNames ? '' : 'StateSignatureTransaction');

  /// *
  ///  Publish a hinTS key to the network.
  static const HederaFunctionality HintsKeyPublication =
      HederaFunctionality._(101, _omitEnumNames ? '' : 'HintsKeyPublication');

  /// *
  ///  Vote for a particular preprocessing output of a hinTS construction.
  static const HederaFunctionality HintsPreprocessingVote =
      HederaFunctionality._(
          102, _omitEnumNames ? '' : 'HintsPreprocessingVote');

  /// *
  ///  Sign a partial signature for the active hinTS construction.
  static const HederaFunctionality HintsPartialSignature =
      HederaFunctionality._(103, _omitEnumNames ? '' : 'HintsPartialSignature');

  /// *
  ///  Sign a particular history assembly.
  static const HederaFunctionality HistoryAssemblySignature =
      HederaFunctionality._(
          104, _omitEnumNames ? '' : 'HistoryAssemblySignature');

  /// *
  ///  Publish a roster history proof key to the network.
  static const HederaFunctionality HistoryProofKeyPublication =
      HederaFunctionality._(
          105, _omitEnumNames ? '' : 'HistoryProofKeyPublication');

  /// *
  ///  Vote for a particular history proof.
  static const HederaFunctionality HistoryProofVote =
      HederaFunctionality._(106, _omitEnumNames ? '' : 'HistoryProofVote');

  /// *
  ///  Publish a random CRS to the network.
  static const HederaFunctionality CrsPublication =
      HederaFunctionality._(107, _omitEnumNames ? '' : 'CrsPublication');

  /// *
  ///  Submit a batch of transactions to run atomically
  static const HederaFunctionality AtomicBatch =
      HederaFunctionality._(108, _omitEnumNames ? '' : 'AtomicBatch');

  static const $core.List<HederaFunctionality> values = <HederaFunctionality>[
    NONE,
    CryptoTransfer,
    CryptoUpdate,
    CryptoDelete,
    CryptoAddLiveHash,
    CryptoDeleteLiveHash,
    ContractCall,
    ContractCreate,
    ContractUpdate,
    FileCreate,
    FileAppend,
    FileUpdate,
    FileDelete,
    CryptoGetAccountBalance,
    CryptoGetAccountRecords,
    CryptoGetInfo,
    ContractCallLocal,
    ContractGetInfo,
    ContractGetBytecode,
    GetBySolidityID,
    GetByKey,
    CryptoGetLiveHash,
    CryptoGetStakers,
    FileGetContents,
    FileGetInfo,
    TransactionGetRecord,
    ContractGetRecords,
    CryptoCreate,
    SystemDelete,
    SystemUndelete,
    ContractDelete,
    Freeze,
    CreateTransactionRecord,
    CryptoAccountAutoRenew,
    ContractAutoRenew,
    GetVersionInfo,
    TransactionGetReceipt,
    ConsensusCreateTopic,
    ConsensusUpdateTopic,
    ConsensusDeleteTopic,
    ConsensusGetTopicInfo,
    ConsensusSubmitMessage,
    UncheckedSubmit,
    TokenCreate,
    TokenGetInfo,
    TokenFreezeAccount,
    TokenUnfreezeAccount,
    TokenGrantKycToAccount,
    TokenRevokeKycFromAccount,
    TokenDelete,
    TokenUpdate,
    TokenMint,
    TokenBurn,
    TokenAccountWipe,
    TokenAssociateToAccount,
    TokenDissociateFromAccount,
    ScheduleCreate,
    ScheduleDelete,
    ScheduleSign,
    ScheduleGetInfo,
    TokenGetAccountNftInfos,
    TokenGetNftInfo,
    TokenGetNftInfos,
    TokenFeeScheduleUpdate,
    NetworkGetExecutionTime,
    TokenPause,
    TokenUnpause,
    CryptoApproveAllowance,
    CryptoDeleteAllowance,
    GetAccountDetails,
    EthereumTransaction,
    NodeStakeUpdate,
    UtilPrng,
    TransactionGetFastRecord,
    TokenUpdateNfts,
    NodeCreate,
    NodeUpdate,
    NodeDelete,
    TokenReject,
    TokenAirdrop,
    TokenCancelAirdrop,
    TokenClaimAirdrop,
    StateSignatureTransaction,
    HintsKeyPublication,
    HintsPreprocessingVote,
    HintsPartialSignature,
    HistoryAssemblySignature,
    HistoryProofKeyPublication,
    HistoryProofVote,
    CrsPublication,
    AtomicBatch,
  ];

  static final $core.List<HederaFunctionality?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 108);
  static HederaFunctionality? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HederaFunctionality._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
