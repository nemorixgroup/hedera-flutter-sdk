/// Represents a Hedera public key derived from a PrivateKey.
///
/// Public keys can be safely shared and are used to verify
/// transaction signatures.
///
/// Example:
/// ```dart
/// final privateKey = PrivateKey.generateED25519();
/// final publicKey = privateKey.publicKey;
/// print(publicKey.toString()); // 302a300506032b6570...
/// ```
class PublicKey {
  /// Creates a [PublicKey] from raw bytes and type.
  PublicKey(this._keyBytes, this.type);

  /// Creates a [PublicKey] from a DER-encoded hex string.
  ///
  /// Throws [FormatException] if the string is not a valid public key.
  // TODO(Phase2): Implement DER parsing
  static PublicKey fromString(String value) {
    throw UnimplementedError('PublicKey.fromString; Phase 2');
  }

  /// The raw public key bytes.
  final List<int> _keyBytes;

  /// The key type; ED25519 or ECDSA.
  final PublicKeyType type;

  /// Returns the raw public key bytes.
  List<int> get bytes => List.unmodifiable(_keyBytes);

  /// Returns the DER-encoded hex string representation.
  // TODO(Phase2): Encode bytes to DER hex
  @override
  String toString() {
    throw UnimplementedError('PublicKey.toString; Phase 2');
  }
}

/// The cryptographic algorithm used for a public key.
enum PublicKeyType {
  /// Edwards-curve Digital Signature Algorithm.
  ed25519,

  /// Elliptic Curve Digital Signature Algorithm; EVM compatible.
  ecdsa,
}
