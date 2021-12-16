//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Erc20Allowance {
  /// Returns a new [Erc20Allowance] instance.
  Erc20Allowance({
    @required this.allowance,
  });

  /// The allowance
  String allowance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Erc20Allowance &&
     other.allowance == allowance;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (allowance == null ? 0 : allowance.hashCode);

  @override
  String toString() => 'Erc20Allowance[allowance=$allowance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'allowance'] = allowance;
    return json;
  }

  /// Returns a new [Erc20Allowance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Erc20Allowance fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Erc20Allowance(
        allowance: mapValueOfType<String>(json, r'allowance'),
      );
    }
    return null;
  }

  static List<Erc20Allowance> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Erc20Allowance.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Erc20Allowance>[];

  static Map<String, Erc20Allowance> mapFromJson(dynamic json) {
    final map = <String, Erc20Allowance>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Erc20Allowance.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Erc20Allowance-objects as value to a dart map
  static Map<String, List<Erc20Allowance>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Erc20Allowance>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Erc20Allowance.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

