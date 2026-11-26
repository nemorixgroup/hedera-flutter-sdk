import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';
import 'package:hedera_flutter_sdk/src/proto/duration.pb.dart'
    as hedera_duration;
import 'package:hedera_flutter_sdk/src/proto/timestamp.pb.dart'
    as hedera_timestamp;
import 'package:hedera_flutter_sdk/src/proto/token_create.pb.dart';
import 'package:hedera_flutter_sdk/src/proto/token_service.pbgrpc.dart';
import 'package:hedera_flutter_sdk/src/proto/transaction.pb.dart' as hedera_tx;
import 'package:hedera_flutter_sdk/src/proto/transaction_response.pb.dart'
    as hedera_response;

/// Creates a new fungible or non-fungible token on the Hedera network.
///
/// At minimum, [setTokenName], [setTokenSymbol], and
/// [setTreasuryAccountId] are REQUIRED. All other fields are optional.
///
/// Token keys (admin, KYC, freeze, wipe, supply, pause, fee schedule,
/// metadata) are set-once-at-creation: if a key is not set here, it
/// cannot be added later; if a key is set here, it cannot be removed
/// later.
///
/// Custom fees ([setCustomFees], [addCustomFee]) are charged on every
/// transfer of the token. Without a fee schedule key they can never be
/// changed after creation. When the token has custom fees, the key of
/// every fee collector account MUST also sign this transaction, and the
/// transaction costs more than a token without fees.
///
/// Example:
/// ```dart
/// final response = await TokenCreateTransaction()
///     .setTokenName('USD Bar')
///     .setTokenSymbol('USDB')
///     .setDecimals(2)
///     .setInitialSupply(10000)
///     .setTreasuryAccountId(treasuryId)
///     .setSupplyKey(supplyKey)
///     .execute(client);
///
/// final receipt = await response.getReceipt(client);
/// print(receipt.tokenId); // 0.0.123456
/// ```
class TokenCreateTransaction extends Transaction<TokenCreateTransaction> {
  /// Creates a new [TokenCreateTransaction] with default values.
  TokenCreateTransaction();

  String? _tokenName;
  String? _tokenSymbol;
  int _decimals = 0;
  int _initialSupply = 0;
  AccountId? _treasuryAccountId;
  HederaKey? _adminKey;
  HederaKey? _kycKey;
  HederaKey? _freezeKey;
  HederaKey? _wipeKey;
  HederaKey? _supplyKey;
  HederaKey? _pauseKey;
  HederaKey? _feeScheduleKey;
  HederaKey? _metadataKey;
  bool _freezeDefault = false;
  DateTime? _expirationTime;
  AccountId? _autoRenewAccountId;
  Duration? _autoRenewPeriod;
  String _tokenMemo = '';
  TokenType? _tokenType;
  TokenSupplyType? _supplyType;
  int? _maxSupply;
  List<int>? _metadata;
  final List<CustomFee> _customFees = [];

  // ---- Setters (fluent API) ----

  /// Sets the name of the token. This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenName('USD Bar');
  /// ```
  TokenCreateTransaction setTokenName(String name) {
    _tokenName = name;
    return this;
  }

  /// Sets the symbol of the token. This field is REQUIRED.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenSymbol('USDB');
  /// ```
  TokenCreateTransaction setTokenSymbol(String symbol) {
    _tokenSymbol = symbol;
    return this;
  }

  /// Sets the number of decimal places for the token's smallest
  /// denomination. Defaults to `0` if not set.
  ///
  /// MUST be `0` for non-fungible/unique tokens.
  ///
  /// Example:
  /// ```dart
  /// transaction.setDecimals(2);
  /// ```
  TokenCreateTransaction setDecimals(int decimals) {
    _decimals = decimals;
    return this;
  }

  /// Sets the initial supply, in the smallest denomination for the
  /// token. Defaults to `0` if not set.
  ///
  /// This amount is transferred to the treasury account as part of
  /// this transaction. MUST be strictly greater than zero for
  /// fungible/common tokens; MUST be zero for non-fungible/unique
  /// tokens.
  ///
  /// Example:
  /// ```dart
  /// transaction.setInitialSupply(10000);
  /// ```
  TokenCreateTransaction setInitialSupply(int initialSupply) {
    _initialSupply = initialSupply;
    return this;
  }

  /// Sets the treasury account for the token. This field is REQUIRED.
  ///
  /// All minted tokens, including the initial supply, are delivered
  /// to this account. The account is automatically associated to
  /// the new token.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTreasuryAccountId(treasuryId);
  /// ```
  TokenCreateTransaction setTreasuryAccountId(AccountId treasuryAccountId) {
    _treasuryAccountId = treasuryAccountId;
    return this;
  }

  /// Sets the admin key for the token.
  ///
  /// If not set, the token is immutable (its properties, other than
  /// expiration and renewal, can never be changed, nor can the token
  /// be deleted).
  ///
  /// Example:
  /// ```dart
  /// transaction.setAdminKey(adminKey);
  /// ```
  TokenCreateTransaction setAdminKey(HederaKey key) {
    _adminKey = key;
    return this;
  }

  /// Sets the KYC key for the token.
  ///
  /// If not set, KYC status can never be granted or revoked for any
  /// account holding this token.
  ///
  /// Example:
  /// ```dart
  /// transaction.setKycKey(kycKey);
  /// ```
  TokenCreateTransaction setKycKey(HederaKey key) {
    _kycKey = key;
    return this;
  }

  /// Sets the freeze key for the token.
  ///
  /// If not set, accounts holding this token can never be frozen or
  /// unfrozen with respect to this token.
  ///
  /// Example:
  /// ```dart
  /// transaction.setFreezeKey(freezeKey);
  /// ```
  TokenCreateTransaction setFreezeKey(HederaKey key) {
    _freezeKey = key;
    return this;
  }

  /// Sets the wipe key for the token.
  ///
  /// If not set, token balances can never be wiped from an account.
  ///
  /// Example:
  /// ```dart
  /// transaction.setWipeKey(wipeKey);
  /// ```
  TokenCreateTransaction setWipeKey(HederaKey key) {
    _wipeKey = key;
    return this;
  }

  /// Sets the supply key for the token.
  ///
  /// If not set, the token supply is fixed (it can never be minted
  /// or burned after creation).
  ///
  /// Example:
  /// ```dart
  /// transaction.setSupplyKey(supplyKey);
  /// ```
  TokenCreateTransaction setSupplyKey(HederaKey key) {
    _supplyKey = key;
    return this;
  }

  /// Sets the pause key for the token.
  ///
  /// If not set, the token can never be paused or unpaused.
  ///
  /// Example:
  /// ```dart
  /// transaction.setPauseKey(pauseKey);
  /// ```
  TokenCreateTransaction setPauseKey(HederaKey key) {
    _pauseKey = key;
    return this;
  }

  /// Sets the fee schedule key for the token.
  ///
  /// If not set, the token's custom fee schedule can never be
  /// updated after creation.
  ///
  /// Example:
  /// ```dart
  /// transaction.setFeeScheduleKey(feeScheduleKey);
  /// ```
  TokenCreateTransaction setFeeScheduleKey(HederaKey key) {
    _feeScheduleKey = key;
    return this;
  }

  /// Sets the metadata key for the token.
  ///
  /// If not set, the token's metadata can never be updated after
  /// creation.
  ///
  /// Example:
  /// ```dart
  /// transaction.setMetadataKey(metadataKey);
  /// ```
  TokenCreateTransaction setMetadataKey(HederaKey key) {
    _metadataKey = key;
    return this;
  }

  /// Sets the default freeze status for new associations to this
  /// token. Defaults to `false` if not set.
  ///
  /// If `true`, newly associated accounts must be the subject of an
  /// unfreeze transaction before they can send or receive this
  /// token.
  ///
  /// Example:
  /// ```dart
  /// transaction.setFreezeDefault(freezeDefault: true);
  /// ```
  TokenCreateTransaction setFreezeDefault({required bool freezeDefault}) {
    _freezeDefault = freezeDefault;
    return this;
  }

  /// Sets the expiration time for the token.
  ///
  /// If [autoRenewAccountId] and [autoRenewPeriod] are also set, this
  /// value is replaced by the network with consensus time extended
  /// by the auto-renew period.
  ///
  /// Example:
  /// ```dart
  /// transaction.setExpirationTime(DateTime.now().add(Duration(days: 90)));
  /// ```
  TokenCreateTransaction setExpirationTime(DateTime expirationTime) {
    _expirationTime = expirationTime;
    return this;
  }

  /// Sets the account to be charged renewal fees at the token's
  /// expiration, to extend its lifetime.
  ///
  /// If set, the referenced account MUST sign this transaction.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAutoRenewAccountId(treasuryId);
  /// ```
  TokenCreateTransaction setAutoRenewAccountId(AccountId autoRenewAccountId) {
    _autoRenewAccountId = autoRenewAccountId;
    return this;
  }

  /// Sets the auto-renewal period for the token.
  ///
  /// Example:
  /// ```dart
  /// transaction.setAutoRenewPeriod(Duration(days: 90));
  /// ```
  TokenCreateTransaction setAutoRenewPeriod(Duration autoRenewPeriod) {
    _autoRenewPeriod = autoRenewPeriod;
    return this;
  }

  /// Sets a short description for the token. Defaults to an empty
  /// string if not set.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenMemo('NemorixPay stablecoin');
  /// ```
  TokenCreateTransaction setTokenMemo(String memo) {
    _tokenMemo = memo;
    return this;
  }

  /// Sets the token type. Defaults to [TokenType.FUNGIBLE_COMMON] if
  /// not set.
  ///
  /// For an NFT collection use [TokenType.NON_FUNGIBLE_UNIQUE]; it
  /// requires `decimals` and `initialSupply` to be 0, otherwise
  /// building the transaction throws [ArgumentError]. Set a supply key
  /// so NFTs can be minted later with `TokenMintTransaction`.
  ///
  /// Example:
  /// ```dart
  /// transaction.setTokenType(TokenType.FUNGIBLE_COMMON);
  /// ```
  TokenCreateTransaction setTokenType(TokenType tokenType) {
    _tokenType = tokenType;
    return this;
  }

  /// Sets the supply type. Defaults to [TokenSupplyType.INFINITE] if
  /// not set.
  ///
  /// Example:
  /// ```dart
  /// transaction.setSupplyType(TokenSupplyType.FINITE);
  /// ```
  TokenCreateTransaction setSupplyType(TokenSupplyType supplyType) {
    _supplyType = supplyType;
    return this;
  }

  /// Sets the maximum supply for the token. Only applies when
  /// [supplyType] is [TokenSupplyType.FINITE].
  ///
  /// Example:
  /// ```dart
  /// transaction.setMaxSupply(1000000);
  /// ```
  TokenCreateTransaction setMaxSupply(int maxSupply) {
    _maxSupply = maxSupply;
    return this;
  }

  /// Sets arbitrary metadata for the token. MUST NOT exceed 100 bytes.
  ///
  /// Example:
  /// ```dart
  /// transaction.setMetadata(utf8.encode('ipfs://...'));
  /// ```
  TokenCreateTransaction setMetadata(List<int> metadata) {
    _metadata = metadata;
    return this;
  }

  /// Replaces the custom fees of the token with [customFees].
  ///
  /// A token can have up to 10 custom fees; the network rejects longer
  /// lists. Fractional fees apply only to fungible tokens and royalty
  /// fees only to non-fungible tokens. To change the fees after
  /// creation the token needs a fee schedule key (see
  /// [setFeeScheduleKey]).
  ///
  /// The key of every fee collector account MUST sign this transaction
  /// (without it the network answers `INVALID_SIGNATURE`). A collector
  /// of a fee charged in the token being created is associated with it
  /// automatically by the network. A collector of a fee charged in
  /// another token must already be associated with that token.
  ///
  /// Creating a token with custom fees costs more than creating one
  /// without them, so raise the maximum transaction fee if the network
  /// answers `INSUFFICIENT_TX_FEE` (see `setMaxTransactionFee`).
  ///
  /// Example:
  /// ```dart
  /// transaction.setCustomFees([
  ///   CustomFixedFee()
  ///       .setFeeCollectorAccountId(collectorId)
  ///       .setHbarAmount(Hbar(1)),
  ///   CustomFractionalFee()
  ///       .setFeeCollectorAccountId(collectorId)
  ///       .setNumerator(1)
  ///       .setDenominator(100),
  /// ]);
  /// ```
  TokenCreateTransaction setCustomFees(List<CustomFee> customFees) {
    _customFees
      ..clear()
      ..addAll(customFees);
    return this;
  }

  /// Adds one custom fee to the token, keeping the ones already added.
  ///
  /// Example:
  /// ```dart
  /// transaction.addCustomFee(
  ///   CustomFixedFee()
  ///       .setFeeCollectorAccountId(collectorId)
  ///       .setHbarAmount(Hbar(1)),
  /// );
  /// ```
  TokenCreateTransaction addCustomFee(CustomFee customFee) {
    _customFees.add(customFee);
    return this;
  }

  // ---- Getters ----

  /// The name of the token, or null if not set.
  String? get tokenName => _tokenName;

  /// The symbol of the token, or null if not set.
  String? get tokenSymbol => _tokenSymbol;

  /// The number of decimal places for the token.
  int get decimals => _decimals;

  /// The initial supply, in the smallest denomination.
  int get initialSupply => _initialSupply;

  /// The treasury account for the token, or null if not set.
  AccountId? get treasuryAccountId => _treasuryAccountId;

  /// The admin key, or null if not set.
  HederaKey? get adminKey => _adminKey;

  /// The KYC key, or null if not set.
  HederaKey? get kycKey => _kycKey;

  /// The freeze key, or null if not set.
  HederaKey? get freezeKey => _freezeKey;

  /// The wipe key, or null if not set.
  HederaKey? get wipeKey => _wipeKey;

  /// The supply key, or null if not set.
  HederaKey? get supplyKey => _supplyKey;

  /// The pause key, or null if not set.
  HederaKey? get pauseKey => _pauseKey;

  /// The fee schedule key, or null if not set.
  HederaKey? get feeScheduleKey => _feeScheduleKey;

  /// The metadata key, or null if not set.
  HederaKey? get metadataKey => _metadataKey;

  /// The default freeze status for new associations.
  bool get freezeDefault => _freezeDefault;

  /// The expiration time, or null if not set.
  DateTime? get expirationTime => _expirationTime;

  /// The auto-renew account, or null if not set.
  AccountId? get autoRenewAccountId => _autoRenewAccountId;

  /// The auto-renew period, or null if not set.
  Duration? get autoRenewPeriod => _autoRenewPeriod;

  /// The token memo.
  String get tokenMemo => _tokenMemo;

  /// The token type, or null if not set (defaults to fungible/common
  /// on the network).
  TokenType? get tokenType => _tokenType;

  /// The supply type, or null if not set (defaults to infinite on
  /// the network).
  TokenSupplyType? get supplyType => _supplyType;

  /// The maximum supply, or null if not set.
  int? get maxSupply => _maxSupply;

  /// The token metadata, or null if not set.
  List<int>? get metadata => _metadata;

  /// The custom fees of the token, as an unmodifiable list. Empty if
  /// none were set.
  List<CustomFee> get customFees => List.unmodifiable(_customFees);

  // ---- Serialization ----

  @override
  Uint8List toBytes() {
    final body = _buildTokenCreateBody();
    return Uint8List.fromList(body.writeToBuffer());
  }

  // ---- Transaction body construction ----

  /// Applies the TokenCreateTransaction-specific body fields to [body].
  ///
  /// Throws [ArgumentError] if [tokenName], [tokenSymbol], or
  /// [treasuryAccountId] have not been set, if an NFT collection has
  /// non-zero decimals or initial supply, or if a custom fee is not
  /// fully specified.
  @override
  void applyToBody(hedera_tx.TransactionBody body) {
    body.tokenCreation = _buildTokenCreateBody();
  }

  /// Builds the [TokenCreateTransactionBody], validating required
  /// fields and applying every optional field that was set.
  TokenCreateTransactionBody _buildTokenCreateBody() {
    if (_tokenName == null) {
      throw ArgumentError(
        'TokenCreateTransaction requires a token name. '
        'Call setTokenName() first.',
      );
    }
    if (_tokenSymbol == null) {
      throw ArgumentError(
        'TokenCreateTransaction requires a token symbol. '
        'Call setTokenSymbol() first.',
      );
    }
    if (_treasuryAccountId == null) {
      throw ArgumentError(
        'TokenCreateTransaction requires a treasury account ID. '
        'Call setTreasuryAccountId() first.',
      );
    }

    // Per the Hedera docs, an NFT collection must have 0 decimals and
    // 0 initial supply (NFTs come into existence through minting).
    if (_tokenType == TokenType.NON_FUNGIBLE_UNIQUE &&
        (_decimals != 0 || _initialSupply != 0)) {
      throw ArgumentError(
        'A NON_FUNGIBLE_UNIQUE token requires decimals = 0 and '
        'initialSupply = 0. Got: decimals = $_decimals, '
        'initialSupply = $_initialSupply. Mint NFTs with '
        'TokenMintTransaction.addMetadata() after creating the token.',
      );
    }

    final tokenBody = TokenCreateTransactionBody(
      name: _tokenName,
      symbol: _tokenSymbol,
      decimals: _decimals,
      initialSupply: Int64(_initialSupply),
      treasury: _treasuryAccountId!.toProto(),
      freezeDefault: _freezeDefault,
      memo: _tokenMemo,
    );

    if (_adminKey != null) tokenBody.adminKey = _adminKey!.toProtoKey();
    if (_kycKey != null) tokenBody.kycKey = _kycKey!.toProtoKey();
    if (_freezeKey != null) tokenBody.freezeKey = _freezeKey!.toProtoKey();
    if (_wipeKey != null) tokenBody.wipeKey = _wipeKey!.toProtoKey();
    if (_supplyKey != null) tokenBody.supplyKey = _supplyKey!.toProtoKey();
    if (_pauseKey != null) tokenBody.pauseKey = _pauseKey!.toProtoKey();
    if (_feeScheduleKey != null) {
      tokenBody.feeScheduleKey = _feeScheduleKey!.toProtoKey();
    }
    if (_metadataKey != null) {
      tokenBody.metadataKey = _metadataKey!.toProtoKey();
    }

    if (_expirationTime != null) {
      final ms = _expirationTime!.millisecondsSinceEpoch;
      tokenBody.expiry = hedera_timestamp.Timestamp(
        seconds: Int64(ms ~/ 1000),
        nanos: (ms % 1000) * 1000000,
      );
    }

    if (_autoRenewAccountId != null) {
      tokenBody.autoRenewAccount = _autoRenewAccountId!.toProto();
    }

    if (_autoRenewPeriod != null) {
      tokenBody.autoRenewPeriod = hedera_duration.Duration(
        seconds: Int64(_autoRenewPeriod!.inSeconds),
      );
    }

    if (_tokenType != null) tokenBody.tokenType = _tokenType!;
    if (_supplyType != null) tokenBody.supplyType = _supplyType!;
    if (_maxSupply != null) tokenBody.maxSupply = Int64(_maxSupply!);
    if (_metadata != null) tokenBody.metadata = _metadata!;

    // Custom fees are validated locally; the network checks the rest.
    tokenBody.customFees.addAll(_customFees.map((fee) => fee.toProto()));

    return tokenBody;
  }

  /// Executes this transaction via the createToken gRPC method.
  @override
  Future<hedera_response.TransactionResponse> executeGrpc(
    ClientChannel channel,
    hedera_tx.Transaction tx,
  ) async {
    return await TokenServiceClient(channel).createToken(tx);
  }
}
