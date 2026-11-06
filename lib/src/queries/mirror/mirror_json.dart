import 'package:hedera_flutter_sdk/src/models/account_id.dart';
import 'package:hedera_flutter_sdk/src/models/token_id.dart';

/// Returns [value] when it is a string, otherwise null.
String? jsonString(Object? value) => value is String ? value : null;

/// Returns [value] as an int when it is an int or a numeric string.
///
/// The Mirror Node sends some numbers as strings (for example token
/// supplies and decimals).
int? jsonInt(Object? value) {
  if (value is int) {
    return value;
  }
  if (value is String) {
    return int.tryParse(value);
  }
  return null;
}

/// Returns [value] when it is a bool, otherwise null.
bool? jsonBool(Object? value) => value is bool ? value : null;

/// Returns [value] when it is a JSON object, otherwise null.
Map<String, dynamic>? jsonMap(Object? value) =>
    value is Map<String, dynamic> ? value : null;

/// Parses an entity ID string into an [AccountId], or null.
///
/// Throws [FormatException] if the string is not a valid ID.
AccountId? jsonAccountId(Object? value) {
  final text = jsonString(value);
  return text == null ? null : AccountId.fromString(text);
}

/// Parses an entity ID string into a [TokenId], or null.
///
/// Throws [FormatException] if the string is not a valid ID.
TokenId? jsonTokenId(Object? value) {
  final text = jsonString(value);
  return text == null ? null : TokenId.fromString(text);
}

/// Reads a required integer field.
///
/// Throws [FormatException] if [key] is missing or not a number.
int requireInt(Map<String, dynamic> json, String key) {
  final value = jsonInt(json[key]);
  if (value == null) {
    throw FormatException('Missing or invalid "$key" in $json');
  }
  return value;
}

/// Reads a list of JSON objects; a missing list gives an empty one.
///
/// Throws [FormatException] if [value] is not a list of objects.
List<Map<String, dynamic>> jsonMapList(Object? value, String name) {
  if (value == null) {
    return const [];
  }
  if (value is! List<dynamic>) {
    throw FormatException('"$name" is not an array');
  }
  final result = <Map<String, dynamic>>[];
  for (final entry in value) {
    if (entry is! Map<String, dynamic>) {
      throw FormatException('Invalid item in "$name"');
    }
    result.add(entry);
  }
  return result;
}
