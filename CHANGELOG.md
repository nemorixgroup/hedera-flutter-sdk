# Changelog

All notable changes to hedera_flutter_sdk will be documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
