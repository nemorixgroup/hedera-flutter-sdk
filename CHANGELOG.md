# Changelog

All notable changes to hedera_flutter_sdk will be documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 0.1.1-dev

Transaction query completeness: public receipt and record query classes.

### Added

- `TransactionReceiptQuery`: public query class to poll the receipt of
  any Hedera transaction by ID, including transactions not executed
  by the caller
  - `setTransactionId(TransactionId)`: sets the transaction ID to query
  - `toBytes()`: serializes to `TransactionGetReceiptQuery` Protobuf
  - `execute(HederaClient)`: polls every 2 seconds until SUCCESS or
    timeout (30 seconds); returns `TransactionReceipt` with `status`,
    `accountId`, and `tokenId`
- `TransactionRecordQuery`: public query class to retrieve the full
  record of a completed Hedera transaction
  - `setTransactionId(TransactionId)`: sets the transaction ID to query
  - `toBytes()`: serializes to `TransactionGetRecordQuery` Protobuf
  - `execute(HederaClient)`: polls `getTxRecordByTxID()` every 2 seconds
    until the record is available or timeout (30 seconds); returns
    `TransactionRecord` with fee, consensus timestamp, status, accountId,
    tokenId, and full HBAR transfer list
- `TransactionResponse.getRecord(HederaClient)`: polls the network for
  the full transaction record; replaces `UnimplementedError`
- `TransactionRecord`: expanded model with new fields:
  - `consensusTimestamp`: exact consensus time as `DateTime` in UTC
  - `status`: final transaction status (e.g. `SUCCESS`)
  - `accountId`: new account ID for `AccountCreateTransaction`
  - `tokenId`: new token ID for `TokenCreateTransaction`
  - `transfers`: list of HBAR transfers with `accountId` and `amount`
- 24 new unit tests (409/409 -> 433/433 total passing)

### Changed

- `TransactionReceiptQuery` and `TransactionRecordQuery` renamed from
  `TransactionGetReceiptQuery` and `TransactionGetRecordQuery` to avoid
  naming collision with Protobuf-generated classes on Ubuntu CI
- `transaction_receipt_query.dart` and `transaction_record_query.dart`
  renamed accordingly

### Status

Phase 2 complete: full transaction query pipeline implemented.
`TransactionReceiptQuery`, `TransactionRecordQuery`, and `getRecord()`  
all available and verified.  
Not ready for production use.  
Next: ECDSA signing (v0.1.2-dev).  

## 0.1.0-dev

Phase 2 complete: gRPC transaction execution, account management, and HBAR transfers verified on Hedera testnet.

### Added

- `Transaction.buildBody(HederaClient)`: builds a complete `TransactionBody`
  Protobuf with `transactionID` (operator account + nanosecond timestamp),
  `nodeAccountID` (default `0.0.3`), `transactionFee`, `transactionValidDuration`,
  and `memo`; calls `applyToBody()` for the transaction-specific fields
- `Transaction.applyToBody(TransactionBody)`: abstract method implemented by
  each subclass to set its specific field on the `TransactionBody` Protobuf
  (`cryptoCreateAccount`, `cryptoTransfer`, etc.)
- `Transaction.buildSignedTransaction(HederaClient)`: serializes `TransactionBody`
  to `bodyBytes`, wraps with `SignatureMap` into a `SignedTransaction` Protobuf
- `Transaction.execute(HederaClient)`: full gRPC execution pipeline:
  builds and caches `bodyBytes`, signs with operator or custom key,
  constructs `SignedTransaction` and `Transaction` envelope, submits via gRPC,
  verifies `nodeTransactionPrecheckCode`, returns `TransactionResponse`
- `Transaction.signWith(PrivateKey, HederaClient)`: signs the transaction
  with a non-operator private key using the correct cached `bodyBytes`;
  use when a non-operator account needs to authorize a transaction
- `Transaction.setPayerAccountId(AccountId)`: sets the account that pays
  transaction fees; if not set, the operator account is used by default
- `Transaction._buildBodyBytes(HederaClient)`: internal cache for serialized
  `TransactionBody` bytes; guarantees byte consistency across `signWith()`
  and `execute()` calls
- `TransactionResponse.getReceipt(HederaClient)`: polls
  `CryptoService.getTransactionReceipts()` every 2 seconds (up to 15
  attempts / 30 seconds) until consensus is reached; returns
  `TransactionReceipt` with `status`, `accountId`, and `tokenId`;
  throws `HederaStatusException` on non-SUCCESS status;
  throws `TimeoutException` after 30 seconds
- `AccountCreateTransaction.applyToBody()`: sets `cryptoCreateAccount`
  with `autoRenewPeriod = 7,776,000s` (90 days, required by Hedera)
- `AccountUpdateTransaction.applyToBody()`: sets `cryptoUpdateAccount`
- `AccountDeleteTransaction.applyToBody()`: sets `cryptoDelete`
- `CryptoTransferTransaction.applyToBody()`: sets `cryptoTransfer`;
  validates that transfer amounts sum to zero
- `Transaction.executeGrpc(CryptoServiceClient, Transaction)`: abstract
  method returning `TransactionResponse` Protobuf; each subclass routes
  to the correct `CryptoServiceClient` method
- `HederaClient.channel`: lazy-initialized `ClientChannel`; insecure on
  port 50211 for testnet/previewnet, TLS on port 50212 for mainnet
- `HederaClient.cryptoClient`: returns `CryptoServiceClient` connected
  to the active network node
- `HederaClient.close()`: shuts down the gRPC channel and releases resources
- Integration test infrastructure:
  - `test/integration/integration_test_helper.dart`: reads operator
    credentials from `HEDERA_OPERATOR_ID` and `HEDERA_OPERATOR_KEY`
  - `test/integration/transactions/account_create_transaction_test.dart`:
    2 tests verified on Hedera testnet (account `0.0.9358959` created)
  - `test/integration/transactions/account_setup_test.dart`: utility test
    to create funded testnet accounts and print credentials
  - `test/integration/transactions/crypto_transfer_transaction_test.dart`:
    operator-signed HBAR transfers with `getReceipt()` SUCCESS
  - `test/integration/transactions/crypto_transfer_sign_test.dart`:
    non-operator signing via `signWith()` and `setPayerAccountId()`;
    reads Alice credentials from `HEDERA_ALICE_ID` and `HEDERA_ALICE_KEY`
- New examples:
  - `example/phase2/quick_start_example.dart`: simplest flow with
    bilingual comments (EN/ES)
  - `example/phase2/account_lifecycle_example.dart`: complete end-to-end
    flow - create Alice, create Bob, Alice transfers HBAR to Bob using
    her own key and paying her own fees; bilingual comments (EN/ES)
  - `example/phase2/hedera_service_example.dart`: `HederaService` pattern
    for Flutter apps with `init()` and `dispose()` lifecycle; bilingual
    comments (EN/ES)
- 45 new unit tests (363/363 -> 407/407 total passing)

### Changed

- `Transaction.execute()`: refactored to sign `bodyBytes` (complete
  `TransactionBody`) instead of `toBytes()` (specific body only);
  fixes `INVALID_SIGNATURE` on Hedera nodes
- `HederaClient.channel`: switched from TLS to insecure for testnet and
  previewnet to avoid certificate verification issues in development
- `example/hedera_flutter_sdk_example.dart`: updated with GETTING STARTED,
  QUICK START, and PHASE OVERVIEW sections; documents Windows/macOS/Linux
  environment variable setup

### Fixed

- `INVALID_RENEWAL_PERIOD`: added `autoRenewPeriod` to
  `AccountCreateTransaction.applyToBody()`
- `INVALID_SIGNATURE`: signing now uses cached `bodyBytes` from
  `_buildBodyBytes()` ensuring the signed bytes match exactly what
  the node receives in `SignedTransaction`
- `TransactionId` in `TransactionResponse`: now extracted from the built
  `TransactionBody` instead of `DateTime.now()`, ensuring correct
  timestamp for `getReceipt()` polling

### Verified on Hedera Testnet

- Operator account: `0.0.9186292` (ED25519, testnet)
- Accounts created: `0.0.9358959`, `0.0.9365895`, `0.0.9367078`,
  `0.0.9367079` (visible on HashScan)
- HBAR transfers: operator to receiver and Alice to Bob (non-operator
  signing with custom fee payer)
- All transactions visible at:
  `https://hashscan.io/testnet/account/0.0.9186292/operations`

### Status

Phase 2 complete: full gRPC execution pipeline working end-to-end on
Hedera testnet. Account creation, HBAR transfers, receipt polling,
non-operator signing, and custom fee payers all verified.  
Not ready for production use.  
Next: Hedera Token Service (HTS) - Phase 3.

## 0.0.9-dev

Phase 2 in progress: HBAR transfers and EVM address compatibility.

### Added
- `CryptoTransferTransaction`: transfers HBAR between Hedera accounts
  - `addHbarTransfer(AccountId, Hbar)`, callable multiple times
  - `transferCount` getter
  - `toBytes()` validates that transfer amounts sum to zero before
    serializing via `CryptoTransferTransactionBody` Protobuf
  - throws `ArgumentError` if no transfers added or sum is not zero
- `AccountId.evm()` and `AccountId.fromEvmAddress()`: EVM-compatible
  address alias support (20-byte addresses, e.g. for MetaMask)
  - `isEvmAddress` getter
  - `toString()` handles both native (shard.realm.num) and EVM (0x...) formats
- `AccountId.toProto()`: centralizes `AccountID` Protobuf construction,
  correctly using the `alias` field for EVM accounts (`oneof` with
  `accountNum`)
- `example/phase2/transaction_example.dart`: expanded with
  `AccountUpdateTransaction`, `AccountDeleteTransaction`, and
  `CryptoTransferTransaction` examples
- `example/phase2/query_example.dart`: expanded with `AccountInfoQuery`
  example and updated full workflow preview
- 42 new unit tests (321/321 -> 363/363 total passing)

### Changed
- `AccountBalanceQuery`, `AccountInfoQuery`, `AccountUpdateTransaction`,
  `AccountDeleteTransaction`, `CryptoTransferTransaction`: refactored to
  use `AccountId.toProto()` instead of manually constructing `AccountID`,
  reducing duplication and enabling transparent EVM alias support
- README.md: Current Features and Planned Features updated to reflect
  Phase 2 progress
- pubspec.yaml: version bumped to 0.0.9-dev

### Status
Phase 2 in progress: Account Management CRUD cycle complete, HBAR
transfers and EVM address alias support added.  
Not ready for production use.  
Next: gRPC execution (`execute()` via `HederaClient`).

## 0.0.8-dev

Phase 2 in progress: Account Management CRUD cycle completed.

### Added
- `AccountInfo`: model representing full Hedera account information
  - accountId, key, balance, deleted, memo, receiverSignatureRequired,
    maxAutomaticTokenAssociations, ownedNfts
- `AccountInfoQuery`: queries full account information
  - `setAccountId()` (required)
  - `toBytes()` serializes via `CryptoGetInfoQuery` Protobuf
- `AccountUpdateTransaction`: updates an existing Hedera account
  - `setAccountIdToUpdate()` (required); all other fields optional
  - `setKey()`, `setNewMemo()`, `setReceiverSignatureRequired()`,
    `setMaxAutomaticTokenAssociations()`
  - Optional fields use Google Protobuf wrapper types (`StringValue`,
    `BoolValue`, `Int32Value`) to distinguish "not set" from falsy values
  - `toBytes()` serializes via `CryptoUpdateTransactionBody` Protobuf
- `AccountDeleteTransaction`: deletes an existing Hedera account
  - `setAccountId()` (required) - account to delete
  - `setTransferAccountId()` (required) - receives remaining HBAR balance
  - `toBytes()` serializes via `CryptoDeleteTransactionBody` Protobuf
- 61 new unit tests (321/321 total passing)

### Changed
- pubspec.yaml: version bumped to 0.0.8-dev

### Status
Phase 2 in progress: Account Management CRUD cycle completed
(Create, Read, Update, Delete).  
Not ready for production use.  
Next: CryptoTransferTransaction.

## 0.0.7-dev

Phase 2 in progress: Cryptography and Account Management.

### Added
- `Transaction<T>`: abstract base class for all Hedera transactions
  using Generic Self-Type pattern for fluent API chaining in any order
  - `setNodeAccountId()`, `setMaxTransactionFee()`, `setMemo()`,
    `setValidDuration()`, `setTransactionId()`
  - `sign()`, `addSignature()`, `signWithOperator()`
  - `execute()` stub (gRPC pending)
  - `TransactionResponse`, `TransactionReceipt`, `TransactionRecord`
- `AccountCreateTransaction`: creates a new Hedera account
  - `setKey()` (required), `setInitialBalance()`,
    `setMaxAutomaticTokenAssociations()`, `setReceiverSignatureRequired()`
  - `toBytes()` serializes via `CryptoCreateTransactionBody` Protobuf
- `Query<R, T>`: abstract base class for all Hedera queries
  using Generic Self-Type pattern; payment support pending
  (requires `CryptoTransferTransaction`)
- `AccountBalanceQuery`: queries HBAR balance of a Hedera account
  - `setAccountId()` (required)
  - `toBytes()` serializes via `CryptoGetAccountBalanceQuery` Protobuf
- `example/`: restructured into phase-based subfolders

### Changed
- `example/hedera_flutter_sdk_example.dart`: refactored as entry point;
  imports phase2 examples
- pubspec.yaml: version bumped to 0.0.7-dev
- README.md: Phase 2 checklist updated with completed items

### Status
Phase 2 in progress: Cryptography and Account Management.  
Not ready for production use.  
Next: CryptoTransferTransaction and AccountInfoQuery.

## 0.0.6-dev

Phase 2 in progress: Cryptography and Account Management.

### Added
- `HederaClient` with `forTestnet()`, `forMainnet()`, `forPreviewnet()`
- `Mnemonic.toPrivateKey()`: HD key derivation from mnemonic via BIP-39
  standard; supports optional passphrase; 12 and 24-word mnemonics
- `Mnemonic.toLegacyPrivateKey()`: legacy key derivation for 12 and
  24-word mnemonics; 22-word legacy pending (UnsupportedError with reference
  to github.com/hashgraph/hedera-sdk-go)
- Official BIP-39 wordlists (2048 words each; English and Spanish)
- `Mnemonic.fromString()`: create Mnemonic from space-separated phrase
- `Mnemonic.validate()`: BIP-39 checksum validation for English and Spanish
- `PrivateKey.derivePublicKey()`: async ED25519 public key derivation
- `HederaConstants`: ASN.1/DER prefix constants
  - `ed25519PrivateKeyPrefix` (OID 1.3.101.112 - RFC 8410)
  - `ecdsaPrivateKeyPrefix` (OID 1.3.132.0.10)
  - `ed25519PublicKeyPrefix`
- README.md: Quick Guide expanded with PrivateKey and PublicKey sections

### Changed
- README.md: Current Features updated with toPrivateKey and toLegacyPrivateKey  
- README.md: Planned Features updated; 22-word legacy mnemonic marked pending

### Status
Phase 2 in progress: Cryptography and Account Management.  
Not ready for production use.  
Next: Transaction base class and Account Management.

## 0.0.5-dev

Phase 2 in progress: Cryptography and Account Management.

### Added
- `PrivateKey`: ED25519 and ECDSA key generation, import, and signing
  - `generateED25519()` using cryptography package
  - `generateECDSA()` using Random.secure()
  - `fromBytes()` with type parameter
  - `fromString()` supporting DER and raw hex
  - `sign()` for ED25519 via cryptography package
  - `toDerString()` and `toHex()` using ASN.1/DER prefix constants
  - `toString()` does not expose key bytes (security)
- `PublicKey`: derivation, import, and ED25519 signature verification
  - `derivePublicKey()` async derivation from PrivateKey
  - `fromBytes()` and `fromString()` supporting DER and raw hex
  - `verify()` for ED25519 signature verification
  - `toDerString()`, `toHex()`, `toString()` (safe to expose)
- `HederaConstants`: ASN.1/DER prefix constants for ED25519 and ECDSA
  - `ed25519PrivateKeyPrefix` (OID 1.3.101.112 - RFC 8410)
  - `ecdsaPrivateKeyPrefix` (OID 1.3.132.0.10)
  - `ed25519PublicKeyPrefix`
- `cryptography ^2.9.0`: added for ED25519 key generation and signing
- `example/`: Quick Start examples for Mnemonic, PrivateKey and PublicKey
- README.md: Quick Guide expanded with PrivateKey and PublicKey examples
- 54 new unit tests (155/155 total passing)

### Changed
- README.md: Current Features updated with PrivateKey and PublicKey
- README.md: Planned Features updated; removed implemented items
- README.md: encoding issues fixed

### Status
Phase 2 in progress: Cryptography and Account Management.
Not ready for production use.
Next: Mnemonic.toPrivateKey() HD key derivation and Account Management.

## 0.0.4-dev

Phase 2 started: Cryptography and Account Management.

### Added
- `Mnemonic`: BIP-39 mnemonic generation and validation
  with `generate24()` and `generate12()` in English and Spanish
- `Mnemonic.fromString()`: create Mnemonic from space-separated phrase
- `MnemonicLanguage`: enum with `english` and `spanish` options
- Official BIP-39 English wordlist (2048 words)
- Official BIP-39 Spanish wordlist (2048 words); first Hedera
  SDK with native Spanish mnemonic support for LATAM users
- `toSeed()`: derives 64-byte seed via PBKDF2 with optional passphrase
- `validate()`: full BIP-39 checksum validation for English and Spanish
- 41 unit tests for Mnemonic (101/101 total passing)

### Status
Phase 2 in progress: Cryptography and Account Management.
Not ready for production use.
Next: ED25519 and ECDSA key generation with pointycastle.

## 0.0.3-dev

Fix pana static analysis score from 50/160 to 130/160.

### Fixed
- generate_proto.ps1: include auxiliary/ and state/ subdirectories
  to resolve missing URI imports in transaction.pb.dart
- pubspec.yaml: add explicit platform declarations (Android, iOS,
  macOS, Windows, Linux) excluding Web due to gRPC dart:io dependency
- analysis_options.yaml: exclude lib/src/proto/** from analyzer
  to suppress warnings in auto-generated Protobuf files

### Changed
- pubspec.yaml: version bumped to 0.0.3-dev

### Status
Phase 1 completed. Not ready for production use.
pana score: 130/160.
Phase 2 starting: Cryptography and Account Management.

## 0.0.2-dev

Phase 1 completed - SDK foundation and architecture.

### Added
- `HederaStatusException`: typed exception for Hedera network errors
- `HederaStatusCode`: typed status codes from response_code.proto
  with common codes (SUCCESS, INSUFFICIENT_ACCOUNT_BALANCE,
  INVALID_SIGNATURE, TOKEN_NOT_ASSOCIATED, KYC_NOT_GRANTED, etc.)
- `HederaConstants`: protocol-level constants for ports, HBAR units,
  transaction limits, default fees, and network endpoints
- Unit tests for all core classes (60/60 passing)
- Protobuf code generation script (generate_proto.ps1)
- 335 Dart classes generated from 104 Hedera HAPI .proto files

### Changed
- `HederaClient`: updated to use HederaConstants for endpoints,
  ports, and default fees instead of hardcoded values
- `pubspec.yaml`: shortened description for pub.dev compliance
- Flutter upgraded to 3.44.0

### Status
Phase 1 completed. Not ready for production use.
Phase 2 starting: Cryptography and Account Management.

## 0.0.1-dev

Initial SDK scaffold - Phase 1 in progress.

### Added
- Flutter package structure with very_good_analysis linter
- Base model classes: AccountId, TokenId, TransactionId, Hbar
- HederaClient with forTestnet(), forMainnet(), forPreviewnet()
- HederaNetwork enum
- Crypto stubs: PrivateKey, PublicKey, Mnemonic (Phase 2)
- Unit tests: 20/20 passing
- GitHub Actions CI/CD pipeline
- pre_commit.ps1 for local verification

### Status
Phase 1 in progress. Not ready for production use.
Full feature set coming in v1.0.0.
