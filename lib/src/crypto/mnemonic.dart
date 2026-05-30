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

  // ── Generators ────────────────────────────────────────────────────────────

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
  /// [passphrase] is optional and defaults to empty string.
  ///
  /// Example:
  /// ```dart
  /// final privateKey = await mnemonic.toPrivateKey();
  /// final privateKeyWithPass = await mnemonic.toPrivateKey(
  ///   passphrase: 'my-passphrase',
  /// );
  /// ```
  // TODO(Phase2): Implement BIP-39 HD key derivation with pointycastle
  Future<PrivateKey> toPrivateKey({String passphrase = ''}) async {
    throw UnimplementedError('Mnemonic.toPrivateKey; Phase 2');
  }

  /// Derives a legacy Hedera private key from this mnemonic.
  ///
  /// Use this for compatibility with HashPack and Blade Wallet.
  // TODO(Phase2): Implement legacy Hedera derivation
  Future<PrivateKey> toLegacyPrivateKey() async {
    throw UnimplementedError('Mnemonic.toLegacyPrivateKey; Phase 2');
  }

  /// Returns the 64-byte BIP-39 seed derived from this mnemonic.
  ///
  /// [passphrase] is optional and defaults to empty string.
  Uint8List toSeed({String passphrase = ''}) {
    return bip39.mnemonicToSeed(phrase, passphrase: passphrase);
  }

  /// Validates this mnemonic against its wordlist and checksum.
  ///
  /// Returns true if the mnemonic is valid.
  bool validate() {
    if (language == MnemonicLanguage.english) {
      return bip39.validateMnemonic(phrase);
    }
    // For Spanish: validate words are in wordlist
    // Full checksum validation requires custom implementation
    final wordlist = _getWordlist(language);
    return words.every(wordlist.contains);
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
