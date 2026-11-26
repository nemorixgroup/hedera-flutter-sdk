import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/token_fee_schedule_update.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Replaces the custom fee schedule of a Hedera Token Service (HTS)
/// token.
///
/// The token MUST have been created with a fee schedule key, and that
/// key MUST sign this transaction together with the transaction fee
/// payer. Without a fee schedule key the fees are immutable and the
/// network answers `TOKEN_HAS_NO_FEE_SCHEDULE_KEY`.
///
/// The new list REPLACES the previous schedule; it is not merged. Pass
/// an empty list (or call no fee setter) to remove every custom fee. If
/// the token already has no custom fees, the network answers
/// `CUSTOM_SCHEDULE_ALREADY_HAS_NO_FEES`. A schedule can hold up to 10
/// fees.
///
/// See:
/// https://docs.hedera.com/hedera/sdks-and-apis/sdks/token-service/update-a-fee-schedule
///
/// Example:
/// ```dart
/// final response = await TokenFeeScheduleUpdateTransaction()
///     .setTokenId(tokenId)
///     .addCustomFee(
///       CustomFixedFee()
///           .setFeeCollectorAccountId(collectorId)
///           .setHbarAmount(Hbar(2)),
///     )
///     .signWith(feeSchedulePrivateKey, client)
///     .then((tx) => tx.execute(client));
/// ```
class TokenFeeScheduleUpdateTransaction
    extends Transaction<TokenFeeScheduleUpdateTransaction> {
  /// Creates a new [TokenFeeScheduleUpdateTransaction] with no token
  /// and no fees set.
  TokenFeeScheduleUpdateTransaction();

  TokenId? _tokenId;
  final List<CustomFee> _customFees = [];

  // ---- Setters (fluent API) ----

  /// Sets the token whose fee schedule will be replaced.
  ///
  /// This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenId(tokenId);
  /// ```
  TokenFeeScheduleUpdateTransaction setTokenId(TokenId tokenId) {
    _tokenId = tokenId;
    return this;
  }

  /// Replaces the new fee schedule with [customFees].
  ///
  /// An empty list removes every custom fee from the token.
  ///
  /// Example:
  /// ```dart
  /// transaction.setCustomFees([
  ///   CustomFractionalFee()
  ///       .setFeeCollectorAccountId(collectorId)
  ///       .setNumerator(2)
  ///       .setDenominator(100),
  /// ]);
  /// ```
  TokenFeeScheduleUpdateTransaction setCustomFees(List<CustomFee> customFees) {
    _customFees
      ..clear()
      ..addAll(customFees);
    return this;
  }

  /// Adds one custom fee to the new schedule, keeping the ones already
  /// added.
  ///
  /// Example:
  /// ```dart
  /// transaction.addCustomFee(
  ///   CustomFixedFee()
  ///       .setFeeCollectorAccountId(collectorId)
  ///       .setHbarAmount(Hbar(1)),
  /// );
  /// ```
  TokenFeeScheduleUpdateTransaction addCustomFee(CustomFee customFee) {
    _customFees.add(customFee);
    return this;
  }

  // ---- Getters ----

  /// The token whose fee schedule will be replaced, or null if not set.
  TokenId? get tokenId => _tokenId;

  /// The new custom fees, as an unmodifiable list. Empty means the
  /// schedule will be cleared.
  List<CustomFee> get customFees => List.unmodifiable(_customFees);

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildFeeScheduleUpdateBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenFeeScheduleUpdateTransaction-specific body fields
  /// to [body].
  ///
  /// Throws [ArgumentError] if [tokenId] is not set or if a custom fee
  /// is not fully specified.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenFeeScheduleUpdate = _buildFeeScheduleUpdateBody();
  }

  /// Builds the [TokenFeeScheduleUpdateTransactionBody], validating
  /// required fields and every custom fee.
  TokenFeeScheduleUpdateTransactionBody _buildFeeScheduleUpdateBody() {
    if (_tokenId == null) {
      throw ArgumentError(
        'TokenFeeScheduleUpdateTransaction requires a tokenId. '
        'Call setTokenId() first.',
      );
    }

    // An empty list is valid: it clears the schedule on the network.
    return TokenFeeScheduleUpdateTransactionBody(
      tokenId: _tokenId!.toProto(),
      customFees: _customFees.map((fee) => fee.toProto()),
    );
  }

  /// Executes this transaction via the updateTokenFeeSchedule gRPC
  /// method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).updateTokenFeeSchedule(tx);
  }
}
