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
import 'package:hedera_flutter_sdk/src/proto/transaction_get_record.pb.dart'
    as record_proto;
import 'package:hedera_flutter_sdk/src/queries/query.dart' as hedera_query;
import 'package:hedera_flutter_sdk/src/transactions/transaction.dart';

/// Queries the full record of a completed Hedera transaction.
///
/// A transaction record contains more information than a receipt,
/// including the exact fee charged, the consensus timestamp, the
/// full transfer list, and the receipt status.
///
/// Records are available for up to 180 seconds after consensus.
/// For longer retention, use the Hedera Mirror Node REST API.
///
/// Example:
/// ```dart
/// final record = await TransactionGetRecordQuery()
///     .setTransactionId(response.transactionId)
///     .execute(client);
///
/// print(record.status);             // SUCCESS
/// print(record.transactionFee);     // fee in tinybars
/// print(record.consensusTimestamp); // DateTime in UTC
/// print(record.transfers);          // list of HBAR transfers
/// ```
class TransactionGetRecordQuery
    extends hedera_query.Query<TransactionRecord, TransactionGetRecordQuery> {
  /// Creates a new [TransactionGetRecordQuery] with default values.
  TransactionGetRecordQuery();

  TransactionId? _transactionId;

  // ---- Setters (fluent API) ----

  /// Sets the transaction ID to query the record for.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// query.setTransactionId(response.transactionId);
  /// ```
  TransactionGetRecordQuery setTransactionId(TransactionId transactionId) {
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
        'TransactionGetRecordQuery requires a transactionId. '
        'Call setTransactionId() first.',
      );
    }

    final protoTxId = _buildProtoTxId();

    final query = query_proto.Query(
      transactionGetRecord: record_proto.TransactionGetRecordQuery(
        header: QueryHeader(),
        transactionID: protoTxId,
      ),
    );

    return Uint8List.fromList(query.writeToBuffer());
  }

  // ---- Execution ----

  /// Executes this query against the Hedera network.
  ///
  /// Polls every 2 seconds until the transaction record is available
  /// or times out after 30 seconds.
  ///
  /// Throws [ArgumentError] if [transactionId] has not been set.
  /// Throws [HederaStatusException] if the transaction failed.
  /// Throws [TimeoutException] if the record is not available in 30 seconds.
  @override
  Future<TransactionRecord> execute(HederaClient client) async {
    if (_transactionId == null) {
      throw ArgumentError(
        'TransactionGetRecordQuery requires a transactionId. '
        'Call setTransactionId() first.',
      );
    }

    const maxAttempts = 15;
    const pollInterval = Duration(seconds: 2);

    final protoTxId = _buildProtoTxId();

    for (var attempt = 0; attempt < maxAttempts; attempt++) {
      await Future<void>.delayed(pollInterval);

      final query = query_proto.Query(
        transactionGetRecord: record_proto.TransactionGetRecordQuery(
          header: QueryHeader(),
          transactionID: protoTxId,
        ),
      );

      final response = await client.cryptoClient.getTxRecordByTxID(query);
      final recordResponse = response.transactionGetRecord;
      final precheckCode = recordResponse.header.nodeTransactionPrecheckCode;

      // Record not yet available - continue polling.
      if (precheckCode == ResponseCodeEnum.UNKNOWN ||
          precheckCode == ResponseCodeEnum.OK) {
        continue;
      }

      // Node rejected the query.
      if (precheckCode != ResponseCodeEnum.OK &&
          precheckCode != ResponseCodeEnum.SUCCESS) {
        throw HederaStatusException(
          HederaStatusCode.fromCode(precheckCode.value),
        );
      }

      final record = recordResponse.transactionRecord;
      final status = record.receipt.status;

      // Transaction failed at consensus.
      if (status != ResponseCodeEnum.SUCCESS && status != ResponseCodeEnum.OK) {
        throw HederaStatusException(
          HederaStatusCode.fromCode(status.value),
        );
      }

      // Build consensus timestamp from Protobuf Timestamp.
      final consensusTimestamp = DateTime.fromMillisecondsSinceEpoch(
        record.consensusTimestamp.seconds.toInt() * 1000 +
            record.consensusTimestamp.nanos ~/ 1000000,
        isUtc: true,
      );

      // Build transaction ID from Protobuf TransactionID.
      final txAccountId = record.transactionID.accountID;
      final txId = TransactionId(
        accountId: '${txAccountId.shardNum}.'
            '${txAccountId.realmNum}.'
            '${txAccountId.accountNum}',
        validStartSeconds:
            record.transactionID.transactionValidStart.seconds.toInt(),
        validStartNanos: record.transactionID.transactionValidStart.nanos,
      );

      // Build HBAR transfer list.
      final transfers = record.transferList.accountAmounts.map((amount) {
        final accountId = '${amount.accountID.shardNum}.'
            '${amount.accountID.realmNum}.'
            '${amount.accountID.accountNum}';
        return <String, dynamic>{
          'accountId': accountId,
          'amount': amount.amount.toInt(),
        };
      }).toList();

      // Extract accountId from receipt if AccountCreateTransaction.
      final accountId = record.receipt.hasAccountID()
          ? AccountId(
              shardNum: record.receipt.accountID.shardNum.toInt(),
              realmNum: record.receipt.accountID.realmNum.toInt(),
              accountNum: record.receipt.accountID.accountNum.toInt(),
            ).toString()
          : null;

      // Extract tokenId from receipt if TokenCreateTransaction.
      final tokenId = record.receipt.hasTokenID()
          ? '${record.receipt.tokenID.shardNum}.'
              '${record.receipt.tokenID.realmNum}.'
              '${record.receipt.tokenID.tokenNum}'
          : null;

      return TransactionRecord(
        transactionId: txId,
        transactionFee: record.transactionFee.toInt(),
        memo: record.memo,
        consensusTimestamp: consensusTimestamp,
        status: status.name,
        accountId: accountId,
        tokenId: tokenId,
        transfers: transfers,
      );
    }

    throw TimeoutException(
      'TransactionGetRecordQuery timed out after '
      '${maxAttempts * 2} seconds. '
      'Transaction ID: $_transactionId',
    );
  }

  // ---- Private helpers ----

  /// Builds a [TransactionID] Protobuf from the stored [_transactionId].
  TransactionID _buildProtoTxId() {
    final parts = _transactionId.toString().split('@');
    final accountParts = parts[0].split('.');
    final timestampParts = parts[1].split('.');

    return TransactionID(
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
  }
}
