import 'dart:typed_data';

import 'package:cryptography/cryptography.dart' as crypto;
import 'package:hedera_flutter_sdk/src/core/hedera_constants.dart';

/// Represents a Hedera public key derived from a PrivateKey.
///
/// Public keys can be safely shared and are used to verify
/// transaction signatures on the Hedera network.
///
/// Example:
/// ```dart
/// final privateKey = await PrivateKey.generateED25519();
/// final publicKey = privateKey.publicKey;
/// print(publicKey.toHex());
/// final isValid = await publicKey.verify(
///   message: [1, 2, 3],
///   signature: signature,
/// );
/// ```
class PublicKey {
  PublicKey._(this._keyBytes, this.type);

  // ---- Constructors ----

  /// Creates a [PublicKey] from raw bytes.
  ///
  /// [type] defaults to [PublicKeyType.ed25519].
  ///
  /// Throws [ArgumentError] if bytes length is not 32.
  ///
  /// Example:
  /// ```dart
  /// final publicKey = PublicKey.fromBytes(bytes);
  /// ```
  factory PublicKey.fromBytes(
    List<int> bytes, {
    PublicKeyType type = PublicKeyType.ed25519,
  }) {
    if (bytes.length != 32) {
      throw ArgumentError(
        'Public key must be 32 bytes. Got: ${bytes.length}',
      );
    }
    return PublicKey._(Uint8List.fromList(bytes), type);
  }

  /// Creates a [PublicKey] from a DER-encoded or raw hex string.
  ///
  /// Accepts raw 32-byte hex (64 hex chars) or
  /// DER-encoded hex (starts with 302a or 3036).
  ///
  /// Throws [FormatException] if the string is not a valid public key.
  ///
  /// Example:
  /// ```dart
  /// final key = PublicKey.fromString('302a300506032b6570032100...');
  /// ```
  factory PublicKey.fromString(String value) {
    final hex = value.trim().toLowerCase();

    // DER-encoded ED25519 public key prefix: 302a300506032b6570032100
    if (hex.startsWith(HederaConstants.ed25519PublicKeyPrefix) &&
        hex.length == 88) {
      final rawHex = hex.substring(
        HederaConstants.ed25519PublicKeyPrefix.length,
      );
      return PublicKey._(
        _hexToBytes(rawHex),
        PublicKeyType.ed25519,
      );
    }

    // Raw 32-byte hex
    if (hex.length == 64) {
      return PublicKey._(
        _hexToBytes(hex),
        PublicKeyType.ed25519,
      );
    }

    throw FormatException(
      'Invalid public key format. Expected DER or 32-byte hex.',
    );
  }

  // ---- Fields ----

  /// The raw public key bytes (32 bytes).
  final Uint8List _keyBytes;

  /// The key type; ED25519 or ECDSA.
  final PublicKeyType type;

  // ---- Public API ----

  /// Returns the raw public key bytes.
  Uint8List get bytes => Uint8List.fromList(_keyBytes);

  /// Returns the key as a hex string.
  String toHex() => _bytesToHex(_keyBytes);

  /// Returns the DER-encoded hex string.
  String toDerString() {
    if (type == PublicKeyType.ed25519) {
      return '${HederaConstants.ed25519PublicKeyPrefix}${toHex()}';
    }
    // TODO(Phase2): add ECDSA public key DER prefix
    throw UnimplementedError('ECDSA public key DER encoding; Phase 2');
  }

  /// Verifies a signature against this public key.
  ///
  /// Returns true if the signature is valid for the given message.
  ///
  /// Example:
  /// ```dart
  /// final isValid = await publicKey.verify(
  ///   message: [1, 2, 3],
  ///   signature: signature,
  /// );
  /// ```
  // TODO(Phase2): Implement ECDSA verification
  Future<bool> verify({
    required List<int> message,
    required List<int> signature,
  }) async {
    if (type == PublicKeyType.ed25519) {
      return _verifyED25519(message, signature);
    }
    throw UnimplementedError('ECDSA signature verification; Phase 2');
  }

  /// Public keys can be safely exposed via toString.
  @override
  String toString() => toDerString();

  // ---- Private helpers ----

  Future<bool> _verifyED25519(
    List<int> message,
    List<int> signature,
  ) async {
    final algorithm = crypto.Ed25519();
    final publicKey = crypto.SimplePublicKey(
      _keyBytes,
      type: crypto.KeyPairType.ed25519,
    );
    final sig = crypto.Signature(
      signature,
      publicKey: publicKey,
    );
    return algorithm.verify(message, signature: sig);
  }

  static Uint8List _hexToBytes(String hex) {
    if (hex.length % 2 != 0) {
      throw FormatException('Invalid hex string length: ${hex.length}');
    }
    final result = Uint8List(hex.length ~/ 2);
    for (var i = 0; i < hex.length; i += 2) {
      result[i ~/ 2] = int.parse(hex.substring(i, i + 2), radix: 16);
    }
    return result;
  }

  static String _bytesToHex(Uint8List bytes) {
    return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  }
}

/// The cryptographic algorithm used for a public key.
enum PublicKeyType {
  /// Edwards-curve Digital Signature Algorithm.
  ed25519,

  /// Elliptic Curve Digital Signature Algorithm; EVM compatible.
  ecdsa,
}
