import 'dart:async';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/client/hedera_client.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_code.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_exception.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/transaction_id.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/query.pb.dart' as query_proto;
import 'package:hedera_flutter_sdk/src/proto/query_header.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/response_code.pbenum.dart';
import 'package:hedera_flutter_sdk/src/proto/timestamp.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction_get_receipt.pb.dart'
    as receipt_proto;
import 'package:hedera_flutter_sdk/src/queries/query.dart' as hedera_query;
import 'package:hedera_flutter_sdk/src/transactions/transaction.dart';

/// Queries the receipt of a submitted Hedera transaction.
///
/// Polls the network every 2 seconds until the transaction reaches
/// consensus or times out after 30 seconds.
///
/// Example:
/// ```dart
/// final receipt = await TransactionGetReceiptQuery()
///     .setTransactionId(response.transactionId)
///     .execute(client);
///
/// print(receipt.status); // SUCCESS
/// print(receipt.accountId); // 0.0.12345
/// ```
class TransactionReceiptQuery
    extends hedera_query.Query<TransactionReceipt, TransactionReceiptQuery> {
  /// Creates a new [TransactionReceiptQuery] with default values.
  TransactionReceiptQuery();

  TransactionId? _transactionId;

  // ---- Setters (fluent API) ----

  /// Sets the transaction ID to query the receipt for.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// query.setTransactionId(response.transactionId);
  /// ```
  TransactionReceiptQuery setTransactionId(TransactionId transactionId) {
    _transactionId = transactionId;
    return this;
  }

  // ---- Getters ----

  /// The transaction ID being queried.
  TransactionId? get transactionId => _transactionId;

  // ---- Serialization ----

  /// Serializes this query to bytes for submission.
  @override
  Uint8List toBytes() {
    if (_transactionId == null) {
      throw ArgumentError(
        'TransactionGetReceiptQuery requires a transactionId. '
        'Call setTransactionId() first.',
      );
    }

    final parts = _transactionId.toString().split('@');
    final accountParts = parts[0].split('.');
    final timestampParts = parts[1].split('.');

    final protoTxId = TransactionID(
      accountID: AccountID(
        shardNum: Int64(int.parse(accountParts[0])),
        realmNum: Int64(int.parse(accountParts[1])),
        accountNum: Int64(int.parse(accountParts[2])),
      ),
      transactionValidStart: Timestamp(
        seconds: Int64(int.parse(timestampParts[0])),
        nanos: int.parse(timestampParts[1]),
      ),
    );

    final query = query_proto.Query(
      transactionGetReceipt: receipt_proto.TransactionGetReceiptQuery(
        header: QueryHeader(),
        transactionID: protoTxId,
      ),
    );

    return Uint8List.fromList(query.writeToBuffer());
  }

  // ---- Execution ----

  /// Executes this query against the Hedera network.
  ///
  /// Polls every 2 seconds until the transaction reaches consensus
  /// or times out after 30 seconds.
  ///
  /// Throws [ArgumentError] if [transactionId] has not been set.
  /// Throws [HederaStatusException] if the transaction failed.
  /// Throws [TimeoutException] if consensus is not reached in 30 seconds.
  @override
  Future<TransactionReceipt> execute(HederaClient client) async {
    if (_transactionId == null) {
      throw ArgumentError(
        'TransactionGetReceiptQuery requires a transactionId. '
        'Call setTransactionId() first.',
      );
    }

    const maxAttempts = 15;
    const pollInterval = Duration(seconds: 2);

    final parts = _transactionId.toString().split('@');
    final accountParts = parts[0].split('.');
    final timestampParts = parts[1].split('.');

    final protoTxId = TransactionID(
      accountID: AccountID(
        shardNum: Int64(int.parse(accountParts[0])),
        realmNum: Int64(int.parse(accountParts[1])),
        accountNum: Int64(int.parse(accountParts[2])),
      ),
      transactionValidStart: Timestamp(
        seconds: Int64(int.parse(timestampParts[0])),
        nanos: int.parse(timestampParts[1]),
      ),
    );

    for (var attempt = 0; attempt < maxAttempts; attempt++) {
      await Future<void>.delayed(pollInterval);

      final query = query_proto.Query(
        transactionGetReceipt: receipt_proto.TransactionGetReceiptQuery(
          header: QueryHeader(),
          transactionID: protoTxId,
        ),
      );

      final response = await client.cryptoClient.getTransactionReceipts(query);
      final receipt = response.transactionGetReceipt.receipt;
      final status = receipt.status;

      if (status == ResponseCodeEnum.UNKNOWN || status == ResponseCodeEnum.OK) {
        continue;
      }

      if (status != ResponseCodeEnum.SUCCESS) {
        throw HederaStatusException(
          HederaStatusCode.fromCode(status.value),
        );
      }

      final accountId = receipt.hasAccountID()
          ? AccountId(
              shardNum: receipt.accountID.shardNum.toInt(),
              realmNum: receipt.accountID.realmNum.toInt(),
              accountNum: receipt.accountID.accountNum.toInt(),
            ).toString()
          : null;

      final tokenId = receipt.hasTokenID()
          ? '${receipt.tokenID.shardNum}.'
              '${receipt.tokenID.realmNum}.'
              '${receipt.tokenID.tokenNum}'
          : null;

      return TransactionReceipt(
        status: status.name,
        accountId: accountId,
        tokenId: tokenId,
      );
    }

    throw TimeoutException(
      'TransactionGetReceiptQuery timed out after '
      '${maxAttempts * 2} seconds. '
      'Transaction ID: $_transactionId',
    );
  }
}
