# Changelog

All notable changes to hedera_flutter_sdk will be documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
