import 'package:flutter_test/flutter_test.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

void main() {
  group('TransactionReceipt', () {
    test('serialNumbers defaults to an empty list', () {
      const receipt = TransactionReceipt(status: 'SUCCESS');
      expect(receipt.serialNumbers, isEmpty);
    });

    test('keeps the serial numbers of minted NFTs in order', () {
      const receipt = TransactionReceipt(
        status: 'SUCCESS',
        serialNumbers: [1, 2, 3],
      );
      expect(receipt.serialNumbers, equals([1, 2, 3]));
    });
  });
}
