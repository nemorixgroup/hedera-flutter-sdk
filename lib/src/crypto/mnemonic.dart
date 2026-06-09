import 'dart:typed_data';

import 'package:bip39/bip39.dart' as bip39;
import 'package:hedera_flutter_sdk/src/crypto/private_key.dart';
import 'package:hedera_flutter_sdk/src/crypto/wordlists/english.dart';
import 'package:hedera_flutter_sdk/src/crypto/wordlists/spanish.dart';

/// Represents a BIP-39 mnemonic phrase for wallet recovery.
///
/// Supports 12 and 24-word mnemonics in English and Spanish.
/// The Spanish wordlist is the official BIP-39 Spanish wordlist
/// sourced from github.com/bitcoin/bips.
///
/// Example:
/// ```dart
/// // Generate a 24-word mnemonic in English
/// final mnemonic = await Mnemonic.generate24();
/// print(mnemonic.words); // ['abandon', 'ability', ...]
///
/// // Generate a 12-word mnemonic in Spanish
/// final mnemonicEs = await Mnemonic.generate12(
///   language: MnemonicLanguage.spanish,
/// );
/// print(mnemonicEs.words); // ['ábaco', 'abdomen', ...]
///
/// // Recover from existing words
/// final recovered = await Mnemonic.fromWords(['word1', 'word2', ...]);
/// final privateKey = await recovered.toPrivateKey();
/// ```
class Mnemonic {
  Mnemonic._(this.words, this.language);

  // ---- Generators ----

  /// Generates a new 24-word BIP-39 mnemonic.
  ///
  /// [language] defaults to [MnemonicLanguage.english].
  ///
  /// Example:
  /// ```dart
  /// final mnemonic = await Mnemonic.generate24(
  ///   language: MnemonicLanguage.spanish,
  /// );
  /// ```
  static Future<Mnemonic> generate24({
    MnemonicLanguage language = MnemonicLanguage.english,
  }) async {
    return _generate(strength: 256, language: language);
  }

  /// Generates a new 12-word BIP-39 mnemonic.
  ///
  /// [language] defaults to [MnemonicLanguage.english].
  ///
  /// Example:
  /// ```dart
  /// final mnemonic = await Mnemonic.generate12(
  ///   language: MnemonicLanguage.spanish,
  /// );
  /// ```
  static Future<Mnemonic> generate12({
    MnemonicLanguage language = MnemonicLanguage.english,
  }) async {
    return _generate(strength: 128, language: language);
  }

  /// Creates a [Mnemonic] from an existing list of words.
  ///
  /// Validates that the word count is 12 or 24 and that
  /// all words belong to a known BIP-39 wordlist.
  ///
  /// Throws [ArgumentError] if the word count is invalid.
  /// Throws [ArgumentError] if any word is not in the wordlist.
  ///
  /// Example:
  /// ```dart
  /// final mnemonic = await Mnemonic.fromWords(
  ///   ['abandon', 'ability', 'able', ...],
  /// );
  /// ```
  static Future<Mnemonic> fromWords(List<String> words) async {
    if (words.length != 12 && words.length != 24) {
      throw ArgumentError(
        'Mnemonic must have 12 or 24 words. Got: ${words.length}',
      );
    }

    // Detect language from first word
    final language = _detectLanguage(words);

    // Validate all words belong to detected wordlist
    final wordlist = _getWordlist(language);
    for (final word in words) {
      if (!wordlist.contains(word)) {
        throw ArgumentError(
          'Word "$word" is not in the ${language.name} BIP-39 wordlist.',
        );
      }
    }

    return Mnemonic._(List.unmodifiable(words), language);
  }

  /// Creates a [Mnemonic] from a space-separated string of words.
  ///
  /// Validates that the word count is 12 or 24 and that
  /// all words belong to a known BIP-39 wordlist.
  ///
  /// Throws [ArgumentError] if the word count is invalid.
  /// Throws [ArgumentError] if any word is not in the wordlist.
  ///
  /// Example:
  /// ```dart
  /// final mnemonic = await Mnemonic.fromString(
  ///   'abandon ability able about above absent absorb '
  ///   'abstract absurd abuse access accident',
  /// );
  /// ```
  static Future<Mnemonic> fromString(String phrase) async {
    final words = phrase.trim().split(RegExp(r'\s+'));
    return fromWords(words);
  }

  // ---- Public API ----

  /// The list of mnemonic words.
  final List<String> words;

  /// The language of this mnemonic.
  final MnemonicLanguage language;

  /// The number of words in this mnemonic.
  int get wordCount => words.length;

  /// Returns the mnemonic as a single space-separated string.
  String get phrase => words.join(' ');

  /// Derives a [PrivateKey] from this mnemonic using BIP-39 derivation.
  ///
  /// This is the standard derivation used by modern Hedera wallets
  /// such as HashPack and Blade Wallet.
  ///
  /// [passphrase] is optional and defaults to empty string.
  ///
  /// Example:
  /// ```dart
  /// final privateKey = await mnemonic.toPrivateKey();
  /// final privateKeyWithPass = await mnemonic.toPrivateKey(
  ///   passphrase: 'my-passphrase',
  /// );
  /// ```
  Future<PrivateKey> toPrivateKey({String passphrase = ''}) async {
    final seed = toSeed(passphrase: passphrase);
    final keyBytes = seed.sublist(0, 32);
    return PrivateKey.fromBytes(keyBytes);
  }

  /// Derives a legacy Hedera private key from this mnemonic.
  ///
  /// Supports 12 and 24-word BIP-39 mnemonics.
  /// Use this for compatibility with HashPack and Blade Wallet.
  ///
  /// Throws [UnsupportedError] for 22-word legacy mnemonics;
  /// support will be added in a future version.
  /// Throws [ArgumentError] for any other word count.
  ///
  /// Example:
  /// ```dart
  /// final privateKey = await mnemonic.toLegacyPrivateKey();
  /// ```
  Future<PrivateKey> toLegacyPrivateKey() async {
    // Legacy derivation is only needed for 22-word mnemonics
    // generated by the original Hedera mobile wallets (pre-2022).
    // 12 and 24-word mnemonics use standard BIP-39 derivation
    // via toPrivateKey() instead.
    //
    // Reference implementation:
    // github.com/hashgraph/hedera-sdk-go/blob/main/mnemonic.go
    // TODO(Future): Implement 22-word legacy Hedera derivation
    if (wordCount == 22) {
      throw UnsupportedError(
        '22-word legacy mnemonics are not yet supported. '
        'Use toPrivateKey() for 12 or 24-word mnemonics.',
      );
    }
    if (wordCount != 12 && wordCount != 24) {
      throw ArgumentError(
        'toLegacyPrivateKey() supports 12 or 24-word mnemonics. '
        'Got: $wordCount words.',
      );
    }
    final seed = toSeed();
    final keyBytes = seed.sublist(0, 32);
    return PrivateKey.fromBytes(keyBytes);
  }

  /// Returns the 64-byte BIP-39 seed derived from this mnemonic.
  ///
  /// [passphrase] is optional and defaults to empty string.
  Uint8List toSeed({String passphrase = ''}) {
    return bip39.mnemonicToSeed(phrase, passphrase: passphrase);
  }

  /// Validates this mnemonic against its wordlist and checksum.
  ///
  /// For English: validates using full BIP-39 checksum via bip39 package.
  /// For Spanish: validates wordlist membership and BIP-39 checksum.
  ///
  /// Returns true if the mnemonic is valid.
  bool validate() {
    if (language == MnemonicLanguage.english) {
      return bip39.validateMnemonic(phrase);
    }
    return _validateSpanish();
  }

  /// Validates a Spanish mnemonic using BIP-39 checksum algorithm.
  bool _validateSpanish() {
    // Step 1: verify all words are in the Spanish wordlist
    for (final word in words) {
      if (!spanishWordlist.contains(word)) {
        return false;
      }
    }

    // Step 2: convert word indices to 11-bit binary string
    final bits = words
        .map(
          (w) => spanishWordlist.indexOf(w).toRadixString(2).padLeft(11, '0'),
        )
        .join();

    // Step 3: split entropy bits and checksum bits
    // For 12 words: 128 entropy bits + 4 checksum bits
    // For 24 words: 256 entropy bits + 8 checksum bits
    final totalBits = words.length * 11;
    final checksumLength = words.length ~/ 3;
    final entropyLength = totalBits - checksumLength;

    final entropyBits = bits.substring(0, entropyLength);
    final checksumBits = bits.substring(entropyLength);

    // Step 4: convert entropy bits to bytes
    final entropyBytes = Uint8List(entropyLength ~/ 8);
    for (var i = 0; i < entropyBytes.length; i++) {
      entropyBytes[i] = int.parse(
        entropyBits.substring(i * 8, (i + 1) * 8),
        radix: 2,
      );
    }

    // Step 5: compute expected checksum from entropy
    final expectedChecksum = _computeChecksum(entropyBytes);

    // Step 6: compare checksums
    return checksumBits == expectedChecksum;
  }

  @override
  String toString() => phrase;

  // ---- Private helpers ----

  static Future<Mnemonic> _generate({
    required int strength,
    required MnemonicLanguage language,
  }) async {
    if (language == MnemonicLanguage.english) {
      final phrase = bip39.generateMnemonic(strength: strength);
      final words = phrase.split(' ');
      return Mnemonic._(List.unmodifiable(words), language);
    }

    // Spanish: generate entropy via bip39, map to Spanish wordlist
    final englishPhrase = bip39.generateMnemonic(strength: strength);
    final entropy = bip39.mnemonicToEntropy(englishPhrase);
    final spanishWords = _entropyToSpanishMnemonic(entropy);
    return Mnemonic._(List.unmodifiable(spanishWords), language);
  }

  static List<String> _entropyToSpanishMnemonic(String entropyHex) {
    // Convert entropy hex to binary
    final entropyBytes = _hexToBytes(entropyHex);
    final entropyBits =
        entropyBytes.map((b) => b.toRadixString(2).padLeft(8, '0')).join();

    // Compute checksum
    final checksumBits = _computeChecksum(entropyBytes);
    final bits = entropyBits + checksumBits;

    // Split into 11-bit chunks and map to Spanish wordlist
    final words = <String>[];
    for (var i = 0; i + 11 <= bits.length; i += 11) {
      final chunk = bits.substring(i, i + 11);
      final index = int.parse(chunk, radix: 2);
      words.add(spanishWordlist[index]);
    }
    return words;
  }

  static String _computeChecksum(Uint8List bytes) {
    final hex = bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
    final englishPhrase = bip39.entropyToMnemonic(hex);
    final englishWords = englishPhrase.split(' ');
    final bits = englishWords.length * 11;
    final entropyBits = bytes.length * 8;
    final checksumLength = bits - entropyBits;
    return _getBitsFromEntropy(bytes)
        .substring(entropyBits, entropyBits + checksumLength);
  }

  static String _getBitsFromEntropy(Uint8List bytes) {
    final hex = bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
    final phrase = bip39.entropyToMnemonic(hex);
    final words = phrase.split(' ');
    return words
        .map(
          (w) => englishWordlist.indexOf(w).toRadixString(2).padLeft(11, '0'),
        )
        .join();
  }

  static Uint8List _hexToBytes(String hex) {
    final result = Uint8List(hex.length ~/ 2);
    for (var i = 0; i < hex.length; i += 2) {
      result[i ~/ 2] = int.parse(hex.substring(i, i + 2), radix: 16);
    }
    return result;
  }

  static MnemonicLanguage _detectLanguage(List<String> words) {
    if (spanishWordlist.contains(words.first)) {
      return MnemonicLanguage.spanish;
    }
    return MnemonicLanguage.english;
  }

  static List<String> _getWordlist(MnemonicLanguage language) {
    switch (language) {
      case MnemonicLanguage.spanish:
        return spanishWordlist;
      case MnemonicLanguage.english:
        return englishWordlist;
    }
  }
}

/// The language used for BIP-39 mnemonic word lists.
enum MnemonicLanguage {
  /// The standard BIP-39 English word list.
  english,

  /// The Spanish word list; built for LATAM users.
  spanish,
}
