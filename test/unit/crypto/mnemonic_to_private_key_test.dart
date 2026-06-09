import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('Mnemonic.toPrivateKey', () {
    // ---- basic derivation ----

    group('basic derivation', () {
      test('returns an ED25519 PrivateKey', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toPrivateKey();
        expect(privateKey.type, equals(PrivateKeyType.ed25519));
      });

      test('returns 32 bytes', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toPrivateKey();
        expect(privateKey.bytes.length, equals(32));
      });

      test('works with 12-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate12();
        final privateKey = await mnemonic.toPrivateKey();
        expect(privateKey.type, equals(PrivateKeyType.ed25519));
        expect(privateKey.bytes.length, equals(32));
      });

      test('works with Spanish mnemonic', () async {
        final mnemonic = await Mnemonic.generate24(
          language: MnemonicLanguage.spanish,
        );
        final privateKey = await mnemonic.toPrivateKey();
        expect(privateKey.type, equals(PrivateKeyType.ed25519));
        expect(privateKey.bytes.length, equals(32));
      });
    });

    // ---- determinism ----

    group('determinism', () {
      test('same mnemonic produces same PrivateKey', () async {
        final mnemonic = await Mnemonic.generate24();
        final key1 = await mnemonic.toPrivateKey();
        final key2 = await mnemonic.toPrivateKey();
        expect(key1.toHex(), equals(key2.toHex()));
      });

      test('different mnemonics produce different PrivateKeys', () async {
        final mnemonic1 = await Mnemonic.generate24();
        final mnemonic2 = await Mnemonic.generate24();
        final key1 = await mnemonic1.toPrivateKey();
        final key2 = await mnemonic2.toPrivateKey();
        expect(key1.toHex(), isNot(equals(key2.toHex())));
      });

      test('recovered mnemonic produces same PrivateKey', () async {
        final original = await Mnemonic.generate24();
        final recovered = await Mnemonic.fromWords(original.words);
        final key1 = await original.toPrivateKey();
        final key2 = await recovered.toPrivateKey();
        expect(key1.toHex(), equals(key2.toHex()));
      });
    });

    // ---- passphrase ----

    group('passphrase', () {
      test('empty passphrase is default', () async {
        final mnemonic = await Mnemonic.generate24();
        final key1 = await mnemonic.toPrivateKey();
        final key2 = await mnemonic.toPrivateKey();
        expect(key1.toHex(), equals(key2.toHex()));
      });

      test('different passphrase produces different PrivateKey', () async {
        final mnemonic = await Mnemonic.generate24();
        final key1 = await mnemonic.toPrivateKey();
        final key2 = await mnemonic.toPrivateKey(
          passphrase: 'my-passphrase',
        );
        expect(key1.toHex(), isNot(equals(key2.toHex())));
      });

      test('same passphrase produces same PrivateKey', () async {
        final mnemonic = await Mnemonic.generate24();
        final key1 = await mnemonic.toPrivateKey(passphrase: 'test');
        final key2 = await mnemonic.toPrivateKey(passphrase: 'test');
        expect(key1.toHex(), equals(key2.toHex()));
      });
    });

    // ---- integration ----

    group('integration', () {
      test('derived PrivateKey can sign messages', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toPrivateKey();
        final signature = await privateKey.sign([1, 2, 3, 4, 5]);
        expect(signature.length, equals(64));
      });

      test('derived PrivateKey can derive PublicKey', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toPrivateKey();
        final publicKey = await privateKey.derivePublicKey();
        expect(publicKey.bytes.length, equals(32));
        expect(publicKey.type, equals(PublicKeyType.ed25519));
      });

      test('signature from derived key is verifiable', () async {
        final mnemonic = await Mnemonic.generate24();
        final privateKey = await mnemonic.toPrivateKey();
        final publicKey = await privateKey.derivePublicKey();
        final message = [1, 2, 3, 4, 5];
        final signature = await privateKey.sign(message);
        final isValid = await publicKey.verify(
          message: message,
          signature: signature,
        );
        expect(isValid, isTrue);
      });

      test('full wallet recovery flow works', () async {
        // Simulate user backing up and restoring wallet
        final original = await Mnemonic.generate24();
        final phrase = original.phrase;

        // User restores from phrase string
        final restored = await Mnemonic.fromString(phrase);
        final originalKey = await original.toPrivateKey();
        final restoredKey = await restored.toPrivateKey();

        expect(restoredKey.toHex(), equals(originalKey.toHex()));
      });
    });
  });
}
