//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Erc20Metadata {
  /// Returns a new [Erc20Metadata] instance.
  Erc20Metadata({
    @required this.address,
    @required this.name,
    @required this.symbol,
    @required this.decimals,
    this.logo,
    this.logoHash,
    this.thumbnail,
    this.blockNumber,
    this.validated,
  });

  /// The address of the token contract
  String address;

  /// The name of the token Contract
  String name;

  /// The symbol of the NFT contract
  String symbol;

  /// The number of decimals on of the token
  String decimals;

  /// The logo of the token
  String logo;

  /// The logo hash
  String logoHash;

  /// The thumbnail of the logo
  String thumbnail;

  String blockNumber;

  String validated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Erc20Metadata &&
     other.address == address &&
     other.name == name &&
     other.symbol == symbol &&
     other.decimals == decimals &&
     other.logo == logo &&
     other.logoHash == logoHash &&
     other.thumbnail == thumbnail &&
     other.blockNumber == blockNumber &&
     other.validated == validated;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (address == null ? 0 : address.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (decimals == null ? 0 : decimals.hashCode) +
    (logo == null ? 0 : logo.hashCode) +
    (logoHash == null ? 0 : logoHash.hashCode) +
    (thumbnail == null ? 0 : thumbnail.hashCode) +
    (blockNumber == null ? 0 : blockNumber.hashCode) +
    (validated == null ? 0 : validated.hashCode);

  @override
  String toString() => 'Erc20Metadata[address=$address, name=$name, symbol=$symbol, decimals=$decimals, logo=$logo, logoHash=$logoHash, thumbnail=$thumbnail, blockNumber=$blockNumber, validated=$validated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'address'] = address;
      json[r'name'] = name;
      json[r'symbol'] = symbol;
      json[r'decimals'] = decimals;
    if (logo != null) {
      json[r'logo'] = logo;
    }
    if (logoHash != null) {
      json[r'logo_hash'] = logoHash;
    }
    if (thumbnail != null) {
      json[r'thumbnail'] = thumbnail;
    }
    if (blockNumber != null) {
      json[r'block_number'] = blockNumber;
    }
    if (validated != null) {
      json[r'validated'] = validated;
    }
    return json;
  }

  /// Returns a new [Erc20Metadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Erc20Metadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Erc20Metadata(
        address: mapValueOfType<String>(json, r'address'),
        name: mapValueOfType<String>(json, r'name'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        decimals: mapValueOfType<String>(json, r'decimals'),
        logo: mapValueOfType<String>(json, r'logo'),
        logoHash: mapValueOfType<String>(json, r'logo_hash'),
        thumbnail: mapValueOfType<String>(json, r'thumbnail'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        validated: mapValueOfType<String>(json, r'validated'),
      );
    }
    return null;
  }

  static List<Erc20Metadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Erc20Metadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Erc20Metadata>[];

  static Map<String, Erc20Metadata> mapFromJson(dynamic json) {
    final map = <String, Erc20Metadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Erc20Metadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Erc20Metadata-objects as value to a dart map
  static Map<String, List<Erc20Metadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Erc20Metadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Erc20Metadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

