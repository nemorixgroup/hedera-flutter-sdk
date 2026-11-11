import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/client/retry_policy.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

const _nodesBody = '{"nodes":[{"node_account_id":"0.0.3","service_endpoints":'
    '[{"ip_address_v4":"1.2.3.4","port":50211}]}]}';

void main() {
  group('HederaClient Mirror Node', () {
    test('mirrorNodeBaseUrl matches the constants for each network', () {
      expect(
        HederaClient.forMainnet().mirrorNodeBaseUrl,
        HederaConstants.mainnetMirrorNodeUrl,
      );
      expect(
        HederaClient.forTestnet().mirrorNodeBaseUrl,
        HederaConstants.testnetMirrorNodeUrl,
      );
      expect(
        HederaClient.forPreviewnet().mirrorNodeBaseUrl,
        HederaConstants.previewnetMirrorNodeUrl,
      );
    });

    test('mirrorNode uses the base URL of the active network', () {
      final client = HederaClient.forTestnet();

      expect(client.mirrorNode.baseUrl, HederaConstants.testnetMirrorNodeUrl);
    });

    test('mirrorNode uses the retry policy of the client', () {
      final client = HederaClient.forTestnet()
          .setRetryPolicy(const RetryPolicy(maxAttempts: 2));

      expect(client.mirrorNode.retryPolicy.maxAttempts, 2);
    });

    test('setHttpClient returns the same client', () {
      final client = HederaClient.forTestnet();

      expect(
        client.setHttpClient(
          MockClient((request) async => http.Response('', 200)),
        ),
        same(client),
      );
    });

    test('mirrorNode uses the injected HTTP client', () async {
      late Uri requested;
      final client = HederaClient.forTestnet().setHttpClient(
        MockClient((request) async {
          requested = request.url;
          return http.Response('{"ok":true}', 200);
        }),
      );

      final json = await client.mirrorNode.getJson('/api/v1/ping');

      expect(json['ok'], isTrue);
      expect(requested.host, 'testnet.mirrornode.hedera.com');
      expect(requested.path, '/api/v1/ping');
    });

    test('selectNode reads the node list through the injected client',
        () async {
      late Uri requested;
      final client = HederaClient.forTestnet().setHttpClient(
        MockClient((request) async {
          requested = request.url;
          return http.Response(_nodesBody, 200);
        }),
      );

      final node = await client.selectNode();

      expect(requested.path, '/api/v1/network/nodes');
      expect(requested.queryParameters['limit'], '100');
      expect(node.accountId, AccountId.fromString('0.0.3'));
      expect(node.endpoint, '1.2.3.4:50211');
    });

    test('selectNode falls back to the static node on a Mirror error',
        () async {
      final client = HederaClient.forTestnet().setHttpClient(
        MockClient((request) async => http.Response('error', 500)),
      );

      final node = await client.selectNode();

      expect(node.accountId, AccountId.fromString('0.0.3'));
      expect(node.endpoint, client.networkEndpoint);
    });

    test('close completes when the client created its own HTTP client',
        () async {
      final client = HederaClient.forTestnet();
      expect(client.mirrorNode, isNotNull);

      await expectLater(client.close(), completes);
    });
  });
}
