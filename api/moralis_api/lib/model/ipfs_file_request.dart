//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IpfsFileRequest {
  /// Returns a new [IpfsFileRequest] instance.
  IpfsFileRequest({
    @required this.path,
    @required this.content,
  });

  /// Path to file
  String path;

  /// base64 or JSON
  String content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IpfsFileRequest &&
     other.path == path &&
     other.content == content;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (path == null ? 0 : path.hashCode) +
    (content == null ? 0 : content.hashCode);

  @override
  String toString() => 'IpfsFileRequest[path=$path, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'path'] = path;
      json[r'content'] = content;
    return json;
  }

  /// Returns a new [IpfsFileRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IpfsFileRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return IpfsFileRequest(
        path: mapValueOfType<String>(json, r'path'),
        content: mapValueOfType<String>(json, r'content'),
      );
    }
    return null;
  }

  static List<IpfsFileRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(IpfsFileRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <IpfsFileRequest>[];

  static Map<String, IpfsFileRequest> mapFromJson(dynamic json) {
    final map = <String, IpfsFileRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = IpfsFileRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IpfsFileRequest-objects as value to a dart map
  static Map<String, List<IpfsFileRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IpfsFileRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = IpfsFileRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

