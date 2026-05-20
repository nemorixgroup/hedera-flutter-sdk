import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('HederaConstants', () {
    group('network ports', () {
      test('grpcPort is 50211', () {
        expect(HederaConstants.grpcPort, equals(50211));
      });

      test('grpcTlsPort is 50212', () {
        expect(HederaConstants.grpcTlsPort, equals(50212));
      });
    });

    group('HBAR units', () {
      test('tinybarsPerHbar is 100000000', () {
        expect(HederaConstants.tinybarsPerHbar, equals(100000000));
      });

      test('tinybarsPerMicrobar is 100', () {
        expect(HederaConstants.tinybarsPerMicrobar, equals(100));
      });

      test('tinybarsPerMillibar is 100000', () {
        expect(HederaConstants.tinybarsPerMillibar, equals(100000));
      });

      test('1 HBAR equals 100000000 tinybars', () {
        expect(
          HederaConstants.tinybarsPerHbar,
          equals(
            equals(100000000),
          ),
        );
      });
    });

    group('transaction limits', () {
      test('maxMemoLength is 100', () {
        expect(HederaConstants.maxMemoLength, equals(100));
      });

      test('maxTransactionValidDurationSeconds is 180', () {
        expect(
          HederaConstants.maxTransactionValidDurationSeconds,
          equals(180),
        );
      });

      test('defaultTransactionValidDurationSeconds is 120', () {
        expect(
          HederaConstants.defaultTransactionValidDurationSeconds,
          equals(120),
        );
      });

      test('default is less than max valid duration', () {
        expect(
          HederaConstants.defaultTransactionValidDurationSeconds,
          lessThan(HederaConstants.maxTransactionValidDurationSeconds),
        );
      });
    });

    group('default fees', () {
      test('defaultMaxTransactionFeeTinybars is 2 HBAR', () {
        expect(
          HederaConstants.defaultMaxTransactionFeeTinybars,
          equals(2 * HederaConstants.tinybarsPerHbar),
        );
      });

      test('defaultMaxQueryPaymentTinybars is 1 HBAR', () {
        expect(
          HederaConstants.defaultMaxQueryPaymentTinybars,
          equals(1 * HederaConstants.tinybarsPerHbar),
        );
      });

      test('TX fee default is higher than query payment default', () {
        expect(
          HederaConstants.defaultMaxTransactionFeeTinybars,
          greaterThan(HederaConstants.defaultMaxQueryPaymentTinybars),
        );
      });
    });

    group('Mirror Node endpoints', () {
      test('mainnet Mirror Node URL is correct', () {
        expect(
          HederaConstants.mainnetMirrorNodeUrl,
          equals(
            'https://mainnet-public.mirrornode.hedera.com',
          ),
        );
      });

      test('testnet Mirror Node URL is correct', () {
        expect(
          HederaConstants.testnetMirrorNodeUrl,
          equals('https://testnet.mirrornode.hedera.com'),
        );
      });

      test('all Mirror Node URLs start with https', () {
        expect(
          HederaConstants.mainnetMirrorNodeUrl,
          startsWith('https://'),
        );
        expect(
          HederaConstants.testnetMirrorNodeUrl,
          startsWith('https://'),
        );
        expect(
          HederaConstants.previewnetMirrorNodeUrl,
          startsWith('https://'),
        );
      });
    });

    group('consensus node endpoints', () {
      test('mainnet node endpoint is correct', () {
        expect(
          HederaConstants.mainnetNodeEndpoint,
          equals('0.mainnet.hedera.com'),
        );
      });

      test('testnet node endpoint is correct', () {
        expect(
          HederaConstants.testnetNodeEndpoint,
          equals('0.testnet.hedera.com'),
        );
      });

      test('all endpoints contain hedera.com', () {
        expect(
          HederaConstants.mainnetNodeEndpoint,
          contains('hedera.com'),
        );
        expect(
          HederaConstants.testnetNodeEndpoint,
          contains('hedera.com'),
        );
        expect(
          HederaConstants.previewnetNodeEndpoint,
          contains('hedera.com'),
        );
      });
    });
  });
}
