import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('PrivateKey', () {
    // ---- generateED25519 ----

    group('generateED25519', () {
      test('returns a valid ED25519 private key', () async {
        final key = await PrivateKey.generateED25519();
        expect(key.type, equals(PrivateKeyType.ed25519));
      });

      test('returns 32 bytes', () async {
        final key = await PrivateKey.generateED25519();
        expect(key.bytes.length, equals(32));
      });

      test('generates different keys on each call', () async {
        final key1 = await PrivateKey.generateED25519();
        final key2 = await PrivateKey.generateED25519();
        expect(key1.toHex(), isNot(equals(key2.toHex())));
      });

      test('toHex returns 64 hex characters', () async {
        final key = await PrivateKey.generateED25519();
        expect(key.toHex().length, equals(64));
      });

      test('toDerString starts with ED25519 DER prefix', () async {
        final key = await PrivateKey.generateED25519();
        expect(
          key.toDerString(),
          startsWith('302e020100300506032b657004220420'),
        );
      });

      test('toDerString is 96 hex characters', () async {
        final key = await PrivateKey.generateED25519();
        expect(key.toDerString().length, equals(96));
      });
    });

    // ---- generateECDSA ----

    group('generateECDSA', () {
      test('returns a valid ECDSA private key', () async {
        final key = await PrivateKey.generateECDSA();
        expect(key.type, equals(PrivateKeyType.ecdsa));
      });

      test('returns 32 bytes', () async {
        final key = await PrivateKey.generateECDSA();
        expect(key.bytes.length, equals(32));
      });

      test('generates different keys on each call', () async {
        final key1 = await PrivateKey.generateECDSA();
        final key2 = await PrivateKey.generateECDSA();
        expect(key1.toHex(), isNot(equals(key2.toHex())));
      });

      test('toHex returns 64 hex characters', () async {
        final key = await PrivateKey.generateECDSA();
        expect(key.toHex().length, equals(64));
      });

      test('toDerString starts with ECDSA DER prefix', () async {
        final key = await PrivateKey.generateECDSA();
        expect(
          key.toDerString(),
          startsWith('3030020100300706052b8104000a0422'),
        );
      });
    });

    // ---- fromBytes ----

    group('fromBytes', () {
      test('creates ED25519 key from 32 bytes', () async {
        final original = await PrivateKey.generateED25519();
        final restored = PrivateKey.fromBytes(original.bytes);
        expect(restored.toHex(), equals(original.toHex()));
        expect(restored.type, equals(PrivateKeyType.ed25519));
      });

      test('creates ECDSA key from 32 bytes', () async {
        final original = await PrivateKey.generateECDSA();
        final restored = PrivateKey.fromBytes(
          original.bytes,
          type: PrivateKeyType.ecdsa,
        );
        expect(restored.toHex(), equals(original.toHex()));
        expect(restored.type, equals(PrivateKeyType.ecdsa));
      });

      test('throws ArgumentError for wrong byte length', () {
        expect(
          () => PrivateKey.fromBytes(List.filled(31, 0)),
          throwsA(isA<ArgumentError>()),
        );
        expect(
          () => PrivateKey.fromBytes(List.filled(33, 0)),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('bytes list is unmodifiable', () async {
        final key = await PrivateKey.generateED25519();
        expect(
          () => key.bytes.add(0),
          throwsA(isA<UnsupportedError>()),
        );
      });
    });

    // ---- fromString ----

    group('fromString', () {
      test('creates key from DER-encoded ED25519 hex string', () async {
        final original = await PrivateKey.generateED25519();
        final derString = original.toDerString();
        final restored = PrivateKey.fromString(derString);
        expect(restored.toHex(), equals(original.toHex()));
        expect(restored.type, equals(PrivateKeyType.ed25519));
      });

      test('creates key from raw 32-byte hex string', () async {
        final original = await PrivateKey.generateED25519();
        final rawHex = original.toHex();
        final restored = PrivateKey.fromString(rawHex);
        expect(restored.toHex(), equals(original.toHex()));
        expect(restored.type, equals(PrivateKeyType.ed25519));
      });

      test('throws FormatException for invalid hex string', () {
        expect(
          () => PrivateKey.fromString('invalid'),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException for wrong length hex', () {
        expect(
          () => PrivateKey.fromString('abcd1234'),
          throwsA(isA<FormatException>()),
        );
      });

      test('handles leading and trailing whitespace', () async {
        final original = await PrivateKey.generateED25519();
        final restored = PrivateKey.fromString(
          '  ${original.toDerString()}  ',
        );
        expect(restored.toHex(), equals(original.toHex()));
      });
    });

    // ---- sign ----

    group('sign', () {
      test('returns 64-byte signature for ED25519', () async {
        final key = await PrivateKey.generateED25519();
        final signature = await key.sign([1, 2, 3]);
        expect(signature.length, equals(64));
      });

      test('same message produces same signature (deterministic)', () async {
        final key = await PrivateKey.generateED25519();
        final message = [1, 2, 3, 4, 5];
        final sig1 = await key.sign(message);
        final sig2 = await key.sign(message);
        expect(sig1, equals(sig2));
      });

      test('different messages produce different signatures', () async {
        final key = await PrivateKey.generateED25519();
        final sig1 = await key.sign([1, 2, 3]);
        final sig2 = await key.sign([4, 5, 6]);
        expect(sig1, isNot(equals(sig2)));
      });

      test('different keys produce different signatures', () async {
        final key1 = await PrivateKey.generateED25519();
        final key2 = await PrivateKey.generateED25519();
        final message = [1, 2, 3];
        final sig1 = await key1.sign(message);
        final sig2 = await key2.sign(message);
        expect(sig1, isNot(equals(sig2)));
      });

      // ---- ECDSA ----

      test('returns 64-byte signature for ECDSA', () async {
        final key = await PrivateKey.generateECDSA();
        final signature = await key.sign([1, 2, 3]);
        expect(signature.length, equals(64));
      });

      test(
        'ECDSA same message produces same signature '
        '(RFC 6979 deterministic)',
        () async {
          final key = await PrivateKey.generateECDSA();
          final message = [1, 2, 3, 4, 5];
          final sig1 = await key.sign(message);
          final sig2 = await key.sign(message);
          expect(sig1, equals(sig2));
        },
      );

      test('ECDSA different messages produce different signatures', () async {
        final key = await PrivateKey.generateECDSA();
        final sig1 = await key.sign([1, 2, 3]);
        final sig2 = await key.sign([4, 5, 6]);
        expect(sig1, isNot(equals(sig2)));
      });

      test('ECDSA different keys produce different signatures', () async {
        final key1 = await PrivateKey.generateECDSA();
        final key2 = await PrivateKey.generateECDSA();
        final message = [1, 2, 3];
        final sig1 = await key1.sign(message);
        final sig2 = await key2.sign(message);
        expect(sig1, isNot(equals(sig2)));
      });

      test('ECDSA signature has low-S value (s <= n/2)', () async {
        // secp256k1 curve order n
        final n = BigInt.parse(
          'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141',
          radix: 16,
        );
        final halfN = n >> 1;

        final key = await PrivateKey.generateECDSA();
        final signature = await key.sign([1, 2, 3]);

        var s = BigInt.zero;
        for (final byte in signature.sublist(32, 64)) {
          s = (s << 8) | BigInt.from(byte);
        }
        expect(s <= halfN, isTrue);
      });

      test(
        'ECDSA signature round-trips through PublicKey.verify',
        () async {
          final key = await PrivateKey.generateECDSA();
          final publicKey = await key.derivePublicKey();
          final message = [1, 2, 3, 4, 5];
          final signature = await key.sign(message);

          final isValid = await publicKey.verify(
            message: message,
            signature: signature,
          );
          expect(isValid, isTrue);
        },
      );
    });

    // ---- toString ----

    group('toString', () {
      test('does not expose key bytes for ED25519', () async {
        final key = await PrivateKey.generateED25519();
        expect(key.toString(), equals('[PrivateKey: ed25519]'));
        expect(key.toString(), isNot(contains(key.toHex())));
      });

      test('does not expose key bytes for ECDSA', () async {
        final key = await PrivateKey.generateECDSA();
        expect(key.toString(), equals('[PrivateKey: ecdsa]'));
        expect(key.toString(), isNot(contains(key.toHex())));
      });
    });

    // ---- PrivateKeyType ----

    group('PrivateKeyType', () {
      test('ed25519 has correct name', () {
        expect(PrivateKeyType.ed25519.name, equals('ed25519'));
      });

      test('ecdsa has correct name', () {
        expect(PrivateKeyType.ecdsa.name, equals('ecdsa'));
      });
    });
  });
}
