import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('HederaClient', () {
    test('forTestnet creates client with testnet network', () {
      final client = HederaClient.forTestnet();
      expect(client.network, equals(HederaNetwork.testnet));
    });

    test('forMainnet creates client with mainnet network', () {
      final client = HederaClient.forMainnet();
      expect(client.network, equals(HederaNetwork.mainnet));
    });

    test('forPreviewnet creates client with previewnet network', () {
      final client = HederaClient.forPreviewnet();
      expect(client.network, equals(HederaNetwork.previewnet));
    });

    test('default maxTransactionFee is 2 HBAR', () {
      final client = HederaClient.forTestnet();
      expect(client.maxTransactionFee.toTinybars(), equals(200000000));
    });

    test('default maxQueryPayment is 1 HBAR', () {
      final client = HederaClient.forTestnet();
      expect(client.maxQueryPayment.toTinybars(), equals(100000000));
    });

    test('networkEndpoint returns correct testnet URL', () {
      final client = HederaClient.forTestnet();
      expect(
        client.networkEndpoint,
        equals('0.testnet.hedera.com:50211'),
      );
    });

    test('networkEndpoint returns correct mainnet URL', () {
      final client = HederaClient.forMainnet();
      expect(
        client.networkEndpoint,
        equals('0.mainnet.hedera.com:50211'),
      );
    });
  });

  group('AccountId', () {
    test('fromString parses valid account ID', () {
      final id = AccountId.fromString('0.0.12345');
      expect(id.shardNum, equals(0));
      expect(id.realmNum, equals(0));
      expect(id.accountNum, equals(12345));
    });

    test('toString returns correct format', () {
      const id = AccountId(accountNum: 12345);
      expect(id.toString(), equals('0.0.12345'));
    });

    test('fromString throws FormatException on invalid input', () {
      expect(
        () => AccountId.fromString('invalid'),
        throwsA(isA<FormatException>()),
      );
    });

    test('equality works correctly', () {
      final id1 = AccountId.fromString('0.0.12345');
      final id2 = AccountId.fromString('0.0.12345');
      expect(id1, equals(id2));
    });
  });

  group('Hbar', () {
    test('1 HBAR equals 100000000 tinybars', () {
      final hbar = Hbar(1);
      expect(hbar.toTinybars(), equals(100000000));
    });

    test('fromTinybars creates correct value', () {
      const hbar = Hbar.fromTinybars(100000000);
      expect(hbar.toHbars(), equals(1.0));
    });

    test('negated returns negative value', () {
      final hbar = Hbar(10);
      expect(hbar.negated().toTinybars(), equals(-1000000000));
    });

    test('zero is 0 tinybars', () {
      expect(Hbar.zero.toTinybars(), equals(0));
    });
  });

  group('TokenId', () {
    test('fromString parses valid token ID', () {
      final id = TokenId.fromString('0.0.55555');
      expect(id.tokenNum, equals(55555));
    });

    test('toString returns correct format', () {
      const id = TokenId(tokenNum: 55555);
      expect(id.toString(), equals('0.0.55555'));
    });

    test('fromString throws FormatException on invalid input', () {
      expect(
        () => TokenId.fromString('invalid'),
        throwsA(isA<FormatException>()),
      );
    });
  });

  group('TransactionId', () {
    test('fromString parses valid transaction ID', () {
      final id = TransactionId.fromString('0.0.12345@1706745600.000000000');
      expect(id.accountId, equals('0.0.12345'));
      expect(id.validStartSeconds, equals(1706745600));
    });

    test('toString returns correct format', () {
      const id = TransactionId(
        accountId: '0.0.12345',
        validStartSeconds: 1706745600,
        validStartNanos: 0,
      );
      expect(id.toString(), equals('0.0.12345@1706745600.0'));
    });
  });
}
