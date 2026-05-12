import 'package:hedera_flutter_sdk/src/crypto/private_key.dart';

/// Represents a BIP-39 mnemonic phrase for wallet recovery.
///
/// Supports 12 and 24-word mnemonics in English and Spanish.
///
/// Example:
/// ```dart
/// final mnemonic = await Mnemonic.generate24(
///   language: MnemonicLanguage.spanish,
/// );
/// print(mnemonic.words); // ['arbol', 'casa', 'luna', ...]
///
/// final recovered = await Mnemonic.fromWords(['arbol', 'casa', ...]);
/// final privateKey = await recovered.toPrivateKey();
/// ```
class Mnemonic {
  Mnemonic._(this.words);

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
  // TODO(Phase2): Implement using bip39 package
  static Future<Mnemonic> generate24({
    MnemonicLanguage language = MnemonicLanguage.english,
  }) async {
    throw UnimplementedError('Mnemonic.generate24; Phase 2');
  }

  /// Generates a new 12-word BIP-39 mnemonic.
  ///
  /// [language] defaults to [MnemonicLanguage.english].
  // TODO(Phase2): Implement using bip39 package
  static Future<Mnemonic> generate12({
    MnemonicLanguage language = MnemonicLanguage.english,
  }) async {
    throw UnimplementedError('Mnemonic.generate12; Phase 2');
  }

  /// Creates a [Mnemonic] from an existing list of words.
  ///
  /// Throws [ArgumentError] if the word count is not 12 or 24.
  ///
  /// Example:
  /// ```dart
  /// final mnemonic = await Mnemonic.fromWords(['arbol', 'casa', ...]);
  /// ```
  // TODO(Phase2): Implement word validation
  static Future<Mnemonic> fromWords(List<String> words) async {
    if (words.length != 12 && words.length != 24) {
      throw ArgumentError(
        'Mnemonic must have 12 or 24 words. Got: ${words.length}',
      );
    }
    throw UnimplementedError('Mnemonic.fromWords; Phase 2');
  }

  /// The list of mnemonic words.
  final List<String> words;

  /// Derives a [PrivateKey] from this mnemonic using BIP-39 derivation.
  ///
  /// [passphrase] is optional and defaults to empty string.
  // TODO(Phase2): Implement BIP-39 key derivation
  Future<PrivateKey> toPrivateKey({String passphrase = ''}) async {
    throw UnimplementedError('Mnemonic.toPrivateKey; Phase 2');
  }

  /// Derives a legacy Hedera private key from this mnemonic.
  ///
  /// Use this for compatibility with older HashPack and Blade wallets.
  // TODO(Phase2): Implement legacy Hedera derivation
  Future<PrivateKey> toLegacyPrivateKey() async {
    throw UnimplementedError('Mnemonic.toLegacyPrivateKey; Phase 2');
  }

  /// The number of words in this mnemonic.
  int get wordCount => words.length;
}

/// The language used for BIP-39 mnemonic word lists.
enum MnemonicLanguage {
  /// The standard BIP-39 English word list.
  english,

  /// The Spanish word list; built for LATAM users.
  spanish,
}
