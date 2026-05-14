# hedera_flutter_sdk

[![CI](https://github.com/nemorixgroup/hedera-flutter-sdk/actions/workflows/ci.yml/badge.svg)](https://github.com/nemorixgroup/hedera-flutter-sdk/actions/workflows/ci.yml)
[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-teal.svg)](https://opensource.org/licenses/Apache-2.0)
[![Dart](https://img.shields.io/badge/Dart-3.x-teal.svg)](https://dart.dev)
[![Flutter](https://img.shields.io/badge/Flutter-3.x-blue.svg)](https://flutter.dev)
[![Status](https://img.shields.io/badge/Status-In%20Development-orange.svg)]()

**The first native Flutter/Dart SDK for the [Hedera](https://hedera.com) network.**  
Pure Dart · No platform channels · Apache 2.0

## Status

This SDK is currently in **active development** by [Nemorix Group](https://nemorixpay.com).

| Phase | Description | Status |
|:------|:------------|:------:|
| 1 | Architecture + Protobuf | 🔄 In Progress |
| 2 | Crypto + Accounts | ⏳ Pending |
| 3 | HTS Tokens + NFTs | ⏳ Pending |
| 4 | Mirror Node + HCS | ⏳ Pending |
| 5 | Docs + pub.dev v1.0 | ⏳ Pending |
| 6 | Launch + HIP | ⏳ Pending |

## Why this SDK?

Hedera has official SDKs for Java, JavaScript, Go, Swift, C++ and Rust
but no native Flutter/Dart SDK exists on pub.dev.

This project closes that gap.

## Planned Features

- Account management and HBAR transfers
- Hedera Token Service (HTS); fungible tokens, NFTs, native KYC
- Mirror Node REST client with real-time WebSocket subscriptions
- Hedera Consensus Service (HCS)
- BIP-39 mnemonics in English and Spanish; built for LATAM
- Pure Dart; iOS, Android, macOS, Windows, Linux

## Planned Installation

```yaml
# pubspec.yaml; available on pub.dev when v1.0.0 is released
dependencies:
  hedera_flutter_sdk: ^1.0.0
```

## Planned Quick Start

```dart
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

final client = HederaClient.forTestnet()
    .setOperator(
      AccountId.fromString('0.0.12345'),
      PrivateKey.fromString('your-private-key'),
    );
```

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
