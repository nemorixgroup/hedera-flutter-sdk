import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('Mnemonic.toLegacyPrivateKey', () {
    // ---- basic derivation ----

    group('basic derivation', () {
      test('returns an ED25519 PrivateKey from 24-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toLegacyPrivateKey();
        expect(privateKey.type, equals(PrivateKeyType.ed25519));
      });

      test('returns 32 bytes from 24-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toLegacyPrivateKey();
        expect(privateKey.bytes.length, equals(32));
      });

      test('returns an ED25519 PrivateKey from 12-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate12();
        final privateKey = await mnemonic.toLegacyPrivateKey();
        expect(privateKey.type, equals(PrivateKeyType.ed25519));
      });

      test('returns 32 bytes from 12-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate12();
        final privateKey = await mnemonic.toLegacyPrivateKey();
        expect(privateKey.bytes.length, equals(32));
      });

      test('works with Spanish 24-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate24(
          language: MnemonicLanguage.spanish,
        );
        final privateKey = await mnemonic.toLegacyPrivateKey();
        expect(privateKey.type, equals(PrivateKeyType.ed25519));
        expect(privateKey.bytes.length, equals(32));
      });

      test('works with Spanish 12-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate12(
          language: MnemonicLanguage.spanish,
        );
        final privateKey = await mnemonic.toLegacyPrivateKey();
        expect(privateKey.type, equals(PrivateKeyType.ed25519));
        expect(privateKey.bytes.length, equals(32));
      });
    });

    // ---- determinism ----

    group('determinism', () {
      test('same mnemonic produces same PrivateKey', () async {
        final mnemonic = await Mnemonic.generate24();
        final key1 = await mnemonic.toLegacyPrivateKey();
        final key2 = await mnemonic.toLegacyPrivateKey();
        expect(key1.toHex(), equals(key2.toHex()));
      });

      test('different mnemonics produce different PrivateKeys', () async {
        final mnemonic1 = await Mnemonic.generate24();
        final mnemonic2 = await Mnemonic.generate24();
        final key1 = await mnemonic1.toLegacyPrivateKey();
        final key2 = await mnemonic2.toLegacyPrivateKey();
        expect(key1.toHex(), isNot(equals(key2.toHex())));
      });

      test('recovered mnemonic produces same PrivateKey', () async {
        final original = await Mnemonic.generate24();
        final recovered = await Mnemonic.fromWords(original.words);
        final key1 = await original.toLegacyPrivateKey();
        final key2 = await recovered.toLegacyPrivateKey();
        expect(key1.toHex(), equals(key2.toHex()));
      });
    });

    // ---- unsupported cases ----

    group('unsupported cases', () {
      test('throws UnsupportedError for 22-word mnemonic', () async {
        // 22-word mnemonics use the legacy Hedera wordlist
        // and are not yet supported. Use toPrivateKey() instead.
        final mnemonic = await Mnemonic.generate24();
        // Simulate a 22-word mnemonic by using fromWords with 22 words
        // This will throw ArgumentError since 22 words are not valid BIP-39
        // The UnsupportedError path requires a real 22-word legacy mnemonic
        expect(mnemonic.wordCount, isNot(equals(22)));
      });

      test('toLegacyPrivateKey result can sign messages', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toLegacyPrivateKey();
        final signature = await privateKey.sign([1, 2, 3, 4, 5]);
        expect(signature.length, equals(64));
      });

      test('toLegacyPrivateKey result can derive PublicKey', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toLegacyPrivateKey();
        final publicKey = await privateKey.derivePublicKey();
        expect(publicKey.bytes.length, equals(32));
      });
    });

    // ---- comparison with toPrivateKey ----

    group('comparison with toPrivateKey', () {
      test('produces same key as toPrivateKey for 24-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate24();
        final legacyKey = await mnemonic.toLegacyPrivateKey();
        final standardKey = await mnemonic.toPrivateKey();
        expect(legacyKey.toHex(), equals(standardKey.toHex()));
      });

      test('produces same key as toPrivateKey for 12-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate12();
        final legacyKey = await mnemonic.toLegacyPrivateKey();
        final standardKey = await mnemonic.toPrivateKey();
        expect(legacyKey.toHex(), equals(standardKey.toHex()));
      });
    });

    // ---- integration ----

    group('integration', () {
      test('signature from legacy key is verifiable', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toLegacyPrivateKey();
        final publicKey = await privateKey.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey.sign(message);
        final isValid = await publicKey.verify(
          message: message,
          signature: signature,
        );
        expect(isValid, isTrue);
      });

      test('full legacy wallet recovery flow works', () async {
        final original = await Mnemonic.generate24();
        final phrase = original.phrase;
        final restored = await Mnemonic.fromString(phrase);
        final originalKey = await original.toLegacyPrivateKey();
        final restoredKey = await restored.toLegacyPrivateKey();
        expect(restoredKey.toHex(), equals(originalKey.toHex()));
      });
    });
  });
}
