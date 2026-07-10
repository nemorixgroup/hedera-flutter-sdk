import 'dart:async';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:hedera_flutter_sdk/src/client/hedera_client.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_constants.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_code.dart';
import 'package:hedera_flutter_sdk/src/core/hedera_status_exception.dart';
import 'package:hedera_flutter_sdk/src/crypto/private_key.dart';
import 'package:hedera_flutter_sdk/src/crypto/public_key.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:hedera_flutter_sdk/src/models/transaction_id.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/crypto_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/duration.pb.dart'
    as hedera_duration;
import 'package:hedera_flutter_sdk/src/proto/query.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/query_header.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/response_code.pbenum.dart';
import 'package:hedera_flutter_sdk/src/proto/timestamp.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart'
    as hedera_transaction;
import 'package:hedera_flutter_sdk/src/proto/transaction_contents.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction_get_receipt.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Base class for all Hedera transactions.
///
/// Every transaction on the Hedera network shares a common set of
/// fields and behaviors defined here. Concrete transaction types
/// extend this class and add their specific fields and logic.
///
/// The generic parameter [T] enables fluent setters to return the
/// concrete subclass type; allowing chaining of base class and
/// subclass setters in any order.
///
/// Example:
/// ```dart
/// final response = await AccountCreateTransaction()
///     .setKey(privateKey.publicKey)
///     .setInitialBalance(Hbar(10))
///     .setMemo('My wallet')
///     .execute(client);
/// ```
abstract class Transaction<T extends Transaction<T>> {
  /// Creates a new transaction with default values.
  Transaction()
      : _memo = '',
        _validDuration = HederaConstants.defaultTransactionValidDurationSeconds,
        _maxTransactionFee = Hbar.fromTinybars(
          HederaConstants.defaultMaxTransactionFeeTinybars,
        ),
        _signatures = {};

  // ---- Fields ----

  /// The node account ID that will process this transaction.
  /// Defaults to [AccountId] 0.0.3 if not set.
  AccountId? _nodeAccountId;

  /// The account ID that will pay the transaction fees.
  /// If not set, the operator account from [HederaClient] is used.
  AccountId? _payerAccountId;

  /// The maximum fee this transaction will pay.
  /// Defaults to [HederaConstants.defaultMaxTransactionFeeTinybars].
  Hbar _maxTransactionFee;

  /// The transaction memo. Maximum [HederaConstants.maxMemoLength] characters.
  String _memo;

  /// The valid duration in seconds for this transaction.
  /// Defaults to [HederaConstants.defaultTransactionValidDurationSeconds].
  int _validDuration;

  /// The transaction ID assigned to this transaction.
  /// If null, a new ID is generated during [execute].
  TransactionId? _transactionId;

  /// The map of public key hex strings to their signatures.
  final Map<String, List<int>> _signatures;

  // ---- Setters (fluent API) ----

  /// Sets the account ID that will pay the transaction fees.
  ///
  /// If not set, the operator account from [HederaClient] is used
  /// as the fee payer by default.
  ///
  /// Use this when a non-operator account needs to pay its own fees.
  ///
  /// Example:
  /// ```dart
  /// transaction.setPayerAccountId(
  ///   AccountId.fromString('0.0.12345'),
  /// );
  /// ```
  T setPayerAccountId(AccountId payerAccountId) {
    _payerAccountId = payerAccountId;
    return this as T;
  }

  /// Sets the account ID of the node that will process this transaction.
  ///
  /// Example:
  /// ```dart
  /// transaction.setNodeAccountId(AccountId.fromString('0.0.3'));
  /// ```
  T setNodeAccountId(AccountId nodeAccountId) {
    _nodeAccountId = nodeAccountId;
    return this as T;
  }

  /// Sets the maximum transaction fee in HBAR.
  ///
  /// Defaults to [HederaConstants.defaultMaxTransactionFeeTinybars].
  ///
  /// Example:
  /// ```dart
  /// transaction.setMaxTransactionFee(Hbar(2));
  /// ```
  T setMaxTransactionFee(Hbar fee) {
    _maxTransactionFee = fee;
    return this as T;
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
  T setMemo(String memo) {
    if (memo.length > HederaConstants.maxMemoLength) {
      throw ArgumentError(
        'Memo exceeds maximum length of '
        '${HederaConstants.maxMemoLength} characters. '
        'Got: ${memo.length}',
      );
    }
    _memo = memo;
    return this as T;
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
  T setValidDuration(int seconds) {
    if (seconds > HederaConstants.maxTransactionValidDurationSeconds) {
      throw ArgumentError(
        'Valid duration exceeds maximum of '
        '${HederaConstants.maxTransactionValidDurationSeconds} seconds. '
        'Got: $seconds',
      );
    }
    _validDuration = seconds;
    return this as T;
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
  T setTransactionId(TransactionId transactionId) {
    _transactionId = transactionId;
    return this as T;
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
  Future<T> sign(PrivateKey privateKey) async {
    final bytes = toBytes();
    final signature = await privateKey.sign(bytes);
    final publicKey = await privateKey.derivePublicKey();
    _signatures[publicKey.toHex()] = signature;
    return this as T;
  }

  /// Signs this transaction with [privateKey] using the correct
  /// TransactionBody bytes built for [client].
  ///
  /// Use this method when a non-operator account needs to authorize
  /// the transaction. Unlike [sign], this method ensures the signature
  /// covers the complete TransactionBody that will be submitted.
  ///
  /// Example:
  /// ```dart
  /// final tx = await transfer.signWith(alicePrivateKey, client);
  /// final response = await tx.execute(client);
  /// ```
  Future<T> signWith(PrivateKey privateKey, HederaClient client) async {
    final bodyBytes = _buildBodyBytes(client);
    final signature = await privateKey.sign(bodyBytes);
    final publicKey = await privateKey.derivePublicKey();
    _signatures[publicKey.toHex()] = signature;
    return this as T;
  }

  /// Adds a signature from an external signer.
  ///
  /// Use when the signing happens outside the SDK.
  ///
  /// Example:
  /// ```dart
  /// transaction.addSignature(publicKey, signature);
  /// ```
  T addSignature(PublicKey publicKey, List<int> signature) {
    _signatures[publicKey.toHex()] = signature;
    return this as T;
  }

  /// Signs this transaction with the client operator key.
  ///
  /// Example:
  /// ```dart
  /// await transaction.signWithOperator(client);
  /// ```
  Future<T> signWithOperator(HederaClient client) async {
    final operatorKey = client.operatorPrivateKey;
    if (operatorKey == null) {
      throw const HederaStatusException(
        HederaStatusCode.invalidSignature,
      );
    }
    return sign(operatorKey);
  }

  // ---- Transaction body construction ----

  /// Applies the specific transaction body fields to [body].
  ///
  /// Each subclass implements this to set its specific field on the
  /// [hedera_transaction.TransactionBody], for example
  /// `body.cryptoCreateAccount = ...`.
  void applyToBody(hedera_transaction.TransactionBody body);

  /// Builds a complete [hedera_transaction.TransactionBody] for this
  /// transaction, including the transaction ID, node account ID,
  /// transaction fee, valid duration, memo, and the specific body
  /// fields set by [applyToBody].
  ///
  /// The operator account ID from [client] is used to generate the
  /// transaction ID. If no node account ID is set, defaults to
  /// `0.0.3` (Hedera testnet node).
  ///
  /// Throws [ArgumentError] if the client has no operator account ID.
  hedera_transaction.TransactionBody buildBody(HederaClient client) {
    final operatorId = client.operatorAccountId;
    if (operatorId == null) {
      throw ArgumentError(
        'HederaClient requires an operator account ID. '
        'Call client.setOperator() first.',
      );
    }
    final now = DateTime.now();
    final seconds = now.millisecondsSinceEpoch ~/ 1000;
    final nanos = (now.millisecondsSinceEpoch % 1000) * 1000000;
    final body = hedera_transaction.TransactionBody(
      transactionID: TransactionID(
        accountID: (_payerAccountId ?? operatorId).toProto(),
        transactionValidStart: Timestamp(
          seconds: Int64(seconds),
          nanos: nanos,
        ),
      ),
      nodeAccountID: (nodeAccountId ?? AccountId.fromString('0.0.3')).toProto(),
      transactionFee: Int64(maxTransactionFee.toTinybars()),
      transactionValidDuration: hedera_duration.Duration(
        seconds: Int64(validDuration),
      ),
      memo: memo,
    );
    applyToBody(body);
    return body;
  }

  /// The cached serialized TransactionBody bytes.
  /// Built once on the first call to [_buildBodyBytes] and reused
  /// across [signWith] and [execute] to guarantee byte consistency.
  Uint8List? _builtBodyBytes;

  Uint8List _buildBodyBytes(HederaClient client) {
    _builtBodyBytes ??= buildBody(client).writeToBuffer();
    return _builtBodyBytes!;
  }

  /// Builds a [SignedTransaction] ready for gRPC submission.
  ///
  /// Serializes the [hedera_transaction.TransactionBody] built by
  /// [buildBody] into bytes, then wraps them with the current
  /// signature map into a [SignedTransaction].
  ///
  /// Must be called after [sign] or [signWithOperator] to include
  /// valid signatures. If no signatures have been added, the
  /// [SignedTransaction] will have an empty signature map.
  ///
  /// Throws [ArgumentError] if the client has no operator account ID.
  SignedTransaction buildSignedTransaction(HederaClient client) {
    final bodyBytes = _buildBodyBytes(client);

    final sigPairs = _signatures.entries.map((entry) {
      final pubKeyHex = entry.key;
      final signatureBytes = entry.value;
      final pubKeyBytes = _hexToBytes(pubKeyHex);

      return SignaturePair(
        pubKeyPrefix: pubKeyBytes,
        ed25519: signatureBytes,
      );
    }).toList();

    return SignedTransaction(
      bodyBytes: bodyBytes,
      sigMap: SignatureMap(sigPair: sigPairs),
    );
  }

  /// Converts a hex string to a list of bytes.
  static List<int> _hexToBytes(String hex) {
    final result = <int>[];
    for (var i = 0; i < hex.length; i += 2) {
      result.add(int.parse(hex.substring(i, i + 2), radix: 16));
    }
    return result;
  }

  // ---- Execution ----

  /// Executes this transaction via gRPC using the given
  /// [CryptoServiceClient].
  ///
  /// Each subclass routes the transaction to the correct gRPC
  /// method — for example AccountCreateTransaction calls
  /// `client.createAccount()`.
  ///
  /// Throws [HederaStatusException] if the node returns a
  /// non-OK precheck code.
  /// Returns the [TransactionResponse] Protobuf from the node.
  Future<hedera_response.TransactionResponse> executeGrpc(
    CryptoServiceClient cryptoClient,
    hedera_transaction.Transaction tx,
  );

  /// Executes this transaction on the Hedera network.
  ///
  /// Signs with the operator key if no signatures have been added,
  /// builds the signed transaction envelope, and submits it via gRPC.
  ///
  /// Throws [ArgumentError] if the client has no operator.
  /// Throws [HederaStatusException] if the node rejects the transaction.
  ///
  /// Example:
  /// ```dart
  /// final response = await AccountCreateTransaction()
  ///     .setKey(publicKey)
  ///     .setInitialBalance(Hbar(10))
  ///     .execute(client);
  /// ```
  Future<TransactionResponse> execute(HederaClient client) async {
    // 1. Build complete TransactionBody
    final bodyBytes = _buildBodyBytes(client);

    // 2. Sign bodyBytes
    if (!isSigned) {
      final operatorKey = client.operatorPrivateKey;
      if (operatorKey == null) {
        throw const HederaStatusException(
          HederaStatusCode.invalidSignature,
        );
      }
      final signature = await operatorKey.sign(bodyBytes);
      final publicKey = await operatorKey.derivePublicKey();
      _signatures[publicKey.toHex()] = signature;
    }

    // 3. Build SignedTransaction
    final sigPairs = _signatures.entries.map((entry) {
      return SignaturePair(
        pubKeyPrefix: _hexToBytes(entry.key),
        ed25519: entry.value,
      );
    }).toList();

    final signedTx = SignedTransaction(
      bodyBytes: bodyBytes,
      sigMap: SignatureMap(sigPair: sigPairs),
    );

    final grpcTx = hedera_transaction.Transaction(
      signedTransactionBytes: signedTx.writeToBuffer(),
    );

    // 4. Execute and check precheck code
    final grpcResponse = await executeGrpc(client.cryptoClient, grpcTx);

    final precheckCode = grpcResponse.nodeTransactionPrecheckCode;
    if (precheckCode != ResponseCodeEnum.OK) {
      throw HederaStatusException(
        HederaStatusCode.fromCode(precheckCode.value),
      );
    }

    final builtBody =
        hedera_transaction.TransactionBody.fromBuffer(_builtBodyBytes!);

    final txAccountId = builtBody.transactionID.accountID;
    final txId = _transactionId ??
        TransactionId(
          accountId: '${txAccountId.shardNum}.'
              '${txAccountId.realmNum}.'
              '${txAccountId.accountNum}',
          validStartSeconds:
              builtBody.transactionID.transactionValidStart.seconds.toInt(),
          validStartNanos: builtBody.transactionID.transactionValidStart.nanos,
        );

    return TransactionResponse(transactionId: txId);
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
  /// Polls the network every 2 seconds until the transaction reaches
  /// consensus or times out after 30 seconds.
  ///
  /// Throws [HederaStatusException] if the transaction fails.
  /// Throws [TimeoutException] if consensus is not reached in 30 seconds.
  Future<TransactionReceipt> getReceipt(HederaClient client) async {
    const maxAttempts = 15;
    const pollInterval = Duration(seconds: 2);

    final parts = transactionId.toString().split('@');
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

      final query = Query(
        transactionGetReceipt: TransactionGetReceiptQuery(
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

      final isSuccess =
          status == ResponseCodeEnum.OK || status == ResponseCodeEnum.SUCCESS;

      if (!isSuccess) {
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
      'getReceipt timed out after ${maxAttempts * 2} seconds. '
      'Transaction ID: $transactionId',
    );
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
/// Contains the transaction fee, consensus timestamp, memo,
/// transfer list, and the receipt with the final status.
///
/// Obtain via TransactionResponse.getRecord or
/// TransactionGetRecordQuery.execute.
class TransactionRecord {
  /// Creates a [TransactionRecord] with the given fields.
  const TransactionRecord({
    required this.transactionId,
    required this.transactionFee,
    required this.memo,
    required this.consensusTimestamp,
    required this.status,
    this.accountId,
    this.tokenId,
    this.transfers = const [],
  });

  /// The transaction ID.
  final TransactionId transactionId;

  /// The transaction fee charged in tinybars.
  final int transactionFee;

  /// The transaction memo.
  final String memo;

  /// The consensus timestamp in UTC.
  final DateTime consensusTimestamp;

  /// The final status of the transaction (e.g. SUCCESS).
  final String status;

  /// The account ID created by an AccountCreateTransaction; if applicable.
  final String? accountId;

  /// The token ID created by a TokenCreateTransaction; if applicable.
  final String? tokenId;

  /// The list of HBAR transfers executed by this transaction.
  /// Each entry is a map with 'accountId' and 'amount' (in tinybars).
  final List<Map<String, dynamic>> transfers;

  @override
  String toString() => 'TransactionRecord(transactionId: $transactionId; '
      'fee: $transactionFee tinybars; status: $status)';
}
