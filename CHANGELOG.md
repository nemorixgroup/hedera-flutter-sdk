# Changelog

All notable changes to hedera_flutter_sdk will be documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
