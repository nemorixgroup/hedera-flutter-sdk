import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

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
