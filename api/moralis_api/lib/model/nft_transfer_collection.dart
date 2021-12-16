//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NftTransferCollection {
  /// Returns a new [NftTransferCollection] instance.
  NftTransferCollection({
    @required this.total,
    @required this.page,
    @required this.pageSize,
    this.result = const [],
    this.blockExists,
  });

  /// The total number of matches for this query
  int total;

  /// The page of the current result
  int page;

  /// The number of results per page
  int pageSize;

  List<NftTransfer> result;

  /// Indicator if the block exists
  bool blockExists;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NftTransferCollection &&
     other.total == total &&
     other.page == page &&
     other.pageSize == pageSize &&
     other.result == result &&
     other.blockExists == blockExists;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (total == null ? 0 : total.hashCode) +
    (page == null ? 0 : page.hashCode) +
    (pageSize == null ? 0 : pageSize.hashCode) +
    (result == null ? 0 : result.hashCode) +
    (blockExists == null ? 0 : blockExists.hashCode);

  @override
  String toString() => 'NftTransferCollection[total=$total, page=$page, pageSize=$pageSize, result=$result, blockExists=$blockExists]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total'] = total;
      json[r'page'] = page;
      json[r'page_size'] = pageSize;
      json[r'result'] = result;
    if (blockExists != null) {
      json[r'block_exists'] = blockExists;
    }
    return json;
  }

  /// Returns a new [NftTransferCollection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NftTransferCollection fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NftTransferCollection(
        total: mapValueOfType<int>(json, r'total'),
        page: mapValueOfType<int>(json, r'page'),
        pageSize: mapValueOfType<int>(json, r'page_size'),
        result: NftTransfer.listFromJson(json[r'result']),
        blockExists: mapValueOfType<bool>(json, r'block_exists'),
      );
    }
    return null;
  }

  static List<NftTransferCollection> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NftTransferCollection.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NftTransferCollection>[];

  static Map<String, NftTransferCollection> mapFromJson(dynamic json) {
    final map = <String, NftTransferCollection>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NftTransferCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NftTransferCollection-objects as value to a dart map
  static Map<String, List<NftTransferCollection>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NftTransferCollection>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NftTransferCollection.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

