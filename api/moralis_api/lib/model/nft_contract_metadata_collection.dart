//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NftContractMetadataCollection {
  /// Returns a new [NftContractMetadataCollection] instance.
  NftContractMetadataCollection({
    @required this.total,
    @required this.page,
    @required this.pageSize,
    this.result = const [],
  });

  /// The total number of matches for this query
  int total;

  /// The page of the current result
  int page;

  /// The number of results per page
  int pageSize;

  List<NftContractMetadata> result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NftContractMetadataCollection &&
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
  String toString() => 'NftContractMetadataCollection[total=$total, page=$page, pageSize=$pageSize, result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total'] = total;
      json[r'page'] = page;
      json[r'page_size'] = pageSize;
      json[r'result'] = result;
    return json;
  }

  /// Returns a new [NftContractMetadataCollection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NftContractMetadataCollection fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NftContractMetadataCollection(
        total: mapValueOfType<int>(json, r'total'),
        page: mapValueOfType<int>(json, r'page'),
        pageSize: mapValueOfType<int>(json, r'page_size'),
        result: NftContractMetadata.listFromJson(json[r'result']),
      );
    }
    return null;
  }

  static List<NftContractMetadataCollection> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NftContractMetadataCollection.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NftContractMetadataCollection>[];

  static Map<String, NftContractMetadataCollection> mapFromJson(dynamic json) {
    final map = <String, NftContractMetadataCollection>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NftContractMetadataCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NftContractMetadataCollection-objects as value to a dart map
  static Map<String, List<NftContractMetadataCollection>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NftContractMetadataCollection>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NftContractMetadataCollection.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

