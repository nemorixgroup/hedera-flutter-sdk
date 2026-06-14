import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

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
