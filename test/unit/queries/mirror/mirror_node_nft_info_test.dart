import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

Map<String, dynamic> _fullJson() {
  return {
    'account_id': '0.1.2',
    'created_timestamp': '1234567890.000000001',
    'delegating_spender': '0.0.400',
    'deleted': false,
    'metadata': 'VGhpcyBpcyBhIHRlc3QgTkZU',
    'modified_timestamp': '1610682445.003266001',
    'serial_number': 124,
    'spender': '0.0.500',
    'token_id': '0.0.222',
  };
}

void main() {
  group('MirrorNodeNftInfo.fromJson', () {
    test('parses a complete NFT', () {
      final nft = MirrorNodeNftInfo.fromJson(_fullJson());

      expect(nft.nftId, NftId(TokenId.fromString('0.0.222'), 124));
      expect(nft.accountId, AccountId.fromString('0.1.2'));
      expect(nft.createdTimestamp, '1234567890.000000001');
      expect(nft.modifiedTimestamp, '1610682445.003266001');
      expect(nft.deleted, isFalse);
      expect(nft.spender, AccountId.fromString('0.0.500'));
      expect(nft.delegatingSpender, AccountId.fromString('0.0.400'));
    });

    test('decodes the metadata from base64', () {
      final nft = MirrorNodeNftInfo.fromJson(_fullJson());

      expect(utf8.decode(nft.metadata!), 'This is a test NFT');
    });

    test('reads the spender from spender_id when spender is absent', () {
      final json = _fullJson()
        ..remove('spender')
        ..['spender_id'] = '0.0.600';

      final nft = MirrorNodeNftInfo.fromJson(json);

      expect(nft.spender, AccountId.fromString('0.0.600'));
    });

    test('spender is preferred over spender_id', () {
      final json = _fullJson()..['spender_id'] = '0.0.600';

      final nft = MirrorNodeNftInfo.fromJson(json);

      expect(nft.spender, AccountId.fromString('0.0.500'));
    });

    test('optional fields that are null stay null', () {
      final nft = MirrorNodeNftInfo.fromJson(const {
        'account_id': null,
        'created_timestamp': null,
        'delegating_spender': null,
        'metadata': null,
        'modified_timestamp': null,
        'serial_number': 1,
        'spender': null,
        'token_id': '0.0.222',
      });

      expect(nft.accountId, isNull);
      expect(nft.createdTimestamp, isNull);
      expect(nft.modifiedTimestamp, isNull);
      expect(nft.metadata, isNull);
      expect(nft.spender, isNull);
      expect(nft.delegatingSpender, isNull);
      expect(nft.deleted, isFalse);
    });

    test('a deleted NFT is reported as deleted', () {
      final json = _fullJson()..['deleted'] = true;

      expect(MirrorNodeNftInfo.fromJson(json).deleted, isTrue);
    });

    test('a missing token_id throws FormatException', () {
      final json = _fullJson()..remove('token_id');

      expect(() => MirrorNodeNftInfo.fromJson(json), throwsFormatException);
    });

    test('a missing serial_number throws FormatException', () {
      final json = _fullJson()..remove('serial_number');

      expect(() => MirrorNodeNftInfo.fromJson(json), throwsFormatException);
    });

    test('invalid base64 metadata throws FormatException', () {
      final json = _fullJson()..['metadata'] = '!!!';

      expect(() => MirrorNodeNftInfo.fromJson(json), throwsFormatException);
    });

    test('an invalid owner account throws FormatException', () {
      final json = _fullJson()..['account_id'] = 'abc';

      expect(() => MirrorNodeNftInfo.fromJson(json), throwsFormatException);
    });

    test('toString shows the NFT and the owner', () {
      final nft = MirrorNodeNftInfo.fromJson(_fullJson());

      expect(nft.toString(), 'MirrorNodeNftInfo(0.0.222/124, owner: 0.1.2)');
    });
  });
}
