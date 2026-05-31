import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/crypto/wordlists/english.dart';
import 'package:hedera_flutter_sdk/src/crypto/wordlists/spanish.dart';

void main() {
  group('Mnemonic', () {
    // ---- generate24 ----

    group('generate24', () {
      test('returns 24 words in English', () async {
        final mnemonic = await Mnemonic.generate24();
        expect(mnemonic.words.length, equals(24));
        expect(mnemonic.language, equals(MnemonicLanguage.english));
        expect(mnemonic.wordCount, equals(24));
      });

      test('all words are in the English wordlist', () async {
        final mnemonic = await Mnemonic.generate24();
        for (final word in mnemonic.words) {
          expect(
            englishWordlist.contains(word),
            isTrue,
            reason: 'Word "$word" not found in English wordlist',
          );
        }
      });

      test('returns 24 words in Spanish', () async {
        final mnemonic = await Mnemonic.generate24(
          language: MnemonicLanguage.spanish,
        );
        expect(mnemonic.words.length, equals(24));
        expect(mnemonic.language, equals(MnemonicLanguage.spanish));
        expect(mnemonic.wordCount, equals(24));
      });

      test('all words are in the Spanish wordlist', () async {
        final mnemonic = await Mnemonic.generate24(
          language: MnemonicLanguage.spanish,
        );
        for (final word in mnemonic.words) {
          expect(
            spanishWordlist.contains(word),
            isTrue,
            reason: 'Word "$word" not found in Spanish wordlist',
          );
        }
      });

      test('generates different mnemonics on each call', () async {
        final first = await Mnemonic.generate24();
        final second = await Mnemonic.generate24();
        expect(first.phrase, isNot(equals(second.phrase)));
      });
    });

    // ---- generate12 ----

    group('generate12', () {
      test('returns 12 words in English', () async {
        final mnemonic = await Mnemonic.generate12();
        expect(mnemonic.words.length, equals(12));
        expect(mnemonic.language, equals(MnemonicLanguage.english));
        expect(mnemonic.wordCount, equals(12));
      });

      test('all words are in the English wordlist', () async {
        final mnemonic = await Mnemonic.generate12();
        for (final word in mnemonic.words) {
          expect(
            englishWordlist.contains(word),
            isTrue,
            reason: 'Word "$word" not found in English wordlist',
          );
        }
      });

      test('returns 12 words in Spanish', () async {
        final mnemonic = await Mnemonic.generate12(
          language: MnemonicLanguage.spanish,
        );
        expect(mnemonic.words.length, equals(12));
        expect(mnemonic.language, equals(MnemonicLanguage.spanish));
        expect(mnemonic.wordCount, equals(12));
      });

      test('all words are in the Spanish wordlist', () async {
        final mnemonic = await Mnemonic.generate12(
          language: MnemonicLanguage.spanish,
        );
        for (final word in mnemonic.words) {
          expect(
            spanishWordlist.contains(word),
            isTrue,
            reason: 'Word "$word" not found in Spanish wordlist',
          );
        }
      });

      test('generates different mnemonics on each call', () async {
        final first = await Mnemonic.generate12();
        final second = await Mnemonic.generate12();
        expect(first.phrase, isNot(equals(second.phrase)));
      });
    });

    // ---- fromWords ----

    group('fromWords', () {
      test('accepts 12 valid English words', () async {
        final mnemonic = await Mnemonic.generate12();
        final recovered = await Mnemonic.fromWords(mnemonic.words);
        expect(recovered.words, equals(mnemonic.words));
        expect(recovered.language, equals(MnemonicLanguage.english));
      });

      test('accepts 24 valid English words', () async {
        final mnemonic = await Mnemonic.generate24();
        final recovered = await Mnemonic.fromWords(mnemonic.words);
        expect(recovered.words, equals(mnemonic.words));
        expect(recovered.language, equals(MnemonicLanguage.english));
      });

      test('accepts 12 valid Spanish words', () async {
        final mnemonic = await Mnemonic.generate12(
          language: MnemonicLanguage.spanish,
        );
        final recovered = await Mnemonic.fromWords(mnemonic.words);
        expect(recovered.words, equals(mnemonic.words));
        expect(recovered.language, equals(MnemonicLanguage.spanish));
      });

      test('accepts 24 valid Spanish words', () async {
        final mnemonic = await Mnemonic.generate24(
          language: MnemonicLanguage.spanish,
        );
        final recovered = await Mnemonic.fromWords(mnemonic.words);
        expect(recovered.words, equals(mnemonic.words));
        expect(recovered.language, equals(MnemonicLanguage.spanish));
      });

      test('throws ArgumentError for 11 words', () async {
        expect(
          () => Mnemonic.fromWords(List.filled(11, 'abandon')),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('throws ArgumentError for 25 words', () async {
        expect(
          () => Mnemonic.fromWords(List.filled(25, 'abandon')),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('throws ArgumentError for 0 words', () async {
        expect(
          () => Mnemonic.fromWords([]),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('throws ArgumentError for invalid word', () async {
        expect(
          () => Mnemonic.fromWords([
            'abandon',
            'ability',
            'able',
            'about',
            'above',
            'absent',
            'absorb',
            'abstract',
            'absurd',
            'abuse',
            'access',
            'invalidword',
          ]),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('words list is unmodifiable', () async {
        final mnemonic = await Mnemonic.generate12();
        expect(
          () => mnemonic.words.add('extra'),
          throwsA(isA<UnsupportedError>()),
        );
      });
    });

    // ---- fromString ----

    group('fromString', () {
      test('accepts valid 12-word English phrase', () async {
        final original = await Mnemonic.generate12();
        final recovered = await Mnemonic.fromString(original.phrase);
        expect(recovered.words, equals(original.words));
        expect(recovered.language, equals(MnemonicLanguage.english));
      });

      test('accepts valid 24-word English phrase', () async {
        final original = await Mnemonic.generate24();
        final recovered = await Mnemonic.fromString(original.phrase);
        expect(recovered.words, equals(original.words));
        expect(recovered.language, equals(MnemonicLanguage.english));
      });

      test('accepts valid 24-word Spanish phrase', () async {
        final original = await Mnemonic.generate24(
          language: MnemonicLanguage.spanish,
        );
        final recovered = await Mnemonic.fromString(original.phrase);
        expect(recovered.words, equals(original.words));
        expect(recovered.language, equals(MnemonicLanguage.spanish));
      });

      test('handles extra spaces between words', () async {
        final original = await Mnemonic.generate12();
        final phraseWithExtraSpaces = original.words.join('  ');
        final recovered = await Mnemonic.fromString(phraseWithExtraSpaces);
        expect(recovered.words, equals(original.words));
      });

      test('handles leading and trailing spaces', () async {
        final original = await Mnemonic.generate12();
        final paddedPhrase = '  ${original.phrase}  ';
        final recovered = await Mnemonic.fromString(paddedPhrase);
        expect(recovered.words, equals(original.words));
      });

      test('throws ArgumentError for invalid word count', () async {
        expect(
          () => Mnemonic.fromString('abandon ability able'),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('throws ArgumentError for invalid word', () async {
        expect(
          () => Mnemonic.fromString(
            'abandon ability able about above absent '
            'absorb abstract absurd abuse access invalidword',
          ),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    // ---- phrase ----

    group('phrase', () {
      test('returns words joined by spaces', () async {
        final mnemonic = await Mnemonic.generate12();
        final phrase = mnemonic.phrase;
        expect(phrase.split(' ').length, equals(12));
        expect(phrase.split(' '), equals(mnemonic.words));
      });

      test('toString returns phrase', () async {
        final mnemonic = await Mnemonic.generate12();
        expect(mnemonic.toString(), equals(mnemonic.phrase));
      });
    });

    // ---- validate ----

    group('validate', () {
      test('returns true for valid English 24-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate24();
        expect(mnemonic.validate(), isTrue);
      });

      test('returns true for valid English 12-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate12();
        expect(mnemonic.validate(), isTrue);
      });

      test('returns true for valid Spanish 24-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate24(
          language: MnemonicLanguage.spanish,
        );
        expect(mnemonic.validate(), isTrue);
      });

      test('returns true for valid Spanish 12-word mnemonic', () async {
        final mnemonic = await Mnemonic.generate12(
          language: MnemonicLanguage.spanish,
        );
        expect(mnemonic.validate(), isTrue);
      });
    });

    // ---- toSeed ----

    group('toSeed', () {
      test('returns 64 bytes', () async {
        final mnemonic = await Mnemonic.generate24();
        final seed = mnemonic.toSeed();
        expect(seed.length, equals(64));
      });

      test('same mnemonic produces same seed', () async {
        final mnemonic = await Mnemonic.generate24();
        final seed1 = mnemonic.toSeed();
        final seed2 = mnemonic.toSeed();
        expect(seed1, equals(seed2));
      });

      test('same mnemonic with same passphrase produces same seed', () async {
        final mnemonic = await Mnemonic.generate24();
        final seed1 = mnemonic.toSeed(passphrase: 'test');
        final seed2 = mnemonic.toSeed(passphrase: 'test');
        expect(seed1, equals(seed2));
      });

      test('different passphrase produces different seed', () async {
        final mnemonic = await Mnemonic.generate24();
        final seed1 = mnemonic.toSeed();
        final seed2 = mnemonic.toSeed(passphrase: 'different');
        expect(seed1, isNot(equals(seed2)));
      });

      test('different mnemonics produce different seeds', () async {
        final first = await Mnemonic.generate24();
        final second = await Mnemonic.generate24();
        final seed1 = first.toSeed();
        final seed2 = second.toSeed();
        expect(seed1, isNot(equals(seed2)));
      });
    });

    // ---- wordlists ----

    group('wordlists', () {
      test('English wordlist has exactly 2048 words', () {
        expect(englishWordlist.length, equals(2048));
      });

      test('Spanish wordlist has exactly 2048 words', () {
        expect(spanishWordlist.length, equals(2048));
      });

      test('English and Spanish wordlists have no words in common', () {
        final common =
            englishWordlist.toSet().intersection(spanishWordlist.toSet());
        expect(
          common,
          isEmpty,
          reason: 'Found ${common.length} common words: $common',
        );
      });
    });
  });
}
