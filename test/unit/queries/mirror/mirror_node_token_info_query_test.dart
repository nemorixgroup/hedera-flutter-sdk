import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

const _notFoundBody = '{"_status":{"messages":[{"message":"Not found"}]}}';

String _tokenBody() {
  return jsonEncode({
    'token_id': '0.0.1135',
    'name': 'Token name',
    'symbol': 'TKN',
    'decimals': '2',
    'total_supply': '1000',
    'treasury_account_id': '0.0.98',
    'type': 'FUNGIBLE_COMMON',
    'custom_fees': {
      'fixed_fees': [
        {'amount': 100, 'collector_account_id': '0.0.98'},
      ],
    },
  });
}

HederaClient _clientFor(MockClient mock) {
  return HederaClient.forTestnet()
      .setHttpClient(mock)
      .setRetryPolicy(const RetryPolicy(maxAttempts: 1));
}

void main() {
  group('MirrorNodeTokenInfoQuery', () {
    test('a new query has no token ID', () {
      expect(MirrorNodeTokenInfoQuery().tokenId, isNull);
    });

    test('setTokenId stores the token and returns the query', () {
      final query = MirrorNodeTokenInfoQuery();
      final id = TokenId.fromString('0.0.1135');

      expect(query.setTokenId(id), same(query));
      expect(query.tokenId, id);
    });

    test('execute requires a token ID', () async {
      final mock = MockClient((request) async => http.Response('{}', 200));

      await expectLater(
        MirrorNodeTokenInfoQuery().execute(_clientFor(mock)),
        throwsArgumentError,
      );
    });

    test('requests the token endpoint', () async {
      late Uri requested;
      final mock = MockClient((request) async {
        requested = request.url;
        return http.Response(_tokenBody(), 200);
      });

      await MirrorNodeTokenInfoQuery()
          .setTokenId(TokenId.fromString('0.0.1135'))
          .execute(_clientFor(mock));

      expect(requested.host, 'testnet.mirrornode.hedera.com');
      expect(requested.path, '/api/v1/tokens/0.0.1135');
      expect(requested.query, isEmpty);
    });

    test('returns the parsed token', () async {
      final mock = MockClient(
        (request) async => http.Response(_tokenBody(), 200),
      );

      final info = await MirrorNodeTokenInfoQuery()
          .setTokenId(TokenId.fromString('0.0.1135'))
          .execute(_clientFor(mock));

      expect(info.tokenId, TokenId.fromString('0.0.1135'));
      expect(info.name, 'Token name');
      expect(info.symbol, 'TKN');
      expect(info.decimals, 2);
      expect(info.totalSupply, 1000);
      expect(info.type, TokenType.FUNGIBLE_COMMON);
      expect(info.customFees.fixedFees.single.amount, 100);
    });

    test('a 404 means INVALID_TOKEN_ID', () async {
      final mock = MockClient(
        (request) async => http.Response(_notFoundBody, 404),
      );

      await expectLater(
        MirrorNodeTokenInfoQuery()
            .setTokenId(TokenId.fromString('0.0.99999999'))
            .execute(_clientFor(mock)),
        throwsA(
          isA<HederaStatusException>().having(
            (e) => e.statusCode,
            'statusCode',
            HederaStatusCode.invalidTokenId,
          ),
        ),
      );
    });

    test('a malformed response throws MirrorNodeException', () async {
      final mock = MockClient(
        (request) async => http.Response('{"name":"No id"}', 200),
      );

      await expectLater(
        MirrorNodeTokenInfoQuery()
            .setTokenId(TokenId.fromString('0.0.1135'))
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
        MirrorNodeTokenInfoQuery()
            .setTokenId(TokenId.fromString('0.0.1135'))
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
