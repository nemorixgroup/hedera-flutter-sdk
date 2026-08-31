import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_transfer.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart';

void main() {
  group('CryptoTransferTransaction', () {
    // ---- default values ----

    group('default values', () {
      test('transferCount defaults to 0', () {
        final tx = CryptoTransferTransaction();
        expect(tx.transferCount, equals(0));
      });
    });

    // ---- addHbarTransfer ----

    group('addHbarTransfer', () {
      test('adds a transfer and returns this', () {
        final tx = CryptoTransferTransaction();
        final accountId = AccountId.fromString('0.0.12345');
        final result = tx.addHbarTransfer(accountId, Hbar(10));
        expect(result, same(tx));
        expect(tx.transferCount, equals(1));
      });

      test('can be called multiple times', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(10),
            );
        expect(tx.transferCount, equals(2));
      });

      test('transferCount reflects number of transfers added', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(5).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(3),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.333'),
              Hbar(2),
            );
        expect(tx.transferCount, equals(3));
      });
    });

    // ---- toBytes validation ----

    group('toBytes validation', () {
      test('throws ArgumentError if no transfers are added', () {
        final tx = CryptoTransferTransaction();
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('throws ArgumentError if transfer amounts do not sum to zero', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(5),
            );
        expect(tx.toBytes, throwsA(isA<ArgumentError>()));
      });

      test('does not throw if transfer amounts sum to zero', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(10),
            );
        expect(tx.toBytes, returnsNormally);
      });

      test('does not throw for multi-account transfers summing to zero', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(6),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.333'),
              Hbar(4),
            );
        expect(tx.toBytes, returnsNormally);
      });
    });

    // ---- toBytes serialization ----

    group('toBytes serialization', () {
      test('returns non-empty bytes', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(10),
            );
        expect(tx.toBytes(), isNotEmpty);
      });

      test('is deterministic for same input', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(10),
            );
        final bytes1 = tx.toBytes();
        final bytes2 = tx.toBytes();
        expect(bytes1, equals(bytes2));
      });

      test('encodes sender accountNum and negative amount', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(10),
            );

        final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());
        final amounts = body.transfers.accountAmounts;

        expect(amounts[0].accountID.accountNum.toInt(), equals(111));
        expect(
          amounts[0].amount.toInt(),
          equals(Hbar(10).negated().toTinybars()),
        );
      });

      test('encodes receiver accountNum and positive amount', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(10),
            );

        final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());
        final amounts = body.transfers.accountAmounts;

        expect(amounts[1].accountID.accountNum.toInt(), equals(222));
        expect(amounts[1].amount.toInt(), equals(Hbar(10).toTinybars()));
      });

      test('encodes multiple transfers correctly', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(6),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.333'),
              Hbar(4),
            );

        final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());
        final amounts = body.transfers.accountAmounts;

        expect(amounts.length, equals(3));
        expect(amounts[0].accountID.accountNum.toInt(), equals(111));
        expect(amounts[1].accountID.accountNum.toInt(), equals(222));
        expect(amounts[2].accountID.accountNum.toInt(), equals(333));
      });

      test('amounts are denominated in tinybars', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(1).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(1),
            );

        final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());
        final amounts = body.transfers.accountAmounts;

        // 1 HBAR = 100,000,000 tinybars
        expect(amounts[0].amount.toInt(), equals(-100000000));
        expect(amounts[1].amount.toInt(), equals(100000000));
      });
    });

    // ---- integration ----

    group('integration', () {
      test('can be signed after adding transfers', () async {
        final privateKey = await PrivateKey.generateED25519();
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(10),
            );

        await tx.sign(privateKey);

        expect(tx.isSigned, isTrue);
      });

      test('respects inherited memo length validation', () {
        final tx = CryptoTransferTransaction();
        final longMemo = 'a' * 101;
        expect(() => tx.setMemo(longMemo), throwsA(isA<ArgumentError>()));
      });

      test('fluent API can chain Transaction and subclass setters', () {
        final tx = CryptoTransferTransaction()
            .addHbarTransfer(
              AccountId.fromString('0.0.111'),
              Hbar(10).negated(),
            )
            .setMemo('NemorixPay transfer')
            .addHbarTransfer(
              AccountId.fromString('0.0.222'),
              Hbar(10),
            );

        expect(tx.transferCount, equals(2));
        expect(tx.memo, equals('NemorixPay transfer'));
      });
    });
  });

  // ---- token transfer setters ----

  group('token transfer setters', () {
    test('addTokenTransfer adds an amount and returns this', () {
      final tx = CryptoTransferTransaction();
      final tokenId = TokenId.fromString('0.0.999');
      final accountId = AccountId.fromString('0.0.100');
      final result = tx.addTokenTransfer(tokenId, accountId, -100);
      expect(result, same(tx));
      expect(tx.tokenTransferCount, equals(1));
    });

    test('addTokenTransfer can be called multiple times for the same token',
        () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.100'), -100)
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.200'), 100);
      expect(tx.tokenTransferCount, equals(1)); // one distinct token
    });

    test('addTokenTransfer counts distinct tokens separately', () {
      final tokenA = TokenId.fromString('0.0.100');
      final tokenB = TokenId.fromString('0.0.200');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenA, AccountId.fromString('0.0.1'), -10)
        ..addTokenTransfer(tokenA, AccountId.fromString('0.0.2'), 10)
        ..addTokenTransfer(tokenB, AccountId.fromString('0.0.3'), -5)
        ..addTokenTransfer(tokenB, AccountId.fromString('0.0.4'), 5);
      expect(tx.tokenTransferCount, equals(2));
    });

    test('tokenTransferCount defaults to zero', () {
      final tx = CryptoTransferTransaction();
      expect(tx.tokenTransferCount, equals(0));
    });
  });

  // ---- token transfer validation ----

  group('token transfer validation', () {
    test('throws ArgumentError if token amounts do not sum to zero', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.1'), -100)
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.2'), 50);
      expect(tx.toBytes, throwsA(isA<ArgumentError>()));
    });

    test('does not throw when token amounts sum to zero', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.1'), -100)
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.2'), 100);
      expect(tx.toBytes, returnsNormally);
    });

    test('validates each token independently', () {
      final tokenA = TokenId.fromString('0.0.100');
      final tokenB = TokenId.fromString('0.0.200');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenA, AccountId.fromString('0.0.1'), -10)
        ..addTokenTransfer(tokenA, AccountId.fromString('0.0.2'), 10)
        ..addTokenTransfer(tokenB, AccountId.fromString('0.0.3'), -5)
        ..addTokenTransfer(tokenB, AccountId.fromString('0.0.4'), 3);
      // tokenA sums to zero, tokenB does not
      expect(tx.toBytes, throwsA(isA<ArgumentError>()));
    });

    test('throws ArgumentError for conflicting expectedDecimals', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(
          tokenId,
          AccountId.fromString('0.0.1'),
          -100,
          expectedDecimals: 2,
        )
        ..addTokenTransfer(
          tokenId,
          AccountId.fromString('0.0.2'),
          100,
          expectedDecimals: 3,
        );
      expect(tx.toBytes, throwsA(isA<ArgumentError>()));
    });

    test('does not throw when expectedDecimals matches across calls', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(
          tokenId,
          AccountId.fromString('0.0.1'),
          -100,
          expectedDecimals: 2,
        )
        ..addTokenTransfer(
          tokenId,
          AccountId.fromString('0.0.2'),
          100,
          expectedDecimals: 2,
        );
      expect(tx.toBytes, returnsNormally);
    });

    test('throws ArgumentError if no transfers of any kind were added', () {
      final tx = CryptoTransferTransaction();
      expect(tx.toBytes, throwsA(isA<ArgumentError>()));
    });

    test('does not throw with only token transfers and no HBAR transfers', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.1'), -100)
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.2'), 100);
      expect(tx.toBytes, returnsNormally);
    });
  });

  // ---- token transfer serialization ----

  group('token transfer serialization', () {
    test('encodes a single token transfer list', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.1'), -100)
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.2'), 100);

      final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());

      expect(body.tokenTransfers.length, equals(1));
      expect(body.tokenTransfers.first.token.tokenNum.toInt(), equals(999));
      expect(body.tokenTransfers.first.transfers.length, equals(2));
    });

    test('encodes transfer amounts correctly', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.1'), -100)
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.2'), 100);

      final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());
      final transfers = body.tokenTransfers.first.transfers;

      expect(transfers[0].accountID.accountNum.toInt(), equals(1));
      expect(transfers[0].amount.toInt(), equals(-100));
      expect(transfers[1].accountID.accountNum.toInt(), equals(2));
      expect(transfers[1].amount.toInt(), equals(100));
    });

    test('encodes multiple distinct tokens as separate lists', () {
      final tokenA = TokenId.fromString('0.0.100');
      final tokenB = TokenId.fromString('0.0.200');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenA, AccountId.fromString('0.0.1'), -10)
        ..addTokenTransfer(tokenA, AccountId.fromString('0.0.2'), 10)
        ..addTokenTransfer(tokenB, AccountId.fromString('0.0.3'), -5)
        ..addTokenTransfer(tokenB, AccountId.fromString('0.0.4'), 5);

      final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());

      expect(body.tokenTransfers.length, equals(2));
    });

    test('encodes expectedDecimals when provided', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(
          tokenId,
          AccountId.fromString('0.0.1'),
          -100,
          expectedDecimals: 2,
        )
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.2'), 100);

      final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());

      expect(body.tokenTransfers.first.hasExpectedDecimals(), isTrue);
      expect(
        body.tokenTransfers.first.expectedDecimals.value,
        equals(2),
      );
    });

    test('does not set expectedDecimals when not provided', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.1'), -100)
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.2'), 100);

      final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());

      expect(body.tokenTransfers.first.hasExpectedDecimals(), isFalse);
    });

    test('encodes both HBAR and token transfers in the same transaction', () {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addHbarTransfer(
          AccountId.fromString('0.0.1'),
          Hbar(1).negated(),
        )
        ..addHbarTransfer(AccountId.fromString('0.0.2'), Hbar(1))
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.1'), -100)
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.2'), 100);

      final body = CryptoTransferTransactionBody.fromBuffer(tx.toBytes());

      expect(body.transfers.accountAmounts.length, equals(2));
      expect(body.tokenTransfers.length, equals(1));
    });
  });

  // ---- token transfer buildBody integration ----

  group('token transfer applyToBody / buildBody', () {
    test('sets tokenTransfers on the TransactionBody', () async {
      final tokenId = TokenId.fromString('0.0.999');
      final tx = CryptoTransferTransaction()
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.1'), -100)
        ..addTokenTransfer(tokenId, AccountId.fromString('0.0.2'), 100);

      final client = HederaClient.forTestnet().setOperator(
        AccountId.fromString('0.0.12345'),
        await PrivateKey.generateED25519(),
      );

      final body = await tx.buildBody(client);

      expect(
        body.whichData(),
        equals(TransactionBody_Data.cryptoTransfer),
      );
      expect(body.cryptoTransfer.tokenTransfers.length, equals(1));
    });
  });
}
