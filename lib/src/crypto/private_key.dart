import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart' as crypto;
import 'package:hedera_flutter_sdk/src/core/hedera_constants.dart';
import 'package:hedera_flutter_sdk/src/crypto/public_key.dart';
import 'package:pointycastle/export.dart' as pc;

/// Represents a Hedera private key used for signing transactions.
///
/// Supports ED25519 and ECDSA secp256k1 key types.
///
/// Example:
/// ```dart
/// final privateKey = await PrivateKey.generateED25519();
/// final publicKey = privateKey.publicKey;
/// final signature = await privateKey.sign([1, 2, 3]);
/// ```
class PrivateKey {
  PrivateKey._(this._keyBytes, this.type);

  /// Creates a [PrivateKey] from a hex string.
  ///
  /// Accepts raw 32-byte hex (64 hex chars) or
  /// DER-encoded hex (starts with 302e or 3030).
  ///
  /// Example:
  /// ```dart
  /// final key = PrivateKey.fromString('302e020100300506032b657004220420...');
  /// ```
  ///
  /// Throws [FormatException] if the string is not a valid private key.
  factory PrivateKey.fromString(String value) {
    final hex = value.trim().toLowerCase();

    // DER-encoded ED25519 prefix: 302e020100300506032b657004220420
    if (hex.startsWith(HederaConstants.ed25519PrivateKeyPrefix) &&
        hex.length == 96) {
      final rawHex = hex.substring(32);
      return PrivateKey._(
        _hexToBytes(rawHex),
        PrivateKeyType.ed25519,
      );
    }

    // DER-encoded ECDSA prefix: 3030020100300706052b8104000a
    if (hex.startsWith(HederaConstants.ecdsaPrivateKeyPrefix) &&
        hex.length >= 96) {
      final rawHex = hex.substring(hex.length - 64);
      return PrivateKey._(
        _hexToBytes(rawHex),
        PrivateKeyType.ecdsa,
      );
    }

    // Raw 32-byte hex
    if (hex.length == 64) {
      return PrivateKey._(
        _hexToBytes(hex),
        PrivateKeyType.ed25519,
      );
    }

    throw FormatException(
      'Invalid private key format. Expected DER or 32-byte hex.',
    );
  }

  /// Creates a [PrivateKey] from raw bytes.
  ///
  /// [type] defaults to [PrivateKeyType.ed25519].
  ///
  /// Example:
  /// ```dart
  /// final key = PrivateKey.fromBytes(bytes);
  /// ```
  factory PrivateKey.fromBytes(
    List<int> bytes, {
    PrivateKeyType type = PrivateKeyType.ed25519,
  }) {
    if (bytes.length != 32) {
      throw ArgumentError(
        'Private key must be 32 bytes. Got: ${bytes.length}',
      );
    }
    return PrivateKey._(Uint8List.fromList(bytes), type);
  }

  /// The raw key bytes (32 bytes for ED25519; 32 bytes for ECDSA).
  final Uint8List _keyBytes;

  /// The key type; ED25519 or ECDSA.
  final PrivateKeyType type;

  // ---- Generators ----

  /// Generates a new ED25519 private key.
  ///
  /// ED25519 is the recommended key type for Hedera accounts.
  ///
  /// Example:
  /// ```dart
  /// final key = await PrivateKey.generateED25519();
  /// print(key.toHex()); // 302e...
  /// ```
  static Future<PrivateKey> generateED25519() async {
    final algorithm = crypto.Ed25519();
    final keyPair = await algorithm.newKeyPair();
    final privateBytes = await keyPair.extractPrivateKeyBytes();
    return PrivateKey._(
      Uint8List.fromList(privateBytes),
      PrivateKeyType.ed25519,
    );
  }

  /// Generates a new ECDSA secp256k1 private key.
  ///
  /// Use when EVM wallet compatibility is required.
  ///
  /// Example:
  /// ```dart
  /// final key = await PrivateKey.generateECDSA();
  /// ```
  static Future<PrivateKey> generateECDSA() async {
    // Generate 32 cryptographically secure random bytes for ECDSA
    final random = Random.secure();
    final bytes = Uint8List(32);
    for (var i = 0; i < 32; i++) {
      bytes[i] = random.nextInt(256);
    }
    return PrivateKey._(bytes, PrivateKeyType.ecdsa);
  }

  // ---- Public API ----

  /// Decodes a [BigInt] from a big-endian unsigned byte array.
  static BigInt _decodeBigInt(Uint8List bytes) {
    var result = BigInt.zero;
    for (final byte in bytes) {
      result = (result << 8) | BigInt.from(byte);
    }
    return result;
  }

  /// Encodes a [BigInt] as a big-endian unsigned byte list.
  static List<int> _encodeBigInt(BigInt value) {
    final bytes = <int>[];
    var v = value;
    while (v > BigInt.zero) {
      bytes.insert(0, (v & BigInt.from(0xff)).toInt());
      v = v >> 8;
    }
    return bytes.isEmpty ? [0] : bytes;
  }

  /// Returns the [PublicKey] corresponding to this private key.
  ///
  /// For ED25519 keys the public key is derived synchronously
  /// from the private key seed using the Ed25519 algorithm.
  ///
  /// Example:
  /// ```dart
  /// final privateKey = await PrivateKey.generateED25519();
  /// final publicKey = await privateKey.derivePublicKey();
  /// print(publicKey.toHex());
  /// ```
  Future<PublicKey> derivePublicKey() async {
    if (type == PrivateKeyType.ed25519) {
      final algorithm = crypto.Ed25519();
      final keyPair = await algorithm.newKeyPairFromSeed(_keyBytes);
      final pubKey = await keyPair.extractPublicKey();
      return PublicKey.fromBytes(pubKey.bytes);
    }
    // ECDSA secp256k1 public key derivation
    final domainParams = pc.ECDomainParameters('secp256k1');
    final privateKeyNum = _decodeBigInt(_keyBytes);
    final publicKeyPoint = domainParams.G * privateKeyNum;
    final compressed = publicKeyPoint!.getEncoded(); // 33 bytes
    return PublicKey.fromBytes(compressed, type: PublicKeyType.ecdsa);
  }

  /// Signs the given message bytes with this private key.
  ///
  /// Returns the 64-byte signature.
  ///
  /// Example:
  /// ```dart
  /// final signature = await privateKey.sign([1, 2, 3]);
  /// print(signature.length); // 64
  /// ```
  Future<Uint8List> sign(List<int> message) async {
    if (type == PrivateKeyType.ed25519) {
      return _signED25519(message);
    }
    return _signECDSA(message);
  }

  /// Signs [message] using ECDSA secp256k1 with RFC 6979 deterministic
  /// k generation and low-S normalization required by Hedera.
  ///
  /// The message is hashed with Keccak-256 (not SHA-256), matching
  /// Hedera's HIP-222 specification for EVM compatibility.
  ///
  /// Returns the 64-byte signature (r + s, 32 bytes each).
  Future<Uint8List> _signECDSA(List<int> message) async {
    // Hash the message with Keccak-256 (Hedera requires keccak256, not SHA-256,
    // per HIP-222, for EVM/Ethereum compatibility)
    final digest = pc.KeccakDigest(256);
    final msgBytes = Uint8List.fromList(message);
    final hash = digest.process(msgBytes);

    // Build signer with RFC 6979 deterministic k generation
    final domainParams = pc.ECDomainParameters('secp256k1');
    final privateKeyNum = _decodeBigInt(_keyBytes);
    final privateKey = pc.ECPrivateKey(privateKeyNum, domainParams);
    final signer = pc.ECDSASigner(null, pc.HMac(pc.SHA256Digest(), 32))
      ..init(true, pc.PrivateKeyParameter<pc.ECPrivateKey>(privateKey));

    final signature = signer.generateSignature(hash) as pc.ECSignature;

    // Low-S normalization (required by Hedera)
    final n = domainParams.n;
    final halfN = n >> 1;
    var s = signature.s;
    if (s > halfN) {
      s = n - s;
    }

    // Serialize r and s as 32-byte big-endian integers (64 bytes total)
    final rBytes = _bigIntToBytes32(signature.r);
    final sBytes = _bigIntToBytes32(s);

    return Uint8List.fromList([...rBytes, ...sBytes]);
  }

  /// Serializes a [BigInt] as a 32-byte big-endian unsigned integer.
  ///
  /// Pads with leading zeros if shorter than 32 bytes.
  /// Trims leading bytes if longer than 32 bytes.
  static Uint8List _bigIntToBytes32(BigInt value) {
    final bytes = _encodeBigInt(value);
    if (bytes.length == 32) return Uint8List.fromList(bytes);
    if (bytes.length < 32) {
      // Pad with leading zeros
      final padded = Uint8List(32)..setRange(32 - bytes.length, 32, bytes);
      return padded;
    }
    // Trim leading zeros if > 32 bytes
    return Uint8List.fromList(bytes.sublist(bytes.length - 32));
  }

  /// Returns the raw key bytes.
  Uint8List get bytes => Uint8List.fromList(_keyBytes);

  /// Returns the key as a hex string.
  String toHex() => _bytesToHex(_keyBytes);

  /// Returns the DER-encoded hex string.
  String toDerString() {
    if (type == PrivateKeyType.ed25519) {
      return '${HederaConstants.ed25519PrivateKeyPrefix}${toHex()}';
    }
    return '${HederaConstants.ecdsaPrivateKeyPrefix}${toHex()}';
  }

  /// Private keys are never exposed via toString for security.
  @override
  String toString() => '[PrivateKey: ${type.name}]';

  // ---- Private helpers ----

  Future<Uint8List> _signED25519(List<int> message) async {
    final algorithm = crypto.Ed25519();
    final keyPair = await algorithm.newKeyPairFromSeed(_keyBytes);
    final signature = await algorithm.sign(message, keyPair: keyPair);
    return Uint8List.fromList(signature.bytes);
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

/// The cryptographic algorithm used for a key.
enum PrivateKeyType {
  /// Edwards-curve Digital Signature Algorithm; recommended for Hedera.
  ed25519,

  /// Elliptic Curve Digital Signature Algorithm; EVM compatible.
  ecdsa,
}
