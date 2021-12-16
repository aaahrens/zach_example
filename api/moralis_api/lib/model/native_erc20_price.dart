//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NativeErc20Price {
  /// Returns a new [NativeErc20Price] instance.
  NativeErc20Price({
    @required this.value,
    @required this.decimals,
    @required this.name,
    @required this.symbol,
  });

  /// The native price of the token
  String value;

  /// The number of decimals of the token
  int decimals;

  /// The Name of the token
  String name;

  /// The Symbol of the token
  String symbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NativeErc20Price &&
     other.value == value &&
     other.decimals == decimals &&
     other.name == name &&
     other.symbol == symbol;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (value == null ? 0 : value.hashCode) +
    (decimals == null ? 0 : decimals.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (symbol == null ? 0 : symbol.hashCode);

  @override
  String toString() => 'NativeErc20Price[value=$value, decimals=$decimals, name=$name, symbol=$symbol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'value'] = value;
      json[r'decimals'] = decimals;
      json[r'name'] = name;
      json[r'symbol'] = symbol;
    return json;
  }

  /// Returns a new [NativeErc20Price] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NativeErc20Price fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NativeErc20Price(
        value: mapValueOfType<String>(json, r'value'),
        decimals: mapValueOfType<int>(json, r'decimals'),
        name: mapValueOfType<String>(json, r'name'),
        symbol: mapValueOfType<String>(json, r'symbol'),
      );
    }
    return null;
  }

  static List<NativeErc20Price> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NativeErc20Price.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NativeErc20Price>[];

  static Map<String, NativeErc20Price> mapFromJson(dynamic json) {
    final map = <String, NativeErc20Price>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NativeErc20Price.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NativeErc20Price-objects as value to a dart map
  static Map<String, List<NativeErc20Price>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NativeErc20Price>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NativeErc20Price.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

