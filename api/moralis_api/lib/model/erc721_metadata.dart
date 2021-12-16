//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Erc721Metadata {
  /// Returns a new [Erc721Metadata] instance.
  Erc721Metadata({
    @required this.name,
    @required this.symbol,
    this.tokenUri,
  });

  /// The name of the token Contract
  String name;

  /// The symbol of the NFT contract
  String symbol;

  String tokenUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Erc721Metadata &&
     other.name == name &&
     other.symbol == symbol &&
     other.tokenUri == tokenUri;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (tokenUri == null ? 0 : tokenUri.hashCode);

  @override
  String toString() => 'Erc721Metadata[name=$name, symbol=$symbol, tokenUri=$tokenUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'symbol'] = symbol;
    if (tokenUri != null) {
      json[r'token_uri'] = tokenUri;
    }
    return json;
  }

  /// Returns a new [Erc721Metadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Erc721Metadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Erc721Metadata(
        name: mapValueOfType<String>(json, r'name'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        tokenUri: mapValueOfType<String>(json, r'token_uri'),
      );
    }
    return null;
  }

  static List<Erc721Metadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Erc721Metadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Erc721Metadata>[];

  static Map<String, Erc721Metadata> mapFromJson(dynamic json) {
    final map = <String, Erc721Metadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Erc721Metadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Erc721Metadata-objects as value to a dart map
  static Map<String, List<Erc721Metadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Erc721Metadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Erc721Metadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

