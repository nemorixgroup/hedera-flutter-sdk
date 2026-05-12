import 'package:hedera_flutter_sdk/src/crypto/public_key.dart';

/// Represents a Hedera private key used for signing transactions.
///
/// Supports ED25519 and ECDSA secp256k1 key types.
///
/// Example:
/// ```dart
/// final privateKey = PrivateKey.generateED25519();
/// final publicKey = privateKey.publicKey;
/// final imported = PrivateKey.fromString('302e...');
/// ```
class PrivateKey {
  /// Creates a [PrivateKey] from raw bytes and type.
  PrivateKey._(this._keyBytes, this.type);

  /// The raw key bytes.
  final List<int> _keyBytes;

  /// The key type; ED25519 or ECDSA.
  final PrivateKeyType type;

  /// Generates a new ED25519 private key.
  ///
  /// ED25519 is the recommended key type for Hedera accounts.
  ///
  /// Example:
  /// ```dart
  /// final key = PrivateKey.generateED25519();
  /// ```
  // TODO(Phase2): Implement using pointycastle
  static PrivateKey generateED25519() {
    throw UnimplementedError('ED25519 key generation; Phase 2');
  }

  /// Generates a new ECDSA secp256k1 private key.
  ///
  /// Use when EVM wallet compatibility is required.
  ///
  /// Example:
  /// ```dart
  /// final key = PrivateKey.generateECDSA();
  /// ```
  // TODO(Phase2): Implement using pointycastle
  static PrivateKey generateECDSA() {
    throw UnimplementedError('ECDSA key generation; Phase 2');
  }

  /// Creates a [PrivateKey] from a DER-encoded hex string.
  ///
  /// Example:
  /// ```dart
  /// final key = PrivateKey.fromString('302e020100300506032b657004220420...');
  /// ```
  ///
  /// Throws [FormatException] if the string is not a valid private key.
  // TODO(Phase2): Implement DER parsing
  static PrivateKey fromString(String value) {
    throw UnimplementedError('PrivateKey.fromString; Phase 2');
  }

  /// Returns the [PublicKey] corresponding to this private key.
  // TODO(Phase2): Derive public key from private key bytes
  PublicKey get publicKey {
    throw UnimplementedError('publicKey derivation; Phase 2');
  }

  /// Returns the raw key bytes.
  List<int> get bytes => List.unmodifiable(_keyBytes);

  /// Private keys are never exposed via toString for security reasons.
  @override
  String toString() => '[PrivateKey: ${type.name}]';
}

/// The cryptographic algorithm used for a key.
enum PrivateKeyType {
  /// Edwards-curve Digital Signature Algorithm; recommended for Hedera.
  ed25519,

  /// Elliptic Curve Digital Signature Algorithm; EVM compatible.
  ecdsa,
}
