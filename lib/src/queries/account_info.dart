import 'package:hedera_flutter_sdk/src/crypto/public_key.dart';
import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:meta/meta.dart';

/// Represents the full information of a Hedera account.
///
/// Returned by AccountInfoQuery. Contains the account's identity,
/// controlling key, balance, and configuration settings.
///
/// Example:
/// ```dart
/// final info = await AccountInfoQuery()
///     .setAccountId(accountId)
///     .execute(client);
///
/// print(info.balance.toHbars());
/// print(info.memo);
/// ```
@immutable
class AccountInfo {
  /// Creates an [AccountInfo] with the given fields.
  const AccountInfo({
    required this.accountId,
    required this.key,
    required this.balance,
    required this.deleted,
    required this.memo,
    required this.receiverSignatureRequired,
    required this.maxAutomaticTokenAssociations,
    required this.ownedNfts,
  });

  /// The account's identifier.
  final AccountId accountId;

  /// The key that controls this account.
  final PublicKey key;

  /// The current HBAR balance.
  final Hbar balance;

  /// Whether this account has been deleted.
  final bool deleted;

  /// A short description of this account.
  final String memo;

  /// Whether incoming token transfers require this account's signature.
  final bool receiverSignatureRequired;

  /// The maximum number of automatic token associations.
  final int maxAutomaticTokenAssociations;

  /// The number of NFTs owned by this account.
  final int ownedNfts;

  @override
  String toString() => 'AccountInfo(accountId: $accountId; balance: $balance; '
      'memo: $memo; deleted: $deleted)';
}
