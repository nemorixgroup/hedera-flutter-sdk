import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

String _body({
  String? timestamp = '1586567700.453054000',
  List<dynamic>? balances,
}) {
  return jsonEncode({
    'timestamp': timestamp,
    'balances': balances ??
        [
          {'account': '0.0.5', 'balance': 80, 'tokens': <dynamic>[]},
        ],
    'links': {'next': null},
  });
}

HederaClient _clientFor(MockClient mock) {
  return HederaClient.forTestnet()
      .setHttpClient(mock)
      .setRetryPolicy(const RetryPolicy(maxAttempts: 1));
}

void main() {
  group('MirrorNodeAccountBalance', () {
    test('is equal when hbars and timestamp are equal', () {
      const a = MirrorNodeAccountBalance(
        hbars: Hbar.fromTinybars(80),
        timestamp: '1.000000001',
      );
      const b = MirrorNodeAccountBalance(
        hbars: Hbar.fromTinybars(80),
        timestamp: '1.000000001',
      );

      expect(a, b);
      expect(a.hashCode, b.hashCode);
    });

    test('is different when the balance differs', () {
      const a = MirrorNodeAccountBalance(hbars: Hbar.fromTinybars(80));
      const b = MirrorNodeAccountBalance(hbars: Hbar.fromTinybars(81));

      expect(a, isNot(b));
    });

    test('is different when the timestamp differs', () {
      const a = MirrorNodeAccountBalance(
        hbars: Hbar.fromTinybars(80),
        timestamp: '1.000000001',
      );
      const b = MirrorNodeAccountBalance(hbars: Hbar.fromTinybars(80));

      expect(a, isNot(b));
    });

    test('toString shows the balance', () {
      const balance = MirrorNodeAccountBalance(hbars: Hbar(2));

      expect(balance.toString(), contains('2.0'));
    });
  });

  group('MirrorNodeAccountBalanceQuery', () {
    test('a new query has no account ID', () {
      expect(MirrorNodeAccountBalanceQuery().accountId, isNull);
    });

    test('setAccountId stores the account and returns the query', () {
      final query = MirrorNodeAccountBalanceQuery();
      final id = AccountId.fromString('0.0.5');

      expect(query.setAccountId(id), same(query));
      expect(query.accountId, id);
    });

    test('execute requires an account ID', () async {
      final mock = MockClient((request) async => http.Response('{}', 200));

      await expectLater(
        MirrorNodeAccountBalanceQuery().execute(_clientFor(mock)),
        throwsArgumentError,
      );
    });

    test('requests the balances endpoint filtered by account', () async {
      late Uri requested;
      final mock = MockClient((request) async {
        requested = request.url;
        return http.Response(_body(), 200);
      });

      await MirrorNodeAccountBalanceQuery()
          .setAccountId(AccountId.fromString('0.0.5'))
          .execute(_clientFor(mock));

      expect(requested.host, 'testnet.mirrornode.hedera.com');
      expect(requested.path, '/api/v1/balances');
      expect(requested.queryParameters['account.id'], '0.0.5');
    });

    test('returns the HBAR balance and the timestamp', () async {
      final mock = MockClient(
        (request) async => http.Response(_body(), 200),
      );

      final result = await MirrorNodeAccountBalanceQuery()
          .setAccountId(AccountId.fromString('0.0.5'))
          .execute(_clientFor(mock));

      expect(result.hbars, Hbar.fromTinybars(80));
      expect(result.timestamp, '1586567700.453054000');
    });

    test('a zero balance is a valid result', () async {
      final mock = MockClient(
        (request) async => http.Response(
          _body(
            balances: [
              {'account': '0.0.5', 'balance': 0, 'tokens': <dynamic>[]},
            ],
          ),
          200,
        ),
      );

      final result = await MirrorNodeAccountBalanceQuery()
          .setAccountId(AccountId.fromString('0.0.5'))
          .execute(_clientFor(mock));

      expect(result.hbars, Hbar.zero);
    });

    test('a null timestamp is kept as null', () async {
      final mock = MockClient(
        (request) async => http.Response(_body(timestamp: null), 200),
      );

      final result = await MirrorNodeAccountBalanceQuery()
          .setAccountId(AccountId.fromString('0.0.5'))
          .execute(_clientFor(mock));

      expect(result.timestamp, isNull);
    });

    test('sends an EVM address account as 0x followed by hex', () async {
      late Uri requested;
      final mock = MockClient((request) async {
        requested = request.url;
        return http.Response(_body(), 200);
      });
      final evm = '0x${'ab' * 20}';

      await MirrorNodeAccountBalanceQuery()
          .setAccountId(AccountId.fromEvmAddress(evm))
          .execute(_clientFor(mock));

      expect(requested.queryParameters['account.id'], evm);
    });

    test('an empty balances list means INVALID_ACCOUNT_ID', () async {
      final mock = MockClient(
        (request) async => http.Response(_body(balances: []), 200),
      );

      await expectLater(
        MirrorNodeAccountBalanceQuery()
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

    test('a response without balances means INVALID_ACCOUNT_ID', () async {
      final mock = MockClient(
        (request) async => http.Response('{"links":{"next":null}}', 200),
      );

      await expectLater(
        MirrorNodeAccountBalanceQuery()
            .setAccountId(AccountId.fromString('0.0.5'))
            .execute(_clientFor(mock)),
        throwsA(isA<HederaStatusException>()),
      );
    });

    test('an entry without a balance throws MirrorNodeException', () async {
      final mock = MockClient(
        (request) async => http.Response(
          _body(
            balances: [
              {'account': '0.0.5', 'tokens': <dynamic>[]},
            ],
          ),
          200,
        ),
      );

      await expectLater(
        MirrorNodeAccountBalanceQuery()
            .setAccountId(AccountId.fromString('0.0.5'))
            .execute(_clientFor(mock)),
        throwsA(isA<MirrorNodeException>()),
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
        MirrorNodeAccountBalanceQuery()
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
