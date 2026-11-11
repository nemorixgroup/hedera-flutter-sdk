import 'dart:convert';
import 'dart:typed_data';

import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:hedera_flutter_sdk/src/proto/basic_types.pbenum.dart'
    show TokenSupplyType, TokenType;
import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_json.dart';
import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_node_custom_fees.dart';
import 'package:hedera_flutter_sdk/src/queries/mirror/mirror_node_key.dart';
import 'package:meta/meta.dart';

/// Whether a token is paused, as reported by the Mirror Node.
enum PauseStatus {
  /// The token has no pause key; pausing does not apply.
  notApplicable('NOT_APPLICABLE'),

  /// The token is paused.
  paused('PAUSED'),

  /// The token is not paused.
  unpaused('UNPAUSED'),

  /// A value this SDK version does not recognize, or none at all.
  unknown('');

  const PauseStatus(this.apiValue);

  /// The value used by the Mirror Node REST API.
  final String apiValue;

  /// Converts a Mirror Node value to a [PauseStatus].
  ///
  /// Null and unrecognized values give [unknown].
  static PauseStatus fromApiValue(String? value) {
    for (final status in values) {
      if (status != unknown && status.apiValue == value) {
        return status;
      }
    }
    return unknown;
  }
}

TokenType? _tokenType(Object? value) {
  final name = jsonString(value);
  for (final type in TokenType.values) {
    if (type.name == name) {
      return type;
    }
  }
  return null;
}

TokenSupplyType? _supplyType(Object? value) {
  final name = jsonString(value);
  for (final type in TokenSupplyType.values) {
    if (type.name == name) {
      return type;
    }
  }
  return null;
}

/// The definition and current state of a token, as reported by the
/// Mirror Node (`GET /api/v1/tokens/{tokenId}`).
///
/// Supplies are in the smallest unit of the token. Keys that are not
/// set on the token are null.
///
/// Example:
/// ```dart
/// final info = await MirrorNodeTokenInfoQuery()
///     .setTokenId(TokenId.fromString('0.0.5005'))
///     .execute(client);
/// print('${info.name} (${info.symbol}) supply: ${info.totalSupply}');
/// ```
@immutable
class MirrorNodeTokenInfo {
  /// Creates a [MirrorNodeTokenInfo].
  const MirrorNodeTokenInfo({
    required this.tokenId,
    this.name = '',
    this.symbol = '',
    this.memo = '',
    this.type,
    this.supplyType,
    this.decimals = 0,
    this.initialSupply = 0,
    this.totalSupply = 0,
    this.maxSupply = 0,
    this.treasuryAccountId,
    this.adminKey,
    this.kycKey,
    this.freezeKey,
    this.wipeKey,
    this.supplyKey,
    this.pauseKey,
    this.feeScheduleKey,
    this.metadataKey,
    this.freezeDefault = false,
    this.deleted = false,
    this.pauseStatus = PauseStatus.unknown,
    this.autoRenewAccount,
    this.autoRenewPeriod,
    this.expiryTimestamp,
    this.createdTimestamp,
    this.modifiedTimestamp,
    this.metadata,
    this.customFees = const MirrorNodeCustomFees(),
  });

  /// Reads a token from the JSON object returned by
  /// `GET /api/v1/tokens/{tokenId}`.
  ///
  /// Throws [FormatException] if `token_id` is missing or any field is
  /// malformed.
  factory MirrorNodeTokenInfo.fromJson(Map<String, dynamic> json) {
    final tokenId = jsonTokenId(json['token_id']);
    if (tokenId == null) {
      throw FormatException('Token info without token_id: $json');
    }

    final metadata = jsonString(json['metadata']);
    final customFees = jsonMap(json['custom_fees']);

    return MirrorNodeTokenInfo(
      tokenId: tokenId,
      name: jsonString(json['name']) ?? '',
      symbol: jsonString(json['symbol']) ?? '',
      memo: jsonString(json['memo']) ?? '',
      type: _tokenType(json['type']),
      supplyType: _supplyType(json['supply_type']),
      decimals: jsonInt(json['decimals']) ?? 0,
      initialSupply: jsonInt(json['initial_supply']) ?? 0,
      totalSupply: jsonInt(json['total_supply']) ?? 0,
      maxSupply: jsonInt(json['max_supply']) ?? 0,
      treasuryAccountId: jsonAccountId(json['treasury_account_id']),
      adminKey: MirrorNodeKey.fromJsonOrNull(json['admin_key']),
      kycKey: MirrorNodeKey.fromJsonOrNull(json['kyc_key']),
      freezeKey: MirrorNodeKey.fromJsonOrNull(json['freeze_key']),
      wipeKey: MirrorNodeKey.fromJsonOrNull(json['wipe_key']),
      supplyKey: MirrorNodeKey.fromJsonOrNull(json['supply_key']),
      pauseKey: MirrorNodeKey.fromJsonOrNull(json['pause_key']),
      feeScheduleKey: MirrorNodeKey.fromJsonOrNull(json['fee_schedule_key']),
      metadataKey: MirrorNodeKey.fromJsonOrNull(json['metadata_key']),
      freezeDefault: jsonBool(json['freeze_default']) ?? false,
      deleted: jsonBool(json['deleted']) ?? false,
      pauseStatus: PauseStatus.fromApiValue(jsonString(json['pause_status'])),
      autoRenewAccount: jsonAccountId(json['auto_renew_account']),
      autoRenewPeriod: jsonInt(json['auto_renew_period']),
      expiryTimestamp: jsonInt(json['expiry_timestamp']),
      createdTimestamp: jsonString(json['created_timestamp']),
      modifiedTimestamp: jsonString(json['modified_timestamp']),
      metadata: metadata == null ? null : base64Decode(metadata),
      customFees: customFees == null
          ? const MirrorNodeCustomFees()
          : MirrorNodeCustomFees.fromJson(customFees),
    );
  }

  /// The token ID.
  final TokenId tokenId;

  /// The token name.
  final String name;

  /// The token symbol.
  final String symbol;

  /// The token memo.
  final String memo;

  /// Whether the token is fungible or non-fungible.
  final TokenType? type;

  /// Whether the supply is finite or infinite.
  final TokenSupplyType? supplyType;

  /// The number of decimal places of a fungible token.
  final int decimals;

  /// The supply minted at creation, in the smallest unit.
  final int initialSupply;

  /// The current supply, in the smallest unit.
  final int totalSupply;

  /// The maximum supply of a finite token; 0 for an infinite one.
  final int maxSupply;

  /// The treasury account.
  final AccountId? treasuryAccountId;

  /// The admin key, or null if the token is immutable.
  final MirrorNodeKey? adminKey;

  /// The KYC key, or null if KYC does not apply.
  final MirrorNodeKey? kycKey;

  /// The freeze key, or null if freezing is not possible.
  final MirrorNodeKey? freezeKey;

  /// The wipe key, or null if wiping is not possible.
  final MirrorNodeKey? wipeKey;

  /// The supply key, or null if the supply is fixed.
  final MirrorNodeKey? supplyKey;

  /// The pause key, or null if pausing is not possible.
  final MirrorNodeKey? pauseKey;

  /// The fee schedule key, or null if custom fees cannot change.
  final MirrorNodeKey? feeScheduleKey;

  /// The key that can change the token and NFT metadata.
  final MirrorNodeKey? metadataKey;

  /// Whether new associations start frozen.
  final bool freezeDefault;

  /// Whether the token has been deleted.
  final bool deleted;

  /// Whether the token is paused.
  final PauseStatus pauseStatus;

  /// The account that pays the auto-renewal of the token.
  final AccountId? autoRenewAccount;

  /// The auto-renew period, in seconds.
  final int? autoRenewPeriod;

  /// The expiry of the token, in nanoseconds since the Unix epoch.
  ///
  /// Unlike the other timestamps, the Mirror Node does not use the
  /// `seconds.nanoseconds` format here.
  final int? expiryTimestamp;

  /// When the token was created, in `seconds.nanoseconds` format.
  final String? createdTimestamp;

  /// When the token was last modified, in `seconds.nanoseconds` format.
  final String? modifiedTimestamp;

  /// The token metadata bytes, when set.
  final Uint8List? metadata;

  /// The custom fee schedule.
  final MirrorNodeCustomFees customFees;

  @override
  String toString() => 'MirrorNodeTokenInfo($tokenId, $symbol)';
}
