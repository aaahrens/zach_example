//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NftContractMetadata {
  /// Returns a new [NftContractMetadata] instance.
  NftContractMetadata({
    @required this.tokenAddress,
    @required this.name,
    this.abi,
    this.supportsTokenUri,
    this.syncedAt,
    @required this.symbol,
    @required this.contractType,
  });

  /// The address of the token contract
  String tokenAddress;

  /// The name of the token Contract
  String name;

  /// The abi of the token Contract
  String abi;

  /// value -1 if the contract does not support token_uri
  int supportsTokenUri;

  /// Timestamp of when the contract was last synced with the node
  String syncedAt;

  /// The symbol of the NFT contract
  String symbol;

  /// The type of NFT contract
  String contractType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NftContractMetadata &&
     other.tokenAddress == tokenAddress &&
     other.name == name &&
     other.abi == abi &&
     other.supportsTokenUri == supportsTokenUri &&
     other.syncedAt == syncedAt &&
     other.symbol == symbol &&
     other.contractType == contractType;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (tokenAddress == null ? 0 : tokenAddress.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (abi == null ? 0 : abi.hashCode) +
    (supportsTokenUri == null ? 0 : supportsTokenUri.hashCode) +
    (syncedAt == null ? 0 : syncedAt.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (contractType == null ? 0 : contractType.hashCode);

  @override
  String toString() => 'NftContractMetadata[tokenAddress=$tokenAddress, name=$name, abi=$abi, supportsTokenUri=$supportsTokenUri, syncedAt=$syncedAt, symbol=$symbol, contractType=$contractType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token_address'] = tokenAddress;
      json[r'name'] = name;
    if (abi != null) {
      json[r'abi'] = abi;
    }
    if (supportsTokenUri != null) {
      json[r'supports_token_uri'] = supportsTokenUri;
    }
    if (syncedAt != null) {
      json[r'synced_at'] = syncedAt;
    }
      json[r'symbol'] = symbol;
      json[r'contract_type'] = contractType;
    return json;
  }

  /// Returns a new [NftContractMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NftContractMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NftContractMetadata(
        tokenAddress: mapValueOfType<String>(json, r'token_address'),
        name: mapValueOfType<String>(json, r'name'),
        abi: mapValueOfType<String>(json, r'abi'),
        supportsTokenUri: mapValueOfType<int>(json, r'supports_token_uri'),
        syncedAt: mapValueOfType<String>(json, r'synced_at'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        contractType: mapValueOfType<String>(json, r'contract_type'),
      );
    }
    return null;
  }

  static List<NftContractMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NftContractMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NftContractMetadata>[];

  static Map<String, NftContractMetadata> mapFromJson(dynamic json) {
    final map = <String, NftContractMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NftContractMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NftContractMetadata-objects as value to a dart map
  static Map<String, List<NftContractMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NftContractMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NftContractMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

