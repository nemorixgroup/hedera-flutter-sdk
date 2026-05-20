import 'package:meta/meta.dart';

/// Represents a Hedera network status code returned after
/// executing a transaction or query.
///
/// Status codes are defined in the Hedera HAPI Protobuf
/// definitions: response_code.proto
///
/// Example:
/// ```dart
/// final status = HederaStatusCode.fromCode(18);
/// print(status.name); // INSUFFICIENT_ACCOUNT_BALANCE
/// ```
@immutable
class HederaStatusCode {
  /// Creates a [HederaStatusCode] with the given code and name.
  const HederaStatusCode._(this.code, this.name);

  /// Creates a [HederaStatusCode] from a raw integer code.
  ///
  /// Returns [HederaStatusCode.unknown] if the code is not recognized.
  factory HederaStatusCode.fromCode(int code) {
    return _statusCodes[code] ?? HederaStatusCode._(code, 'UNKNOWN_STATUS');
  }

  /// The raw integer status code from the Hedera network.
  final int code;

  /// The human-readable name of the status code.
  final String name;

  // - Common status codes ------------------------------------
  // Source: Hedera HAPI response_code.proto

  /// Transaction completed successfully.
  static const success = HederaStatusCode._(22, 'SUCCESS');

  /// The account balance is not sufficient to pay fees.
  static const insufficientAccountBalance =
      HederaStatusCode._(18, 'INSUFFICIENT_ACCOUNT_BALANCE');

  /// The payer account does not have sufficient funds.
  static const insufficientPayerBalance =
      HederaStatusCode._(10, 'INSUFFICIENT_PAYER_BALANCE');

  /// The transaction signature is invalid.
  static const invalidSignature = HederaStatusCode._(7, 'INVALID_SIGNATURE');

  /// The account does not exist or has been deleted.
  static const invalidAccountId = HederaStatusCode._(15, 'INVALID_ACCOUNT_ID');

  /// The token is not associated with the account.
  static const tokenNotAssociatedToAccount =
      HederaStatusCode._(184, 'TOKEN_NOT_ASSOCIATED_TO_ACCOUNT');

  /// The account has not been granted KYC for the token.
  static const accountKycNotGrantedForToken =
      HederaStatusCode._(181, 'ACCOUNT_KYC_NOT_GRANTED_FOR_TOKEN');

  /// The account is frozen for the token.
  static const accountFrozenForToken =
      HederaStatusCode._(178, 'ACCOUNT_FROZEN_FOR_TOKEN');

  /// The token is paused and all operations are suspended.
  static const tokenIsPaused = HederaStatusCode._(260, 'TOKEN_IS_PAUSED');

  /// The transaction has expired.
  static const transactionExpired =
      HederaStatusCode._(4, 'TRANSACTION_EXPIRED');

  /// The token ID is invalid or does not exist.
  static const invalidTokenId = HederaStatusCode._(150, 'INVALID_TOKEN_ID');

  /// Unknown status code not recognized by this SDK version.
  static const unknown = HederaStatusCode._(0, 'UNKNOWN_STATUS');

  // - Internal lookup map ------------------------------------
  static const Map<int, HederaStatusCode> _statusCodes = {
    22: success,
    18: insufficientAccountBalance,
    10: insufficientPayerBalance,
    7: invalidSignature,
    15: invalidAccountId,
    184: tokenNotAssociatedToAccount,
    181: accountKycNotGrantedForToken,
    178: accountFrozenForToken,
    260: tokenIsPaused,
    4: transactionExpired,
    150: invalidTokenId,
  };

  @override
  String toString() => name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is HederaStatusCode && code == other.code;

  @override
  int get hashCode => code.hashCode;
}
