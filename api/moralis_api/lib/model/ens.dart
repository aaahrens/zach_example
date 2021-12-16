//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Ens {
  /// Returns a new [Ens] instance.
  Ens({
    @required this.name,
  });

  /// Resolved ENS address
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Ens &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'Ens[name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
    return json;
  }

  /// Returns a new [Ens] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Ens fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Ens(
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<Ens> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Ens.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Ens>[];

  static Map<String, Ens> mapFromJson(dynamic json) {
    final map = <String, Ens>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Ens.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Ens-objects as value to a dart map
  static Map<String, List<Ens>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Ens>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Ens.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

