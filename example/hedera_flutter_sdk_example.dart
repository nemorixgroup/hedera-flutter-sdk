import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// hedera_flutter_sdk - Quick Start Examples
///
/// This file demonstrates the core features of the SDK.
/// Each section corresponds to a phase of development.
///
/// Running this example:
/// ```sh
/// dart run example/hedera_flutter_sdk_example.dart
/// ```
Future<void> main() async {
  await walletAndKeysExamples();
  await privateKeyExamples();
  await publicKeyExamples();
}

// ---- Phase 2: Wallet and Keys ----

/// Demonstrates BIP-39 mnemonic generation and wallet recovery.
Future<void> walletAndKeysExamples() async {
  print('=== Wallet and Keys (Phase 2) ===\n');

  // 1. Generate a 24-word mnemonic in English
  final mnemonic24En = await Mnemonic.generate24();
  print('24-word mnemonic (English):');
  print(mnemonic24En.phrase);
  print('Word count: ${mnemonic24En.wordCount}');
  print('Language: ${mnemonic24En.language.name}');
  print('Valid: ${mnemonic24En.validate()}');
  print('');

  // 2. Generate a 12-word mnemonic in English
  final mnemonic12En = await Mnemonic.generate12();
  print('12-word mnemonic (English):');
  print(mnemonic12En.phrase);
  print('');

  // 3. Generate a 24-word mnemonic in Spanish (LATAM support)
  final mnemonic24Es = await Mnemonic.generate24(
    language: MnemonicLanguage.spanish,
  );
  print('24-word mnemonic (Spanish):');
  print(mnemonic24Es.phrase);
  print('Language: ${mnemonic24Es.language.name}');
  print('Valid: ${mnemonic24Es.validate()}');
  print('');

  // 4. Generate a 12-word mnemonic in Spanish
  final mnemonic12Es = await Mnemonic.generate12(
    language: MnemonicLanguage.spanish,
  );
  print('12-word mnemonic (Spanish):');
  print(mnemonic12Es.phrase);
  print('');

  // 5. Recover wallet from existing words
  final recoveredFromWords = await Mnemonic.fromWords(mnemonic24En.words);
  print('Recovered from words:');
  print('Match: ${recoveredFromWords.phrase == mnemonic24En.phrase}');
  print('');

  // 6. Recover wallet from phrase string
  final recoveredFromString = await Mnemonic.fromString(mnemonic24Es.phrase);
  print('Recovered from string (Spanish):');
  print('Match: ${recoveredFromString.phrase == mnemonic24Es.phrase}');
  print('');

  // 7. Derive seed bytes from mnemonic
  final seed = mnemonic24En.toSeed();
  print('Seed (64 bytes):');
  print('Length: ${seed.length} bytes');
  print('');

  // 8. Derive seed with passphrase
  final seedWithPassphrase = mnemonic24En.toSeed(
    passphrase: 'my-secure-passphrase',
  );
  print('Seed with passphrase (64 bytes):');
  print('Length: ${seedWithPassphrase.length} bytes');
  print(
    'Different from seed without passphrase: '
    '${seed.toString() != seedWithPassphrase.toString()}',
  );
  print('');

  // TODO(Phase2): Derive private key from mnemonic
  // final privateKey = await mnemonic24En.toPrivateKey();
  // print('Public key: ${(await privateKey.derivePublicKey()).toString()}');

  print('=== Mnemonic examples complete ===\n');
}

// ---- Phase 2: Private Key ----

/// Demonstrates ED25519 and ECDSA private key generation and signing.
Future<void> privateKeyExamples() async {
  print('=== Private Key (Phase 2) ===\n');

  // 1. Generate ED25519 private key (recommended for Hedera)
  final ed25519Key = await PrivateKey.generateED25519();
  print('ED25519 private key generated:');
  print('Type: ${ed25519Key.type.name}');
  print('Hex length: ${ed25519Key.toHex().length} chars');
  print('DER length: ${ed25519Key.toDerString().length} chars');
  print('Safe toString: $ed25519Key');
  print('');

  // 2. Generate ECDSA private key (EVM wallet compatibility)
  final ecdsaKey = await PrivateKey.generateECDSA();
  print('ECDSA private key generated:');
  print('Type: ${ecdsaKey.type.name}');
  print('Hex length: ${ecdsaKey.toHex().length} chars');
  print('');

  // 3. Import from DER hex string
  final derString = ed25519Key.toDerString();
  final importedFromDer = PrivateKey.fromString(derString);
  print('Imported from DER:');
  print('Match: ${importedFromDer.toHex() == ed25519Key.toHex()}');
  print('');

  // 4. Import from raw hex string
  final rawHex = ed25519Key.toHex();
  final importedFromHex = PrivateKey.fromString(rawHex);
  print('Imported from raw hex:');
  print('Match: ${importedFromHex.toHex() == ed25519Key.toHex()}');
  print('');

  // 5. Import from bytes
  final importedFromBytes = PrivateKey.fromBytes(ed25519Key.bytes);
  print('Imported from bytes:');
  print('Match: ${importedFromBytes.toHex() == ed25519Key.toHex()}');
  print('');

  // 6. Sign a message with ED25519
  final message = [1, 2, 3, 4, 5];
  final signature = await ed25519Key.sign(message);
  print('ED25519 signature:');
  print('Signature length: ${signature.length} bytes');
  print('');

  print('=== Private Key examples complete ===\n');
}

// ---- Phase 2: Public Key ----

/// Demonstrates PublicKey derivation and signature verification.
Future<void> publicKeyExamples() async {
  print('=== Public Key (Phase 2) ===\n');

  // 1. Derive public key from private key
  final privateKey = await PrivateKey.generateED25519();
  final publicKey = await privateKey.derivePublicKey();
  print('Public key derived from ED25519 private key:');
  print('Type: ${publicKey.type.name}');
  print('Hex: ${publicKey.toHex()}');
  print('DER: ${publicKey.toDerString()}');
  print('Bytes length: ${publicKey.bytes.length} bytes');
  print('');

  // 2. Import public key from DER string
  final importedFromDer = PublicKey.fromString(publicKey.toDerString());
  print('Imported from DER:');
  print('Match: ${importedFromDer.toHex() == publicKey.toHex()}');
  print('');

  // 3. Import public key from raw hex
  final importedFromHex = PublicKey.fromString(publicKey.toHex());
  print('Imported from raw hex:');
  print('Match: ${importedFromHex.toHex() == publicKey.toHex()}');
  print('');

  // 4. Import public key from bytes
  final importedFromBytes = PublicKey.fromBytes(publicKey.bytes);
  print('Imported from bytes:');
  print('Match: ${importedFromBytes.toHex() == publicKey.toHex()}');
  print('');

  // 5. Verify a valid signature
  final message = [1, 2, 3, 4, 5];
  final signature = await privateKey.sign(message);
  final isValid = await publicKey.verify(
    message: message,
    signature: signature,
  );
  print('Signature verification:');
  print('Valid signature: $isValid');
  print('');

  // 6. Verify a tampered message (should fail)
  final tamperedMessage = [1, 2, 3, 4, 6];
  final isInvalid = await publicKey.verify(
    message: tamperedMessage,
    signature: signature,
  );
  print('Tampered message verification:');
  print('Valid: $isInvalid (expected: false)');
  print('');

  // 7. Consistent derivation from same private key
  final pubKey2 = await privateKey.derivePublicKey();
  print('Consistent derivation:');
  print('Same key derived twice: ${publicKey.toHex() == pubKey2.toHex()}');
  print('');

  print('=== Public Key examples complete ===\n');
}
