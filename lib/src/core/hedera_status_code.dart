import 'package:hedera_flutter_sdk/src/proto/response_code.pbenum.dart';
import 'package:meta/meta.dart';

/// Represents a Hedera network status code returned after
/// executing a transaction or query.
///
/// Status codes are defined in the Hedera HAPI Protobuf
/// definitions: response_code.proto
///
/// This class exposes named constants for the most common codes. Any
/// other code returned by the network is resolved through the
/// generated `ResponseCodeEnum`, so [name] shows the official status
/// name instead of a generic placeholder.
///
/// Example:
/// ```dart
/// final status = HederaStatusCode.fromCode(28);
/// print(status.name); // INSUFFICIENT_ACCOUNT_BALANCE
/// ```
@immutable
class HederaStatusCode {
  /// Creates a [HederaStatusCode] with the given code and name.
  const HederaStatusCode._(this.code, this.name);

  /// Creates a [HederaStatusCode] from a raw integer code.
  ///
  /// Codes with a named constant in this class return that constant.
  /// Any other code is resolved by name through the generated
  /// protobuf `ResponseCodeEnum`. If the code is not defined there
  /// either, the result keeps the original [code] and uses the name
  /// `UNKNOWN_STATUS`.
  factory HederaStatusCode.fromCode(int code) {
    // Prefer the named constant when there is one
    final known = _statusCodes[code];
    if (known != null) {
      return known;
    }

    // Fall back to the official name from the generated protobuf enum
    final proto = ResponseCodeEnum.valueOf(code);
    return HederaStatusCode._(code, proto?.name ?? 'UNKNOWN_STATUS');
  }

  /// The raw integer status code from the Hedera network.
  final int code;

  /// The human-readable name of the status code.
  final String name;

  // - Common status codes ------------------------------------
  // Source: Hedera HAPI response_code.proto

  /// Transaction completed successfully.
  static const success = HederaStatusCode._(22, 'SUCCESS');

  /// The transaction fee set by the payer is not sufficient.
  static const insufficientTxFee = HederaStatusCode._(9, 'INSUFFICIENT_TX_FEE');

  /// The account balance is not sufficient to pay fees.
  static const insufficientAccountBalance =
      HederaStatusCode._(28, 'INSUFFICIENT_ACCOUNT_BALANCE');

  /// The payer account does not have sufficient funds.
  static const insufficientPayerBalance =
      HederaStatusCode._(10, 'INSUFFICIENT_PAYER_BALANCE');

  /// The transaction signature is invalid.
  static const invalidSignature = HederaStatusCode._(7, 'INVALID_SIGNATURE');

  /// The account does not exist or has been deleted.
  static const invalidAccountId = HederaStatusCode._(15, 'INVALID_ACCOUNT_ID');

  /// The account has been deleted.
  static const accountDeleted = HederaStatusCode._(72, 'ACCOUNT_DELETED');

  /// The token is not associated with the account.
  static const tokenNotAssociatedToAccount =
      HederaStatusCode._(184, 'TOKEN_NOT_ASSOCIATED_TO_ACCOUNT');

  /// The account has not been granted KYC for the token.
  static const accountKycNotGrantedForToken =
      HederaStatusCode._(176, 'ACCOUNT_KYC_NOT_GRANTED_FOR_TOKEN');

  /// The account is frozen for the token.
  static const accountFrozenForToken =
      HederaStatusCode._(165, 'ACCOUNT_FROZEN_FOR_TOKEN');

  /// The token balance is not sufficient for the transaction.
  static const insufficientTokenBalance =
      HederaStatusCode._(178, 'INSUFFICIENT_TOKEN_BALANCE');

  /// The token has no freeze key.
  static const tokenHasNoFreezeKey =
      HederaStatusCode._(172, 'TOKEN_HAS_NO_FREEZE_KEY');

  /// The token has no KYC key.
  static const tokenHasNoKycKey =
      HederaStatusCode._(177, 'TOKEN_HAS_NO_KYC_KEY');

  /// The token has no supply key.
  static const tokenHasNoSupplyKey =
      HederaStatusCode._(180, 'TOKEN_HAS_NO_SUPPLY_KEY');

  /// The token has been deleted.
  static const tokenWasDeleted = HederaStatusCode._(179, 'TOKEN_WAS_DELETED');

  /// The token is paused and all operations are suspended.
  static const tokenIsPaused = HederaStatusCode._(265, 'TOKEN_IS_PAUSED');

  /// The transaction has expired.
  static const transactionExpired =
      HederaStatusCode._(4, 'TRANSACTION_EXPIRED');

  /// The token ID is invalid or does not exist.
  static const invalidTokenId = HederaStatusCode._(167, 'INVALID_TOKEN_ID');

  /// Unknown status code not recognized by this SDK version.
  static const unknown = HederaStatusCode._(0, 'UNKNOWN_STATUS');

  // - Internal lookup map ------------------------------------
  static const Map<int, HederaStatusCode> _statusCodes = {
    22: success,
    9: insufficientTxFee,
    28: insufficientAccountBalance,
    10: insufficientPayerBalance,
    7: invalidSignature,
    15: invalidAccountId,
    72: accountDeleted,
    184: tokenNotAssociatedToAccount,
    176: accountKycNotGrantedForToken,
    165: accountFrozenForToken,
    178: insufficientTokenBalance,
    172: tokenHasNoFreezeKey,
    177: tokenHasNoKycKey,
    180: tokenHasNoSupplyKey,
    179: tokenWasDeleted,
    265: tokenIsPaused,
    4: transactionExpired,
    167: invalidTokenId,
  };

  @override
  String toString() => name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is HederaStatusCode && code == other.code;

  @override
  int get hashCode => code.hashCode;
}
