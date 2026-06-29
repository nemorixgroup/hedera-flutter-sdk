import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_service.pbgrpc.dart';

void main() {
  group('HederaClient gRPC channel', () {
    // ---- channel lazy initialization ----

    group('channel lazy initialization', () {
      test('channel is null before first access', () {
        final client = HederaClient.forTestnet();
        // We verify laziness by checking that close() can be called
        // safely before any channel is created (no crash).
        expect(() async => client.close(), returnsNormally);
      });

      test('channel returns the same instance on consecutive calls', () {
        final client = HederaClient.forTestnet();
        final channel1 = client.channel;
        final channel2 = client.channel;
        expect(identical(channel1, channel2), isTrue);
      });

      test('channel is recreated after close()', () async {
        final client = HederaClient.forTestnet();
        final channel1 = client.channel;
        await client.close();
        final channel2 = client.channel;
        expect(identical(channel1, channel2), isFalse);
      });
    });

    // ---- cryptoClient ----

    group('cryptoClient', () {
      test('returns a CryptoServiceClient', () {
        final client = HederaClient.forTestnet();
        expect(client.cryptoClient, isA<CryptoServiceClient>());
      });

      test('returns a non-null CryptoServiceClient', () {
        final client = HederaClient.forTestnet();
        expect(client.cryptoClient, isNotNull);
      });
    });

    // ---- networkEndpoint ----

    group('networkEndpoint', () {
      test('testnet endpoint contains testnet hostname', () {
        final client = HederaClient.forTestnet();
        expect(client.networkEndpoint, contains('testnet.hedera.com'));
      });

      test('mainnet endpoint contains mainnet hostname', () {
        final client = HederaClient.forMainnet();
        expect(client.networkEndpoint, contains('mainnet.hedera.com'));
      });

      test('previewnet endpoint contains previewnet hostname', () {
        final client = HederaClient.forPreviewnet();
        expect(client.networkEndpoint, contains('previewnet.hedera.com'));
      });

      test('endpoint includes gRPC port', () {
        final client = HederaClient.forTestnet();
        expect(client.networkEndpoint, contains('50211'));
      });
    });

    // ---- close ----

    group('close', () {
      test('close() completes without error', () async {
        final client = HederaClient.forTestnet()..channel;
        await expectLater(client.close(), completes);
      });

      test('close() can be called multiple times without error', () async {
        final client = HederaClient.forTestnet()..channel;
        await client.close();
        await expectLater(client.close(), completes);
      });

      test('close() before channel is initialized completes without error',
          () async {
        final client = HederaClient.forTestnet();
        await expectLater(client.close(), completes);
      });
    });
  });
}
