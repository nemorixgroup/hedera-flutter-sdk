import 'dart:io';

import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// Helper for integration tests that require a real Hedera testnet
/// connection.
///
/// Reads operator credentials from environment variables:
/// - `HEDERA_OPERATOR_ID`: the operator account ID (e.g. 0.0.12345)
/// - `HEDERA_OPERATOR_KEY`: the operator private key (DER or hex)
///
/// Set these variables before running integration tests:
/// ```sh
/// set HEDERA_OPERATOR_ID=0.0.12345
/// set HEDERA_OPERATOR_KEY=302e...
/// flutter test test/integration
/// ```
class IntegrationTestHelper {
  IntegrationTestHelper._();

  /// Returns true if the required environment variables are set.
  static bool get hasCredentials =>
      Platform.environment['HEDERA_OPERATOR_ID'] != null &&
      Platform.environment['HEDERA_OPERATOR_KEY'] != null;

  /// The operator account ID from environment variables.
  ///
  /// Throws [StateError] if HEDERA_OPERATOR_ID is not set.
  static AccountId get operatorId {
    final id = Platform.environment['HEDERA_OPERATOR_ID'];
    if (id == null) {
      throw StateError(
        'HEDERA_OPERATOR_ID environment variable is not set. '
        'Set it before running integration tests.',
      );
    }
    return AccountId.fromString(id);
  }

  /// The operator private key from environment variables.
  ///
  /// Throws [StateError] if HEDERA_OPERATOR_KEY is not set.
  static PrivateKey get operatorKey {
    final key = Platform.environment['HEDERA_OPERATOR_KEY'];
    if (key == null) {
      throw StateError(
        'HEDERA_OPERATOR_KEY environment variable is not set. '
        'Set it before running integration tests.',
      );
    }
    return PrivateKey.fromString(key);
  }

  /// Returns a [HederaClient] configured for testnet with the
  /// operator credentials from environment variables.
  ///
  /// Throws [StateError] if credentials are not set.
  static HederaClient buildClient() {
    return HederaClient.forTestnet().setOperator(
      operatorId,
      operatorKey,
    );
  }
}
