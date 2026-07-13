# hedera_flutter_sdk

[![CI](https://github.com/nemorixgroup/hedera-flutter-sdk/actions/workflows/ci.yml/badge.svg)](https://github.com/nemorixgroup/hedera-flutter-sdk/actions/workflows/ci.yml)
[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-teal.svg)](https://opensource.org/licenses/Apache-2.0)
[![Dart](https://img.shields.io/badge/Dart-3.x-teal.svg)](https://dart.dev)
[![Flutter](https://img.shields.io/badge/Flutter-3.x-blue.svg)](https://flutter.dev)
[![Status](https://img.shields.io/badge/Status-Phase%202%20In%20Progress-blue.svg)]()

**The first native Flutter/Dart SDK for the [Hedera](https://hedera.com) network.**  
Pure Dart · No platform channels · Apache 2.0

## Status

This SDK is currently in **active development** by [Nemorix Group](https://nemorixpay.com).

| Phase | Description | Status |
|:------|:------------|:------:|
| 1 | Architecture + Protobuf | ✅ Completed |
| 2 | Crypto + Accounts | 🔄 Near Complete |
| 3 | HTS Tokens + NFTs | ⏳ Pending |
| 4 | Mirror Node + HCS | ⏳ Pending |
| 5 | Docs + pub.dev v1.0 | ⏳ Pending |
| 6 | Launch + HIP | ⏳ Pending |

## Why this SDK?

Hedera has official SDKs for Java, JavaScript, Go, Swift, C++ and Rust
but no native Flutter/Dart SDK exists on pub.dev.

This project closes that gap.

## SDK Documentation & Knowledge Base

This SDK is built on top of the [Hedera Knowledge Base](https://github.com/nemorixgroup/Hedera-Knowledge-Base), an in-depth guide to the Hedera network covering consensus, architecture, native services (HBAR, HTS, HCS, HFS), and the development ecosystem. Recommended reading before diving into the SDK internals.  

Every implementation decision in `hedera_flutter_sdk` is grounded in the official
Hedera API (HAPI) Protobuf definitions and verified against Hedera testnet -
no third-party references, no unverified code.  

## Installation

```yaml
# pubspec.yaml
dependencies:
  hedera_flutter_sdk: ^0.1.1-dev
```

## Quick Guide

### Connect to Hedera (Phase 1)

```dart
final client = HederaClient.forTestnet()
    .setOperator(
      AccountId.fromString('0.0.12345'),
      PrivateKey.fromString('your-private-key'),
    );

print(client.networkEndpoint); // 0.testnet.hedera.com:50211
```

### Wallet and Keys (Phase 2)

#### Generate a mnemonic

```dart
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

// English (default)
final mnemonic = await Mnemonic.generate24();
print(mnemonic.phrase);      // 24 words
print(mnemonic.wordCount);   // 24
print(mnemonic.validate());  // true

// 12-word mnemonic
final mnemonic12 = await Mnemonic.generate12();

// Spanish - built for LATAM users
final mnemonicEs = await Mnemonic.generate24(
  language: MnemonicLanguage.spanish,
);
print(mnemonicEs.phrase);    // 24 palabras
```

#### Recover a wallet

```dart
// From word list
final recovered = await Mnemonic.fromWords([
  'word1', 'word2', 'word3', ...
]);

// From phrase string
final recovered = await Mnemonic.fromString(
  'word1 word2 word3 ...',
);
```

#### Derive seed bytes

```dart
// Without passphrase
final seed = mnemonic.toSeed();
print(seed.length); // 64 bytes

// With passphrase (optional extra security)
final seed = mnemonic.toSeed(passphrase: 'my-passphrase');
```

#### Generate a private key

```dart
// ED25519 - recommended for Hedera accounts
final privateKey = await PrivateKey.generateED25519();
print(privateKey.type.name);       // ed25519
print(privateKey.toHex().length);  // 64
print(privateKey.toDerString());   // 302e...
print(privateKey.toString());      // [PrivateKey: ed25519]

// ECDSA - for EVM wallet compatibility
final ecdsaKey = await PrivateKey.generateECDSA();
```

#### Import a private key

```dart
// From DER hex string (HashPack / Blade Wallet format)
final key = PrivateKey.fromString('302e020100300506032b657004220420...');

// From raw hex string
final key = PrivateKey.fromString('4a3b2c1d...');

// From bytes
final key = PrivateKey.fromBytes(keyBytes);
```

#### Sign a message

```dart
final message = [1, 2, 3, 4, 5];
final signature = await privateKey.sign(message);
print(signature.length); // 64 bytes
```

#### Derive and use a public key

```dart
// Derive public key from private key
final publicKey = await privateKey.derivePublicKey();
print(publicKey.toHex());        // 32 bytes as hex
print(publicKey.toDerString());  // 302a...
print(publicKey.toString());     // 302a... (safe to expose)

// Import public key
final pubKey = PublicKey.fromString('302a300506032b6570032100...');
final pubKey = PublicKey.fromBytes(pubKeyBytes);

// Verify a signature
final isValid = await publicKey.verify(
  message: message,
  signature: signature,
);
print(isValid); // true
```

## Current Features (v0.1.1-dev)

- `HederaClient` with `forTestnet()`, `forMainnet()`, `forPreviewnet()`
- `Mnemonic` with BIP-39 generation, validation, and recovery in English and
  Spanish (generate24, generate12, fromWords, fromString, toSeed, validate)
- `MnemonicLanguage` enum with `english` and `spanish` options
- Official BIP-39 wordlists (2048 words each; English and Spanish)
- `Mnemonic.toPrivateKey()` and `toLegacyPrivateKey()` for HD key
  derivation (12 and 24-word mnemonics; 22-word raises UnsupportedError)
- `PrivateKey` with ED25519 and ECDSA generation, import, and signing
- `PublicKey` with derivation, import, and ED25519 signature verification
- Base models: `AccountId`, `TokenId`, `TransactionId`, `Hbar`
- `HederaStatusException` and `HederaStatusCode` for typed error handling
- `HederaConstants` with protocol-level values (ports, fees, endpoints)
- 335 Dart classes generated from Hedera HAPI Protobuf definitions
- `Transaction<T>`: generic base class with fluent API, signing,
  and Protobuf serialization (Generic Self-Type pattern)
- `Query<R,T>`: generic base class with fluent API and Protobuf serialization
- Account management transactions: `AccountCreateTransaction`,
  `AccountUpdateTransaction`, `AccountDeleteTransaction`
- `CryptoTransferTransaction`: HBAR transfers with sum-zero validation
- Account queries: `AccountBalanceQuery`, `AccountInfoQuery` with
  `AccountInfo` model
- EVM address alias support
- gRPC execution pipeline: `buildBody()`, `buildSignedTransaction()`,
  `execute()` via `HederaClient` with precheck code verification
- `signWith(PrivateKey, HederaClient)`: sign with non-operator private key
  using correct `TransactionBody` bytes; enables non-operator fee payers
- `setPayerAccountId(AccountId)`: set a custom fee payer account;
  defaults to operator if not set
- `TransactionResponse`: `getReceipt()` and `getRecord()` with gRPC polling
  (polls every 2 seconds; up to 30 seconds timeout)
- `TransactionReceiptQuery`: public query class to poll the receipt of any
  Hedera transaction by ID - including transactions not executed by the caller
- `TransactionRecordQuery`: public query class to retrieve the full record
  of a completed transaction including exact fee, consensus timestamp,
  and full HBAR transfer list
- `TransactionReceipt`: status, accountId, tokenId
- `TransactionRecord`: transactionId, transactionFee, memo,
  consensusTimestamp, status, accountId, tokenId, transfers
- Integration tests verified on Hedera testnet (HashScan)  

## Planned Features

- Multi-signature: `KeyList` with M-of-N threshold
- Hedera Token Service (HTS): fungible tokens, NFTs, native KYC
- Mirror Node REST client with real-time WebSocket subscriptions
- Hedera Consensus Service (HCS)

## Real-World Use Case

This SDK is being developed in parallel with
**[NemorixPay](https://nemorixpay.com)**; a mobile remittance platform
for US-to-LATAM payments; which will use it in production from day one.

## Contributing

The SDK is not ready for external contributions yet.
Follow this repository for updates; contributions will
be welcome starting with v1.0.0.

See [CONTRIBUTING.md](CONTRIBUTING.md) for future guidelines.

## License

Licensed under [Apache 2.0](LICENSE).
Will be contributed to [Hiero](https://github.com/hiero-ledger)
under the Linux Foundation Decentralized Trust.

## Para desarrolladores en LATAM

Este SDK esta siendo desarrollado con soporte nativo para la region:

- Mnemonics BIP-39 en **espanol**
- Caso de uso principal: remesas **Estados Unidos hacia Latinoamerica**
- Desarrollado por [Nemorix Group](https://nemorixpay.com); Ohio, USA

Siguenos para actualizaciones:
**sdks@nemorixpay.com**

## Support This Project

If this SDK is useful to you or your team, consider supporting its
development. Every contribution helps cover infrastructure,
documentation, and the time invested in building and maintaining this
open source tool for the Hedera and Flutter community. Thank you!

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-Support-FFDD00?logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/nemorixgroupllc)
[![Sponsor](https://img.shields.io/badge/Sponsor-GitHub-EA4AAA?logo=github-sponsors&logoColor=white)](https://github.com/sponsors/nemorixgroup)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support-FF5E5B?logo=ko-fi&logoColor=white)](https://ko-fi.com/nemorixgroupllc)

---

<p align="center">
  <sub>Built by <a href="https://nemorixpay.com">Nemorix Group</a>
  · Apache 2.0
  · Contributed to <a href="https://github.com/hiero-ledger">Hiero</a>
  / Linux Foundation</sub>
</p>
