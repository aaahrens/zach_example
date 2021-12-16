//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Erc20TransactionCollection {
  /// Returns a new [Erc20TransactionCollection] instance.
  Erc20TransactionCollection({
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

  List<Erc20Transaction> result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Erc20TransactionCollection &&
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
  String toString() => 'Erc20TransactionCollection[total=$total, page=$page, pageSize=$pageSize, result=$result]';

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

  /// Returns a new [Erc20TransactionCollection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Erc20TransactionCollection fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Erc20TransactionCollection(
        total: mapValueOfType<int>(json, r'total'),
        page: mapValueOfType<int>(json, r'page'),
        pageSize: mapValueOfType<int>(json, r'page_size'),
        result: Erc20Transaction.listFromJson(json[r'result']),
      );
    }
    return null;
  }

  static List<Erc20TransactionCollection> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Erc20TransactionCollection.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Erc20TransactionCollection>[];

  static Map<String, Erc20TransactionCollection> mapFromJson(dynamic json) {
    final map = <String, Erc20TransactionCollection>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Erc20TransactionCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Erc20TransactionCollection-objects as value to a dart map
  static Map<String, List<Erc20TransactionCollection>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Erc20TransactionCollection>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Erc20TransactionCollection.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

