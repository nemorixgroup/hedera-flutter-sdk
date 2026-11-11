import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('MirrorNodeKeyType', () {
    test('fromApiValue maps every known value', () {
      expect(
        MirrorNodeKeyType.fromApiValue('ECDSA_SECP256K1'),
        MirrorNodeKeyType.ecdsaSecp256k1,
      );
      expect(
        MirrorNodeKeyType.fromApiValue('ED25519'),
        MirrorNodeKeyType.ed25519,
      );
      expect(
        MirrorNodeKeyType.fromApiValue('ProtobufEncoded'),
        MirrorNodeKeyType.protobufEncoded,
      );
    });

    test('fromApiValue gives unknown for null or new values', () {
      expect(MirrorNodeKeyType.fromApiValue(null), MirrorNodeKeyType.unknown);
      expect(MirrorNodeKeyType.fromApiValue(''), MirrorNodeKeyType.unknown);
      expect(MirrorNodeKeyType.fromApiValue('RSA'), MirrorNodeKeyType.unknown);
    });

    test('apiValue holds the Mirror Node text', () {
      expect(MirrorNodeKeyType.ed25519.apiValue, 'ED25519');
      expect(MirrorNodeKeyType.protobufEncoded.apiValue, 'ProtobufEncoded');
    });
  });

  group('MirrorNodeKey', () {
    test('fromJsonOrNull reads type and value', () {
      final key = MirrorNodeKey.fromJsonOrNull({
        '_type': 'ED25519',
        'key': 'abcd',
      });

      expect(key, isNotNull);
      expect(key!.type, MirrorNodeKeyType.ed25519);
      expect(key.key, 'abcd');
    });

    test('fromJsonOrNull gives null for null', () {
      expect(MirrorNodeKey.fromJsonOrNull(null), isNull);
    });

    test('fromJsonOrNull gives null for a value that is not an object', () {
      expect(MirrorNodeKey.fromJsonOrNull('abcd'), isNull);
    });

    test('a missing key value becomes an empty string', () {
      final key = MirrorNodeKey.fromJsonOrNull({'_type': 'ED25519'});

      expect(key!.key, '');
    });

    test('an unrecognized type becomes unknown', () {
      final key = MirrorNodeKey.fromJsonOrNull({'_type': 'RSA', 'key': '1'});

      expect(key!.type, MirrorNodeKeyType.unknown);
    });

    test('is equal when type and key are equal', () {
      const a = MirrorNodeKey(type: MirrorNodeKeyType.ed25519, key: 'abcd');
      const b = MirrorNodeKey(type: MirrorNodeKeyType.ed25519, key: 'abcd');

      expect(a, b);
      expect(a.hashCode, b.hashCode);
    });

    test('is different when the type or the key differs', () {
      const a = MirrorNodeKey(type: MirrorNodeKeyType.ed25519, key: 'abcd');
      const b = MirrorNodeKey(type: MirrorNodeKeyType.ed25519, key: 'abce');
      const c = MirrorNodeKey(
        type: MirrorNodeKeyType.ecdsaSecp256k1,
        key: 'abcd',
      );

      expect(a, isNot(b));
      expect(a, isNot(c));
    });

    test('toString shows the type and the value', () {
      const key = MirrorNodeKey(type: MirrorNodeKeyType.ed25519, key: 'abcd');

      expect(key.toString(), 'MirrorNodeKey(ED25519: abcd)');
    });
  });
}
