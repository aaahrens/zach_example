//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NativeBalance {
  /// Returns a new [NativeBalance] instance.
  NativeBalance({
    @required this.balance,
  });

  /// The balance
  String balance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NativeBalance &&
     other.balance == balance;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (balance == null ? 0 : balance.hashCode);

  @override
  String toString() => 'NativeBalance[balance=$balance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'balance'] = balance;
    return json;
  }

  /// Returns a new [NativeBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NativeBalance fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NativeBalance(
        balance: mapValueOfType<String>(json, r'balance'),
      );
    }
    return null;
  }

  static List<NativeBalance> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NativeBalance.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NativeBalance>[];

  static Map<String, NativeBalance> mapFromJson(dynamic json) {
    final map = <String, NativeBalance>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NativeBalance.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NativeBalance-objects as value to a dart map
  static Map<String, List<NativeBalance>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NativeBalance>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NativeBalance.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

