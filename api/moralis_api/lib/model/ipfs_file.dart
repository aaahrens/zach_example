//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IpfsFile {
  /// Returns a new [IpfsFile] instance.
  IpfsFile({
    @required this.path,
  });

  /// Path to file
  String path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IpfsFile &&
     other.path == path;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (path == null ? 0 : path.hashCode);

  @override
  String toString() => 'IpfsFile[path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'path'] = path;
    return json;
  }

  /// Returns a new [IpfsFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IpfsFile fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return IpfsFile(
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<IpfsFile> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(IpfsFile.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <IpfsFile>[];

  static Map<String, IpfsFile> mapFromJson(dynamic json) {
    final map = <String, IpfsFile>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = IpfsFile.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IpfsFile-objects as value to a dart map
  static Map<String, List<IpfsFile>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IpfsFile>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = IpfsFile.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

