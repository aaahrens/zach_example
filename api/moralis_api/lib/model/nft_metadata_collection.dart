//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NftMetadataCollection {
  /// Returns a new [NftMetadataCollection] instance.
  NftMetadataCollection({
    this.total,
    this.page,
    this.pageSize,
    this.result = const [],
  });

  /// The total number of matches for this query
  int total;

  /// The page of the current result
  int page;

  /// The number of results per page
  int pageSize;

  List<NftMetadata> result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NftMetadataCollection &&
     other.total == total &&
     other.page == page &&
     other.pageSize == pageSize &&
     other.result == result;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (total == null ? 0 : total.hashCode) +
    (page == null ? 0 : page.hashCode) +
    (pageSize == null ? 0 : pageSize.hashCode) +
    (result == null ? 0 : result.hashCode);

  @override
  String toString() => 'NftMetadataCollection[total=$total, page=$page, pageSize=$pageSize, result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (total != null) {
      json[r'total'] = total;
    }
    if (page != null) {
      json[r'page'] = page;
    }
    if (pageSize != null) {
      json[r'page_size'] = pageSize;
    }
    if (result != null) {
      json[r'result'] = result;
    }
    return json;
  }

  /// Returns a new [NftMetadataCollection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NftMetadataCollection fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NftMetadataCollection(
        total: mapValueOfType<int>(json, r'total'),
        page: mapValueOfType<int>(json, r'page'),
        pageSize: mapValueOfType<int>(json, r'page_size'),
        result: NftMetadata.listFromJson(json[r'result']),
      );
    }
    return null;
  }

  static List<NftMetadataCollection> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NftMetadataCollection.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NftMetadataCollection>[];

  static Map<String, NftMetadataCollection> mapFromJson(dynamic json) {
    final map = <String, NftMetadataCollection>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NftMetadataCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NftMetadataCollection-objects as value to a dart map
  static Map<String, List<NftMetadataCollection>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NftMetadataCollection>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NftMetadataCollection.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

