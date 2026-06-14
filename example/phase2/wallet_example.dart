import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

// ---- Phase 2: Wallet and Keys ----

/// Demonstrates BIP-39 mnemonic generation and wallet recovery.
Future<void> walletExamples() async {
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

  // 9. Derive private key from mnemonic
  final privateKey = await mnemonic24En.toPrivateKey();
  print('Private key from mnemonic:');
  print('Type: ${privateKey.type.name}');
  print('Safe toString: $privateKey');
  print('');

  print('=== Mnemonic examples complete ===\n');
}
