//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NftMetadata {
  /// Returns a new [NftMetadata] instance.
  NftMetadata({
    @required this.tokenAddress,
    @required this.tokenId,
    @required this.contractType,
    @required this.tokenUri,
    @required this.metadata,
    @required this.syncedAt,
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

  @override
  bool operator ==(Object other) => identical(this, other) || other is NftMetadata &&
     other.tokenAddress == tokenAddress &&
     other.tokenId == tokenId &&
     other.contractType == contractType &&
     other.tokenUri == tokenUri &&
     other.metadata == metadata &&
     other.syncedAt == syncedAt;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (tokenAddress == null ? 0 : tokenAddress.hashCode) +
    (tokenId == null ? 0 : tokenId.hashCode) +
    (contractType == null ? 0 : contractType.hashCode) +
    (tokenUri == null ? 0 : tokenUri.hashCode) +
    (metadata == null ? 0 : metadata.hashCode) +
    (syncedAt == null ? 0 : syncedAt.hashCode);

  @override
  String toString() => 'NftMetadata[tokenAddress=$tokenAddress, tokenId=$tokenId, contractType=$contractType, tokenUri=$tokenUri, metadata=$metadata, syncedAt=$syncedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token_address'] = tokenAddress;
      json[r'token_id'] = tokenId;
      json[r'contract_type'] = contractType;
      json[r'token_uri'] = tokenUri;
      json[r'metadata'] = metadata;
      json[r'synced_at'] = syncedAt;
    return json;
  }

  /// Returns a new [NftMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NftMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NftMetadata(
        tokenAddress: mapValueOfType<String>(json, r'token_address'),
        tokenId: mapValueOfType<String>(json, r'token_id'),
        contractType: mapValueOfType<String>(json, r'contract_type'),
        tokenUri: mapValueOfType<String>(json, r'token_uri'),
        metadata: mapValueOfType<String>(json, r'metadata'),
        syncedAt: mapValueOfType<String>(json, r'synced_at'),
      );
    }
    return null;
  }

  static List<NftMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NftMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NftMetadata>[];

  static Map<String, NftMetadata> mapFromJson(dynamic json) {
    final map = <String, NftMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NftMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NftMetadata-objects as value to a dart map
  static Map<String, List<NftMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NftMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NftMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

