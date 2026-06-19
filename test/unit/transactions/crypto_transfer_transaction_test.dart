import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_transfer.pb.dart';

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
}
