import 'package:meta/meta.dart';

/// Represents an amount of HBAR; the native cryptocurrency of Hedera.
///
/// Internally stores the value in tinybars (the smallest unit).
/// 1 HBAR = 100,000,000 tinybars.
///
/// Example:
/// ```dart
/// final oneHbar = Hbar(1);
/// final feeAmount = Hbar.fromTinybars(100);
/// print(oneHbar.toTinybars()); // 100000000
/// ```
@immutable
class Hbar {
  /// Creates an [Hbar] from a whole HBAR amount.
  ///
  /// Example:
  /// ```dart
  /// final fee = Hbar(2); // 2 HBAR
  /// ```
  const Hbar(int hbars) : _tinybars = hbars * _tinybarsPerHbar;

  /// Creates an [Hbar] from a tinybar amount.
  ///
  /// Example:
  /// ```dart
  /// final fee = Hbar.fromTinybars(100);
  /// ```
  const Hbar.fromTinybars(int tinybars) : _tinybars = tinybars;

  /// The number of tinybars in one HBAR.
  static const int _tinybarsPerHbar = 100000000;

  /// Zero HBAR.
  static const Hbar zero = Hbar.fromTinybars(0);

  /// The value in tinybars.
  final int _tinybars;

  /// Returns the value in tinybars.
  int toTinybars() => _tinybars;

  /// Returns the value in HBAR as a double.
  double toHbars() => _tinybars / _tinybarsPerHbar;

  /// Returns a new [Hbar] with the negated value.
  ///
  /// Useful for transfer transactions where the sender uses a negative amount.
  ///
  /// Example:
  /// ```dart
  /// final send = Hbar(10).negated(); // -10 HBAR in tinybars
  /// ```
  Hbar negated() => Hbar.fromTinybars(-_tinybars);

  @override
  String toString() => '${toHbars()} ℏ';

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Hbar && _tinybars == other._tinybars;

  @override
  int get hashCode => _tinybars.hashCode;
}
