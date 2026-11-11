import 'package:hedera_flutter_sdk/src/models/hbar.dart';
import 'package:meta/meta.dart';

/// The HBAR balance of an account, as returned by the Mirror Node.
///
/// Token balances are not part of this result; use
/// `MirrorNodeTokenBalanceQuery` for those.
///
/// Example:
/// ```dart
/// final balance = await MirrorNodeAccountBalanceQuery()
///     .setAccountId(AccountId.fromString('0.0.12345'))
///     .execute(client);
/// print(balance.hbars); // 10.0 ℏ
/// ```
@immutable
class MirrorNodeAccountBalance {
  /// Creates a [MirrorNodeAccountBalance].
  const MirrorNodeAccountBalance({required this.hbars, this.timestamp});

  /// The HBAR balance of the account.
  final Hbar hbars;

  /// The consensus timestamp of the balance, in `seconds.nanoseconds`
  /// format, when the Mirror Node reports one.
  final String? timestamp;

  @override
  String toString() => 'MirrorNodeAccountBalance(hbars: $hbars)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MirrorNodeAccountBalance &&
          hbars == other.hbars &&
          timestamp == other.timestamp;

  @override
  int get hashCode => Object.hash(hbars, timestamp);
}
