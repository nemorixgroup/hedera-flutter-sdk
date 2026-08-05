import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart' as proto;

void main() {
  group('PublicKey as HederaKey', () {
    test('ED25519 toProtoKey sets the ed25519 field', () async {
      final privateKey = await PrivateKey.generateED25519();
      final publicKey = await privateKey.derivePublicKey();

      final protoKey = publicKey.toProtoKey();

      expect(protoKey.whichKey(), equals(proto.Key_Key.ed25519));
      expect(protoKey.ed25519, equals(publicKey.bytes));
    });

    test('ECDSA toProtoKey sets the eCDSASecp256k1 field', () async {
      final privateKey = await PrivateKey.generateECDSA();
      final publicKey = await privateKey.derivePublicKey();

      final protoKey = publicKey.toProtoKey();

      expect(protoKey.whichKey(), equals(proto.Key_Key.eCDSASecp256k1));
      expect(protoKey.eCDSASecp256k1, equals(publicKey.bytes));
    });

    test('ECDSA toProtoKey does not set the ed25519 field', () async {
      final privateKey = await PrivateKey.generateECDSA();
      final publicKey = await privateKey.derivePublicKey();

      final protoKey = publicKey.toProtoKey();

      expect(protoKey.hasEd25519(), isFalse);
      expect(protoKey.hasECDSASecp256k1(), isTrue);
    });

    test('PublicKey satisfies the HederaKey interface', () async {
      final privateKey = await PrivateKey.generateED25519();
      final publicKey = await privateKey.derivePublicKey();

      expect(publicKey, isA<HederaKey>());
    });
  });

  group('HederaKeyList', () {
    late PublicKey keyA;
    late PublicKey keyB;
    late PublicKey keyC;

    setUp(() async {
      keyA = await (await PrivateKey.generateED25519()).derivePublicKey();
      keyB = await (await PrivateKey.generateED25519()).derivePublicKey();
      keyC = await (await PrivateKey.generateECDSA()).derivePublicKey();
    });

    // ---- construction ----

    group('construction', () {
      test('accepts a non-empty list of keys', () {
        expect(() => HederaKeyList([keyA, keyB]), returnsNormally);
      });

      test('throws ArgumentError for an empty list', () {
        expect(
          () => HederaKeyList([]),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    // ---- toProtoKey ----

    group('toProtoKey', () {
      test('sets the keyList field', () {
        final list = HederaKeyList([keyA, keyB]);
        final protoKey = list.toProtoKey();

        expect(protoKey.whichKey(), equals(proto.Key_Key.keyList));
      });

      test('includes all keys in order', () {
        final list = HederaKeyList([keyA, keyB, keyC]);
        final protoKey = list.toProtoKey();

        expect(protoKey.keyList.keys.length, equals(3));
        expect(
          protoKey.keyList.keys[0].ed25519,
          equals(keyA.bytes),
        );
        expect(
          protoKey.keyList.keys[1].ed25519,
          equals(keyB.bytes),
        );
        expect(
          protoKey.keyList.keys[2].eCDSASecp256k1,
          equals(keyC.bytes),
        );
      });

      test('supports a single key', () {
        final list = HederaKeyList([keyA]);
        final protoKey = list.toProtoKey();

        expect(protoKey.keyList.keys.length, equals(1));
      });

      test('supports nested HederaKeyList entries', () {
        final inner = HederaKeyList([keyA, keyB]);
        final outer = HederaKeyList([inner, keyC]);
        final protoKey = outer.toProtoKey();

        expect(protoKey.keyList.keys.length, equals(2));
        expect(
          protoKey.keyList.keys[0].whichKey(),
          equals(proto.Key_Key.keyList),
        );
        expect(protoKey.keyList.keys[0].keyList.keys.length, equals(2));
      });
    });
  });

  group('HederaThresholdKey', () {
    late PublicKey keyA;
    late PublicKey keyB;
    late PublicKey keyC;

    setUp(() async {
      keyA = await (await PrivateKey.generateED25519()).derivePublicKey();
      keyB = await (await PrivateKey.generateED25519()).derivePublicKey();
      keyC = await (await PrivateKey.generateECDSA()).derivePublicKey();
    });

    // ---- construction ----

    group('construction', () {
      test('accepts a valid threshold within range', () {
        expect(
          () => HederaThresholdKey(threshold: 2, keys: [keyA, keyB, keyC]),
          returnsNormally,
        );
      });

      test('accepts threshold equal to keys.length (N-of-N)', () {
        expect(
          () => HederaThresholdKey(threshold: 3, keys: [keyA, keyB, keyC]),
          returnsNormally,
        );
      });

      test('accepts threshold of 1 (1-of-N)', () {
        expect(
          () => HederaThresholdKey(threshold: 1, keys: [keyA, keyB, keyC]),
          returnsNormally,
        );
      });

      test('throws ArgumentError for an empty key list', () {
        expect(
          () => HederaThresholdKey(threshold: 1, keys: []),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('throws ArgumentError for threshold less than 1', () {
        expect(
          () => HederaThresholdKey(threshold: 0, keys: [keyA, keyB]),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('throws ArgumentError for threshold greater than keys.length', () {
        expect(
          () => HederaThresholdKey(threshold: 3, keys: [keyA, keyB]),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    // ---- toProtoKey ----

    group('toProtoKey', () {
      test('sets the thresholdKey field', () {
        final key = HederaThresholdKey(threshold: 2, keys: [keyA, keyB, keyC]);
        final protoKey = key.toProtoKey();

        expect(protoKey.whichKey(), equals(proto.Key_Key.thresholdKey));
      });

      test('encodes the threshold value', () {
        final key = HederaThresholdKey(threshold: 2, keys: [keyA, keyB, keyC]);
        final protoKey = key.toProtoKey();

        expect(protoKey.thresholdKey.threshold, equals(2));
      });

      test('includes all keys in the nested keyList', () {
        final key = HederaThresholdKey(threshold: 2, keys: [keyA, keyB, keyC]);
        final protoKey = key.toProtoKey();

        expect(protoKey.thresholdKey.keys.keys.length, equals(3));
        expect(
          protoKey.thresholdKey.keys.keys[0].ed25519,
          equals(keyA.bytes),
        );
        expect(
          protoKey.thresholdKey.keys.keys[2].eCDSASecp256k1,
          equals(keyC.bytes),
        );
      });

      test('supports a nested HederaThresholdKey as one of the keys', () {
        final inner = HederaThresholdKey(threshold: 1, keys: [keyA, keyB]);
        final outer = HederaThresholdKey(threshold: 1, keys: [inner, keyC]);
        final protoKey = outer.toProtoKey();

        expect(
          protoKey.thresholdKey.keys.keys[0].whichKey(),
          equals(proto.Key_Key.thresholdKey),
        );
      });
    });
  });

  group('AccountCreateTransaction with HederaKey', () {
    late PublicKey keyA;
    late PublicKey keyB;
    late PublicKey keyC;

    setUp(() async {
      keyA = await (await PrivateKey.generateED25519()).derivePublicKey();
      keyB = await (await PrivateKey.generateED25519()).derivePublicKey();
      keyC = await (await PrivateKey.generateECDSA()).derivePublicKey();
    });

    test('accepts a single PublicKey (backward compatible)', () {
      final tx = AccountCreateTransaction()..setKey(keyA);
      expect(tx.key, equals(keyA));
    });

    test('accepts a HederaKeyList', () {
      final keyList = HederaKeyList([keyA, keyB]);
      final tx = AccountCreateTransaction()..setKey(keyList);
      expect(tx.key, equals(keyList));
    });

    test('accepts a HederaThresholdKey', () {
      final thresholdKey =
          HederaThresholdKey(threshold: 2, keys: [keyA, keyB, keyC]);
      final tx = AccountCreateTransaction()..setKey(thresholdKey);
      expect(tx.key, equals(thresholdKey));
    });

    test('toBytes serializes a HederaThresholdKey correctly', () {
      final thresholdKey =
          HederaThresholdKey(threshold: 2, keys: [keyA, keyB, keyC]);
      final tx = AccountCreateTransaction()..setKey(thresholdKey);

      final bytes = tx.toBytes();

      expect(bytes, isNotEmpty);
    });

    test('applyToBody sets a thresholdKey on the account key field', () async {
      final thresholdKey =
          HederaThresholdKey(threshold: 2, keys: [keyA, keyB, keyC]);
      final tx = AccountCreateTransaction()
        ..setKey(thresholdKey)
        ..setInitialBalance(Hbar.zero);

      final client = HederaClient.forTestnet().setOperator(
        AccountId.fromString('0.0.12345'),
        await PrivateKey.generateED25519(),
      );

      final body = await tx.buildBody(client);

      expect(
        body.cryptoCreateAccount.key.whichKey(),
        equals(proto.Key_Key.thresholdKey),
      );
      expect(body.cryptoCreateAccount.key.thresholdKey.threshold, equals(2));
    });
  });
}
