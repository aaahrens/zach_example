//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BlockDate {
  /// Returns a new [BlockDate] instance.
  BlockDate({
    @required this.date,
    @required this.block,
    @required this.timestamp,
  });

  /// The date of the block
  DateTime date;

  /// The blocknumber
  num block;

  /// The timestamp of the block
  num timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlockDate &&
     other.date == date &&
     other.block == block &&
     other.timestamp == timestamp;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (date == null ? 0 : date.hashCode) +
    (block == null ? 0 : block.hashCode) +
    (timestamp == null ? 0 : timestamp.hashCode);

  @override
  String toString() => 'BlockDate[date=$date, block=$block, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = date;
      json[r'block'] = block;
      json[r'timestamp'] = timestamp;
    return json;
  }

  /// Returns a new [BlockDate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlockDate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BlockDate(
        date: DateTime.parse(json[r'date']),
        block: json[r'block'] == null
          ? null
          : num.parse(json[r'block'].toString()),
        timestamp: json[r'timestamp'] == null
          ? null
          : num.parse(json[r'timestamp'].toString()),
      );
    }
    return null;
  }

  static List<BlockDate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BlockDate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BlockDate>[];

  static Map<String, BlockDate> mapFromJson(dynamic json) {
    final map = <String, BlockDate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BlockDate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BlockDate-objects as value to a dart map
  static Map<String, List<BlockDate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BlockDate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BlockDate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

