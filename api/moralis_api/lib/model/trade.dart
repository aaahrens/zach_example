//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Trade {
  /// Returns a new [Trade] instance.
  Trade({
    @required this.transactionHash,
    @required this.transactionIndex,
    @required this.tokenIds,
    @required this.sellerAddress,
    @required this.buyerAddress,
    @required this.marketplaceAddress,
    @required this.price,
    @required this.blockTimestamp,
    @required this.blockNumber,
    @required this.blockHash,
  });

  /// The transaction hash
  String transactionHash;

  /// The transaction index
  String transactionIndex;

  /// The token id(s) traded
  List tokenIds;

  /// The address that sold the NFT
  String sellerAddress;

  /// The address that bought the NFT
  String buyerAddress;

  /// The address of the contract that traded the NFT
  String marketplaceAddress;

  /// The value that was sent in the transaction (ETH/BNB/etc..)
  String price;

  /// The block timestamp
  String blockTimestamp;

  /// The blocknumber of the transaction
  String blockNumber;

  /// The block hash
  String blockHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Trade &&
     other.transactionHash == transactionHash &&
     other.transactionIndex == transactionIndex &&
     other.tokenIds == tokenIds &&
     other.sellerAddress == sellerAddress &&
     other.buyerAddress == buyerAddress &&
     other.marketplaceAddress == marketplaceAddress &&
     other.price == price &&
     other.blockTimestamp == blockTimestamp &&
     other.blockNumber == blockNumber &&
     other.blockHash == blockHash;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionHash == null ? 0 : transactionHash.hashCode) +
    (transactionIndex == null ? 0 : transactionIndex.hashCode) +
    (tokenIds == null ? 0 : tokenIds.hashCode) +
    (sellerAddress == null ? 0 : sellerAddress.hashCode) +
    (buyerAddress == null ? 0 : buyerAddress.hashCode) +
    (marketplaceAddress == null ? 0 : marketplaceAddress.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (blockTimestamp == null ? 0 : blockTimestamp.hashCode) +
    (blockNumber == null ? 0 : blockNumber.hashCode) +
    (blockHash == null ? 0 : blockHash.hashCode);

  @override
  String toString() => 'Trade[transactionHash=$transactionHash, transactionIndex=$transactionIndex, tokenIds=$tokenIds, sellerAddress=$sellerAddress, buyerAddress=$buyerAddress, marketplaceAddress=$marketplaceAddress, price=$price, blockTimestamp=$blockTimestamp, blockNumber=$blockNumber, blockHash=$blockHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_hash'] = transactionHash;
      json[r'transaction_index'] = transactionIndex;
      json[r'token_ids'] = tokenIds;
      json[r'seller_address'] = sellerAddress;
      json[r'buyer_address'] = buyerAddress;
      json[r'marketplace_address'] = marketplaceAddress;
      json[r'price'] = price;
      json[r'block_timestamp'] = blockTimestamp;
      json[r'block_number'] = blockNumber;
      json[r'block_hash'] = blockHash;
    return json;
  }

  /// Returns a new [Trade] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Trade fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Trade(
        transactionHash: mapValueOfType<String>(json, r'transaction_hash'),
        transactionIndex: mapValueOfType<String>(json, r'transaction_index'),
        sellerAddress: mapValueOfType<String>(json, r'seller_address'),
        buyerAddress: mapValueOfType<String>(json, r'buyer_address'),
        marketplaceAddress: mapValueOfType<String>(json, r'marketplace_address'),
        price: mapValueOfType<String>(json, r'price'),
        blockTimestamp: mapValueOfType<String>(json, r'block_timestamp'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
      );
    }
    return null;
  }

  static List<Trade> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Trade.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Trade>[];

  static Map<String, Trade> mapFromJson(dynamic json) {
    final map = <String, Trade>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Trade.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Trade-objects as value to a dart map
  static Map<String, List<Trade>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Trade>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Trade.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

