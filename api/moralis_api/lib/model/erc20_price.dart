//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Erc20Price {
  /// Returns a new [Erc20Price] instance.
  Erc20Price({
    this.nativePrice,
    @required this.usdPrice,
    this.exchangeAddress,
    this.exchangeName,
  });

  NativeErc20Price nativePrice;

  /// The price in USD for the token
  double usdPrice;

  /// The address of the exchange used to calculate the price
  String exchangeAddress;

  /// The name of the exchange used for calculating the price
  String exchangeName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Erc20Price &&
     other.nativePrice == nativePrice &&
     other.usdPrice == usdPrice &&
     other.exchangeAddress == exchangeAddress &&
     other.exchangeName == exchangeName;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (nativePrice == null ? 0 : nativePrice.hashCode) +
    (usdPrice == null ? 0 : usdPrice.hashCode) +
    (exchangeAddress == null ? 0 : exchangeAddress.hashCode) +
    (exchangeName == null ? 0 : exchangeName.hashCode);

  @override
  String toString() => 'Erc20Price[nativePrice=$nativePrice, usdPrice=$usdPrice, exchangeAddress=$exchangeAddress, exchangeName=$exchangeName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (nativePrice != null) {
      json[r'nativePrice'] = nativePrice;
    }
      json[r'usdPrice'] = usdPrice;
    if (exchangeAddress != null) {
      json[r'exchangeAddress'] = exchangeAddress;
    }
    if (exchangeName != null) {
      json[r'exchangeName'] = exchangeName;
    }
    return json;
  }

  /// Returns a new [Erc20Price] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Erc20Price fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Erc20Price(
        nativePrice: NativeErc20Price.fromJson(json[r'nativePrice']),
        usdPrice: mapValueOfType<double>(json, r'usdPrice'),
        exchangeAddress: mapValueOfType<String>(json, r'exchangeAddress'),
        exchangeName: mapValueOfType<String>(json, r'exchangeName'),
      );
    }
    return null;
  }

  static List<Erc20Price> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Erc20Price.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Erc20Price>[];

  static Map<String, Erc20Price> mapFromJson(dynamic json) {
    final map = <String, Erc20Price>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Erc20Price.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Erc20Price-objects as value to a dart map
  static Map<String, List<Erc20Price>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Erc20Price>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Erc20Price.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

