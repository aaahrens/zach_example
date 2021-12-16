//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReservesCollection {
  /// Returns a new [ReservesCollection] instance.
  ReservesCollection({
    @required this.reserve0,
    @required this.reserve1,
  });

  /// reserve0
  String reserve0;

  /// reserve1
  String reserve1;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReservesCollection &&
     other.reserve0 == reserve0 &&
     other.reserve1 == reserve1;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (reserve0 == null ? 0 : reserve0.hashCode) +
    (reserve1 == null ? 0 : reserve1.hashCode);

  @override
  String toString() => 'ReservesCollection[reserve0=$reserve0, reserve1=$reserve1]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reserve0'] = reserve0;
      json[r'reserve1'] = reserve1;
    return json;
  }

  /// Returns a new [ReservesCollection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReservesCollection fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReservesCollection(
        reserve0: mapValueOfType<String>(json, r'reserve0'),
        reserve1: mapValueOfType<String>(json, r'reserve1'),
      );
    }
    return null;
  }

  static List<ReservesCollection> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReservesCollection.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReservesCollection>[];

  static Map<String, ReservesCollection> mapFromJson(dynamic json) {
    final map = <String, ReservesCollection>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReservesCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReservesCollection-objects as value to a dart map
  static Map<String, List<ReservesCollection>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReservesCollection>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReservesCollection.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

