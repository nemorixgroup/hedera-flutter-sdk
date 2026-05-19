// This is a generated file - do not edit.
//
// Generated from response_code.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// *
///  An enumeration of possible response codes.
class ResponseCodeEnum extends $pb.ProtobufEnum {
  /// *
  ///  The transaction passed the precheck validations.
  static const ResponseCodeEnum OK =
      ResponseCodeEnum._(0, _omitEnumNames ? '' : 'OK');

  /// *
  ///  For any error not handled by specific error codes listed below.
  static const ResponseCodeEnum INVALID_TRANSACTION =
      ResponseCodeEnum._(1, _omitEnumNames ? '' : 'INVALID_TRANSACTION');

  /// *
  ///  Payer account does not exist.
  static const ResponseCodeEnum PAYER_ACCOUNT_NOT_FOUND =
      ResponseCodeEnum._(2, _omitEnumNames ? '' : 'PAYER_ACCOUNT_NOT_FOUND');

  /// *
  ///  Node Account provided does not match the node account of the node the transaction was submitted
  ///  to.
  static const ResponseCodeEnum INVALID_NODE_ACCOUNT =
      ResponseCodeEnum._(3, _omitEnumNames ? '' : 'INVALID_NODE_ACCOUNT');

  /// *
  ///  Pre-Check error when TransactionValidStart + transactionValidDuration is less than current
  ///  consensus time.
  static const ResponseCodeEnum TRANSACTION_EXPIRED =
      ResponseCodeEnum._(4, _omitEnumNames ? '' : 'TRANSACTION_EXPIRED');

  /// *
  ///  Transaction start time is greater than current consensus time
  static const ResponseCodeEnum INVALID_TRANSACTION_START =
      ResponseCodeEnum._(5, _omitEnumNames ? '' : 'INVALID_TRANSACTION_START');

  /// *
  ///  The given transactionValidDuration was either non-positive, or greater than the maximum
  ///  valid duration of 180 secs.
  static const ResponseCodeEnum INVALID_TRANSACTION_DURATION =
      ResponseCodeEnum._(
          6, _omitEnumNames ? '' : 'INVALID_TRANSACTION_DURATION');

  /// *
  ///  The transaction signature is not valid
  static const ResponseCodeEnum INVALID_SIGNATURE =
      ResponseCodeEnum._(7, _omitEnumNames ? '' : 'INVALID_SIGNATURE');

  /// *
  ///  Transaction memo size exceeded 100 bytes
  static const ResponseCodeEnum MEMO_TOO_LONG =
      ResponseCodeEnum._(8, _omitEnumNames ? '' : 'MEMO_TOO_LONG');

  /// *
  ///  The fee provided in the transaction is insufficient for this type of transaction
  static const ResponseCodeEnum INSUFFICIENT_TX_FEE =
      ResponseCodeEnum._(9, _omitEnumNames ? '' : 'INSUFFICIENT_TX_FEE');

  /// *
  ///  The payer account has insufficient cryptocurrency to pay the transaction fee
  static const ResponseCodeEnum INSUFFICIENT_PAYER_BALANCE = ResponseCodeEnum._(
      10, _omitEnumNames ? '' : 'INSUFFICIENT_PAYER_BALANCE');

  /// *
  ///  This transaction ID is a duplicate of one that was submitted to this node or reached consensus
  ///  in the last 180 seconds (receipt period)
  static const ResponseCodeEnum DUPLICATE_TRANSACTION =
      ResponseCodeEnum._(11, _omitEnumNames ? '' : 'DUPLICATE_TRANSACTION');

  /// *
  ///  If API is throttled out
  static const ResponseCodeEnum BUSY =
      ResponseCodeEnum._(12, _omitEnumNames ? '' : 'BUSY');

  /// *
  ///  The API is not currently supported
  static const ResponseCodeEnum NOT_SUPPORTED =
      ResponseCodeEnum._(13, _omitEnumNames ? '' : 'NOT_SUPPORTED');

  /// *
  ///  The file id is invalid or does not exist
  static const ResponseCodeEnum INVALID_FILE_ID =
      ResponseCodeEnum._(14, _omitEnumNames ? '' : 'INVALID_FILE_ID');

  /// *
  ///  The account id is invalid or does not exist
  static const ResponseCodeEnum INVALID_ACCOUNT_ID =
      ResponseCodeEnum._(15, _omitEnumNames ? '' : 'INVALID_ACCOUNT_ID');

  /// *
  ///  The contract id is invalid or does not exist
  static const ResponseCodeEnum INVALID_CONTRACT_ID =
      ResponseCodeEnum._(16, _omitEnumNames ? '' : 'INVALID_CONTRACT_ID');

  /// *
  ///  Transaction id is not valid
  static const ResponseCodeEnum INVALID_TRANSACTION_ID =
      ResponseCodeEnum._(17, _omitEnumNames ? '' : 'INVALID_TRANSACTION_ID');

  /// *
  ///  Receipt for given transaction id does not exist
  static const ResponseCodeEnum RECEIPT_NOT_FOUND =
      ResponseCodeEnum._(18, _omitEnumNames ? '' : 'RECEIPT_NOT_FOUND');

  /// *
  ///  Record for given transaction id does not exist
  static const ResponseCodeEnum RECORD_NOT_FOUND =
      ResponseCodeEnum._(19, _omitEnumNames ? '' : 'RECORD_NOT_FOUND');

  /// *
  ///  The solidity id is invalid or entity with this solidity id does not exist
  static const ResponseCodeEnum INVALID_SOLIDITY_ID =
      ResponseCodeEnum._(20, _omitEnumNames ? '' : 'INVALID_SOLIDITY_ID');

  /// *
  ///  The responding node has submitted the transaction to the network. Its final status is still
  ///  unknown.
  static const ResponseCodeEnum UNKNOWN =
      ResponseCodeEnum._(21, _omitEnumNames ? '' : 'UNKNOWN');

  /// *
  ///  The transaction succeeded
  static const ResponseCodeEnum SUCCESS =
      ResponseCodeEnum._(22, _omitEnumNames ? '' : 'SUCCESS');

  /// *
  ///  There was a system error and the transaction failed because of invalid request parameters.
  static const ResponseCodeEnum FAIL_INVALID =
      ResponseCodeEnum._(23, _omitEnumNames ? '' : 'FAIL_INVALID');

  /// *
  ///  There was a system error while performing fee calculation, reserved for future.
  static const ResponseCodeEnum FAIL_FEE =
      ResponseCodeEnum._(24, _omitEnumNames ? '' : 'FAIL_FEE');

  /// *
  ///  There was a system error while performing balance checks, reserved for future.
  static const ResponseCodeEnum FAIL_BALANCE =
      ResponseCodeEnum._(25, _omitEnumNames ? '' : 'FAIL_BALANCE');

  /// *
  ///  Key not provided in the transaction body
  static const ResponseCodeEnum KEY_REQUIRED =
      ResponseCodeEnum._(26, _omitEnumNames ? '' : 'KEY_REQUIRED');

  /// *
  ///  Unsupported algorithm/encoding used for keys in the transaction
  static const ResponseCodeEnum BAD_ENCODING =
      ResponseCodeEnum._(27, _omitEnumNames ? '' : 'BAD_ENCODING');

  /// *
  ///  When the account balance is not sufficient for the transfer
  static const ResponseCodeEnum INSUFFICIENT_ACCOUNT_BALANCE =
      ResponseCodeEnum._(
          28, _omitEnumNames ? '' : 'INSUFFICIENT_ACCOUNT_BALANCE');

  /// *
  ///  During an update transaction when the system is not able to find the Users Solidity address
  static const ResponseCodeEnum INVALID_SOLIDITY_ADDRESS =
      ResponseCodeEnum._(29, _omitEnumNames ? '' : 'INVALID_SOLIDITY_ADDRESS');

  /// *
  ///  Not enough gas was supplied to execute transaction
  static const ResponseCodeEnum INSUFFICIENT_GAS =
      ResponseCodeEnum._(30, _omitEnumNames ? '' : 'INSUFFICIENT_GAS');

  /// *
  ///  contract byte code size is over the limit
  static const ResponseCodeEnum CONTRACT_SIZE_LIMIT_EXCEEDED =
      ResponseCodeEnum._(
          31, _omitEnumNames ? '' : 'CONTRACT_SIZE_LIMIT_EXCEEDED');

  /// *
  ///  local execution (query) is requested for a function which changes state
  static const ResponseCodeEnum LOCAL_CALL_MODIFICATION_EXCEPTION =
      ResponseCodeEnum._(
          32, _omitEnumNames ? '' : 'LOCAL_CALL_MODIFICATION_EXCEPTION');

  /// *
  ///  Contract REVERT OPCODE executed
  static const ResponseCodeEnum CONTRACT_REVERT_EXECUTED =
      ResponseCodeEnum._(33, _omitEnumNames ? '' : 'CONTRACT_REVERT_EXECUTED');

  /// *
  ///  For any contract execution related error not handled by specific error codes listed above.
  static const ResponseCodeEnum CONTRACT_EXECUTION_EXCEPTION =
      ResponseCodeEnum._(
          34, _omitEnumNames ? '' : 'CONTRACT_EXECUTION_EXCEPTION');

  /// *
  ///  In Query validation, account with +ve(amount) value should be Receiving node account, the
  ///  receiver account should be only one account in the list
  static const ResponseCodeEnum INVALID_RECEIVING_NODE_ACCOUNT =
      ResponseCodeEnum._(
          35, _omitEnumNames ? '' : 'INVALID_RECEIVING_NODE_ACCOUNT');

  /// *
  ///  Header is missing in Query request
  static const ResponseCodeEnum MISSING_QUERY_HEADER =
      ResponseCodeEnum._(36, _omitEnumNames ? '' : 'MISSING_QUERY_HEADER');

  /// *
  ///  The update of the account failed
  static const ResponseCodeEnum ACCOUNT_UPDATE_FAILED =
      ResponseCodeEnum._(37, _omitEnumNames ? '' : 'ACCOUNT_UPDATE_FAILED');

  /// *
  ///  Provided key encoding was not supported by the system
  static const ResponseCodeEnum INVALID_KEY_ENCODING =
      ResponseCodeEnum._(38, _omitEnumNames ? '' : 'INVALID_KEY_ENCODING');

  /// *
  ///  null solidity address
  static const ResponseCodeEnum NULL_SOLIDITY_ADDRESS =
      ResponseCodeEnum._(39, _omitEnumNames ? '' : 'NULL_SOLIDITY_ADDRESS');

  /// *
  ///  update of the contract failed
  static const ResponseCodeEnum CONTRACT_UPDATE_FAILED =
      ResponseCodeEnum._(40, _omitEnumNames ? '' : 'CONTRACT_UPDATE_FAILED');

  /// *
  ///  the query header is invalid
  static const ResponseCodeEnum INVALID_QUERY_HEADER =
      ResponseCodeEnum._(41, _omitEnumNames ? '' : 'INVALID_QUERY_HEADER');

  /// *
  ///  Invalid fee submitted
  static const ResponseCodeEnum INVALID_FEE_SUBMITTED =
      ResponseCodeEnum._(42, _omitEnumNames ? '' : 'INVALID_FEE_SUBMITTED');

  /// *
  ///  Payer signature is invalid
  static const ResponseCodeEnum INVALID_PAYER_SIGNATURE =
      ResponseCodeEnum._(43, _omitEnumNames ? '' : 'INVALID_PAYER_SIGNATURE');

  /// *
  ///  The keys were not provided in the request.
  static const ResponseCodeEnum KEY_NOT_PROVIDED =
      ResponseCodeEnum._(44, _omitEnumNames ? '' : 'KEY_NOT_PROVIDED');

  /// *
  ///  Expiration time provided in the transaction was invalid.
  static const ResponseCodeEnum INVALID_EXPIRATION_TIME =
      ResponseCodeEnum._(45, _omitEnumNames ? '' : 'INVALID_EXPIRATION_TIME');

  /// *
  ///  WriteAccess Control Keys are not provided for the file
  static const ResponseCodeEnum NO_WACL_KEY =
      ResponseCodeEnum._(46, _omitEnumNames ? '' : 'NO_WACL_KEY');

  /// *
  ///  The contents of file are provided as empty.
  static const ResponseCodeEnum FILE_CONTENT_EMPTY =
      ResponseCodeEnum._(47, _omitEnumNames ? '' : 'FILE_CONTENT_EMPTY');

  /// *
  ///  The crypto transfer credit and debit do not sum equal to 0
  static const ResponseCodeEnum INVALID_ACCOUNT_AMOUNTS =
      ResponseCodeEnum._(48, _omitEnumNames ? '' : 'INVALID_ACCOUNT_AMOUNTS');

  /// *
  ///  Transaction body provided is empty
  static const ResponseCodeEnum EMPTY_TRANSACTION_BODY =
      ResponseCodeEnum._(49, _omitEnumNames ? '' : 'EMPTY_TRANSACTION_BODY');

  /// *
  ///  Invalid transaction body provided
  static const ResponseCodeEnum INVALID_TRANSACTION_BODY =
      ResponseCodeEnum._(50, _omitEnumNames ? '' : 'INVALID_TRANSACTION_BODY');

  /// *
  ///  the type of key (base ed25519 key, KeyList, or ThresholdKey) does not match the type of
  ///  signature (base ed25519 signature, SignatureList, or ThresholdKeySignature)
  static const ResponseCodeEnum INVALID_SIGNATURE_TYPE_MISMATCHING_KEY =
      ResponseCodeEnum._(
          51, _omitEnumNames ? '' : 'INVALID_SIGNATURE_TYPE_MISMATCHING_KEY');

  /// *
  ///  the number of key (KeyList, or ThresholdKey) does not match that of signature (SignatureList,
  ///  or ThresholdKeySignature). e.g. if a keyList has 3 base keys, then the corresponding
  ///  signatureList should also have 3 base signatures.
  static const ResponseCodeEnum INVALID_SIGNATURE_COUNT_MISMATCHING_KEY =
      ResponseCodeEnum._(
          52, _omitEnumNames ? '' : 'INVALID_SIGNATURE_COUNT_MISMATCHING_KEY');

  /// *
  ///  the livehash body is empty
  static const ResponseCodeEnum EMPTY_LIVE_HASH_BODY =
      ResponseCodeEnum._(53, _omitEnumNames ? '' : 'EMPTY_LIVE_HASH_BODY');

  /// *
  ///  the livehash data is missing
  static const ResponseCodeEnum EMPTY_LIVE_HASH =
      ResponseCodeEnum._(54, _omitEnumNames ? '' : 'EMPTY_LIVE_HASH');

  /// *
  ///  the keys for a livehash are missing
  static const ResponseCodeEnum EMPTY_LIVE_HASH_KEYS =
      ResponseCodeEnum._(55, _omitEnumNames ? '' : 'EMPTY_LIVE_HASH_KEYS');

  /// *
  ///  the livehash data is not the output of a SHA-384 digest
  static const ResponseCodeEnum INVALID_LIVE_HASH_SIZE =
      ResponseCodeEnum._(56, _omitEnumNames ? '' : 'INVALID_LIVE_HASH_SIZE');

  /// *
  ///  the query body is empty
  static const ResponseCodeEnum EMPTY_QUERY_BODY =
      ResponseCodeEnum._(57, _omitEnumNames ? '' : 'EMPTY_QUERY_BODY');

  /// *
  ///  the crypto livehash query is empty
  static const ResponseCodeEnum EMPTY_LIVE_HASH_QUERY =
      ResponseCodeEnum._(58, _omitEnumNames ? '' : 'EMPTY_LIVE_HASH_QUERY');

  /// *
  ///  the livehash is not present
  static const ResponseCodeEnum LIVE_HASH_NOT_FOUND =
      ResponseCodeEnum._(59, _omitEnumNames ? '' : 'LIVE_HASH_NOT_FOUND');

  /// *
  ///  the account id passed has not yet been created.
  static const ResponseCodeEnum ACCOUNT_ID_DOES_NOT_EXIST =
      ResponseCodeEnum._(60, _omitEnumNames ? '' : 'ACCOUNT_ID_DOES_NOT_EXIST');

  /// *
  ///  the livehash already exists for a given account
  static const ResponseCodeEnum LIVE_HASH_ALREADY_EXISTS =
      ResponseCodeEnum._(61, _omitEnumNames ? '' : 'LIVE_HASH_ALREADY_EXISTS');

  /// *
  ///  File WACL keys are invalid
  static const ResponseCodeEnum INVALID_FILE_WACL =
      ResponseCodeEnum._(62, _omitEnumNames ? '' : 'INVALID_FILE_WACL');

  /// *
  ///  Serialization failure
  static const ResponseCodeEnum SERIALIZATION_FAILED =
      ResponseCodeEnum._(63, _omitEnumNames ? '' : 'SERIALIZATION_FAILED');

  /// *
  ///  The size of the Transaction is greater than transactionMaxBytes
  static const ResponseCodeEnum TRANSACTION_OVERSIZE =
      ResponseCodeEnum._(64, _omitEnumNames ? '' : 'TRANSACTION_OVERSIZE');

  /// *
  ///  The Transaction has more than 50 levels
  static const ResponseCodeEnum TRANSACTION_TOO_MANY_LAYERS =
      ResponseCodeEnum._(
          65, _omitEnumNames ? '' : 'TRANSACTION_TOO_MANY_LAYERS');

  /// *
  ///  Contract is marked as deleted
  static const ResponseCodeEnum CONTRACT_DELETED =
      ResponseCodeEnum._(66, _omitEnumNames ? '' : 'CONTRACT_DELETED');

  /// *
  ///  the platform node is either disconnected or lagging behind.
  static const ResponseCodeEnum PLATFORM_NOT_ACTIVE =
      ResponseCodeEnum._(67, _omitEnumNames ? '' : 'PLATFORM_NOT_ACTIVE');

  /// *
  ///  one public key matches more than one prefixes on the signature map
  static const ResponseCodeEnum KEY_PREFIX_MISMATCH =
      ResponseCodeEnum._(68, _omitEnumNames ? '' : 'KEY_PREFIX_MISMATCH');

  /// *
  ///  transaction not created by platform due to large backlog
  static const ResponseCodeEnum PLATFORM_TRANSACTION_NOT_CREATED =
      ResponseCodeEnum._(
          69, _omitEnumNames ? '' : 'PLATFORM_TRANSACTION_NOT_CREATED');

  /// *
  ///  auto renewal period is not a positive number of seconds
  static const ResponseCodeEnum INVALID_RENEWAL_PERIOD =
      ResponseCodeEnum._(70, _omitEnumNames ? '' : 'INVALID_RENEWAL_PERIOD');

  /// *
  ///  the response code when a smart contract id is passed for a crypto API request
  static const ResponseCodeEnum INVALID_PAYER_ACCOUNT_ID =
      ResponseCodeEnum._(71, _omitEnumNames ? '' : 'INVALID_PAYER_ACCOUNT_ID');

  /// *
  ///  the account has been marked as deleted
  static const ResponseCodeEnum ACCOUNT_DELETED =
      ResponseCodeEnum._(72, _omitEnumNames ? '' : 'ACCOUNT_DELETED');

  /// *
  ///  the file has been marked as deleted
  static const ResponseCodeEnum FILE_DELETED =
      ResponseCodeEnum._(73, _omitEnumNames ? '' : 'FILE_DELETED');

  /// *
  ///  same accounts repeated in the transfer account list
  static const ResponseCodeEnum ACCOUNT_REPEATED_IN_ACCOUNT_AMOUNTS =
      ResponseCodeEnum._(
          74, _omitEnumNames ? '' : 'ACCOUNT_REPEATED_IN_ACCOUNT_AMOUNTS');

  /// *
  ///  attempting to set negative balance value for crypto account
  static const ResponseCodeEnum SETTING_NEGATIVE_ACCOUNT_BALANCE =
      ResponseCodeEnum._(
          75, _omitEnumNames ? '' : 'SETTING_NEGATIVE_ACCOUNT_BALANCE');

  /// *
  ///  when deleting smart contract that has crypto balance either transfer account or transfer smart
  ///  contract is required
  static const ResponseCodeEnum OBTAINER_REQUIRED =
      ResponseCodeEnum._(76, _omitEnumNames ? '' : 'OBTAINER_REQUIRED');

  /// *
  ///  when deleting smart contract that has crypto balance you can not use the same contract id as
  ///  transferContractId as the one being deleted
  static const ResponseCodeEnum OBTAINER_SAME_CONTRACT_ID =
      ResponseCodeEnum._(77, _omitEnumNames ? '' : 'OBTAINER_SAME_CONTRACT_ID');

  /// *
  ///  transferAccountId or transferContractId specified for contract delete does not exist
  static const ResponseCodeEnum OBTAINER_DOES_NOT_EXIST =
      ResponseCodeEnum._(78, _omitEnumNames ? '' : 'OBTAINER_DOES_NOT_EXIST');

  /// *
  ///  attempting to modify (update or delete a immutable smart contract, i.e. one created without a
  ///  admin key)
  static const ResponseCodeEnum MODIFYING_IMMUTABLE_CONTRACT =
      ResponseCodeEnum._(
          79, _omitEnumNames ? '' : 'MODIFYING_IMMUTABLE_CONTRACT');

  /// *
  ///  Unexpected exception thrown by file system functions
  static const ResponseCodeEnum FILE_SYSTEM_EXCEPTION =
      ResponseCodeEnum._(80, _omitEnumNames ? '' : 'FILE_SYSTEM_EXCEPTION');

  /// *
  ///  the duration is not a subset of [MINIMUM_AUTORENEW_DURATION,MAXIMUM_AUTORENEW_DURATION]
  static const ResponseCodeEnum AUTORENEW_DURATION_NOT_IN_RANGE =
      ResponseCodeEnum._(
          81, _omitEnumNames ? '' : 'AUTORENEW_DURATION_NOT_IN_RANGE');

  /// *
  ///  Decoding the smart contract binary to a byte array failed. Check that the input is a valid hex
  ///  string.
  static const ResponseCodeEnum ERROR_DECODING_BYTESTRING =
      ResponseCodeEnum._(82, _omitEnumNames ? '' : 'ERROR_DECODING_BYTESTRING');

  /// *
  ///  File to create a smart contract was of length zero
  static const ResponseCodeEnum CONTRACT_FILE_EMPTY =
      ResponseCodeEnum._(83, _omitEnumNames ? '' : 'CONTRACT_FILE_EMPTY');

  /// *
  ///  Bytecode for smart contract is of length zero
  static const ResponseCodeEnum CONTRACT_BYTECODE_EMPTY =
      ResponseCodeEnum._(84, _omitEnumNames ? '' : 'CONTRACT_BYTECODE_EMPTY');

  /// *
  ///  Attempt to set negative initial balance
  static const ResponseCodeEnum INVALID_INITIAL_BALANCE =
      ResponseCodeEnum._(85, _omitEnumNames ? '' : 'INVALID_INITIAL_BALANCE');

  /// *
  ///  Attempt to set negative receive record threshold
  @$core.Deprecated('This enum value is deprecated')
  static const ResponseCodeEnum INVALID_RECEIVE_RECORD_THRESHOLD =
      ResponseCodeEnum._(
          86, _omitEnumNames ? '' : 'INVALID_RECEIVE_RECORD_THRESHOLD');

  /// *
  ///  Attempt to set negative send record threshold
  @$core.Deprecated('This enum value is deprecated')
  static const ResponseCodeEnum INVALID_SEND_RECORD_THRESHOLD =
      ResponseCodeEnum._(
          87, _omitEnumNames ? '' : 'INVALID_SEND_RECORD_THRESHOLD');

  /// *
  ///  Special Account Operations should be performed by only Genesis account, return this code if it
  ///  is not Genesis Account
  static const ResponseCodeEnum ACCOUNT_IS_NOT_GENESIS_ACCOUNT =
      ResponseCodeEnum._(
          88, _omitEnumNames ? '' : 'ACCOUNT_IS_NOT_GENESIS_ACCOUNT');

  /// *
  ///  The fee payer account doesn't have permission to submit such Transaction
  static const ResponseCodeEnum PAYER_ACCOUNT_UNAUTHORIZED = ResponseCodeEnum._(
      89, _omitEnumNames ? '' : 'PAYER_ACCOUNT_UNAUTHORIZED');

  /// *
  ///  FreezeTransactionBody is invalid
  static const ResponseCodeEnum INVALID_FREEZE_TRANSACTION_BODY =
      ResponseCodeEnum._(
          90, _omitEnumNames ? '' : 'INVALID_FREEZE_TRANSACTION_BODY');

  /// *
  ///  FreezeTransactionBody does not exist
  static const ResponseCodeEnum FREEZE_TRANSACTION_BODY_NOT_FOUND =
      ResponseCodeEnum._(
          91, _omitEnumNames ? '' : 'FREEZE_TRANSACTION_BODY_NOT_FOUND');

  /// *
  ///  Exceeded the number of accounts (both from and to) allowed for crypto transfer list
  static const ResponseCodeEnum TRANSFER_LIST_SIZE_LIMIT_EXCEEDED =
      ResponseCodeEnum._(
          92, _omitEnumNames ? '' : 'TRANSFER_LIST_SIZE_LIMIT_EXCEEDED');

  /// *
  ///  Smart contract result size greater than specified maxResultSize
  static const ResponseCodeEnum RESULT_SIZE_LIMIT_EXCEEDED = ResponseCodeEnum._(
      93, _omitEnumNames ? '' : 'RESULT_SIZE_LIMIT_EXCEEDED');

  /// *
  ///  The payer account is not a special account(account 0.0.55)
  static const ResponseCodeEnum NOT_SPECIAL_ACCOUNT =
      ResponseCodeEnum._(94, _omitEnumNames ? '' : 'NOT_SPECIAL_ACCOUNT');

  /// *
  ///  Negative gas was offered in smart contract call
  static const ResponseCodeEnum CONTRACT_NEGATIVE_GAS =
      ResponseCodeEnum._(95, _omitEnumNames ? '' : 'CONTRACT_NEGATIVE_GAS');

  /// *
  ///  Negative value / initial balance was specified in a smart contract call / create
  static const ResponseCodeEnum CONTRACT_NEGATIVE_VALUE =
      ResponseCodeEnum._(96, _omitEnumNames ? '' : 'CONTRACT_NEGATIVE_VALUE');

  /// *
  ///  Failed to update fee file
  static const ResponseCodeEnum INVALID_FEE_FILE =
      ResponseCodeEnum._(97, _omitEnumNames ? '' : 'INVALID_FEE_FILE');

  /// *
  ///  Failed to update exchange rate file
  static const ResponseCodeEnum INVALID_EXCHANGE_RATE_FILE = ResponseCodeEnum._(
      98, _omitEnumNames ? '' : 'INVALID_EXCHANGE_RATE_FILE');

  /// *
  ///  Payment tendered for contract local call cannot cover both the fee and the gas
  static const ResponseCodeEnum INSUFFICIENT_LOCAL_CALL_GAS =
      ResponseCodeEnum._(
          99, _omitEnumNames ? '' : 'INSUFFICIENT_LOCAL_CALL_GAS');

  /// *
  ///  Entities with Entity ID below 1000 are not allowed to be deleted
  static const ResponseCodeEnum ENTITY_NOT_ALLOWED_TO_DELETE =
      ResponseCodeEnum._(
          100, _omitEnumNames ? '' : 'ENTITY_NOT_ALLOWED_TO_DELETE');

  /// *
  ///  Violating one of these rules: 1) treasury account can update all entities below 0.0.1000, 2)
  ///  account 0.0.50 can update all entities from 0.0.51 - 0.0.80, 3) Network Function Master Account
  ///  A/c 0.0.50 - Update all Network Function accounts & perform all the Network Functions listed
  ///  below, 4) Network Function Accounts: i) A/c 0.0.55 - Update Address Book files (0.0.101/102),
  ///  ii) A/c 0.0.56 - Update Fee schedule (0.0.111), iii) A/c 0.0.57 - Update Exchange Rate
  ///  (0.0.112).
  static const ResponseCodeEnum AUTHORIZATION_FAILED =
      ResponseCodeEnum._(101, _omitEnumNames ? '' : 'AUTHORIZATION_FAILED');

  /// *
  ///  Fee Schedule Proto uploaded but not valid (append or update is required)
  static const ResponseCodeEnum FILE_UPLOADED_PROTO_INVALID =
      ResponseCodeEnum._(
          102, _omitEnumNames ? '' : 'FILE_UPLOADED_PROTO_INVALID');

  /// *
  ///  Fee Schedule Proto uploaded but not valid (append or update is required)
  static const ResponseCodeEnum FILE_UPLOADED_PROTO_NOT_SAVED_TO_DISK =
      ResponseCodeEnum._(
          103, _omitEnumNames ? '' : 'FILE_UPLOADED_PROTO_NOT_SAVED_TO_DISK');

  /// *
  ///  Fee Schedule Proto File Part uploaded
  static const ResponseCodeEnum FEE_SCHEDULE_FILE_PART_UPLOADED =
      ResponseCodeEnum._(
          104, _omitEnumNames ? '' : 'FEE_SCHEDULE_FILE_PART_UPLOADED');

  /// *
  ///  The change on Exchange Rate exceeds Exchange_Rate_Allowed_Percentage
  static const ResponseCodeEnum EXCHANGE_RATE_CHANGE_LIMIT_EXCEEDED =
      ResponseCodeEnum._(
          105, _omitEnumNames ? '' : 'EXCHANGE_RATE_CHANGE_LIMIT_EXCEEDED');

  /// *
  ///  Contract permanent storage exceeded the currently allowable limit
  static const ResponseCodeEnum MAX_CONTRACT_STORAGE_EXCEEDED =
      ResponseCodeEnum._(
          106, _omitEnumNames ? '' : 'MAX_CONTRACT_STORAGE_EXCEEDED');

  /// *
  ///  Transfer Account should not be same as Account to be deleted
  static const ResponseCodeEnum TRANSFER_ACCOUNT_SAME_AS_DELETE_ACCOUNT =
      ResponseCodeEnum._(
          107, _omitEnumNames ? '' : 'TRANSFER_ACCOUNT_SAME_AS_DELETE_ACCOUNT');
  static const ResponseCodeEnum TOTAL_LEDGER_BALANCE_INVALID =
      ResponseCodeEnum._(
          108, _omitEnumNames ? '' : 'TOTAL_LEDGER_BALANCE_INVALID');

  /// *
  ///  The expiration date/time on a smart contract may not be reduced
  static const ResponseCodeEnum EXPIRATION_REDUCTION_NOT_ALLOWED =
      ResponseCodeEnum._(
          110, _omitEnumNames ? '' : 'EXPIRATION_REDUCTION_NOT_ALLOWED');

  /// *
  ///  Gas exceeded currently allowable gas limit per transaction
  static const ResponseCodeEnum MAX_GAS_LIMIT_EXCEEDED =
      ResponseCodeEnum._(111, _omitEnumNames ? '' : 'MAX_GAS_LIMIT_EXCEEDED');

  /// *
  ///  File size exceeded the currently allowable limit
  static const ResponseCodeEnum MAX_FILE_SIZE_EXCEEDED =
      ResponseCodeEnum._(112, _omitEnumNames ? '' : 'MAX_FILE_SIZE_EXCEEDED');

  /// *
  ///  When a valid signature is not provided for operations on account with receiverSigRequired=true
  static const ResponseCodeEnum RECEIVER_SIG_REQUIRED =
      ResponseCodeEnum._(113, _omitEnumNames ? '' : 'RECEIVER_SIG_REQUIRED');

  /// *
  ///  The Topic ID specified is not in the system.
  static const ResponseCodeEnum INVALID_TOPIC_ID =
      ResponseCodeEnum._(150, _omitEnumNames ? '' : 'INVALID_TOPIC_ID');

  /// *
  ///  A provided admin key was invalid. Verify the bytes for an Ed25519 public key are exactly 32 bytes; and the bytes for a compressed ECDSA(secp256k1) key are exactly 33 bytes, with the first byte either 0x02 or 0x03..
  static const ResponseCodeEnum INVALID_ADMIN_KEY =
      ResponseCodeEnum._(155, _omitEnumNames ? '' : 'INVALID_ADMIN_KEY');

  /// *
  ///  A provided submit key was invalid.
  static const ResponseCodeEnum INVALID_SUBMIT_KEY =
      ResponseCodeEnum._(156, _omitEnumNames ? '' : 'INVALID_SUBMIT_KEY');

  /// *
  ///  An attempted operation was not authorized (ie - a deleteTopic for a topic with no adminKey).
  static const ResponseCodeEnum UNAUTHORIZED =
      ResponseCodeEnum._(157, _omitEnumNames ? '' : 'UNAUTHORIZED');

  /// *
  ///  A ConsensusService message is empty.
  static const ResponseCodeEnum INVALID_TOPIC_MESSAGE =
      ResponseCodeEnum._(158, _omitEnumNames ? '' : 'INVALID_TOPIC_MESSAGE');

  /// *
  ///  The autoRenewAccount specified is not a valid, active account.
  static const ResponseCodeEnum INVALID_AUTORENEW_ACCOUNT = ResponseCodeEnum._(
      159, _omitEnumNames ? '' : 'INVALID_AUTORENEW_ACCOUNT');

  /// *
  ///  An adminKey was not specified on the topic, so there must not be an autoRenewAccount.
  static const ResponseCodeEnum AUTORENEW_ACCOUNT_NOT_ALLOWED =
      ResponseCodeEnum._(
          160, _omitEnumNames ? '' : 'AUTORENEW_ACCOUNT_NOT_ALLOWED');

  /// *
  ///  The topic has expired, was not automatically renewed, and is in a 7 day grace period before the
  ///  topic will be deleted unrecoverably. This error response code will not be returned until
  ///  autoRenew functionality is supported by HAPI.
  static const ResponseCodeEnum TOPIC_EXPIRED =
      ResponseCodeEnum._(162, _omitEnumNames ? '' : 'TOPIC_EXPIRED');
  static const ResponseCodeEnum INVALID_CHUNK_NUMBER =
      ResponseCodeEnum._(163, _omitEnumNames ? '' : 'INVALID_CHUNK_NUMBER');
  static const ResponseCodeEnum INVALID_CHUNK_TRANSACTION_ID =
      ResponseCodeEnum._(
          164, _omitEnumNames ? '' : 'INVALID_CHUNK_TRANSACTION_ID');
  static const ResponseCodeEnum ACCOUNT_FROZEN_FOR_TOKEN =
      ResponseCodeEnum._(165, _omitEnumNames ? '' : 'ACCOUNT_FROZEN_FOR_TOKEN');
  static const ResponseCodeEnum TOKENS_PER_ACCOUNT_LIMIT_EXCEEDED =
      ResponseCodeEnum._(
          166, _omitEnumNames ? '' : 'TOKENS_PER_ACCOUNT_LIMIT_EXCEEDED');
  static const ResponseCodeEnum INVALID_TOKEN_ID =
      ResponseCodeEnum._(167, _omitEnumNames ? '' : 'INVALID_TOKEN_ID');
  static const ResponseCodeEnum INVALID_TOKEN_DECIMALS =
      ResponseCodeEnum._(168, _omitEnumNames ? '' : 'INVALID_TOKEN_DECIMALS');
  static const ResponseCodeEnum INVALID_TOKEN_INITIAL_SUPPLY =
      ResponseCodeEnum._(
          169, _omitEnumNames ? '' : 'INVALID_TOKEN_INITIAL_SUPPLY');
  static const ResponseCodeEnum INVALID_TREASURY_ACCOUNT_FOR_TOKEN =
      ResponseCodeEnum._(
          170, _omitEnumNames ? '' : 'INVALID_TREASURY_ACCOUNT_FOR_TOKEN');
  static const ResponseCodeEnum INVALID_TOKEN_SYMBOL =
      ResponseCodeEnum._(171, _omitEnumNames ? '' : 'INVALID_TOKEN_SYMBOL');
  static const ResponseCodeEnum TOKEN_HAS_NO_FREEZE_KEY =
      ResponseCodeEnum._(172, _omitEnumNames ? '' : 'TOKEN_HAS_NO_FREEZE_KEY');
  static const ResponseCodeEnum TRANSFERS_NOT_ZERO_SUM_FOR_TOKEN =
      ResponseCodeEnum._(
          173, _omitEnumNames ? '' : 'TRANSFERS_NOT_ZERO_SUM_FOR_TOKEN');
  static const ResponseCodeEnum MISSING_TOKEN_SYMBOL =
      ResponseCodeEnum._(174, _omitEnumNames ? '' : 'MISSING_TOKEN_SYMBOL');
  static const ResponseCodeEnum TOKEN_SYMBOL_TOO_LONG =
      ResponseCodeEnum._(175, _omitEnumNames ? '' : 'TOKEN_SYMBOL_TOO_LONG');
  static const ResponseCodeEnum ACCOUNT_KYC_NOT_GRANTED_FOR_TOKEN =
      ResponseCodeEnum._(
          176, _omitEnumNames ? '' : 'ACCOUNT_KYC_NOT_GRANTED_FOR_TOKEN');
  static const ResponseCodeEnum TOKEN_HAS_NO_KYC_KEY =
      ResponseCodeEnum._(177, _omitEnumNames ? '' : 'TOKEN_HAS_NO_KYC_KEY');
  static const ResponseCodeEnum INSUFFICIENT_TOKEN_BALANCE = ResponseCodeEnum._(
      178, _omitEnumNames ? '' : 'INSUFFICIENT_TOKEN_BALANCE');
  static const ResponseCodeEnum TOKEN_WAS_DELETED =
      ResponseCodeEnum._(179, _omitEnumNames ? '' : 'TOKEN_WAS_DELETED');
  static const ResponseCodeEnum TOKEN_HAS_NO_SUPPLY_KEY =
      ResponseCodeEnum._(180, _omitEnumNames ? '' : 'TOKEN_HAS_NO_SUPPLY_KEY');
  static const ResponseCodeEnum TOKEN_HAS_NO_WIPE_KEY =
      ResponseCodeEnum._(181, _omitEnumNames ? '' : 'TOKEN_HAS_NO_WIPE_KEY');
  static const ResponseCodeEnum INVALID_TOKEN_MINT_AMOUNT = ResponseCodeEnum._(
      182, _omitEnumNames ? '' : 'INVALID_TOKEN_MINT_AMOUNT');
  static const ResponseCodeEnum INVALID_TOKEN_BURN_AMOUNT = ResponseCodeEnum._(
      183, _omitEnumNames ? '' : 'INVALID_TOKEN_BURN_AMOUNT');
  static const ResponseCodeEnum TOKEN_NOT_ASSOCIATED_TO_ACCOUNT =
      ResponseCodeEnum._(
          184, _omitEnumNames ? '' : 'TOKEN_NOT_ASSOCIATED_TO_ACCOUNT');
  static const ResponseCodeEnum CANNOT_WIPE_TOKEN_TREASURY_ACCOUNT =
      ResponseCodeEnum._(
          185, _omitEnumNames ? '' : 'CANNOT_WIPE_TOKEN_TREASURY_ACCOUNT');
  static const ResponseCodeEnum INVALID_KYC_KEY =
      ResponseCodeEnum._(186, _omitEnumNames ? '' : 'INVALID_KYC_KEY');
  static const ResponseCodeEnum INVALID_WIPE_KEY =
      ResponseCodeEnum._(187, _omitEnumNames ? '' : 'INVALID_WIPE_KEY');
  static const ResponseCodeEnum INVALID_FREEZE_KEY =
      ResponseCodeEnum._(188, _omitEnumNames ? '' : 'INVALID_FREEZE_KEY');
  static const ResponseCodeEnum INVALID_SUPPLY_KEY =
      ResponseCodeEnum._(189, _omitEnumNames ? '' : 'INVALID_SUPPLY_KEY');
  static const ResponseCodeEnum MISSING_TOKEN_NAME =
      ResponseCodeEnum._(190, _omitEnumNames ? '' : 'MISSING_TOKEN_NAME');
  static const ResponseCodeEnum TOKEN_NAME_TOO_LONG =
      ResponseCodeEnum._(191, _omitEnumNames ? '' : 'TOKEN_NAME_TOO_LONG');
  static const ResponseCodeEnum INVALID_WIPING_AMOUNT =
      ResponseCodeEnum._(192, _omitEnumNames ? '' : 'INVALID_WIPING_AMOUNT');
  static const ResponseCodeEnum TOKEN_IS_IMMUTABLE =
      ResponseCodeEnum._(193, _omitEnumNames ? '' : 'TOKEN_IS_IMMUTABLE');
  static const ResponseCodeEnum TOKEN_ALREADY_ASSOCIATED_TO_ACCOUNT =
      ResponseCodeEnum._(
          194, _omitEnumNames ? '' : 'TOKEN_ALREADY_ASSOCIATED_TO_ACCOUNT');
  static const ResponseCodeEnum TRANSACTION_REQUIRES_ZERO_TOKEN_BALANCES =
      ResponseCodeEnum._(195,
          _omitEnumNames ? '' : 'TRANSACTION_REQUIRES_ZERO_TOKEN_BALANCES');
  static const ResponseCodeEnum ACCOUNT_IS_TREASURY =
      ResponseCodeEnum._(196, _omitEnumNames ? '' : 'ACCOUNT_IS_TREASURY');
  static const ResponseCodeEnum TOKEN_ID_REPEATED_IN_TOKEN_LIST =
      ResponseCodeEnum._(
          197, _omitEnumNames ? '' : 'TOKEN_ID_REPEATED_IN_TOKEN_LIST');
  static const ResponseCodeEnum TOKEN_TRANSFER_LIST_SIZE_LIMIT_EXCEEDED =
      ResponseCodeEnum._(
          198, _omitEnumNames ? '' : 'TOKEN_TRANSFER_LIST_SIZE_LIMIT_EXCEEDED');
  static const ResponseCodeEnum EMPTY_TOKEN_TRANSFER_BODY = ResponseCodeEnum._(
      199, _omitEnumNames ? '' : 'EMPTY_TOKEN_TRANSFER_BODY');
  static const ResponseCodeEnum EMPTY_TOKEN_TRANSFER_ACCOUNT_AMOUNTS =
      ResponseCodeEnum._(
          200, _omitEnumNames ? '' : 'EMPTY_TOKEN_TRANSFER_ACCOUNT_AMOUNTS');

  /// *
  ///  The Scheduled entity does not exist; or has now expired, been deleted, or been executed
  static const ResponseCodeEnum INVALID_SCHEDULE_ID =
      ResponseCodeEnum._(201, _omitEnumNames ? '' : 'INVALID_SCHEDULE_ID');

  /// *
  ///  The Scheduled entity cannot be modified. Admin key not set
  static const ResponseCodeEnum SCHEDULE_IS_IMMUTABLE =
      ResponseCodeEnum._(202, _omitEnumNames ? '' : 'SCHEDULE_IS_IMMUTABLE');

  /// *
  ///  The provided Scheduled Payer does not exist
  static const ResponseCodeEnum INVALID_SCHEDULE_PAYER_ID = ResponseCodeEnum._(
      203, _omitEnumNames ? '' : 'INVALID_SCHEDULE_PAYER_ID');

  /// *
  ///  The Schedule Create Transaction TransactionID account does not exist
  static const ResponseCodeEnum INVALID_SCHEDULE_ACCOUNT_ID =
      ResponseCodeEnum._(
          204, _omitEnumNames ? '' : 'INVALID_SCHEDULE_ACCOUNT_ID');

  /// *
  ///  The provided sig map did not contain any new valid signatures from required signers of the scheduled transaction
  static const ResponseCodeEnum NO_NEW_VALID_SIGNATURES =
      ResponseCodeEnum._(205, _omitEnumNames ? '' : 'NO_NEW_VALID_SIGNATURES');

  /// *
  ///  The required signers for a scheduled transaction cannot be resolved, for example because they do not exist or have been deleted
  static const ResponseCodeEnum UNRESOLVABLE_REQUIRED_SIGNERS =
      ResponseCodeEnum._(
          206, _omitEnumNames ? '' : 'UNRESOLVABLE_REQUIRED_SIGNERS');

  /// *
  ///  Only whitelisted transaction types may be scheduled
  static const ResponseCodeEnum SCHEDULED_TRANSACTION_NOT_IN_WHITELIST =
      ResponseCodeEnum._(
          207, _omitEnumNames ? '' : 'SCHEDULED_TRANSACTION_NOT_IN_WHITELIST');

  /// *
  ///  At least one of the signatures in the provided sig map did not represent a valid signature for any required signer
  static const ResponseCodeEnum SOME_SIGNATURES_WERE_INVALID =
      ResponseCodeEnum._(
          208, _omitEnumNames ? '' : 'SOME_SIGNATURES_WERE_INVALID');

  /// *
  ///  The scheduled field in the TransactionID may not be set to true
  static const ResponseCodeEnum TRANSACTION_ID_FIELD_NOT_ALLOWED =
      ResponseCodeEnum._(
          209, _omitEnumNames ? '' : 'TRANSACTION_ID_FIELD_NOT_ALLOWED');

  /// *
  ///  A schedule already exists with the same identifying fields of an attempted ScheduleCreate (that is, all fields other than scheduledPayerAccountID)
  static const ResponseCodeEnum IDENTICAL_SCHEDULE_ALREADY_CREATED =
      ResponseCodeEnum._(
          210, _omitEnumNames ? '' : 'IDENTICAL_SCHEDULE_ALREADY_CREATED');

  /// *
  ///  A string field in the transaction has a UTF-8 encoding with the prohibited zero byte
  static const ResponseCodeEnum INVALID_ZERO_BYTE_IN_STRING =
      ResponseCodeEnum._(
          211, _omitEnumNames ? '' : 'INVALID_ZERO_BYTE_IN_STRING');

  /// *
  ///  A schedule being signed or deleted has already been deleted
  static const ResponseCodeEnum SCHEDULE_ALREADY_DELETED =
      ResponseCodeEnum._(212, _omitEnumNames ? '' : 'SCHEDULE_ALREADY_DELETED');

  /// *
  ///  A schedule being signed or deleted has already been executed
  static const ResponseCodeEnum SCHEDULE_ALREADY_EXECUTED = ResponseCodeEnum._(
      213, _omitEnumNames ? '' : 'SCHEDULE_ALREADY_EXECUTED');

  /// *
  ///  ConsensusSubmitMessage request's message size is larger than allowed.
  static const ResponseCodeEnum MESSAGE_SIZE_TOO_LARGE =
      ResponseCodeEnum._(214, _omitEnumNames ? '' : 'MESSAGE_SIZE_TOO_LARGE');

  /// *
  ///  An operation was assigned to more than one throttle group in a given bucket
  static const ResponseCodeEnum OPERATION_REPEATED_IN_BUCKET_GROUPS =
      ResponseCodeEnum._(
          215, _omitEnumNames ? '' : 'OPERATION_REPEATED_IN_BUCKET_GROUPS');

  /// *
  ///  The capacity needed to satisfy all opsPerSec groups in a bucket overflowed a signed 8-byte integral type
  static const ResponseCodeEnum BUCKET_CAPACITY_OVERFLOW =
      ResponseCodeEnum._(216, _omitEnumNames ? '' : 'BUCKET_CAPACITY_OVERFLOW');

  /// *
  ///  Given the network size in the address book, the node-level capacity for an operation would never be enough to accept a single request; usually means a bucket burstPeriod should be increased
  static const ResponseCodeEnum NODE_CAPACITY_NOT_SUFFICIENT_FOR_OPERATION =
      ResponseCodeEnum._(217,
          _omitEnumNames ? '' : 'NODE_CAPACITY_NOT_SUFFICIENT_FOR_OPERATION');

  /// *
  ///  A bucket was defined without any throttle groups
  static const ResponseCodeEnum BUCKET_HAS_NO_THROTTLE_GROUPS =
      ResponseCodeEnum._(
          218, _omitEnumNames ? '' : 'BUCKET_HAS_NO_THROTTLE_GROUPS');

  /// *
  ///  A throttle group was granted zero opsPerSec
  static const ResponseCodeEnum THROTTLE_GROUP_HAS_ZERO_OPS_PER_SEC =
      ResponseCodeEnum._(
          219, _omitEnumNames ? '' : 'THROTTLE_GROUP_HAS_ZERO_OPS_PER_SEC');

  /// *
  ///  The throttle definitions file was updated, but some supported operations were not assigned a bucket
  static const ResponseCodeEnum SUCCESS_BUT_MISSING_EXPECTED_OPERATION =
      ResponseCodeEnum._(
          220, _omitEnumNames ? '' : 'SUCCESS_BUT_MISSING_EXPECTED_OPERATION');

  /// *
  ///  The new contents for the throttle definitions system file were not valid protobuf
  static const ResponseCodeEnum UNPARSEABLE_THROTTLE_DEFINITIONS =
      ResponseCodeEnum._(
          221, _omitEnumNames ? '' : 'UNPARSEABLE_THROTTLE_DEFINITIONS');

  /// *
  ///  The new throttle definitions system file were invalid, and no more specific error could be divined
  static const ResponseCodeEnum INVALID_THROTTLE_DEFINITIONS =
      ResponseCodeEnum._(
          222, _omitEnumNames ? '' : 'INVALID_THROTTLE_DEFINITIONS');

  /// *
  ///  The transaction references an account which has passed its expiration without renewal funds available, and currently remains in the ledger only because of the grace period given to expired entities
  static const ResponseCodeEnum ACCOUNT_EXPIRED_AND_PENDING_REMOVAL =
      ResponseCodeEnum._(
          223, _omitEnumNames ? '' : 'ACCOUNT_EXPIRED_AND_PENDING_REMOVAL');

  /// *
  ///  Invalid token max supply
  static const ResponseCodeEnum INVALID_TOKEN_MAX_SUPPLY =
      ResponseCodeEnum._(224, _omitEnumNames ? '' : 'INVALID_TOKEN_MAX_SUPPLY');

  /// *
  ///  Invalid token nft serial number
  static const ResponseCodeEnum INVALID_TOKEN_NFT_SERIAL_NUMBER =
      ResponseCodeEnum._(
          225, _omitEnumNames ? '' : 'INVALID_TOKEN_NFT_SERIAL_NUMBER');

  /// *
  ///  Invalid nft id
  static const ResponseCodeEnum INVALID_NFT_ID =
      ResponseCodeEnum._(226, _omitEnumNames ? '' : 'INVALID_NFT_ID');

  /// *
  ///  Nft metadata is too long
  static const ResponseCodeEnum METADATA_TOO_LONG =
      ResponseCodeEnum._(227, _omitEnumNames ? '' : 'METADATA_TOO_LONG');

  /// *
  ///  Repeated operations count exceeds the limit
  static const ResponseCodeEnum BATCH_SIZE_LIMIT_EXCEEDED = ResponseCodeEnum._(
      228, _omitEnumNames ? '' : 'BATCH_SIZE_LIMIT_EXCEEDED');

  /// *
  ///  The range of data to be gathered is out of the set boundaries
  static const ResponseCodeEnum INVALID_QUERY_RANGE =
      ResponseCodeEnum._(229, _omitEnumNames ? '' : 'INVALID_QUERY_RANGE');

  /// *
  ///  A custom fractional fee set a denominator of zero
  static const ResponseCodeEnum FRACTION_DIVIDES_BY_ZERO =
      ResponseCodeEnum._(230, _omitEnumNames ? '' : 'FRACTION_DIVIDES_BY_ZERO');

  /// *
  ///  The transaction payer could not afford a custom fee
  @$core.Deprecated('This enum value is deprecated')
  static const ResponseCodeEnum INSUFFICIENT_PAYER_BALANCE_FOR_CUSTOM_FEE =
      ResponseCodeEnum._(231,
          _omitEnumNames ? '' : 'INSUFFICIENT_PAYER_BALANCE_FOR_CUSTOM_FEE');

  /// *
  ///  More than 10 custom fees were specified
  static const ResponseCodeEnum CUSTOM_FEES_LIST_TOO_LONG = ResponseCodeEnum._(
      232, _omitEnumNames ? '' : 'CUSTOM_FEES_LIST_TOO_LONG');

  /// *
  ///  Any of the feeCollector accounts for customFees is invalid
  static const ResponseCodeEnum INVALID_CUSTOM_FEE_COLLECTOR =
      ResponseCodeEnum._(
          233, _omitEnumNames ? '' : 'INVALID_CUSTOM_FEE_COLLECTOR');

  /// *
  ///  Any of the token Ids in customFees is invalid
  static const ResponseCodeEnum INVALID_TOKEN_ID_IN_CUSTOM_FEES =
      ResponseCodeEnum._(
          234, _omitEnumNames ? '' : 'INVALID_TOKEN_ID_IN_CUSTOM_FEES');

  /// *
  ///  Any of the token Ids in customFees are not associated to feeCollector
  static const ResponseCodeEnum TOKEN_NOT_ASSOCIATED_TO_FEE_COLLECTOR =
      ResponseCodeEnum._(
          235, _omitEnumNames ? '' : 'TOKEN_NOT_ASSOCIATED_TO_FEE_COLLECTOR');

  /// *
  ///  A token cannot have more units minted due to its configured supply ceiling
  static const ResponseCodeEnum TOKEN_MAX_SUPPLY_REACHED =
      ResponseCodeEnum._(236, _omitEnumNames ? '' : 'TOKEN_MAX_SUPPLY_REACHED');

  /// *
  ///  The transaction attempted to move an NFT serial number from an account other than its owner
  static const ResponseCodeEnum SENDER_DOES_NOT_OWN_NFT_SERIAL_NO =
      ResponseCodeEnum._(
          237, _omitEnumNames ? '' : 'SENDER_DOES_NOT_OWN_NFT_SERIAL_NO');

  /// *
  ///  A custom fee schedule entry did not specify either a fixed or fractional fee
  static const ResponseCodeEnum CUSTOM_FEE_NOT_FULLY_SPECIFIED =
      ResponseCodeEnum._(
          238, _omitEnumNames ? '' : 'CUSTOM_FEE_NOT_FULLY_SPECIFIED');

  /// *
  ///  Only positive fees may be assessed at this time
  static const ResponseCodeEnum CUSTOM_FEE_MUST_BE_POSITIVE =
      ResponseCodeEnum._(
          239, _omitEnumNames ? '' : 'CUSTOM_FEE_MUST_BE_POSITIVE');

  /// *
  ///  Fee schedule key is not set on token
  static const ResponseCodeEnum TOKEN_HAS_NO_FEE_SCHEDULE_KEY =
      ResponseCodeEnum._(
          240, _omitEnumNames ? '' : 'TOKEN_HAS_NO_FEE_SCHEDULE_KEY');

  /// *
  ///  A fractional custom fee exceeded the range of a 64-bit signed integer
  static const ResponseCodeEnum CUSTOM_FEE_OUTSIDE_NUMERIC_RANGE =
      ResponseCodeEnum._(
          241, _omitEnumNames ? '' : 'CUSTOM_FEE_OUTSIDE_NUMERIC_RANGE');

  /// *
  ///  A royalty cannot exceed the total fungible value exchanged for an NFT
  static const ResponseCodeEnum ROYALTY_FRACTION_CANNOT_EXCEED_ONE =
      ResponseCodeEnum._(
          242, _omitEnumNames ? '' : 'ROYALTY_FRACTION_CANNOT_EXCEED_ONE');

  /// *
  ///  Each fractional custom fee must have its maximum_amount, if specified, at least its minimum_amount
  static const ResponseCodeEnum FRACTIONAL_FEE_MAX_AMOUNT_LESS_THAN_MIN_AMOUNT =
      ResponseCodeEnum._(
          243,
          _omitEnumNames
              ? ''
              : 'FRACTIONAL_FEE_MAX_AMOUNT_LESS_THAN_MIN_AMOUNT');

  /// *
  ///  A fee schedule update tried to clear the custom fees from a token whose fee schedule was already empty
  static const ResponseCodeEnum CUSTOM_SCHEDULE_ALREADY_HAS_NO_FEES =
      ResponseCodeEnum._(
          244, _omitEnumNames ? '' : 'CUSTOM_SCHEDULE_ALREADY_HAS_NO_FEES');

  /// *
  ///  Only tokens of type FUNGIBLE_COMMON can be used to as fee schedule denominations
  static const ResponseCodeEnum
      CUSTOM_FEE_DENOMINATION_MUST_BE_FUNGIBLE_COMMON = ResponseCodeEnum._(
          245,
          _omitEnumNames
              ? ''
              : 'CUSTOM_FEE_DENOMINATION_MUST_BE_FUNGIBLE_COMMON');

  /// *
  ///  Only tokens of type FUNGIBLE_COMMON can have fractional fees
  static const ResponseCodeEnum
      CUSTOM_FRACTIONAL_FEE_ONLY_ALLOWED_FOR_FUNGIBLE_COMMON =
      ResponseCodeEnum._(
          246,
          _omitEnumNames
              ? ''
              : 'CUSTOM_FRACTIONAL_FEE_ONLY_ALLOWED_FOR_FUNGIBLE_COMMON');

  /// *
  ///  The provided custom fee schedule key was invalid
  static const ResponseCodeEnum INVALID_CUSTOM_FEE_SCHEDULE_KEY =
      ResponseCodeEnum._(
          247, _omitEnumNames ? '' : 'INVALID_CUSTOM_FEE_SCHEDULE_KEY');

  /// *
  ///  The requested token mint metadata was invalid
  static const ResponseCodeEnum INVALID_TOKEN_MINT_METADATA =
      ResponseCodeEnum._(
          248, _omitEnumNames ? '' : 'INVALID_TOKEN_MINT_METADATA');

  /// *
  ///  The requested token burn metadata was invalid
  static const ResponseCodeEnum INVALID_TOKEN_BURN_METADATA =
      ResponseCodeEnum._(
          249, _omitEnumNames ? '' : 'INVALID_TOKEN_BURN_METADATA');

  /// *
  ///  The treasury for a unique token cannot be changed until it owns no NFTs
  static const ResponseCodeEnum CURRENT_TREASURY_STILL_OWNS_NFTS =
      ResponseCodeEnum._(
          250, _omitEnumNames ? '' : 'CURRENT_TREASURY_STILL_OWNS_NFTS');

  /// *
  ///  An account cannot be dissociated from a unique token if it owns NFTs for the token
  static const ResponseCodeEnum ACCOUNT_STILL_OWNS_NFTS =
      ResponseCodeEnum._(251, _omitEnumNames ? '' : 'ACCOUNT_STILL_OWNS_NFTS');

  /// *
  ///  A NFT can only be burned when owned by the unique token's treasury
  static const ResponseCodeEnum TREASURY_MUST_OWN_BURNED_NFT =
      ResponseCodeEnum._(
          252, _omitEnumNames ? '' : 'TREASURY_MUST_OWN_BURNED_NFT');

  /// *
  ///  An account did not own the NFT to be wiped
  static const ResponseCodeEnum ACCOUNT_DOES_NOT_OWN_WIPED_NFT =
      ResponseCodeEnum._(
          253, _omitEnumNames ? '' : 'ACCOUNT_DOES_NOT_OWN_WIPED_NFT');

  /// *
  ///  An AccountAmount token transfers list referenced a token type other than FUNGIBLE_COMMON
  static const ResponseCodeEnum
      ACCOUNT_AMOUNT_TRANSFERS_ONLY_ALLOWED_FOR_FUNGIBLE_COMMON =
      ResponseCodeEnum._(
          254,
          _omitEnumNames
              ? ''
              : 'ACCOUNT_AMOUNT_TRANSFERS_ONLY_ALLOWED_FOR_FUNGIBLE_COMMON');

  /// *
  ///  All the NFTs allowed in the current price regime have already been minted
  static const ResponseCodeEnum MAX_NFTS_IN_PRICE_REGIME_HAVE_BEEN_MINTED =
      ResponseCodeEnum._(255,
          _omitEnumNames ? '' : 'MAX_NFTS_IN_PRICE_REGIME_HAVE_BEEN_MINTED');

  /// *
  ///  The payer account has been marked as deleted
  static const ResponseCodeEnum PAYER_ACCOUNT_DELETED =
      ResponseCodeEnum._(256, _omitEnumNames ? '' : 'PAYER_ACCOUNT_DELETED');

  /// *
  ///  The reference chain of custom fees for a transferred token exceeded the maximum length of 2
  static const ResponseCodeEnum
      CUSTOM_FEE_CHARGING_EXCEEDED_MAX_RECURSION_DEPTH = ResponseCodeEnum._(
          257,
          _omitEnumNames
              ? ''
              : 'CUSTOM_FEE_CHARGING_EXCEEDED_MAX_RECURSION_DEPTH');

  /// *
  ///  More than 20 balance adjustments were to satisfy a CryptoTransfer and its implied custom fee payments
  static const ResponseCodeEnum
      CUSTOM_FEE_CHARGING_EXCEEDED_MAX_ACCOUNT_AMOUNTS = ResponseCodeEnum._(
          258,
          _omitEnumNames
              ? ''
              : 'CUSTOM_FEE_CHARGING_EXCEEDED_MAX_ACCOUNT_AMOUNTS');

  /// *
  ///  The sender account in the token transfer transaction could not afford a custom fee
  static const ResponseCodeEnum
      INSUFFICIENT_SENDER_ACCOUNT_BALANCE_FOR_CUSTOM_FEE = ResponseCodeEnum._(
          259,
          _omitEnumNames
              ? ''
              : 'INSUFFICIENT_SENDER_ACCOUNT_BALANCE_FOR_CUSTOM_FEE');

  /// *
  ///  Currently no more than 4,294,967,295 NFTs may be minted for a given unique token type
  static const ResponseCodeEnum SERIAL_NUMBER_LIMIT_REACHED =
      ResponseCodeEnum._(
          260, _omitEnumNames ? '' : 'SERIAL_NUMBER_LIMIT_REACHED');

  /// *
  ///  Only tokens of type NON_FUNGIBLE_UNIQUE can have royalty fees
  static const ResponseCodeEnum
      CUSTOM_ROYALTY_FEE_ONLY_ALLOWED_FOR_NON_FUNGIBLE_UNIQUE =
      ResponseCodeEnum._(
          261,
          _omitEnumNames
              ? ''
              : 'CUSTOM_ROYALTY_FEE_ONLY_ALLOWED_FOR_NON_FUNGIBLE_UNIQUE');

  /// *
  ///  The account has reached the limit on the automatic associations count.
  static const ResponseCodeEnum NO_REMAINING_AUTOMATIC_ASSOCIATIONS =
      ResponseCodeEnum._(
          262, _omitEnumNames ? '' : 'NO_REMAINING_AUTOMATIC_ASSOCIATIONS');

  /// *
  ///  Already existing automatic associations are more than the new maximum automatic associations.
  static const ResponseCodeEnum
      EXISTING_AUTOMATIC_ASSOCIATIONS_EXCEED_GIVEN_LIMIT = ResponseCodeEnum._(
          263,
          _omitEnumNames
              ? ''
              : 'EXISTING_AUTOMATIC_ASSOCIATIONS_EXCEED_GIVEN_LIMIT');

  /// *
  ///  Cannot set the number of automatic associations for an account more than the maximum allowed
  ///  token associations <tt>tokens.maxPerAccount</tt>.
  static const ResponseCodeEnum
      REQUESTED_NUM_AUTOMATIC_ASSOCIATIONS_EXCEEDS_ASSOCIATION_LIMIT =
      ResponseCodeEnum._(
          264,
          _omitEnumNames
              ? ''
              : 'REQUESTED_NUM_AUTOMATIC_ASSOCIATIONS_EXCEEDS_ASSOCIATION_LIMIT');

  /// *
  ///  Token is paused. This Token cannot be a part of any kind of Transaction until unpaused.
  static const ResponseCodeEnum TOKEN_IS_PAUSED =
      ResponseCodeEnum._(265, _omitEnumNames ? '' : 'TOKEN_IS_PAUSED');

  /// *
  ///  Pause key is not set on token
  static const ResponseCodeEnum TOKEN_HAS_NO_PAUSE_KEY =
      ResponseCodeEnum._(266, _omitEnumNames ? '' : 'TOKEN_HAS_NO_PAUSE_KEY');

  /// *
  ///  The provided pause key was invalid
  static const ResponseCodeEnum INVALID_PAUSE_KEY =
      ResponseCodeEnum._(267, _omitEnumNames ? '' : 'INVALID_PAUSE_KEY');

  /// *
  ///  The update file in a freeze transaction body must exist.
  static const ResponseCodeEnum FREEZE_UPDATE_FILE_DOES_NOT_EXIST =
      ResponseCodeEnum._(
          268, _omitEnumNames ? '' : 'FREEZE_UPDATE_FILE_DOES_NOT_EXIST');

  /// *
  ///  The hash of the update file in a freeze transaction body must match the in-memory hash.
  static const ResponseCodeEnum FREEZE_UPDATE_FILE_HASH_DOES_NOT_MATCH =
      ResponseCodeEnum._(
          269, _omitEnumNames ? '' : 'FREEZE_UPDATE_FILE_HASH_DOES_NOT_MATCH');

  /// *
  ///  A FREEZE_UPGRADE transaction was handled with no previous update prepared.
  static const ResponseCodeEnum NO_UPGRADE_HAS_BEEN_PREPARED =
      ResponseCodeEnum._(
          270, _omitEnumNames ? '' : 'NO_UPGRADE_HAS_BEEN_PREPARED');

  /// *
  ///  A FREEZE_ABORT transaction was handled with no scheduled freeze.
  static const ResponseCodeEnum NO_FREEZE_IS_SCHEDULED =
      ResponseCodeEnum._(271, _omitEnumNames ? '' : 'NO_FREEZE_IS_SCHEDULED');

  /// *
  ///  The update file hash when handling a FREEZE_UPGRADE transaction differs from the file
  ///  hash at the time of handling the PREPARE_UPGRADE transaction.
  static const ResponseCodeEnum UPDATE_FILE_HASH_CHANGED_SINCE_PREPARE_UPGRADE =
      ResponseCodeEnum._(
          272,
          _omitEnumNames
              ? ''
              : 'UPDATE_FILE_HASH_CHANGED_SINCE_PREPARE_UPGRADE');

  /// *
  ///  The given freeze start time was in the (consensus) past.
  static const ResponseCodeEnum FREEZE_START_TIME_MUST_BE_FUTURE =
      ResponseCodeEnum._(
          273, _omitEnumNames ? '' : 'FREEZE_START_TIME_MUST_BE_FUTURE');

  /// *
  ///  The prepared update file cannot be updated or appended until either the upgrade has
  ///  been completed, or a FREEZE_ABORT has been handled.
  static const ResponseCodeEnum PREPARED_UPDATE_FILE_IS_IMMUTABLE =
      ResponseCodeEnum._(
          274, _omitEnumNames ? '' : 'PREPARED_UPDATE_FILE_IS_IMMUTABLE');

  /// *
  ///  Once a freeze is scheduled, it must be aborted before any other type of freeze can
  ///  can be performed.
  static const ResponseCodeEnum FREEZE_ALREADY_SCHEDULED =
      ResponseCodeEnum._(275, _omitEnumNames ? '' : 'FREEZE_ALREADY_SCHEDULED');

  /// *
  ///  If an NMT upgrade has been prepared, the following operation must be a FREEZE_UPGRADE.
  ///  (To issue a FREEZE_ONLY, submit a FREEZE_ABORT first.)
  static const ResponseCodeEnum FREEZE_UPGRADE_IN_PROGRESS = ResponseCodeEnum._(
      276, _omitEnumNames ? '' : 'FREEZE_UPGRADE_IN_PROGRESS');

  /// *
  ///  If an NMT upgrade has been prepared, the subsequent FREEZE_UPGRADE transaction must
  ///  confirm the id of the file to be used in the upgrade.
  static const ResponseCodeEnum UPDATE_FILE_ID_DOES_NOT_MATCH_PREPARED =
      ResponseCodeEnum._(
          277, _omitEnumNames ? '' : 'UPDATE_FILE_ID_DOES_NOT_MATCH_PREPARED');

  /// *
  ///  If an NMT upgrade has been prepared, the subsequent FREEZE_UPGRADE transaction must
  ///  confirm the hash of the file to be used in the upgrade.
  static const ResponseCodeEnum UPDATE_FILE_HASH_DOES_NOT_MATCH_PREPARED =
      ResponseCodeEnum._(278,
          _omitEnumNames ? '' : 'UPDATE_FILE_HASH_DOES_NOT_MATCH_PREPARED');

  /// *
  ///  Consensus throttle did not allow execution of this transaction. System is throttled at
  ///  consensus level.
  static const ResponseCodeEnum CONSENSUS_GAS_EXHAUSTED =
      ResponseCodeEnum._(279, _omitEnumNames ? '' : 'CONSENSUS_GAS_EXHAUSTED');

  /// *
  ///  A precompiled contract succeeded, but was later reverted.
  static const ResponseCodeEnum REVERTED_SUCCESS =
      ResponseCodeEnum._(280, _omitEnumNames ? '' : 'REVERTED_SUCCESS');

  /// *
  ///  All contract storage allocated to the current price regime has been consumed.
  static const ResponseCodeEnum MAX_STORAGE_IN_PRICE_REGIME_HAS_BEEN_USED =
      ResponseCodeEnum._(281,
          _omitEnumNames ? '' : 'MAX_STORAGE_IN_PRICE_REGIME_HAS_BEEN_USED');

  /// *
  ///  An alias used in a CryptoTransfer transaction is not the serialization of a primitive Key
  ///  message--that is, a Key with a single Ed25519 or ECDSA(secp256k1) public key and no
  ///  unknown protobuf fields.
  static const ResponseCodeEnum INVALID_ALIAS_KEY =
      ResponseCodeEnum._(282, _omitEnumNames ? '' : 'INVALID_ALIAS_KEY');

  /// *
  ///  A fungible token transfer expected a different number of decimals than the involved
  ///  type actually has.
  static const ResponseCodeEnum UNEXPECTED_TOKEN_DECIMALS = ResponseCodeEnum._(
      283, _omitEnumNames ? '' : 'UNEXPECTED_TOKEN_DECIMALS');

  /// *
  ///  The proxy account id is invalid or does not exist.
  @$core.Deprecated('This enum value is deprecated')
  static const ResponseCodeEnum INVALID_PROXY_ACCOUNT_ID =
      ResponseCodeEnum._(284, _omitEnumNames ? '' : 'INVALID_PROXY_ACCOUNT_ID');

  /// *
  ///  The transfer account id in CryptoDelete transaction is invalid or does not exist.
  static const ResponseCodeEnum INVALID_TRANSFER_ACCOUNT_ID =
      ResponseCodeEnum._(
          285, _omitEnumNames ? '' : 'INVALID_TRANSFER_ACCOUNT_ID');

  /// *
  ///  The fee collector account id in TokenFeeScheduleUpdate is invalid or does not exist.
  static const ResponseCodeEnum INVALID_FEE_COLLECTOR_ACCOUNT_ID =
      ResponseCodeEnum._(
          286, _omitEnumNames ? '' : 'INVALID_FEE_COLLECTOR_ACCOUNT_ID');

  /// *
  ///  The alias already set on an account cannot be updated using CryptoUpdate transaction.
  static const ResponseCodeEnum ALIAS_IS_IMMUTABLE =
      ResponseCodeEnum._(287, _omitEnumNames ? '' : 'ALIAS_IS_IMMUTABLE');

  /// *
  ///  An approved allowance specifies a spender account that is the same as the hbar/token
  ///  owner account.
  static const ResponseCodeEnum SPENDER_ACCOUNT_SAME_AS_OWNER =
      ResponseCodeEnum._(
          288, _omitEnumNames ? '' : 'SPENDER_ACCOUNT_SAME_AS_OWNER');

  /// *
  ///  The establishment or adjustment of an approved allowance cause the token allowance
  ///  to exceed the token maximum supply.
  static const ResponseCodeEnum AMOUNT_EXCEEDS_TOKEN_MAX_SUPPLY =
      ResponseCodeEnum._(
          289, _omitEnumNames ? '' : 'AMOUNT_EXCEEDS_TOKEN_MAX_SUPPLY');

  /// *
  ///  The specified amount for an approved allowance cannot be negative.
  static const ResponseCodeEnum NEGATIVE_ALLOWANCE_AMOUNT = ResponseCodeEnum._(
      290, _omitEnumNames ? '' : 'NEGATIVE_ALLOWANCE_AMOUNT');

  /// *
  ///  The approveForAll flag cannot be set for a fungible token.
  @$core.Deprecated('This enum value is deprecated')
  static const ResponseCodeEnum CANNOT_APPROVE_FOR_ALL_FUNGIBLE_COMMON =
      ResponseCodeEnum._(
          291, _omitEnumNames ? '' : 'CANNOT_APPROVE_FOR_ALL_FUNGIBLE_COMMON');

  /// *
  ///  The spender does not have an existing approved allowance with the hbar/token owner.
  static const ResponseCodeEnum SPENDER_DOES_NOT_HAVE_ALLOWANCE =
      ResponseCodeEnum._(
          292, _omitEnumNames ? '' : 'SPENDER_DOES_NOT_HAVE_ALLOWANCE');

  /// *
  ///  The transfer amount exceeds the current approved allowance for the spender account.
  static const ResponseCodeEnum AMOUNT_EXCEEDS_ALLOWANCE =
      ResponseCodeEnum._(293, _omitEnumNames ? '' : 'AMOUNT_EXCEEDS_ALLOWANCE');

  /// *
  ///  The payer account of an approveAllowances or adjustAllowance transaction is attempting
  ///  to go beyond the maximum allowed number of allowances.
  static const ResponseCodeEnum MAX_ALLOWANCES_EXCEEDED =
      ResponseCodeEnum._(294, _omitEnumNames ? '' : 'MAX_ALLOWANCES_EXCEEDED');

  /// *
  ///  No allowances have been specified in the approval transaction.
  static const ResponseCodeEnum EMPTY_ALLOWANCES =
      ResponseCodeEnum._(295, _omitEnumNames ? '' : 'EMPTY_ALLOWANCES');

  /// *
  ///  Spender is repeated more than once in Crypto or Token or NFT allowance lists in a single
  ///  CryptoApproveAllowance transaction.
  @$core.Deprecated('This enum value is deprecated')
  static const ResponseCodeEnum SPENDER_ACCOUNT_REPEATED_IN_ALLOWANCES =
      ResponseCodeEnum._(
          296, _omitEnumNames ? '' : 'SPENDER_ACCOUNT_REPEATED_IN_ALLOWANCES');

  /// *
  ///  Serial numbers are repeated in nft allowance for a single spender account
  @$core.Deprecated('This enum value is deprecated')
  static const ResponseCodeEnum REPEATED_SERIAL_NUMS_IN_NFT_ALLOWANCES =
      ResponseCodeEnum._(
          297, _omitEnumNames ? '' : 'REPEATED_SERIAL_NUMS_IN_NFT_ALLOWANCES');

  /// *
  ///  Fungible common token used in NFT allowances
  static const ResponseCodeEnum FUNGIBLE_TOKEN_IN_NFT_ALLOWANCES =
      ResponseCodeEnum._(
          298, _omitEnumNames ? '' : 'FUNGIBLE_TOKEN_IN_NFT_ALLOWANCES');

  /// *
  ///  Non fungible token used in fungible token allowances
  static const ResponseCodeEnum NFT_IN_FUNGIBLE_TOKEN_ALLOWANCES =
      ResponseCodeEnum._(
          299, _omitEnumNames ? '' : 'NFT_IN_FUNGIBLE_TOKEN_ALLOWANCES');

  /// *
  ///  The account id specified as the owner is invalid or does not exist.
  static const ResponseCodeEnum INVALID_ALLOWANCE_OWNER_ID = ResponseCodeEnum._(
      300, _omitEnumNames ? '' : 'INVALID_ALLOWANCE_OWNER_ID');

  /// *
  ///  The account id specified as the spender is invalid or does not exist.
  static const ResponseCodeEnum INVALID_ALLOWANCE_SPENDER_ID =
      ResponseCodeEnum._(
          301, _omitEnumNames ? '' : 'INVALID_ALLOWANCE_SPENDER_ID');

  /// *
  ///  [Deprecated] If the CryptoDeleteAllowance transaction has repeated crypto or token or Nft allowances to delete.
  @$core.Deprecated('This enum value is deprecated')
  static const ResponseCodeEnum REPEATED_ALLOWANCES_TO_DELETE =
      ResponseCodeEnum._(
          302, _omitEnumNames ? '' : 'REPEATED_ALLOWANCES_TO_DELETE');

  /// *
  ///  If the account Id specified as the delegating spender is invalid or does not exist.
  static const ResponseCodeEnum INVALID_DELEGATING_SPENDER = ResponseCodeEnum._(
      303, _omitEnumNames ? '' : 'INVALID_DELEGATING_SPENDER');

  /// *
  ///  The delegating Spender cannot grant approveForAll allowance on a NFT token type for another spender.
  static const ResponseCodeEnum
      DELEGATING_SPENDER_CANNOT_GRANT_APPROVE_FOR_ALL = ResponseCodeEnum._(
          304,
          _omitEnumNames
              ? ''
              : 'DELEGATING_SPENDER_CANNOT_GRANT_APPROVE_FOR_ALL');

  /// *
  ///  The delegating Spender cannot grant allowance on a NFT serial for another spender as it doesnt not have approveForAll
  ///  granted on token-owner.
  static const ResponseCodeEnum
      DELEGATING_SPENDER_DOES_NOT_HAVE_APPROVE_FOR_ALL = ResponseCodeEnum._(
          305,
          _omitEnumNames
              ? ''
              : 'DELEGATING_SPENDER_DOES_NOT_HAVE_APPROVE_FOR_ALL');

  /// *
  ///  The scheduled transaction could not be created because it's expiration_time was too far in the future.
  static const ResponseCodeEnum SCHEDULE_EXPIRATION_TIME_TOO_FAR_IN_FUTURE =
      ResponseCodeEnum._(306,
          _omitEnumNames ? '' : 'SCHEDULE_EXPIRATION_TIME_TOO_FAR_IN_FUTURE');

  /// *
  ///  The scheduled transaction could not be created because it's expiration_time was less than or equal to the consensus time.
  static const ResponseCodeEnum
      SCHEDULE_EXPIRATION_TIME_MUST_BE_HIGHER_THAN_CONSENSUS_TIME =
      ResponseCodeEnum._(
          307,
          _omitEnumNames
              ? ''
              : 'SCHEDULE_EXPIRATION_TIME_MUST_BE_HIGHER_THAN_CONSENSUS_TIME');

  /// *
  ///  The scheduled transaction could not be created because it would cause throttles to be violated on the specified expiration_time.
  static const ResponseCodeEnum SCHEDULE_FUTURE_THROTTLE_EXCEEDED =
      ResponseCodeEnum._(
          308, _omitEnumNames ? '' : 'SCHEDULE_FUTURE_THROTTLE_EXCEEDED');

  /// *
  ///  The scheduled transaction could not be created because it would cause the gas limit to be violated on the specified expiration_time.
  static const ResponseCodeEnum SCHEDULE_FUTURE_GAS_LIMIT_EXCEEDED =
      ResponseCodeEnum._(
          309, _omitEnumNames ? '' : 'SCHEDULE_FUTURE_GAS_LIMIT_EXCEEDED');

  /// *
  ///  The ethereum transaction either failed parsing or failed signature validation, or some other EthereumTransaction error not covered by another response code.
  static const ResponseCodeEnum INVALID_ETHEREUM_TRANSACTION =
      ResponseCodeEnum._(
          310, _omitEnumNames ? '' : 'INVALID_ETHEREUM_TRANSACTION');

  /// *
  ///  EthereumTransaction was signed against a chainId that this network does not support.
  static const ResponseCodeEnum WRONG_CHAIN_ID =
      ResponseCodeEnum._(311, _omitEnumNames ? '' : 'WRONG_CHAIN_ID');

  /// *
  ///  This transaction specified an ethereumNonce that is not the current ethereumNonce of the account.
  static const ResponseCodeEnum WRONG_NONCE =
      ResponseCodeEnum._(312, _omitEnumNames ? '' : 'WRONG_NONCE');

  /// *
  ///  The ethereum transaction specified an access list, which the network does not support.
  static const ResponseCodeEnum ACCESS_LIST_UNSUPPORTED =
      ResponseCodeEnum._(313, _omitEnumNames ? '' : 'ACCESS_LIST_UNSUPPORTED');

  /// *
  ///  A schedule being signed or deleted has passed it's expiration date and is pending execution if needed and then expiration.
  static const ResponseCodeEnum SCHEDULE_PENDING_EXPIRATION =
      ResponseCodeEnum._(
          314, _omitEnumNames ? '' : 'SCHEDULE_PENDING_EXPIRATION');

  /// *
  ///  A selfdestruct or ContractDelete targeted a contract that is a token treasury.
  static const ResponseCodeEnum CONTRACT_IS_TOKEN_TREASURY = ResponseCodeEnum._(
      315, _omitEnumNames ? '' : 'CONTRACT_IS_TOKEN_TREASURY');

  /// *
  ///  A selfdestruct or ContractDelete targeted a contract with non-zero token balances.
  static const ResponseCodeEnum CONTRACT_HAS_NON_ZERO_TOKEN_BALANCES =
      ResponseCodeEnum._(
          316, _omitEnumNames ? '' : 'CONTRACT_HAS_NON_ZERO_TOKEN_BALANCES');

  /// *
  ///  A contract referenced by a transaction is "detached"; that is, expired and lacking any
  ///  hbar funds for auto-renewal payment---but still within its post-expiry grace period.
  static const ResponseCodeEnum CONTRACT_EXPIRED_AND_PENDING_REMOVAL =
      ResponseCodeEnum._(
          317, _omitEnumNames ? '' : 'CONTRACT_EXPIRED_AND_PENDING_REMOVAL');

  /// *
  ///  A ContractUpdate requested removal of a contract's auto-renew account, but that contract has
  ///  no auto-renew account.
  static const ResponseCodeEnum CONTRACT_HAS_NO_AUTO_RENEW_ACCOUNT =
      ResponseCodeEnum._(
          318, _omitEnumNames ? '' : 'CONTRACT_HAS_NO_AUTO_RENEW_ACCOUNT');

  /// *
  ///  A delete transaction submitted via HAPI set permanent_removal=true
  static const ResponseCodeEnum PERMANENT_REMOVAL_REQUIRES_SYSTEM_INITIATION =
      ResponseCodeEnum._(319,
          _omitEnumNames ? '' : 'PERMANENT_REMOVAL_REQUIRES_SYSTEM_INITIATION');

  ///
  ///  A CryptoCreate or ContractCreate used the deprecated proxyAccountID field.
  static const ResponseCodeEnum PROXY_ACCOUNT_ID_FIELD_IS_DEPRECATED =
      ResponseCodeEnum._(
          320, _omitEnumNames ? '' : 'PROXY_ACCOUNT_ID_FIELD_IS_DEPRECATED');

  /// *
  ///  An account set the staked_account_id to itself in CryptoUpdate or ContractUpdate transactions.
  static const ResponseCodeEnum SELF_STAKING_IS_NOT_ALLOWED =
      ResponseCodeEnum._(
          321, _omitEnumNames ? '' : 'SELF_STAKING_IS_NOT_ALLOWED');

  /// *
  ///  The staking account id or staking node id given is invalid or does not exist.
  static const ResponseCodeEnum INVALID_STAKING_ID =
      ResponseCodeEnum._(322, _omitEnumNames ? '' : 'INVALID_STAKING_ID');

  /// *
  ///  Native staking, while implemented, has not yet enabled by the council.
  static const ResponseCodeEnum STAKING_NOT_ENABLED =
      ResponseCodeEnum._(323, _omitEnumNames ? '' : 'STAKING_NOT_ENABLED');

  /// *
  ///  The range provided in UtilPrng transaction is negative.
  static const ResponseCodeEnum INVALID_PRNG_RANGE =
      ResponseCodeEnum._(324, _omitEnumNames ? '' : 'INVALID_PRNG_RANGE');

  /// *
  ///  The maximum number of entities allowed in the current price regime have been created.
  static const ResponseCodeEnum MAX_ENTITIES_IN_PRICE_REGIME_HAVE_BEEN_CREATED =
      ResponseCodeEnum._(
          325,
          _omitEnumNames
              ? ''
              : 'MAX_ENTITIES_IN_PRICE_REGIME_HAVE_BEEN_CREATED');

  /// *
  ///  The full prefix signature for precompile is not valid
  static const ResponseCodeEnum INVALID_FULL_PREFIX_SIGNATURE_FOR_PRECOMPILE =
      ResponseCodeEnum._(326,
          _omitEnumNames ? '' : 'INVALID_FULL_PREFIX_SIGNATURE_FOR_PRECOMPILE');

  /// *
  ///  The combined balances of a contract and its auto-renew account (if any) did not cover
  ///  the rent charged for net new storage used in a transaction.
  static const ResponseCodeEnum INSUFFICIENT_BALANCES_FOR_STORAGE_RENT =
      ResponseCodeEnum._(
          327, _omitEnumNames ? '' : 'INSUFFICIENT_BALANCES_FOR_STORAGE_RENT');

  /// *
  ///  A contract transaction tried to use more than the allowed number of child records, via
  ///  either system contract records or internal contract creations.
  static const ResponseCodeEnum MAX_CHILD_RECORDS_EXCEEDED = ResponseCodeEnum._(
      328, _omitEnumNames ? '' : 'MAX_CHILD_RECORDS_EXCEEDED');

  /// *
  ///  The combined balances of a contract and its auto-renew account (if any) or balance of an account did not cover
  ///  the auto-renewal fees in a transaction.
  static const ResponseCodeEnum INSUFFICIENT_BALANCES_FOR_RENEWAL_FEES =
      ResponseCodeEnum._(
          329, _omitEnumNames ? '' : 'INSUFFICIENT_BALANCES_FOR_RENEWAL_FEES');

  /// *
  ///  A transaction's protobuf message includes unknown fields; could mean that a client
  ///  expects not-yet-released functionality to be available.
  static const ResponseCodeEnum TRANSACTION_HAS_UNKNOWN_FIELDS =
      ResponseCodeEnum._(
          330, _omitEnumNames ? '' : 'TRANSACTION_HAS_UNKNOWN_FIELDS');

  /// *
  ///  The account cannot be modified. Account's key is not set
  static const ResponseCodeEnum ACCOUNT_IS_IMMUTABLE =
      ResponseCodeEnum._(331, _omitEnumNames ? '' : 'ACCOUNT_IS_IMMUTABLE');

  /// *
  ///  An alias that is assigned to an account or contract cannot be assigned to another account or contract.
  static const ResponseCodeEnum ALIAS_ALREADY_ASSIGNED =
      ResponseCodeEnum._(332, _omitEnumNames ? '' : 'ALIAS_ALREADY_ASSIGNED');

  /// *
  ///  A provided metadata key was invalid. Verification includes, for example, checking the size of Ed25519 and ECDSA(secp256k1) public keys.
  static const ResponseCodeEnum INVALID_METADATA_KEY =
      ResponseCodeEnum._(333, _omitEnumNames ? '' : 'INVALID_METADATA_KEY');

  /// *
  ///  Metadata key is not set on token
  static const ResponseCodeEnum TOKEN_HAS_NO_METADATA_KEY = ResponseCodeEnum._(
      334, _omitEnumNames ? '' : 'TOKEN_HAS_NO_METADATA_KEY');

  /// *
  ///  Token Metadata is not provided
  static const ResponseCodeEnum MISSING_TOKEN_METADATA =
      ResponseCodeEnum._(335, _omitEnumNames ? '' : 'MISSING_TOKEN_METADATA');

  /// *
  ///  NFT serial numbers are missing in the TokenUpdateNftsTransactionBody
  static const ResponseCodeEnum MISSING_SERIAL_NUMBERS =
      ResponseCodeEnum._(336, _omitEnumNames ? '' : 'MISSING_SERIAL_NUMBERS');

  /// *
  ///  Admin key is not set on token
  static const ResponseCodeEnum TOKEN_HAS_NO_ADMIN_KEY =
      ResponseCodeEnum._(337, _omitEnumNames ? '' : 'TOKEN_HAS_NO_ADMIN_KEY');

  /// *
  ///  A transaction failed because the consensus node identified is
  ///  deleted from the address book.
  static const ResponseCodeEnum NODE_DELETED =
      ResponseCodeEnum._(338, _omitEnumNames ? '' : 'NODE_DELETED');

  /// *
  ///  A transaction failed because the consensus node identified is not valid or
  ///  does not exist in state.
  static const ResponseCodeEnum INVALID_NODE_ID =
      ResponseCodeEnum._(339, _omitEnumNames ? '' : 'INVALID_NODE_ID');

  /// *
  ///  A transaction failed because one or more entries in the list of
  ///  service endpoints for the `gossip_endpoint` field is invalid.<br/>
  ///  The most common cause for this response is a service endpoint that has
  ///  the domain name (DNS) set rather than address and port.
  static const ResponseCodeEnum INVALID_GOSSIP_ENDPOINT =
      ResponseCodeEnum._(340, _omitEnumNames ? '' : 'INVALID_GOSSIP_ENDPOINT');

  /// *
  ///  A transaction failed because the node account identifier provided
  ///  does not exist or is not valid.<br/>
  ///  One common source of this error is providing a node account identifier
  ///  using the "alias" form rather than "numeric" form.
  ///  It is also used for atomic batch transaction for child transaction if the node account id is not 0.0.0.
  static const ResponseCodeEnum INVALID_NODE_ACCOUNT_ID =
      ResponseCodeEnum._(341, _omitEnumNames ? '' : 'INVALID_NODE_ACCOUNT_ID');

  /// *
  ///  A transaction failed because the description field cannot be encoded
  ///  as UTF-8 or is more than 100 bytes when encoded.
  static const ResponseCodeEnum INVALID_NODE_DESCRIPTION =
      ResponseCodeEnum._(342, _omitEnumNames ? '' : 'INVALID_NODE_DESCRIPTION');

  /// *
  ///  A transaction failed because one or more entries in the list of
  ///  service endpoints for the `service_endpoint` field is invalid.<br/>
  ///  The most common cause for this response is a service endpoint that has
  ///  the domain name (DNS) set rather than address and port.
  static const ResponseCodeEnum INVALID_SERVICE_ENDPOINT =
      ResponseCodeEnum._(343, _omitEnumNames ? '' : 'INVALID_SERVICE_ENDPOINT');

  /// *
  ///  A transaction failed because the TLS certificate provided for the
  ///  node is missing or invalid.
  ///  <p>
  ///  #### Probable Causes
  ///  The certificate MUST be a TLS certificate of a type permitted for gossip
  ///  signatures.<br/>
  ///  The value presented MUST be a UTF-8 NFKD encoding of the TLS
  ///  certificate.<br/>
  ///  The certificate encoded MUST be in PEM format.<br/>
  ///  The `gossip_ca_certificate` field is REQUIRED and MUST NOT be empty.
  static const ResponseCodeEnum INVALID_GOSSIP_CA_CERTIFICATE =
      ResponseCodeEnum._(
          344, _omitEnumNames ? '' : 'INVALID_GOSSIP_CA_CERTIFICATE');

  /// *
  ///  A transaction failed because the hash provided for the gRPC certificate
  ///  is present but invalid.
  ///  <p>
  ///  #### Probable Causes
  ///  The `grpc_certificate_hash` MUST be a SHA-384 hash.<br/>
  ///  The input hashed MUST be a UTF-8 NFKD encoding of the actual TLS
  ///  certificate.<br/>
  ///  The certificate to be encoded MUST be in PEM format.
  static const ResponseCodeEnum INVALID_GRPC_CERTIFICATE =
      ResponseCodeEnum._(345, _omitEnumNames ? '' : 'INVALID_GRPC_CERTIFICATE');

  /// *
  ///  The maximum automatic associations value is not valid.<br/>
  ///  The most common cause for this error is a value less than `-1`.
  static const ResponseCodeEnum INVALID_MAX_AUTO_ASSOCIATIONS =
      ResponseCodeEnum._(
          346, _omitEnumNames ? '' : 'INVALID_MAX_AUTO_ASSOCIATIONS');

  /// *
  ///  The maximum number of nodes allowed in the address book have been created.
  static const ResponseCodeEnum MAX_NODES_CREATED =
      ResponseCodeEnum._(347, _omitEnumNames ? '' : 'MAX_NODES_CREATED');

  /// *
  ///  In ServiceEndpoint, domain_name and ipAddressV4 are mutually exclusive
  static const ResponseCodeEnum IP_FQDN_CANNOT_BE_SET_FOR_SAME_ENDPOINT =
      ResponseCodeEnum._(
          348, _omitEnumNames ? '' : 'IP_FQDN_CANNOT_BE_SET_FOR_SAME_ENDPOINT');

  /// *
  ///   Fully qualified domain name is not allowed in gossip_endpoint
  static const ResponseCodeEnum GOSSIP_ENDPOINT_CANNOT_HAVE_FQDN =
      ResponseCodeEnum._(
          349, _omitEnumNames ? '' : 'GOSSIP_ENDPOINT_CANNOT_HAVE_FQDN');

  /// *
  ///  In ServiceEndpoint, domain_name size too large
  static const ResponseCodeEnum FQDN_SIZE_TOO_LARGE =
      ResponseCodeEnum._(350, _omitEnumNames ? '' : 'FQDN_SIZE_TOO_LARGE');

  /// *
  ///  ServiceEndpoint is invalid
  static const ResponseCodeEnum INVALID_ENDPOINT =
      ResponseCodeEnum._(351, _omitEnumNames ? '' : 'INVALID_ENDPOINT');

  /// *
  ///  The number of gossip endpoints exceeds the limit
  static const ResponseCodeEnum GOSSIP_ENDPOINTS_EXCEEDED_LIMIT =
      ResponseCodeEnum._(
          352, _omitEnumNames ? '' : 'GOSSIP_ENDPOINTS_EXCEEDED_LIMIT');

  /// *
  ///  The transaction attempted to use duplicate `TokenReference`.<br/>
  ///  This affects `TokenReject` attempting to reject same token reference more than once.
  static const ResponseCodeEnum TOKEN_REFERENCE_REPEATED =
      ResponseCodeEnum._(353, _omitEnumNames ? '' : 'TOKEN_REFERENCE_REPEATED');

  /// *
  ///  The account id specified as the owner in `TokenReject` is invalid or does not exist.
  static const ResponseCodeEnum INVALID_OWNER_ID =
      ResponseCodeEnum._(354, _omitEnumNames ? '' : 'INVALID_OWNER_ID');

  /// *
  ///  The transaction attempted to use more than the allowed number of `TokenReference`.
  static const ResponseCodeEnum TOKEN_REFERENCE_LIST_SIZE_LIMIT_EXCEEDED =
      ResponseCodeEnum._(355,
          _omitEnumNames ? '' : 'TOKEN_REFERENCE_LIST_SIZE_LIMIT_EXCEEDED');

  /// *
  ///  The number of service endpoints exceeds the limit
  static const ResponseCodeEnum SERVICE_ENDPOINTS_EXCEEDED_LIMIT =
      ResponseCodeEnum._(
          356, _omitEnumNames ? '' : 'SERVICE_ENDPOINTS_EXCEEDED_LIMIT');

  ///
  ///  The IPv4 address is invalid
  static const ResponseCodeEnum INVALID_IPV4_ADDRESS =
      ResponseCodeEnum._(357, _omitEnumNames ? '' : 'INVALID_IPV4_ADDRESS');

  /// *
  ///  The transaction attempted to use empty `TokenReference` list.
  static const ResponseCodeEnum EMPTY_TOKEN_REFERENCE_LIST = ResponseCodeEnum._(
      358, _omitEnumNames ? '' : 'EMPTY_TOKEN_REFERENCE_LIST');

  ///
  ///  The node account is not allowed to be updated
  static const ResponseCodeEnum UPDATE_NODE_ACCOUNT_NOT_ALLOWED =
      ResponseCodeEnum._(
          359, _omitEnumNames ? '' : 'UPDATE_NODE_ACCOUNT_NOT_ALLOWED');

  ///
  ///  The token has no metadata or supply key
  static const ResponseCodeEnum TOKEN_HAS_NO_METADATA_OR_SUPPLY_KEY =
      ResponseCodeEnum._(
          360, _omitEnumNames ? '' : 'TOKEN_HAS_NO_METADATA_OR_SUPPLY_KEY');

  /// *
  ///  The list of `PendingAirdropId`s is empty and MUST NOT be empty.
  static const ResponseCodeEnum EMPTY_PENDING_AIRDROP_ID_LIST =
      ResponseCodeEnum._(
          361, _omitEnumNames ? '' : 'EMPTY_PENDING_AIRDROP_ID_LIST');

  /// *
  ///  A `PendingAirdropId` is repeated in a `claim` or `cancel` transaction.
  static const ResponseCodeEnum PENDING_AIRDROP_ID_REPEATED =
      ResponseCodeEnum._(
          362, _omitEnumNames ? '' : 'PENDING_AIRDROP_ID_REPEATED');

  /// *
  ///  The number of `PendingAirdropId` values in the list exceeds the maximum
  ///  allowable number.
  static const ResponseCodeEnum PENDING_AIRDROP_ID_LIST_TOO_LONG =
      ResponseCodeEnum._(
          363, _omitEnumNames ? '' : 'PENDING_AIRDROP_ID_LIST_TOO_LONG');

  ///
  ///  A pending airdrop already exists for the specified NFT.
  static const ResponseCodeEnum PENDING_NFT_AIRDROP_ALREADY_EXISTS =
      ResponseCodeEnum._(
          364, _omitEnumNames ? '' : 'PENDING_NFT_AIRDROP_ALREADY_EXISTS');

  ///
  ///  The identified account is sender for one or more pending airdrop(s)
  ///  and cannot be deleted.
  ///  <p>
  ///  The requester SHOULD cancel all pending airdrops before resending
  ///  this transaction.
  static const ResponseCodeEnum ACCOUNT_HAS_PENDING_AIRDROPS =
      ResponseCodeEnum._(
          365, _omitEnumNames ? '' : 'ACCOUNT_HAS_PENDING_AIRDROPS');

  /// *
  ///  Consensus throttle did not allow execution of this transaction.<br/>
  ///  The transaction should be retried after a modest delay.
  static const ResponseCodeEnum THROTTLED_AT_CONSENSUS =
      ResponseCodeEnum._(366, _omitEnumNames ? '' : 'THROTTLED_AT_CONSENSUS');

  /// *
  ///  The provided pending airdrop id is invalid.<br/>
  ///  This pending airdrop MAY already be claimed or cancelled.
  ///  <p>
  ///  The client SHOULD query a mirror node to determine the current status of
  ///  the pending airdrop.
  static const ResponseCodeEnum INVALID_PENDING_AIRDROP_ID = ResponseCodeEnum._(
      367, _omitEnumNames ? '' : 'INVALID_PENDING_AIRDROP_ID');

  /// *
  ///  The token to be airdropped has a fallback royalty fee and cannot be
  ///  sent or claimed via an airdrop transaction.
  static const ResponseCodeEnum TOKEN_AIRDROP_WITH_FALLBACK_ROYALTY =
      ResponseCodeEnum._(
          368, _omitEnumNames ? '' : 'TOKEN_AIRDROP_WITH_FALLBACK_ROYALTY');

  /// *
  ///  This airdrop claim is for a pending airdrop with an invalid token.<br/>
  ///  The token might be deleted, or the sender may not have enough tokens
  ///  to fulfill the offer.
  ///  <p>
  ///  The client SHOULD query mirror node to determine the status of the
  ///  pending airdrop and whether the sender can fulfill the offer.
  static const ResponseCodeEnum INVALID_TOKEN_IN_PENDING_AIRDROP =
      ResponseCodeEnum._(
          369, _omitEnumNames ? '' : 'INVALID_TOKEN_IN_PENDING_AIRDROP');

  /// *
  ///  A scheduled transaction configured to wait for expiry to execute was given
  ///  an expiry time at which there is already too many transactions scheduled to
  ///  expire; its creation must be retried with a different expiry.
  static const ResponseCodeEnum SCHEDULE_EXPIRY_IS_BUSY =
      ResponseCodeEnum._(370, _omitEnumNames ? '' : 'SCHEDULE_EXPIRY_IS_BUSY');

  /// *
  ///  The provided gRPC certificate hash is invalid.
  static const ResponseCodeEnum INVALID_GRPC_CERTIFICATE_HASH =
      ResponseCodeEnum._(
          371, _omitEnumNames ? '' : 'INVALID_GRPC_CERTIFICATE_HASH');

  /// *
  ///  A scheduled transaction configured to wait for expiry to execute was not
  ///  given an explicit expiration time.
  static const ResponseCodeEnum MISSING_EXPIRY_TIME =
      ResponseCodeEnum._(372, _omitEnumNames ? '' : 'MISSING_EXPIRY_TIME');

  /// *
  ///  A contract operation attempted to schedule another transaction after it
  ///  had already scheduled a recursive contract call.
  static const ResponseCodeEnum
      NO_SCHEDULING_ALLOWED_AFTER_SCHEDULED_RECURSION = ResponseCodeEnum._(
          373,
          _omitEnumNames
              ? ''
              : 'NO_SCHEDULING_ALLOWED_AFTER_SCHEDULED_RECURSION');

  /// *
  ///  A contract can schedule recursive calls a finite number of times (this is
  ///  approximately four million times with typical network configuration.)
  static const ResponseCodeEnum RECURSIVE_SCHEDULING_LIMIT_REACHED =
      ResponseCodeEnum._(
          374, _omitEnumNames ? '' : 'RECURSIVE_SCHEDULING_LIMIT_REACHED');

  /// *
  ///  The target network is waiting for the ledger ID to be set, which is a
  ///  side effect of finishing the network's TSS construction.
  static const ResponseCodeEnum WAITING_FOR_LEDGER_ID =
      ResponseCodeEnum._(375, _omitEnumNames ? '' : 'WAITING_FOR_LEDGER_ID');

  /// *
  ///  The provided fee exempt key list size exceeded the limit.
  static const ResponseCodeEnum MAX_ENTRIES_FOR_FEE_EXEMPT_KEY_LIST_EXCEEDED =
      ResponseCodeEnum._(376,
          _omitEnumNames ? '' : 'MAX_ENTRIES_FOR_FEE_EXEMPT_KEY_LIST_EXCEEDED');

  /// *
  ///  The provided fee exempt key list contains duplicated keys.
  static const ResponseCodeEnum FEE_EXEMPT_KEY_LIST_CONTAINS_DUPLICATED_KEYS =
      ResponseCodeEnum._(377,
          _omitEnumNames ? '' : 'FEE_EXEMPT_KEY_LIST_CONTAINS_DUPLICATED_KEYS');

  /// *
  ///  The provided fee exempt key list contains an invalid key.
  static const ResponseCodeEnum INVALID_KEY_IN_FEE_EXEMPT_KEY_LIST =
      ResponseCodeEnum._(
          378, _omitEnumNames ? '' : 'INVALID_KEY_IN_FEE_EXEMPT_KEY_LIST');

  /// *
  ///  The provided fee schedule key contains an invalid key.
  static const ResponseCodeEnum INVALID_FEE_SCHEDULE_KEY =
      ResponseCodeEnum._(379, _omitEnumNames ? '' : 'INVALID_FEE_SCHEDULE_KEY');

  /// *
  ///  If a fee schedule key is not set when we create a topic
  ///  we cannot add it on update.
  static const ResponseCodeEnum FEE_SCHEDULE_KEY_CANNOT_BE_UPDATED =
      ResponseCodeEnum._(
          380, _omitEnumNames ? '' : 'FEE_SCHEDULE_KEY_CANNOT_BE_UPDATED');

  /// *
  ///  If the topic's custom fees are updated the topic SHOULD have a
  ///  fee schedule key
  static const ResponseCodeEnum FEE_SCHEDULE_KEY_NOT_SET =
      ResponseCodeEnum._(381, _omitEnumNames ? '' : 'FEE_SCHEDULE_KEY_NOT_SET');

  /// *
  ///  The fee amount is exceeding the amount that the payer
  ///  is willing to pay.
  static const ResponseCodeEnum MAX_CUSTOM_FEE_LIMIT_EXCEEDED =
      ResponseCodeEnum._(
          382, _omitEnumNames ? '' : 'MAX_CUSTOM_FEE_LIMIT_EXCEEDED');

  /// *
  ///  There are no corresponding custom fees.
  static const ResponseCodeEnum NO_VALID_MAX_CUSTOM_FEE =
      ResponseCodeEnum._(383, _omitEnumNames ? '' : 'NO_VALID_MAX_CUSTOM_FEE');

  /// *
  ///  The provided list contains invalid max custom fee.
  static const ResponseCodeEnum INVALID_MAX_CUSTOM_FEES =
      ResponseCodeEnum._(384, _omitEnumNames ? '' : 'INVALID_MAX_CUSTOM_FEES');

  /// *
  ///  The provided max custom fee list contains fees with
  ///  duplicate denominations.
  static const ResponseCodeEnum DUPLICATE_DENOMINATION_IN_MAX_CUSTOM_FEE_LIST =
      ResponseCodeEnum._(
          385,
          _omitEnumNames
              ? ''
              : 'DUPLICATE_DENOMINATION_IN_MAX_CUSTOM_FEE_LIST');

  /// *
  ///  The provided max custom fee list contains fees with
  ///  duplicate account id.
  static const ResponseCodeEnum DUPLICATE_ACCOUNT_ID_IN_MAX_CUSTOM_FEE_LIST =
      ResponseCodeEnum._(386,
          _omitEnumNames ? '' : 'DUPLICATE_ACCOUNT_ID_IN_MAX_CUSTOM_FEE_LIST');

  /// *
  ///  Max custom fees list is not supported for this operation.
  static const ResponseCodeEnum MAX_CUSTOM_FEES_IS_NOT_SUPPORTED =
      ResponseCodeEnum._(
          387, _omitEnumNames ? '' : 'MAX_CUSTOM_FEES_IS_NOT_SUPPORTED');

  /// *
  ///  The list of batch transactions is empty
  static const ResponseCodeEnum BATCH_LIST_EMPTY =
      ResponseCodeEnum._(388, _omitEnumNames ? '' : 'BATCH_LIST_EMPTY');

  /// *
  ///  The list of batch transactions contains duplicated transactions
  static const ResponseCodeEnum BATCH_LIST_CONTAINS_DUPLICATES =
      ResponseCodeEnum._(
          389, _omitEnumNames ? '' : 'BATCH_LIST_CONTAINS_DUPLICATES');

  /// *
  ///  The list of batch transactions contains a transaction type that is
  ///  in the AtomicBatch blacklist as configured in the network.
  static const ResponseCodeEnum BATCH_TRANSACTION_IN_BLACKLIST =
      ResponseCodeEnum._(
          390, _omitEnumNames ? '' : 'BATCH_TRANSACTION_IN_BLACKLIST');

  /// *
  ///  The inner transaction of a batch transaction failed
  static const ResponseCodeEnum INNER_TRANSACTION_FAILED =
      ResponseCodeEnum._(391, _omitEnumNames ? '' : 'INNER_TRANSACTION_FAILED');

  /// *
  ///  The inner transaction of a batch transaction is missing a batch key
  static const ResponseCodeEnum MISSING_BATCH_KEY =
      ResponseCodeEnum._(392, _omitEnumNames ? '' : 'MISSING_BATCH_KEY');

  /// *
  ///  The batch key is set for a non batch transaction
  static const ResponseCodeEnum BATCH_KEY_SET_ON_NON_INNER_TRANSACTION =
      ResponseCodeEnum._(
          393, _omitEnumNames ? '' : 'BATCH_KEY_SET_ON_NON_INNER_TRANSACTION');

  /// *
  ///  The batch key is not valid
  static const ResponseCodeEnum INVALID_BATCH_KEY =
      ResponseCodeEnum._(394, _omitEnumNames ? '' : 'INVALID_BATCH_KEY');

  /// *
  ///  The provided schedule expiry time is not configurable.
  static const ResponseCodeEnum SCHEDULE_EXPIRY_NOT_CONFIGURABLE =
      ResponseCodeEnum._(
          395, _omitEnumNames ? '' : 'SCHEDULE_EXPIRY_NOT_CONFIGURABLE');

  /// *
  ///  The network just started at genesis and is creating system entities.
  static const ResponseCodeEnum CREATING_SYSTEM_ENTITIES =
      ResponseCodeEnum._(396, _omitEnumNames ? '' : 'CREATING_SYSTEM_ENTITIES');

  /// *
  ///  The least common multiple of the throttle group's milliOpsPerSec is
  ///  too large and it's overflowing.
  static const ResponseCodeEnum THROTTLE_GROUP_LCM_OVERFLOW =
      ResponseCodeEnum._(
          397, _omitEnumNames ? '' : 'THROTTLE_GROUP_LCM_OVERFLOW');

  /// *
  ///  Token airdrop transactions can not contain multiple senders for a single token.
  static const ResponseCodeEnum AIRDROP_CONTAINS_MULTIPLE_SENDERS_FOR_A_TOKEN =
      ResponseCodeEnum._(
          398,
          _omitEnumNames
              ? ''
              : 'AIRDROP_CONTAINS_MULTIPLE_SENDERS_FOR_A_TOKEN');

  /// *
  ///  The GRPC proxy endpoint is set in the NodeCreate or NodeUpdate transaction,
  ///  which the network does not support.
  static const ResponseCodeEnum GRPC_WEB_PROXY_NOT_SUPPORTED =
      ResponseCodeEnum._(
          399, _omitEnumNames ? '' : 'GRPC_WEB_PROXY_NOT_SUPPORTED');

  static const $core.List<ResponseCodeEnum> values = <ResponseCodeEnum>[
    OK,
    INVALID_TRANSACTION,
    PAYER_ACCOUNT_NOT_FOUND,
    INVALID_NODE_ACCOUNT,
    TRANSACTION_EXPIRED,
    INVALID_TRANSACTION_START,
    INVALID_TRANSACTION_DURATION,
    INVALID_SIGNATURE,
    MEMO_TOO_LONG,
    INSUFFICIENT_TX_FEE,
    INSUFFICIENT_PAYER_BALANCE,
    DUPLICATE_TRANSACTION,
    BUSY,
    NOT_SUPPORTED,
    INVALID_FILE_ID,
    INVALID_ACCOUNT_ID,
    INVALID_CONTRACT_ID,
    INVALID_TRANSACTION_ID,
    RECEIPT_NOT_FOUND,
    RECORD_NOT_FOUND,
    INVALID_SOLIDITY_ID,
    UNKNOWN,
    SUCCESS,
    FAIL_INVALID,
    FAIL_FEE,
    FAIL_BALANCE,
    KEY_REQUIRED,
    BAD_ENCODING,
    INSUFFICIENT_ACCOUNT_BALANCE,
    INVALID_SOLIDITY_ADDRESS,
    INSUFFICIENT_GAS,
    CONTRACT_SIZE_LIMIT_EXCEEDED,
    LOCAL_CALL_MODIFICATION_EXCEPTION,
    CONTRACT_REVERT_EXECUTED,
    CONTRACT_EXECUTION_EXCEPTION,
    INVALID_RECEIVING_NODE_ACCOUNT,
    MISSING_QUERY_HEADER,
    ACCOUNT_UPDATE_FAILED,
    INVALID_KEY_ENCODING,
    NULL_SOLIDITY_ADDRESS,
    CONTRACT_UPDATE_FAILED,
    INVALID_QUERY_HEADER,
    INVALID_FEE_SUBMITTED,
    INVALID_PAYER_SIGNATURE,
    KEY_NOT_PROVIDED,
    INVALID_EXPIRATION_TIME,
    NO_WACL_KEY,
    FILE_CONTENT_EMPTY,
    INVALID_ACCOUNT_AMOUNTS,
    EMPTY_TRANSACTION_BODY,
    INVALID_TRANSACTION_BODY,
    INVALID_SIGNATURE_TYPE_MISMATCHING_KEY,
    INVALID_SIGNATURE_COUNT_MISMATCHING_KEY,
    EMPTY_LIVE_HASH_BODY,
    EMPTY_LIVE_HASH,
    EMPTY_LIVE_HASH_KEYS,
    INVALID_LIVE_HASH_SIZE,
    EMPTY_QUERY_BODY,
    EMPTY_LIVE_HASH_QUERY,
    LIVE_HASH_NOT_FOUND,
    ACCOUNT_ID_DOES_NOT_EXIST,
    LIVE_HASH_ALREADY_EXISTS,
    INVALID_FILE_WACL,
    SERIALIZATION_FAILED,
    TRANSACTION_OVERSIZE,
    TRANSACTION_TOO_MANY_LAYERS,
    CONTRACT_DELETED,
    PLATFORM_NOT_ACTIVE,
    KEY_PREFIX_MISMATCH,
    PLATFORM_TRANSACTION_NOT_CREATED,
    INVALID_RENEWAL_PERIOD,
    INVALID_PAYER_ACCOUNT_ID,
    ACCOUNT_DELETED,
    FILE_DELETED,
    ACCOUNT_REPEATED_IN_ACCOUNT_AMOUNTS,
    SETTING_NEGATIVE_ACCOUNT_BALANCE,
    OBTAINER_REQUIRED,
    OBTAINER_SAME_CONTRACT_ID,
    OBTAINER_DOES_NOT_EXIST,
    MODIFYING_IMMUTABLE_CONTRACT,
    FILE_SYSTEM_EXCEPTION,
    AUTORENEW_DURATION_NOT_IN_RANGE,
    ERROR_DECODING_BYTESTRING,
    CONTRACT_FILE_EMPTY,
    CONTRACT_BYTECODE_EMPTY,
    INVALID_INITIAL_BALANCE,
    INVALID_RECEIVE_RECORD_THRESHOLD,
    INVALID_SEND_RECORD_THRESHOLD,
    ACCOUNT_IS_NOT_GENESIS_ACCOUNT,
    PAYER_ACCOUNT_UNAUTHORIZED,
    INVALID_FREEZE_TRANSACTION_BODY,
    FREEZE_TRANSACTION_BODY_NOT_FOUND,
    TRANSFER_LIST_SIZE_LIMIT_EXCEEDED,
    RESULT_SIZE_LIMIT_EXCEEDED,
    NOT_SPECIAL_ACCOUNT,
    CONTRACT_NEGATIVE_GAS,
    CONTRACT_NEGATIVE_VALUE,
    INVALID_FEE_FILE,
    INVALID_EXCHANGE_RATE_FILE,
    INSUFFICIENT_LOCAL_CALL_GAS,
    ENTITY_NOT_ALLOWED_TO_DELETE,
    AUTHORIZATION_FAILED,
    FILE_UPLOADED_PROTO_INVALID,
    FILE_UPLOADED_PROTO_NOT_SAVED_TO_DISK,
    FEE_SCHEDULE_FILE_PART_UPLOADED,
    EXCHANGE_RATE_CHANGE_LIMIT_EXCEEDED,
    MAX_CONTRACT_STORAGE_EXCEEDED,
    TRANSFER_ACCOUNT_SAME_AS_DELETE_ACCOUNT,
    TOTAL_LEDGER_BALANCE_INVALID,
    EXPIRATION_REDUCTION_NOT_ALLOWED,
    MAX_GAS_LIMIT_EXCEEDED,
    MAX_FILE_SIZE_EXCEEDED,
    RECEIVER_SIG_REQUIRED,
    INVALID_TOPIC_ID,
    INVALID_ADMIN_KEY,
    INVALID_SUBMIT_KEY,
    UNAUTHORIZED,
    INVALID_TOPIC_MESSAGE,
    INVALID_AUTORENEW_ACCOUNT,
    AUTORENEW_ACCOUNT_NOT_ALLOWED,
    TOPIC_EXPIRED,
    INVALID_CHUNK_NUMBER,
    INVALID_CHUNK_TRANSACTION_ID,
    ACCOUNT_FROZEN_FOR_TOKEN,
    TOKENS_PER_ACCOUNT_LIMIT_EXCEEDED,
    INVALID_TOKEN_ID,
    INVALID_TOKEN_DECIMALS,
    INVALID_TOKEN_INITIAL_SUPPLY,
    INVALID_TREASURY_ACCOUNT_FOR_TOKEN,
    INVALID_TOKEN_SYMBOL,
    TOKEN_HAS_NO_FREEZE_KEY,
    TRANSFERS_NOT_ZERO_SUM_FOR_TOKEN,
    MISSING_TOKEN_SYMBOL,
    TOKEN_SYMBOL_TOO_LONG,
    ACCOUNT_KYC_NOT_GRANTED_FOR_TOKEN,
    TOKEN_HAS_NO_KYC_KEY,
    INSUFFICIENT_TOKEN_BALANCE,
    TOKEN_WAS_DELETED,
    TOKEN_HAS_NO_SUPPLY_KEY,
    TOKEN_HAS_NO_WIPE_KEY,
    INVALID_TOKEN_MINT_AMOUNT,
    INVALID_TOKEN_BURN_AMOUNT,
    TOKEN_NOT_ASSOCIATED_TO_ACCOUNT,
    CANNOT_WIPE_TOKEN_TREASURY_ACCOUNT,
    INVALID_KYC_KEY,
    INVALID_WIPE_KEY,
    INVALID_FREEZE_KEY,
    INVALID_SUPPLY_KEY,
    MISSING_TOKEN_NAME,
    TOKEN_NAME_TOO_LONG,
    INVALID_WIPING_AMOUNT,
    TOKEN_IS_IMMUTABLE,
    TOKEN_ALREADY_ASSOCIATED_TO_ACCOUNT,
    TRANSACTION_REQUIRES_ZERO_TOKEN_BALANCES,
    ACCOUNT_IS_TREASURY,
    TOKEN_ID_REPEATED_IN_TOKEN_LIST,
    TOKEN_TRANSFER_LIST_SIZE_LIMIT_EXCEEDED,
    EMPTY_TOKEN_TRANSFER_BODY,
    EMPTY_TOKEN_TRANSFER_ACCOUNT_AMOUNTS,
    INVALID_SCHEDULE_ID,
    SCHEDULE_IS_IMMUTABLE,
    INVALID_SCHEDULE_PAYER_ID,
    INVALID_SCHEDULE_ACCOUNT_ID,
    NO_NEW_VALID_SIGNATURES,
    UNRESOLVABLE_REQUIRED_SIGNERS,
    SCHEDULED_TRANSACTION_NOT_IN_WHITELIST,
    SOME_SIGNATURES_WERE_INVALID,
    TRANSACTION_ID_FIELD_NOT_ALLOWED,
    IDENTICAL_SCHEDULE_ALREADY_CREATED,
    INVALID_ZERO_BYTE_IN_STRING,
    SCHEDULE_ALREADY_DELETED,
    SCHEDULE_ALREADY_EXECUTED,
    MESSAGE_SIZE_TOO_LARGE,
    OPERATION_REPEATED_IN_BUCKET_GROUPS,
    BUCKET_CAPACITY_OVERFLOW,
    NODE_CAPACITY_NOT_SUFFICIENT_FOR_OPERATION,
    BUCKET_HAS_NO_THROTTLE_GROUPS,
    THROTTLE_GROUP_HAS_ZERO_OPS_PER_SEC,
    SUCCESS_BUT_MISSING_EXPECTED_OPERATION,
    UNPARSEABLE_THROTTLE_DEFINITIONS,
    INVALID_THROTTLE_DEFINITIONS,
    ACCOUNT_EXPIRED_AND_PENDING_REMOVAL,
    INVALID_TOKEN_MAX_SUPPLY,
    INVALID_TOKEN_NFT_SERIAL_NUMBER,
    INVALID_NFT_ID,
    METADATA_TOO_LONG,
    BATCH_SIZE_LIMIT_EXCEEDED,
    INVALID_QUERY_RANGE,
    FRACTION_DIVIDES_BY_ZERO,
    INSUFFICIENT_PAYER_BALANCE_FOR_CUSTOM_FEE,
    CUSTOM_FEES_LIST_TOO_LONG,
    INVALID_CUSTOM_FEE_COLLECTOR,
    INVALID_TOKEN_ID_IN_CUSTOM_FEES,
    TOKEN_NOT_ASSOCIATED_TO_FEE_COLLECTOR,
    TOKEN_MAX_SUPPLY_REACHED,
    SENDER_DOES_NOT_OWN_NFT_SERIAL_NO,
    CUSTOM_FEE_NOT_FULLY_SPECIFIED,
    CUSTOM_FEE_MUST_BE_POSITIVE,
    TOKEN_HAS_NO_FEE_SCHEDULE_KEY,
    CUSTOM_FEE_OUTSIDE_NUMERIC_RANGE,
    ROYALTY_FRACTION_CANNOT_EXCEED_ONE,
    FRACTIONAL_FEE_MAX_AMOUNT_LESS_THAN_MIN_AMOUNT,
    CUSTOM_SCHEDULE_ALREADY_HAS_NO_FEES,
    CUSTOM_FEE_DENOMINATION_MUST_BE_FUNGIBLE_COMMON,
    CUSTOM_FRACTIONAL_FEE_ONLY_ALLOWED_FOR_FUNGIBLE_COMMON,
    INVALID_CUSTOM_FEE_SCHEDULE_KEY,
    INVALID_TOKEN_MINT_METADATA,
    INVALID_TOKEN_BURN_METADATA,
    CURRENT_TREASURY_STILL_OWNS_NFTS,
    ACCOUNT_STILL_OWNS_NFTS,
    TREASURY_MUST_OWN_BURNED_NFT,
    ACCOUNT_DOES_NOT_OWN_WIPED_NFT,
    ACCOUNT_AMOUNT_TRANSFERS_ONLY_ALLOWED_FOR_FUNGIBLE_COMMON,
    MAX_NFTS_IN_PRICE_REGIME_HAVE_BEEN_MINTED,
    PAYER_ACCOUNT_DELETED,
    CUSTOM_FEE_CHARGING_EXCEEDED_MAX_RECURSION_DEPTH,
    CUSTOM_FEE_CHARGING_EXCEEDED_MAX_ACCOUNT_AMOUNTS,
    INSUFFICIENT_SENDER_ACCOUNT_BALANCE_FOR_CUSTOM_FEE,
    SERIAL_NUMBER_LIMIT_REACHED,
    CUSTOM_ROYALTY_FEE_ONLY_ALLOWED_FOR_NON_FUNGIBLE_UNIQUE,
    NO_REMAINING_AUTOMATIC_ASSOCIATIONS,
    EXISTING_AUTOMATIC_ASSOCIATIONS_EXCEED_GIVEN_LIMIT,
    REQUESTED_NUM_AUTOMATIC_ASSOCIATIONS_EXCEEDS_ASSOCIATION_LIMIT,
    TOKEN_IS_PAUSED,
    TOKEN_HAS_NO_PAUSE_KEY,
    INVALID_PAUSE_KEY,
    FREEZE_UPDATE_FILE_DOES_NOT_EXIST,
    FREEZE_UPDATE_FILE_HASH_DOES_NOT_MATCH,
    NO_UPGRADE_HAS_BEEN_PREPARED,
    NO_FREEZE_IS_SCHEDULED,
    UPDATE_FILE_HASH_CHANGED_SINCE_PREPARE_UPGRADE,
    FREEZE_START_TIME_MUST_BE_FUTURE,
    PREPARED_UPDATE_FILE_IS_IMMUTABLE,
    FREEZE_ALREADY_SCHEDULED,
    FREEZE_UPGRADE_IN_PROGRESS,
    UPDATE_FILE_ID_DOES_NOT_MATCH_PREPARED,
    UPDATE_FILE_HASH_DOES_NOT_MATCH_PREPARED,
    CONSENSUS_GAS_EXHAUSTED,
    REVERTED_SUCCESS,
    MAX_STORAGE_IN_PRICE_REGIME_HAS_BEEN_USED,
    INVALID_ALIAS_KEY,
    UNEXPECTED_TOKEN_DECIMALS,
    INVALID_PROXY_ACCOUNT_ID,
    INVALID_TRANSFER_ACCOUNT_ID,
    INVALID_FEE_COLLECTOR_ACCOUNT_ID,
    ALIAS_IS_IMMUTABLE,
    SPENDER_ACCOUNT_SAME_AS_OWNER,
    AMOUNT_EXCEEDS_TOKEN_MAX_SUPPLY,
    NEGATIVE_ALLOWANCE_AMOUNT,
    CANNOT_APPROVE_FOR_ALL_FUNGIBLE_COMMON,
    SPENDER_DOES_NOT_HAVE_ALLOWANCE,
    AMOUNT_EXCEEDS_ALLOWANCE,
    MAX_ALLOWANCES_EXCEEDED,
    EMPTY_ALLOWANCES,
    SPENDER_ACCOUNT_REPEATED_IN_ALLOWANCES,
    REPEATED_SERIAL_NUMS_IN_NFT_ALLOWANCES,
    FUNGIBLE_TOKEN_IN_NFT_ALLOWANCES,
    NFT_IN_FUNGIBLE_TOKEN_ALLOWANCES,
    INVALID_ALLOWANCE_OWNER_ID,
    INVALID_ALLOWANCE_SPENDER_ID,
    REPEATED_ALLOWANCES_TO_DELETE,
    INVALID_DELEGATING_SPENDER,
    DELEGATING_SPENDER_CANNOT_GRANT_APPROVE_FOR_ALL,
    DELEGATING_SPENDER_DOES_NOT_HAVE_APPROVE_FOR_ALL,
    SCHEDULE_EXPIRATION_TIME_TOO_FAR_IN_FUTURE,
    SCHEDULE_EXPIRATION_TIME_MUST_BE_HIGHER_THAN_CONSENSUS_TIME,
    SCHEDULE_FUTURE_THROTTLE_EXCEEDED,
    SCHEDULE_FUTURE_GAS_LIMIT_EXCEEDED,
    INVALID_ETHEREUM_TRANSACTION,
    WRONG_CHAIN_ID,
    WRONG_NONCE,
    ACCESS_LIST_UNSUPPORTED,
    SCHEDULE_PENDING_EXPIRATION,
    CONTRACT_IS_TOKEN_TREASURY,
    CONTRACT_HAS_NON_ZERO_TOKEN_BALANCES,
    CONTRACT_EXPIRED_AND_PENDING_REMOVAL,
    CONTRACT_HAS_NO_AUTO_RENEW_ACCOUNT,
    PERMANENT_REMOVAL_REQUIRES_SYSTEM_INITIATION,
    PROXY_ACCOUNT_ID_FIELD_IS_DEPRECATED,
    SELF_STAKING_IS_NOT_ALLOWED,
    INVALID_STAKING_ID,
    STAKING_NOT_ENABLED,
    INVALID_PRNG_RANGE,
    MAX_ENTITIES_IN_PRICE_REGIME_HAVE_BEEN_CREATED,
    INVALID_FULL_PREFIX_SIGNATURE_FOR_PRECOMPILE,
    INSUFFICIENT_BALANCES_FOR_STORAGE_RENT,
    MAX_CHILD_RECORDS_EXCEEDED,
    INSUFFICIENT_BALANCES_FOR_RENEWAL_FEES,
    TRANSACTION_HAS_UNKNOWN_FIELDS,
    ACCOUNT_IS_IMMUTABLE,
    ALIAS_ALREADY_ASSIGNED,
    INVALID_METADATA_KEY,
    TOKEN_HAS_NO_METADATA_KEY,
    MISSING_TOKEN_METADATA,
    MISSING_SERIAL_NUMBERS,
    TOKEN_HAS_NO_ADMIN_KEY,
    NODE_DELETED,
    INVALID_NODE_ID,
    INVALID_GOSSIP_ENDPOINT,
    INVALID_NODE_ACCOUNT_ID,
    INVALID_NODE_DESCRIPTION,
    INVALID_SERVICE_ENDPOINT,
    INVALID_GOSSIP_CA_CERTIFICATE,
    INVALID_GRPC_CERTIFICATE,
    INVALID_MAX_AUTO_ASSOCIATIONS,
    MAX_NODES_CREATED,
    IP_FQDN_CANNOT_BE_SET_FOR_SAME_ENDPOINT,
    GOSSIP_ENDPOINT_CANNOT_HAVE_FQDN,
    FQDN_SIZE_TOO_LARGE,
    INVALID_ENDPOINT,
    GOSSIP_ENDPOINTS_EXCEEDED_LIMIT,
    TOKEN_REFERENCE_REPEATED,
    INVALID_OWNER_ID,
    TOKEN_REFERENCE_LIST_SIZE_LIMIT_EXCEEDED,
    SERVICE_ENDPOINTS_EXCEEDED_LIMIT,
    INVALID_IPV4_ADDRESS,
    EMPTY_TOKEN_REFERENCE_LIST,
    UPDATE_NODE_ACCOUNT_NOT_ALLOWED,
    TOKEN_HAS_NO_METADATA_OR_SUPPLY_KEY,
    EMPTY_PENDING_AIRDROP_ID_LIST,
    PENDING_AIRDROP_ID_REPEATED,
    PENDING_AIRDROP_ID_LIST_TOO_LONG,
    PENDING_NFT_AIRDROP_ALREADY_EXISTS,
    ACCOUNT_HAS_PENDING_AIRDROPS,
    THROTTLED_AT_CONSENSUS,
    INVALID_PENDING_AIRDROP_ID,
    TOKEN_AIRDROP_WITH_FALLBACK_ROYALTY,
    INVALID_TOKEN_IN_PENDING_AIRDROP,
    SCHEDULE_EXPIRY_IS_BUSY,
    INVALID_GRPC_CERTIFICATE_HASH,
    MISSING_EXPIRY_TIME,
    NO_SCHEDULING_ALLOWED_AFTER_SCHEDULED_RECURSION,
    RECURSIVE_SCHEDULING_LIMIT_REACHED,
    WAITING_FOR_LEDGER_ID,
    MAX_ENTRIES_FOR_FEE_EXEMPT_KEY_LIST_EXCEEDED,
    FEE_EXEMPT_KEY_LIST_CONTAINS_DUPLICATED_KEYS,
    INVALID_KEY_IN_FEE_EXEMPT_KEY_LIST,
    INVALID_FEE_SCHEDULE_KEY,
    FEE_SCHEDULE_KEY_CANNOT_BE_UPDATED,
    FEE_SCHEDULE_KEY_NOT_SET,
    MAX_CUSTOM_FEE_LIMIT_EXCEEDED,
    NO_VALID_MAX_CUSTOM_FEE,
    INVALID_MAX_CUSTOM_FEES,
    DUPLICATE_DENOMINATION_IN_MAX_CUSTOM_FEE_LIST,
    DUPLICATE_ACCOUNT_ID_IN_MAX_CUSTOM_FEE_LIST,
    MAX_CUSTOM_FEES_IS_NOT_SUPPORTED,
    BATCH_LIST_EMPTY,
    BATCH_LIST_CONTAINS_DUPLICATES,
    BATCH_TRANSACTION_IN_BLACKLIST,
    INNER_TRANSACTION_FAILED,
    MISSING_BATCH_KEY,
    BATCH_KEY_SET_ON_NON_INNER_TRANSACTION,
    INVALID_BATCH_KEY,
    SCHEDULE_EXPIRY_NOT_CONFIGURABLE,
    CREATING_SYSTEM_ENTITIES,
    THROTTLE_GROUP_LCM_OVERFLOW,
    AIRDROP_CONTAINS_MULTIPLE_SENDERS_FOR_A_TOKEN,
    GRPC_WEB_PROXY_NOT_SUPPORTED,
  ];

  static final $core.List<ResponseCodeEnum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 399);
  static ResponseCodeEnum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ResponseCodeEnum._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
