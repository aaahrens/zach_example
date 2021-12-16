//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NftTransfer {
  /// Returns a new [NftTransfer] instance.
  NftTransfer({
    @required this.tokenAddress,
    @required this.tokenId,
    this.fromAddress,
    @required this.toAddress,
    this.value,
    this.amount,
    @required this.contractType,
    @required this.blockNumber,
    @required this.blockTimestamp,
    @required this.blockHash,
    @required this.transactionHash,
    this.transactionType,
    this.transactionIndex,
    @required this.logIndex,
    this.operator_,
  });

  /// The address of the contract of the NFT
  String tokenAddress;

  /// The token id of the NFT
  String tokenId;

  /// The address that sent the NFT
  String fromAddress;

  /// The address that recieved the NFT
  String toAddress;

  /// The value that was sent in the transaction (ETH/BNB/etc..)
  String value;

  /// The number of tokens transferred
  String amount;

  /// The type of NFT contract standard
  String contractType;

  /// The blocknumber of the transaction
  String blockNumber;

  /// The block timestamp
  String blockTimestamp;

  /// The block hash of the transaction
  String blockHash;

  /// The transaction hash
  String transactionHash;

  /// The transaction type
  String transactionType;

  /// The transaction index
  String transactionIndex;

  /// The log index
  int logIndex;

  /// The operator present only for ERC1155 Transfers
  String operator_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NftTransfer &&
     other.tokenAddress == tokenAddress &&
     other.tokenId == tokenId &&
     other.fromAddress == fromAddress &&
     other.toAddress == toAddress &&
     other.value == value &&
     other.amount == amount &&
     other.contractType == contractType &&
     other.blockNumber == blockNumber &&
     other.blockTimestamp == blockTimestamp &&
     other.blockHash == blockHash &&
     other.transactionHash == transactionHash &&
     other.transactionType == transactionType &&
     other.transactionIndex == transactionIndex &&
     other.logIndex == logIndex &&
     other.operator_ == operator_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (tokenAddress == null ? 0 : tokenAddress.hashCode) +
    (tokenId == null ? 0 : tokenId.hashCode) +
    (fromAddress == null ? 0 : fromAddress.hashCode) +
    (toAddress == null ? 0 : toAddress.hashCode) +
    (value == null ? 0 : value.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (contractType == null ? 0 : contractType.hashCode) +
    (blockNumber == null ? 0 : blockNumber.hashCode) +
    (blockTimestamp == null ? 0 : blockTimestamp.hashCode) +
    (blockHash == null ? 0 : blockHash.hashCode) +
    (transactionHash == null ? 0 : transactionHash.hashCode) +
    (transactionType == null ? 0 : transactionType.hashCode) +
    (transactionIndex == null ? 0 : transactionIndex.hashCode) +
    (logIndex == null ? 0 : logIndex.hashCode) +
    (operator_ == null ? 0 : operator_.hashCode);

  @override
  String toString() => 'NftTransfer[tokenAddress=$tokenAddress, tokenId=$tokenId, fromAddress=$fromAddress, toAddress=$toAddress, value=$value, amount=$amount, contractType=$contractType, blockNumber=$blockNumber, blockTimestamp=$blockTimestamp, blockHash=$blockHash, transactionHash=$transactionHash, transactionType=$transactionType, transactionIndex=$transactionIndex, logIndex=$logIndex, operator_=$operator_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token_address'] = tokenAddress;
      json[r'token_id'] = tokenId;
    if (fromAddress != null) {
      json[r'from_address'] = fromAddress;
    }
      json[r'to_address'] = toAddress;
    if (value != null) {
      json[r'value'] = value;
    }
    if (amount != null) {
      json[r'amount'] = amount;
    }
      json[r'contract_type'] = contractType;
      json[r'block_number'] = blockNumber;
      json[r'block_timestamp'] = blockTimestamp;
      json[r'block_hash'] = blockHash;
      json[r'transaction_hash'] = transactionHash;
    if (transactionType != null) {
      json[r'transaction_type'] = transactionType;
    }
    if (transactionIndex != null) {
      json[r'transaction_index'] = transactionIndex;
    }
      json[r'log_index'] = logIndex;
    if (operator_ != null) {
      json[r'operator'] = operator_;
    }
    return json;
  }

  /// Returns a new [NftTransfer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NftTransfer fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NftTransfer(
        tokenAddress: mapValueOfType<String>(json, r'token_address'),
        tokenId: mapValueOfType<String>(json, r'token_id'),
        fromAddress: mapValueOfType<String>(json, r'from_address'),
        toAddress: mapValueOfType<String>(json, r'to_address'),
        value: mapValueOfType<String>(json, r'value'),
        amount: mapValueOfType<String>(json, r'amount'),
        contractType: mapValueOfType<String>(json, r'contract_type'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        blockTimestamp: mapValueOfType<String>(json, r'block_timestamp'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
        transactionHash: mapValueOfType<String>(json, r'transaction_hash'),
        transactionType: mapValueOfType<String>(json, r'transaction_type'),
        transactionIndex: mapValueOfType<String>(json, r'transaction_index'),
        logIndex: mapValueOfType<int>(json, r'log_index'),
        operator_: mapValueOfType<String>(json, r'operator'),
      );
    }
    return null;
  }

  static List<NftTransfer> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NftTransfer.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NftTransfer>[];

  static Map<String, NftTransfer> mapFromJson(dynamic json) {
    final map = <String, NftTransfer>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NftTransfer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NftTransfer-objects as value to a dart map
  static Map<String, List<NftTransfer>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NftTransfer>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NftTransfer.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

