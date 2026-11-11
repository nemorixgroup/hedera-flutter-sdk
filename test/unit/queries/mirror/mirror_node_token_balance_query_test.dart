import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

Map<String, dynamic> _entry(String id, int balance) {
  return {
    'automatic_association': false,
    'balance': balance,
    'created_timestamp': '1.000000001',
    'decimals': 2,
    'freeze_status': 'UNFROZEN',
    'kyc_status': 'GRANTED',
    'token_id': id,
  };
}

String _page(List<Map<String, dynamic>> tokens, {String? next}) {
  return jsonEncode({
    'tokens': tokens,
    'links': {'next': next},
  });
}

HederaClient _clientFor(MockClient mock) {
  return HederaClient.forTestnet()
      .setHttpClient(mock)
      .setRetryPolicy(const RetryPolicy(maxAttempts: 1));
}

void main() {
  group('MirrorNodeTokenBalanceQuery', () {
    test('a new query has no account and no token', () {
      final query = MirrorNodeTokenBalanceQuery();

      expect(query.accountId, isNull);
      expect(query.tokenId, isNull);
    });

    test('setters store their values and return the query', () {
      final query = MirrorNodeTokenBalanceQuery();
      final account = AccountId.fromString('0.0.5');
      final token = TokenId.fromString('0.0.7');

      expect(query.setAccountId(account), same(query));
      expect(query.setTokenId(token), same(query));
      expect(query.accountId, account);
      expect(query.tokenId, token);
    });

    test('execute requires an account ID', () async {
      final mock = MockClient((request) async => http.Response('{}', 200));

      await expectLater(
        MirrorNodeTokenBalanceQuery().execute(_clientFor(mock)),
        throwsArgumentError,
      );
    });

    test('lists all tokens of the account without a filter', () async {
      late Uri requested;
      final mock = MockClient((request) async {
        requested = request.url;
        return http.Response(
          _page([_entry('0.0.7', 10), _entry('0.0.8', 20)]),
          200,
        );
      });

      final result = await MirrorNodeTokenBalanceQuery()
          .setAccountId(AccountId.fromString('0.0.5'))
          .execute(_clientFor(mock));

      expect(requested.host, 'testnet.mirrornode.hedera.com');
      expect(requested.path, '/api/v1/accounts/0.0.5/tokens');
      expect(requested.queryParameters['limit'], '100');
      expect(requested.queryParameters.containsKey('token.id'), isFalse);
      expect(result.map((b) => b.tokenId.toString()), ['0.0.7', '0.0.8']);
      expect(result.map((b) => b.balance), [10, 20]);
    });

    test('filters by token when a token ID is set', () async {
      late Uri requested;
      final mock = MockClient((request) async {
        requested = request.url;
        return http.Response(_page([_entry('0.0.7', 10)]), 200);
      });

      final result = await MirrorNodeTokenBalanceQuery()
          .setAccountId(AccountId.fromString('0.0.5'))
          .setTokenId(TokenId.fromString('0.0.7'))
          .execute(_clientFor(mock));

      expect(requested.queryParameters['token.id'], '0.0.7');
      expect(result, hasLength(1));
      expect(result.single.balance, 10);
    });

    test('maps status, decimals and association details', () async {
      final mock = MockClient(
        (request) async => http.Response(_page([_entry('0.0.7', 10)]), 200),
      );

      final result = await MirrorNodeTokenBalanceQuery()
          .setAccountId(AccountId.fromString('0.0.5'))
          .execute(_clientFor(mock));

      final balance = result.single;
      expect(balance.decimals, 2);
      expect(balance.kycStatus, KycStatus.granted);
      expect(balance.freezeStatus, FreezeStatus.unfrozen);
      expect(balance.automaticAssociation, isFalse);
      expect(balance.createdTimestamp, '1.000000001');
    });

    test('reads every page', () async {
      final urls = <Uri>[];
      final mock = MockClient((request) async {
        urls.add(request.url);
        if (urls.length == 1) {
          return http.Response(
            _page(
              [_entry('0.0.7', 10)],
              next: '/api/v1/accounts/0.0.5/tokens'
                  '?limit=100&token.id=gt:0.0.7',
            ),
            200,
          );
        }
        return http.Response(_page([_entry('0.0.8', 20)]), 200);
      });

      final result = await MirrorNodeTokenBalanceQuery()
          .setAccountId(AccountId.fromString('0.0.5'))
          .execute(_clientFor(mock));

      expect(result.map((b) => b.tokenId.toString()), ['0.0.7', '0.0.8']);
      expect(urls, hasLength(2));
      expect(urls[1].query, 'limit=100&token.id=gt:0.0.7');
    });

    test('an empty list means the account holds no such token', () async {
      final mock = MockClient(
        (request) async => http.Response(_page([]), 200),
      );

      final result = await MirrorNodeTokenBalanceQuery()
          .setAccountId(AccountId.fromString('0.0.5'))
          .setTokenId(TokenId.fromString('0.0.7'))
          .execute(_clientFor(mock));

      expect(result, isEmpty);
    });

    test('a 404 means INVALID_ACCOUNT_ID', () async {
      final mock = MockClient(
        (request) async => http.Response(
          '{"_status":{"messages":[{"message":"Not found"}]}}',
          404,
        ),
      );

      await expectLater(
        MirrorNodeTokenBalanceQuery()
            .setAccountId(AccountId.fromString('0.0.99999999'))
            .execute(_clientFor(mock)),
        throwsA(
          isA<HederaStatusException>().having(
            (e) => e.statusCode,
            'statusCode',
            HederaStatusCode.invalidAccountId,
          ),
        ),
      );
    });

    test('a malformed entry throws MirrorNodeException', () async {
      final mock = MockClient(
        (request) async => http.Response(
          _page([
            {'token_id': '0.0.7'},
          ]),
          200,
        ),
      );

      await expectLater(
        MirrorNodeTokenBalanceQuery()
            .setAccountId(AccountId.fromString('0.0.5'))
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
        MirrorNodeTokenBalanceQuery()
            .setAccountId(AccountId.fromString('0.0.5'))
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
