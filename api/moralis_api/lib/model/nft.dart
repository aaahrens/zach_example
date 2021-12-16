//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Nft {
  /// Returns a new [Nft] instance.
  Nft({
    @required this.tokenAddress,
    @required this.tokenId,
    @required this.contractType,
    this.tokenUri,
    this.metadata,
    this.syncedAt,
    this.amount,
    @required this.name,
    @required this.symbol,
  });

  /// The address of the contract of the NFT
  String tokenAddress;

  /// The token id of the NFT
  String tokenId;

  /// The type of NFT contract standard
  String contractType;

  /// The uri to the metadata of the token
  String tokenUri;

  /// The metadata of the token
  String metadata;

  /// when the metadata was last updated
  String syncedAt;

  /// The number of this item the user owns (used by ERC1155)
  String amount;

  /// The name of the Token contract
  String name;

  /// The symbol of the NFT contract
  String symbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Nft &&
     other.tokenAddress == tokenAddress &&
     other.tokenId == tokenId &&
     other.contractType == contractType &&
     other.tokenUri == tokenUri &&
     other.metadata == metadata &&
     other.syncedAt == syncedAt &&
     other.amount == amount &&
     other.name == name &&
     other.symbol == symbol;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (tokenAddress == null ? 0 : tokenAddress.hashCode) +
    (tokenId == null ? 0 : tokenId.hashCode) +
    (contractType == null ? 0 : contractType.hashCode) +
    (tokenUri == null ? 0 : tokenUri.hashCode) +
    (metadata == null ? 0 : metadata.hashCode) +
    (syncedAt == null ? 0 : syncedAt.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (symbol == null ? 0 : symbol.hashCode);

  @override
  String toString() => 'Nft[tokenAddress=$tokenAddress, tokenId=$tokenId, contractType=$contractType, tokenUri=$tokenUri, metadata=$metadata, syncedAt=$syncedAt, amount=$amount, name=$name, symbol=$symbol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token_address'] = tokenAddress;
      json[r'token_id'] = tokenId;
      json[r'contract_type'] = contractType;
    if (tokenUri != null) {
      json[r'token_uri'] = tokenUri;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    if (syncedAt != null) {
      json[r'synced_at'] = syncedAt;
    }
    if (amount != null) {
      json[r'amount'] = amount;
    }
      json[r'name'] = name;
      json[r'symbol'] = symbol;
    return json;
  }

  /// Returns a new [Nft] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Nft fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Nft(
        tokenAddress: mapValueOfType<String>(json, r'token_address'),
        tokenId: mapValueOfType<String>(json, r'token_id'),
        contractType: mapValueOfType<String>(json, r'contract_type'),
        tokenUri: mapValueOfType<String>(json, r'token_uri'),
        metadata: mapValueOfType<String>(json, r'metadata'),
        syncedAt: mapValueOfType<String>(json, r'synced_at'),
        amount: mapValueOfType<String>(json, r'amount'),
        name: mapValueOfType<String>(json, r'name'),
        symbol: mapValueOfType<String>(json, r'symbol'),
      );
    }
    return null;
  }

  static List<Nft> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Nft.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Nft>[];

  static Map<String, Nft> mapFromJson(dynamic json) {
    final map = <String, Nft>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Nft.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Nft-objects as value to a dart map
  static Map<String, List<Nft>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Nft>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Nft.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

