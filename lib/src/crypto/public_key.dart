import 'dart:typed_data';

import 'package:cryptography/cryptography.dart' as crypto;
import 'package:hedera_flutter_sdk/src/core/hedera_constants.dart';
import 'package:pointycastle/export.dart' as pc;

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
    if (type == PublicKeyType.ed25519 && bytes.length != 32) {
      throw ArgumentError(
        'ED25519 public key must be 32 bytes. Got: ${bytes.length}',
      );
    }
    if (type == PublicKeyType.ecdsa && bytes.length != 33) {
      throw ArgumentError(
        'ECDSA public key must be 33 bytes (compressed). '
        'Got: ${bytes.length}',
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

    // DER-encoded ECDSA public key prefix: 302d300706052b8104000a032200
    if (hex.startsWith(HederaConstants.ecdsaPublicKeyPrefix) &&
        hex.length == 96) {
      final rawHex = hex.substring(
        HederaConstants.ecdsaPublicKeyPrefix.length,
      );
      return PublicKey._(
        _hexToBytes(rawHex),
        PublicKeyType.ecdsa,
      );
    }

    // Raw 33-byte compressed ECDSA hex
    if (hex.length == 66) {
      return PublicKey._(
        _hexToBytes(hex),
        PublicKeyType.ecdsa,
      );
    }

    throw FormatException(
      'Invalid public key format. Expected DER or 32/33-byte hex.',
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
    return '${HederaConstants.ecdsaPublicKeyPrefix}${toHex()}';
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
  Future<bool> verify({
    required List<int> message,
    required List<int> signature,
  }) async {
    if (type == PublicKeyType.ed25519) {
      return _verifyED25519(message, signature);
    }
    return _verifyECDSA(message, signature);
  }

  /// Public keys can be safely exposed via toString.
  @override
  String toString() => toDerString();

  // ---- Private helpers ----

  /// Verifies an ECDSA secp256k1 [signature] against [message].
  ///
  /// The message is hashed with Keccak-256 (not SHA-256), matching
  /// Hedera's HIP-222 specification for EVM compatibility.
  ///
  /// [signature] must be 64 bytes (r + s, 32 bytes each).
  /// Returns true if the signature is valid.
  Future<bool> _verifyECDSA(
    List<int> message,
    List<int> signature,
  ) async {
    // Hash the message with Keccak-256 (Hedera requires keccak256, not SHA-256,
    // per HIP-222, for EVM/Ethereum compatibility)
    final digest = pc.KeccakDigest(256);
    final hash = digest.process(Uint8List.fromList(message));

    final domainParams = pc.ECDomainParameters('secp256k1');
    final point = domainParams.curve.decodePoint(_keyBytes);
    final publicKey = pc.ECPublicKey(point, domainParams);

    final r = _decodeBigInt(Uint8List.fromList(signature.sublist(0, 32)));
    final s = _decodeBigInt(Uint8List.fromList(signature.sublist(32, 64)));

    final signer = pc.ECDSASigner(null, pc.HMac(pc.SHA256Digest(), 32))
      ..init(false, pc.PublicKeyParameter<pc.ECPublicKey>(publicKey));

    return signer.verifySignature(hash, pc.ECSignature(r, s));
  }

  static BigInt _decodeBigInt(Uint8List bytes) {
    var result = BigInt.zero;
    for (final byte in bytes) {
      result = (result << 8) | BigInt.from(byte);
    }
    return result;
  }

  /// Verifies an ED25519 [signature] against [message].
  ///
  /// [signature] must be 64 bytes (r + s, 32 bytes each).
  /// Returns true if the signature is valid.
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
