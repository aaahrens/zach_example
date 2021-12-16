//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NftOwner {
  /// Returns a new [NftOwner] instance.
  NftOwner({
    @required this.tokenAddress,
    @required this.tokenId,
    @required this.contractType,
    @required this.ownerOf,
    @required this.blockNumber,
    @required this.blockNumberMinted,
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

  /// The address of the owner of the NFT
  String ownerOf;

  /// The blocknumber when the amount or owner changed
  String blockNumber;

  /// The blocknumber when the NFT was minted
  String blockNumberMinted;

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
  bool operator ==(Object other) => identical(this, other) || other is NftOwner &&
     other.tokenAddress == tokenAddress &&
     other.tokenId == tokenId &&
     other.contractType == contractType &&
     other.ownerOf == ownerOf &&
     other.blockNumber == blockNumber &&
     other.blockNumberMinted == blockNumberMinted &&
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
    (ownerOf == null ? 0 : ownerOf.hashCode) +
    (blockNumber == null ? 0 : blockNumber.hashCode) +
    (blockNumberMinted == null ? 0 : blockNumberMinted.hashCode) +
    (tokenUri == null ? 0 : tokenUri.hashCode) +
    (metadata == null ? 0 : metadata.hashCode) +
    (syncedAt == null ? 0 : syncedAt.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (symbol == null ? 0 : symbol.hashCode);

  @override
  String toString() => 'NftOwner[tokenAddress=$tokenAddress, tokenId=$tokenId, contractType=$contractType, ownerOf=$ownerOf, blockNumber=$blockNumber, blockNumberMinted=$blockNumberMinted, tokenUri=$tokenUri, metadata=$metadata, syncedAt=$syncedAt, amount=$amount, name=$name, symbol=$symbol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token_address'] = tokenAddress;
      json[r'token_id'] = tokenId;
      json[r'contract_type'] = contractType;
      json[r'owner_of'] = ownerOf;
      json[r'block_number'] = blockNumber;
      json[r'block_number_minted'] = blockNumberMinted;
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

  /// Returns a new [NftOwner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NftOwner fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NftOwner(
        tokenAddress: mapValueOfType<String>(json, r'token_address'),
        tokenId: mapValueOfType<String>(json, r'token_id'),
        contractType: mapValueOfType<String>(json, r'contract_type'),
        ownerOf: mapValueOfType<String>(json, r'owner_of'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        blockNumberMinted: mapValueOfType<String>(json, r'block_number_minted'),
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

  static List<NftOwner> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NftOwner.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NftOwner>[];

  static Map<String, NftOwner> mapFromJson(dynamic json) {
    final map = <String, NftOwner>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NftOwner.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NftOwner-objects as value to a dart map
  static Map<String, List<NftOwner>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NftOwner>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NftOwner.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

