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
| 2 | Crypto + Accounts | 🔄 In Progress |
| 3 | HTS Tokens + NFTs | ⏳ Pending |
| 4 | Mirror Node + HCS | ⏳ Pending |
| 5 | Docs + pub.dev v1.0 | ⏳ Pending |
| 6 | Launch + HIP | ⏳ Pending |

## Why this SDK?

Hedera has official SDKs for Java, JavaScript, Go, Swift, C++ and Rust
but no native Flutter/Dart SDK exists on pub.dev.

This project closes that gap.

## Installation

```yaml
# pubspec.yaml
dependencies:
  hedera_flutter_sdk: ^0.0.5-dev
```

## Quick Guide

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

### Connect to Hedera (Phase 1)

```dart
final client = HederaClient.forTestnet()
    .setOperator(
      AccountId.fromString('0.0.12345'),
      PrivateKey.fromString('your-private-key'),
    );

print(client.networkEndpoint); // 0.testnet.hedera.com:50211
```

## Current Features (v0.0.5-dev)

- `HederaClient` with `forTestnet()`, `forMainnet()`, `forPreviewnet()`
- `Mnemonic` with BIP-39 generation, validation, and recovery in English and 
  Spanish (generate24, generate12, fromWords, fromString, toSeed, validate)
- `MnemonicLanguage` enum with `english` and `spanish` options 
- Official BIP-39 wordlists (2048 words each; English and Spanish)
- Base models: `AccountId`, `TokenId`, `TransactionId`, `Hbar`
- `HederaStatusException` and `HederaStatusCode` for typed error handling
- `HederaConstants` with protocol-level values (ports, fees, endpoints)
- 335 Dart classes generated from Hedera HAPI Protobuf definitions

## Planned Features

- ED25519 and ECDSA key generation and signing
- HD key derivation from mnemonic (BIP-39 standard)
- Legacy Hedera mnemonic support (HashPack and Blade Wallet compatible)
- Account management: create, update, delete, transfer HBAR
- Multi-signature: KeyList with M-of-N threshold
- EVM address alias support
- Hedera Token Service (HTS): fungible tokens, NFTs, native KYC
- Mirror Node REST client with real-time WebSocket subscriptions
- Hedera Consensus Service (HCS)
- Transaction base class with Protobuf serialization

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

Este SDK está siendo desarrollado con soporte nativo para la región:

- Mnemonics BIP-39 en **español**
- Caso de uso principal: remesas **Estados Unidos hacia Latinoamérica**
- Desarrollado por [Nemorix Group](https://nemorixpay.com); Ohio, USA

Siguenos para actualizaciones:
**hedera@nemorixpay.com**

---

<p align="center">
  <sub>Built by <a href="https://nemorixpay.com">Nemorix Group</a>
  · Apache 2.0
  · Contributed to <a href="https://github.com/hiero-ledger">Hiero</a>
  / Linux Foundation</sub>
</p>
