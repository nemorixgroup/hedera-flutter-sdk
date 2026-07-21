import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

// fromBytes:        4 tests (creation, errors, immutability, type)
// fromString:       5 tests (DER, raw hex, errors, whitespace)
// derivePublicKey:  8 tests (consistency, uniqueness, size,
//                   ECDSA consistency, uniqueness, size, type, prefix)
// toHex:            2 tests (length, lowercase)
// toDerString:      3 tests (prefix, length, toString)
// verify:           8 tests (valid, tampered message,
//                   tampered signature, wrong key, ECDSA valid,
//                   tampered message, tampered signature, wrong key)
// PublicKeyType:    2 tests (names)
void main() {
  group('PublicKey', () {
    // ---- fromBytes ----

    group('fromBytes', () {
      test('creates ED25519 public key from 32 bytes', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final restored = PublicKey.fromBytes(publicKey.bytes);
        expect(restored.toHex(), equals(publicKey.toHex()));
        expect(restored.type, equals(PublicKeyType.ed25519));
      });

      test('throws ArgumentError for wrong byte length', () {
        expect(
          () => PublicKey.fromBytes(List.filled(31, 0)),
          throwsA(isA<ArgumentError>()),
        );
        expect(
          () => PublicKey.fromBytes(List.filled(33, 0)),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('bytes list is unmodifiable', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        expect(
          () => publicKey.bytes.add(0),
          throwsA(isA<UnsupportedError>()),
        );
      });

      test('defaults to ED25519 type', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final restored = PublicKey.fromBytes(publicKey.bytes);
        expect(restored.type, equals(PublicKeyType.ed25519));
      });
    });

    // ---- fromString ----

    group('fromString', () {
      test('creates key from DER-encoded ED25519 hex string', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final derString = publicKey.toDerString();
        final restored = PublicKey.fromString(derString);
        expect(restored.toHex(), equals(publicKey.toHex()));
        expect(restored.type, equals(PublicKeyType.ed25519));
      });

      test('creates key from raw 32-byte hex string', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final rawHex = publicKey.toHex();
        final restored = PublicKey.fromString(rawHex);
        expect(restored.toHex(), equals(publicKey.toHex()));
      });

      test('throws FormatException for invalid hex string', () {
        expect(
          () => PublicKey.fromString('invalid'),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException for wrong length hex', () {
        expect(
          () => PublicKey.fromString('abcd1234'),
          throwsA(isA<FormatException>()),
        );
      });

      test('handles leading and trailing whitespace', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final restored = PublicKey.fromString(
          '  ${publicKey.toDerString()}  ',
        );
        expect(restored.toHex(), equals(publicKey.toHex()));
      });
    });

    // ---- derivePublicKey ----

    group('derivePublicKey', () {
      test('derives consistent public key from same private key', () async {
        final privateKey = await PrivateKey.generateED25519();
        final pubKey1 = await privateKey.derivePublicKey();
        final pubKey2 = await privateKey.derivePublicKey();
        expect(pubKey1.toHex(), equals(pubKey2.toHex()));
      });

      test('different private keys produce different public keys', () async {
        final privateKey1 = await PrivateKey.generateED25519();
        final privateKey2 = await PrivateKey.generateED25519();
        final pubKey1 = await privateKey1.derivePublicKey();
        final pubKey2 = await privateKey2.derivePublicKey();
        expect(pubKey1.toHex(), isNot(equals(pubKey2.toHex())));
      });

      test('public key is 32 bytes', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        expect(publicKey.bytes.length, equals(32));
      });

      // ---- ECDSA ----

      test(
        'ECDSA derives consistent public key from same private key',
        () async {
          final privateKey = await PrivateKey.generateECDSA();
          final pubKey1 = await privateKey.derivePublicKey();
          final pubKey2 = await privateKey.derivePublicKey();
          expect(pubKey1.toHex(), equals(pubKey2.toHex()));
        },
      );

      test(
        'ECDSA different private keys produce different public keys',
        () async {
          final privateKey1 = await PrivateKey.generateECDSA();
          final privateKey2 = await PrivateKey.generateECDSA();
          final pubKey1 = await privateKey1.derivePublicKey();
          final pubKey2 = await privateKey2.derivePublicKey();
          expect(pubKey1.toHex(), isNot(equals(pubKey2.toHex())));
        },
      );

      test('ECDSA public key is 33 bytes (compressed)', () async {
        final privateKey = await PrivateKey.generateECDSA();
        final publicKey = await privateKey.derivePublicKey();
        expect(publicKey.bytes.length, equals(33));
      });

      test('ECDSA public key has correct type', () async {
        final privateKey = await PrivateKey.generateECDSA();
        final publicKey = await privateKey.derivePublicKey();
        expect(publicKey.type, equals(PublicKeyType.ecdsa));
      });

      test(
        'ECDSA public key starts with 0x02 or 0x03 (compression prefix)',
        () async {
          final privateKey = await PrivateKey.generateECDSA();
          final publicKey = await privateKey.derivePublicKey();
          final firstByte = publicKey.bytes.first;
          expect(firstByte == 0x02 || firstByte == 0x03, isTrue);
        },
      );
    });

    // ---- toHex ----

    group('toHex', () {
      test('returns 64 hex characters', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        expect(publicKey.toHex().length, equals(64));
      });

      test('returns lowercase hex', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        expect(publicKey.toHex(), equals(publicKey.toHex().toLowerCase()));
      });
    });

    // ---- toDerString ----

    group('toDerString', () {
      test('starts with ED25519 DER prefix', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        expect(
          publicKey.toDerString(),
          startsWith('302a300506032b6570032100'),
        );
      });

      test('is 88 hex characters for ED25519', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        expect(publicKey.toDerString().length, equals(88));
      });

      test('toString returns toDerString', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        expect(publicKey.toString(), equals(publicKey.toDerString()));
      });
    });

    // ---- verify ----

    group('verify', () {
      test('returns true for valid ED25519 signature', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey.sign(message);
        final isValid = await publicKey.verify(
          message: message,
          signature: signature,
        );
        expect(isValid, isTrue);
      });

      test('returns false for tampered message', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey.sign(message);
        final tamperedMessage = [1, 2, 3, 4, 6];
        final isValid = await publicKey.verify(
          message: tamperedMessage,
          signature: signature,
        );
        expect(isValid, isFalse);
      });

      test('returns false for tampered signature', () async {
        final privateKey = await PrivateKey.generateED25519();
        final publicKey = await privateKey.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey.sign(message);
        final tamperedSignature = List<int>.from(signature);
        tamperedSignature[0] = tamperedSignature[0] ^ 0xFF;
        final isValid = await publicKey.verify(
          message: message,
          signature: tamperedSignature,
        );
        expect(isValid, isFalse);
      });

      test('returns false for wrong public key', () async {
        final privateKey1 = await PrivateKey.generateED25519();
        final privateKey2 = await PrivateKey.generateED25519();
        final publicKey2 = await privateKey2.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey1.sign(message);
        final isValid = await publicKey2.verify(
          message: message,
          signature: signature,
        );
        expect(isValid, isFalse);
      });

      // ---- ECDSA ----

      test('returns true for valid ECDSA signature', () async {
        final privateKey = await PrivateKey.generateECDSA();
        final publicKey = await privateKey.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey.sign(message);
        final isValid = await publicKey.verify(
          message: message,
          signature: signature,
        );
        expect(isValid, isTrue);
      });

      test('ECDSA returns false for tampered message', () async {
        final privateKey = await PrivateKey.generateECDSA();
        final publicKey = await privateKey.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey.sign(message);
        final tamperedMessage = [1, 2, 3, 4, 6];
        final isValid = await publicKey.verify(
          message: tamperedMessage,
          signature: signature,
        );
        expect(isValid, isFalse);
      });

      test('ECDSA returns false for tampered signature', () async {
        final privateKey = await PrivateKey.generateECDSA();
        final publicKey = await privateKey.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey.sign(message);
        final tamperedSignature = List<int>.from(signature);
        tamperedSignature[0] = tamperedSignature[0] ^ 0xFF;
        final isValid = await publicKey.verify(
          message: message,
          signature: tamperedSignature,
        );
        expect(isValid, isFalse);
      });

      test('ECDSA returns false for wrong public key', () async {
        final privateKey1 = await PrivateKey.generateECDSA();
        final privateKey2 = await PrivateKey.generateECDSA();
        final publicKey2 = await privateKey2.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey1.sign(message);
        final isValid = await publicKey2.verify(
          message: message,
          signature: signature,
        );
        expect(isValid, isFalse);
      });
    });

    // ---- PublicKeyType ----

    group('PublicKeyType', () {
      test('ed25519 has correct name', () {
        expect(PublicKeyType.ed25519.name, equals('ed25519'));
      });

      test('ecdsa has correct name', () {
        expect(PublicKeyType.ecdsa.name, equals('ecdsa'));
      });
    });
  });
}
