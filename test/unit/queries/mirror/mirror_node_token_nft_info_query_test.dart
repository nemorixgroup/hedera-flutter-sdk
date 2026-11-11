import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

const _notFoundBody = '{"_status":{"messages":[{"message":"Not found"}]}}';

String _nftBody() {
  return jsonEncode({
    'account_id': '0.0.5',
    'created_timestamp': '1234567890.000000001',
    'deleted': false,
    'metadata': 'aGk=',
    'modified_timestamp': '1234567890.000000002',
    'serial_number': 3,
    'spender': null,
    'token_id': '0.0.222',
  });
}

HederaClient _clientFor(MockClient mock) {
  return HederaClient.forTestnet()
      .setHttpClient(mock)
      .setRetryPolicy(const RetryPolicy(maxAttempts: 1));
}

void main() {
  group('MirrorNodeTokenNftInfoQuery', () {
    test('a new query has no NFT ID', () {
      expect(MirrorNodeTokenNftInfoQuery().nftId, isNull);
    });

    test('setNftId stores the NFT and returns the query', () {
      final query = MirrorNodeTokenNftInfoQuery();
      final id = NftId.fromString('0.0.222/3');

      expect(query.setNftId(id), same(query));
      expect(query.nftId, id);
    });

    test('execute requires an NFT ID', () async {
      final mock = MockClient((request) async => http.Response('{}', 200));

      await expectLater(
        MirrorNodeTokenNftInfoQuery().execute(_clientFor(mock)),
        throwsArgumentError,
      );
    });

    test('requests the NFT endpoint with token and serial', () async {
      late Uri requested;
      final mock = MockClient((request) async {
        requested = request.url;
        return http.Response(_nftBody(), 200);
      });

      await MirrorNodeTokenNftInfoQuery()
          .setNftId(NftId.fromString('0.0.222/3'))
          .execute(_clientFor(mock));

      expect(requested.host, 'testnet.mirrornode.hedera.com');
      expect(requested.path, '/api/v1/tokens/0.0.222/nfts/3');
      expect(requested.query, isEmpty);
    });

    test('returns the parsed NFT', () async {
      final mock = MockClient(
        (request) async => http.Response(_nftBody(), 200),
      );

      final nft = await MirrorNodeTokenNftInfoQuery()
          .setNftId(NftId.fromString('0.0.222/3'))
          .execute(_clientFor(mock));

      expect(nft.nftId, NftId.fromString('0.0.222/3'));
      expect(nft.accountId, AccountId.fromString('0.0.5'));
      expect(nft.metadata, [104, 105]);
      expect(nft.spender, isNull);
      expect(nft.deleted, isFalse);
    });

    test('a 404 means INVALID_NFT_ID', () async {
      final mock = MockClient(
        (request) async => http.Response(_notFoundBody, 404),
      );

      await expectLater(
        MirrorNodeTokenNftInfoQuery()
            .setNftId(NftId.fromString('0.0.99999999/1'))
            .execute(_clientFor(mock)),
        throwsA(
          isA<HederaStatusException>().having(
            (e) => e.statusCode.name,
            'name',
            'INVALID_NFT_ID',
          ),
        ),
      );
    });

    test('a malformed response throws MirrorNodeException', () async {
      final mock = MockClient(
        (request) async => http.Response('{"deleted":false}', 200),
      );

      await expectLater(
        MirrorNodeTokenNftInfoQuery()
            .setNftId(NftId.fromString('0.0.222/3'))
            .execute(_clientFor(mock)),
        throwsA(
          isA<MirrorNodeException>().having(
            (e) => e.message,
            'message',
            contains('Unexpected response'),
          ),
        ),
      );
    });

    test('an HTTP error throws MirrorNodeException', () async {
      final mock = MockClient(
        (request) async => http.Response(
          '{"_status":{"messages":[{"message":"Invalid parameter"}]}}',
          400,
        ),
      );

      await expectLater(
        MirrorNodeTokenNftInfoQuery()
            .setNftId(NftId.fromString('0.0.222/3'))
            .execute(_clientFor(mock)),
        throwsA(
          isA<MirrorNodeException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          ),
        ),
      );
    });
  });
}
