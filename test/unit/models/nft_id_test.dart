import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('NftId', () {
    final tokenId = TokenId.fromString('0.0.5005');

    test('stores tokenId and serialNumber', () {
      final id = NftId(tokenId, 10);
      expect(id.tokenId, equals(tokenId));
      expect(id.serialNumber, equals(10));
    });

    test('toString uses tokenId/serial', () {
      expect(NftId(tokenId, 10).toString(), equals('0.0.5005/10'));
    });

    group('fromString', () {
      test('parses the slash format', () {
        final id = NftId.fromString('0.0.5005/10');
        expect(id, equals(NftId(tokenId, 10)));
      });

      test('parses the at-sign format', () {
        final id = NftId.fromString('0.0.5005@10');
        expect(id, equals(NftId(tokenId, 10)));
      });

      test('round-trips through toString', () {
        final id = NftId(TokenId.fromString('1.2.3'), 42);
        expect(NftId.fromString(id.toString()), equals(id));
      });

      test('throws FormatException without a serial', () {
        expect(
          () => NftId.fromString('0.0.5005'),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException with a non-numeric serial', () {
        expect(
          () => NftId.fromString('0.0.5005/abc'),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException with too many parts', () {
        expect(
          () => NftId.fromString('0.0.5005/1/2'),
          throwsA(isA<FormatException>()),
        );
      });
    });

    group('equality', () {
      test('equal when token and serial match', () {
        expect(NftId(tokenId, 1), equals(NftId(tokenId, 1)));
        expect(NftId(tokenId, 1).hashCode, equals(NftId(tokenId, 1).hashCode));
      });

      test('not equal when serial differs', () {
        expect(NftId(tokenId, 1), isNot(equals(NftId(tokenId, 2))));
      });

      test('not equal when token differs', () {
        expect(
          NftId(tokenId, 1),
          isNot(equals(NftId(TokenId.fromString('0.0.6'), 1))),
        );
      });
    });

    test('toProto converts token and serial number', () {
      final proto = NftId(tokenId, 10).toProto();
      expect(proto.tokenID.tokenNum.toInt(), equals(5005));
      expect(proto.serialNumber.toInt(), equals(10));
    });
  });
}
