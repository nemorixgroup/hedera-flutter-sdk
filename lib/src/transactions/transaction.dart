import 'dart:typed_data';

import 'package:hedera_flutter_sdk/src/client/hedera_client.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_constants.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_code.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_exception.dart';
import 'package:hedera_flutter_sdk/src/crypto/private_key.dart';
import 'package:hedera_flutter_sdk/src/crypto/public_key.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/models/transaction_id.dart';

/// Base class for all Hedera transactions.
///
/// Every transaction on the Hedera network shares a common set of
/// fields and behaviors defined here. Concrete transaction types
/// extend this class and add their specific fields and logic.
///
/// Example:
/// ```dart
/// final response = await AccountCreateTransaction()
///     .setKey(privateKey.publicKey)
///     .setInitialBalance(Hbar(10))
///     .setMemo('My wallet')
///     .execute(client);
/// ```
abstract class Transaction {
  /// Creates a new transaction with default values.
  Transaction()
      : _memo = '',
        _validDuration = HederaConstants.defaultTransactionValidDurationSeconds,
        _maxTransactionFee = Hbar.fromTinybars(
          HederaConstants.defaultMaxTransactionFeeTinybars,
        ),
        _signatures = {};

  // ---- Fields ----

  AccountId? _nodeAccountId;
  Hbar _maxTransactionFee;
  String _memo;
  int _validDuration;
  TransactionId? _transactionId;
  final Map<String, List<int>> _signatures;

  // ---- Setters (fluent API) ----

  /// Sets the account ID of the node that will process this transaction.
  ///
  /// Example:
  /// ```dart
  /// transaction.setNodeAccountId(AccountId.fromString('0.0.3'));
  /// ```
  Transaction setNodeAccountId(AccountId nodeAccountId) {
    _nodeAccountId = nodeAccountId;
    return this;
  }

  /// Sets the maximum transaction fee in HBAR.
  ///
  /// Defaults to [HederaConstants.defaultMaxTransactionFeeTinybars].
  ///
  /// Example:
  /// ```dart
  /// transaction.setMaxTransactionFee(Hbar(2));
  /// ```
  Transaction setMaxTransactionFee(Hbar fee) {
    _maxTransactionFee = fee;
    return this;
  }

  /// Sets the transaction memo.
  ///
  /// Maximum [HederaConstants.maxMemoLength] characters.
  ///
  /// Throws [ArgumentError] if memo exceeds maximum length.
  ///
  /// Example:
  /// ```dart
  /// transaction.setMemo('NemorixPay transfer');
  /// ```
  Transaction setMemo(String memo) {
    if (memo.length > HederaConstants.maxMemoLength) {
      throw ArgumentError(
        'Memo exceeds maximum length of '
        '${HederaConstants.maxMemoLength} characters. '
        'Got: ${memo.length}',
      );
    }
    _memo = memo;
    return this;
  }

  /// Sets the valid duration in seconds.
  ///
  /// Defaults to [HederaConstants.defaultTransactionValidDurationSeconds].
  /// Maximum [HederaConstants.maxTransactionValidDurationSeconds].
  ///
  /// Throws [ArgumentError] if duration exceeds maximum.
  ///
  /// Example:
  /// ```dart
  /// transaction.setValidDuration(120);
  /// ```
  Transaction setValidDuration(int seconds) {
    if (seconds > HederaConstants.maxTransactionValidDurationSeconds) {
      throw ArgumentError(
        'Valid duration exceeds maximum of '
        '${HederaConstants.maxTransactionValidDurationSeconds} seconds. '
        'Got: $seconds',
      );
    }
    _validDuration = seconds;
    return this;
  }

  /// Sets the transaction ID.
  ///
  /// If not set; the transaction ID is generated automatically
  /// from the operator account when executed.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTransactionId(
  ///   TransactionId.fromString('0.0.12345@1706745600.0')
  /// );
  /// ```
  Transaction setTransactionId(TransactionId transactionId) {
    _transactionId = transactionId;
    return this;
  }

  // ---- Getters ----

  /// The node account ID for this transaction.
  AccountId? get nodeAccountId => _nodeAccountId;

  /// The maximum transaction fee.
  Hbar get maxTransactionFee => _maxTransactionFee;

  /// The transaction memo.
  String get memo => _memo;

  /// The valid duration in seconds.
  int get validDuration => _validDuration;

  /// The transaction ID.
  TransactionId? get transactionId => _transactionId;

  // ---- Signing ----

  /// Signs this transaction with the given private key.
  ///
  /// Example:
  /// ```dart
  /// await transaction.sign(privateKey);
  /// ```
  Future<Transaction> sign(PrivateKey privateKey) async {
    final bytes = toBytes();
    final signature = await privateKey.sign(bytes);
    final publicKey = await privateKey.derivePublicKey();
    _signatures[publicKey.toHex()] = signature;
    return this;
  }

  /// Adds a signature from an external signer.
  ///
  /// Use when the signing happens outside the SDK.
  ///
  /// Example:
  /// ```dart
  /// transaction.addSignature(publicKey, signature);
  /// ```
  Transaction addSignature(PublicKey publicKey, List<int> signature) {
    _signatures[publicKey.toHex()] = signature;
    return this;
  }

  /// Signs this transaction with the client operator key.
  ///
  /// Example:
  /// ```dart
  /// await transaction.signWithOperator(client);
  /// ```
  Future<Transaction> signWithOperator(HederaClient client) async {
    final operatorKey = client.operatorPrivateKey;
    if (operatorKey == null) {
      throw const HederaStatusException(
        HederaStatusCode.invalidSignature,
      );
    }
    return sign(operatorKey);
  }
  // ---- Execution ----

  /// Executes this transaction on the Hedera network.
  ///
  /// Signs with the operator key if no signatures have been added.
  ///
  /// Example:
  /// ```dart
  /// final response = await transaction.execute(client);
  /// ```
  // TODO(Phase2): Implement gRPC execution via HederaClient
  Future<TransactionResponse> execute(HederaClient client) async {
    throw UnimplementedError('Transaction.execute; Phase 2');
  }

  // ---- Serialization ----

  /// Serializes this transaction to bytes for signing or submission.
  ///
  /// Each transaction subclass must implement this method.
  Uint8List toBytes();

  /// Returns the number of signatures added to this transaction.
  int get signatureCount => _signatures.length;

  /// Returns true if this transaction has been signed.
  bool get isSigned => _signatures.isNotEmpty;
}

/// Response returned after submitting a transaction to Hedera.
///
/// Use [getReceipt] to wait for consensus and get the final result.
///
/// Example:
/// ```dart
/// final response = await transaction.execute(client);
/// final receipt = await response.getReceipt(client);
/// print(receipt.status); // SUCCESS
/// ```
class TransactionResponse {
  /// Creates a [TransactionResponse] with the given transaction ID.
  const TransactionResponse({
    required this.transactionId,
  });

  /// The transaction ID assigned by the network.
  final TransactionId transactionId;

  /// Waits for consensus and returns the transaction receipt.
  ///
  /// Polls the network until the transaction reaches consensus
  /// or throws [HederaStatusException] on failure.
  // TODO(Phase2): Implement receipt polling via gRPC
  Future<TransactionReceipt> getReceipt(HederaClient client) async {
    throw UnimplementedError('TransactionResponse.getReceipt; Phase 2');
  }

  /// Returns the full transaction record including fees and transfers.
  // TODO(Phase2): Implement record retrieval via gRPC
  Future<TransactionRecord> getRecord(HederaClient client) async {
    throw UnimplementedError('TransactionResponse.getRecord; Phase 2');
  }

  @override
  String toString() => 'TransactionResponse(transactionId: $transactionId)';
}

/// The receipt of a completed Hedera transaction.
///
/// Contains the final status and any created entity IDs.
class TransactionReceipt {
  /// Creates a [TransactionReceipt] with the given fields.
  const TransactionReceipt({
    required this.status,
    this.accountId,
    this.tokenId,
  });

  /// The final status of the transaction.
  final String status;

  /// The account ID created by an AccountCreateTransaction; if applicable.
  final String? accountId;

  /// The token ID created by a TokenCreateTransaction; if applicable.
  final String? tokenId;

  @override
  String toString() => 'TransactionReceipt(status: $status)';
}

/// The full record of a completed Hedera transaction.
///
/// Contains fees; transfers; and other details.
class TransactionRecord {
  /// Creates a [TransactionRecord] with the given fields.
  const TransactionRecord({
    required this.transactionId,
    required this.transactionFee,
    required this.memo,
  });

  /// The transaction ID.
  final TransactionId transactionId;

  /// The transaction fee charged in tinybars.
  final int transactionFee;

  /// The transaction memo.
  final String memo;

  @override
  String toString() => 'TransactionRecord(transactionId: $transactionId; '
      'fee: $transactionFee tinybars)';
}
