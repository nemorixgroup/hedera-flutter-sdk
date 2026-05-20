import 'package:hedera_flutter_sdk/src/core/hedera_status_code.dart';

/// Thrown when a Hedera transaction or query returns
/// a non-successful status code.
///
/// Example:
/// ```dart
/// try {
///   await transaction.execute(client);
/// } on HederaStatusException catch (e) {
///   print(e.statusCode); // Status.insufficientAccountBalance
///   print(e.toString()); // HederaStatusException: INSUFFICIENT_ACCOUNT_BALANCE (18)
/// }
/// ```
class HederaStatusException implements Exception {
  /// Creates a [HederaStatusException] with the given status code.
  const HederaStatusException(this.statusCode);

  /// The status code returned by the Hedera network.
  final HederaStatusCode statusCode;

  @override
  String toString() =>
      'HederaStatusException: ${statusCode.name} (${statusCode.code})';
}
