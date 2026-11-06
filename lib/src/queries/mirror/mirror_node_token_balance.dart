import 'package:hedera_flutter_sdk/src/models/token_id.dart';
import 'package:meta/meta.dart';

/// The KYC status of an account for a token, as reported by the
/// Mirror Node.
enum KycStatus {
  /// The token has no KYC key; KYC does not apply.
  notApplicable('NOT_APPLICABLE'),

  /// KYC has been granted to the account for the token.
  granted('GRANTED'),

  /// KYC has not been granted, or was revoked.
  revoked('REVOKED'),

  /// A value this SDK version does not recognize, or none at all.
  unknown('');

  const KycStatus(this.apiValue);

  /// The value used by the Mirror Node REST API.
  final String apiValue;

  /// Converts a Mirror Node value to a [KycStatus].
  ///
  /// Null and unrecognized values give [unknown].
  static KycStatus fromApiValue(String? value) {
    for (final status in values) {
      if (status != unknown && status.apiValue == value) {
        return status;
      }
    }
    return unknown;
  }
}

/// The freeze status of an account for a token, as reported by the
/// Mirror Node.
enum FreezeStatus {
  /// The token has no freeze key; freezing does not apply.
  notApplicable('NOT_APPLICABLE'),

  /// The account is frozen for the token.
  frozen('FROZEN'),

  /// The account is not frozen for the token.
  unfrozen('UNFROZEN'),

  /// A value this SDK version does not recognize, or none at all.
  unknown('');

  const FreezeStatus(this.apiValue);

  /// The value used by the Mirror Node REST API.
  final String apiValue;

  /// Converts a Mirror Node value to a [FreezeStatus].
  ///
  /// Null and unrecognized values give [unknown].
  static FreezeStatus fromApiValue(String? value) {
    for (final status in values) {
      if (status != unknown && status.apiValue == value) {
        return status;
      }
    }
    return unknown;
  }
}

/// The relationship between an account and a token: the balance it
/// holds and its KYC and freeze status.
///
/// For a fungible token, [balance] is in the smallest unit; divide by
/// `10^decimals` for the display amount. For a non-fungible token,
/// [balance] is the number of NFTs the account holds.
///
/// Example:
/// ```dart
/// final balances = await MirrorNodeTokenBalanceQuery()
///     .setAccountId(AccountId.fromString('0.0.12345'))
///     .execute(client);
/// for (final b in balances) {
///   print('${b.tokenId}: ${b.balance} (${b.kycStatus.name})');
/// }
/// ```
@immutable
class MirrorNodeTokenBalance {
  /// Creates a [MirrorNodeTokenBalance].
  const MirrorNodeTokenBalance({
    required this.tokenId,
    required this.balance,
    this.decimals,
    this.kycStatus = KycStatus.unknown,
    this.freezeStatus = FreezeStatus.unknown,
    this.automaticAssociation,
    this.createdTimestamp,
  });

  /// Creates a [MirrorNodeTokenBalance] from one entry of the `tokens`
  /// array returned by `GET /api/v1/accounts/{id}/tokens`.
  ///
  /// Throws [FormatException] if `token_id` or `balance` is missing or
  /// has the wrong type.
  factory MirrorNodeTokenBalance.fromJson(Map<String, dynamic> json) {
    final tokenId = json['token_id'];
    final balance = json['balance'];
    if (tokenId is! String || balance is! int) {
      throw FormatException('Invalid token relationship entry: $json');
    }

    final decimals = json['decimals'];
    final kyc = json['kyc_status'];
    final freeze = json['freeze_status'];
    final automatic = json['automatic_association'];
    final created = json['created_timestamp'];

    return MirrorNodeTokenBalance(
      tokenId: TokenId.fromString(tokenId),
      balance: balance,
      decimals: decimals is int ? decimals : null,
      kycStatus: KycStatus.fromApiValue(kyc is String ? kyc : null),
      freezeStatus: FreezeStatus.fromApiValue(
        freeze is String ? freeze : null,
      ),
      automaticAssociation: automatic is bool ? automatic : null,
      createdTimestamp: created is String ? created : null,
    );
  }

  /// The token.
  final TokenId tokenId;

  /// The balance, in the smallest unit for fungible tokens or the
  /// number of NFTs for non-fungible tokens.
  final int balance;

  /// The number of decimal places of a fungible token, when reported.
  final int? decimals;

  /// The KYC status of the account for this token.
  final KycStatus kycStatus;

  /// The freeze status of the account for this token.
  final FreezeStatus freezeStatus;

  /// Whether the association was created automatically, when reported.
  final bool? automaticAssociation;

  /// When the association was created, in `seconds.nanoseconds` format.
  final String? createdTimestamp;

  @override
  String toString() =>
      'MirrorNodeTokenBalance(tokenId: $tokenId, balance: $balance)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MirrorNodeTokenBalance &&
          tokenId == other.tokenId &&
          balance == other.balance &&
          decimals == other.decimals &&
          kycStatus == other.kycStatus &&
          freezeStatus == other.freezeStatus &&
          automaticAssociation == other.automaticAssociation &&
          createdTimestamp == other.createdTimestamp;

  @override
  int get hashCode => Object.hash(
        tokenId,
        balance,
        decimals,
        kycStatus,
        freezeStatus,
        automaticAssociation,
        createdTimestamp,
      );
}
