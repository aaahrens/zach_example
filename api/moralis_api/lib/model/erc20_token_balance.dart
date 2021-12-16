//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Erc20TokenBalance {
  /// Returns a new [Erc20TokenBalance] instance.
  Erc20TokenBalance({
    @required this.tokenAddress,
    @required this.name,
    @required this.symbol,
    this.logo,
    this.thumbnail,
    @required this.decimals,
    @required this.balance,
  });

  /// The address of the token contract
  String tokenAddress;

  /// The name of the token Contract
  String name;

  /// The symbol of the NFT contract
  String symbol;

  /// The logo of the token
  String logo;

  /// The thumbnail of the logo
  String thumbnail;

  /// The number of decimals on of the token
  String decimals;

  /// Timestamp of when the contract was last synced with the node
  String balance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Erc20TokenBalance &&
     other.tokenAddress == tokenAddress &&
     other.name == name &&
     other.symbol == symbol &&
     other.logo == logo &&
     other.thumbnail == thumbnail &&
     other.decimals == decimals &&
     other.balance == balance;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (tokenAddress == null ? 0 : tokenAddress.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (logo == null ? 0 : logo.hashCode) +
    (thumbnail == null ? 0 : thumbnail.hashCode) +
    (decimals == null ? 0 : decimals.hashCode) +
    (balance == null ? 0 : balance.hashCode);

  @override
  String toString() => 'Erc20TokenBalance[tokenAddress=$tokenAddress, name=$name, symbol=$symbol, logo=$logo, thumbnail=$thumbnail, decimals=$decimals, balance=$balance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token_address'] = tokenAddress;
      json[r'name'] = name;
      json[r'symbol'] = symbol;
    if (logo != null) {
      json[r'logo'] = logo;
    }
    if (thumbnail != null) {
      json[r'thumbnail'] = thumbnail;
    }
      json[r'decimals'] = decimals;
      json[r'balance'] = balance;
    return json;
  }

  /// Returns a new [Erc20TokenBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Erc20TokenBalance fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Erc20TokenBalance(
        tokenAddress: mapValueOfType<String>(json, r'token_address'),
        name: mapValueOfType<String>(json, r'name'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        logo: mapValueOfType<String>(json, r'logo'),
        thumbnail: mapValueOfType<String>(json, r'thumbnail'),
        decimals: mapValueOfType<String>(json, r'decimals'),
        balance: mapValueOfType<String>(json, r'balance'),
      );
    }
    return null;
  }

  static List<Erc20TokenBalance> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Erc20TokenBalance.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Erc20TokenBalance>[];

  static Map<String, Erc20TokenBalance> mapFromJson(dynamic json) {
    final map = <String, Erc20TokenBalance>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Erc20TokenBalance.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Erc20TokenBalance-objects as value to a dart map
  static Map<String, List<Erc20TokenBalance>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Erc20TokenBalance>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Erc20TokenBalance.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

