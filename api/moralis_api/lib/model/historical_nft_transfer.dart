//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricalNftTransfer {
  /// Returns a new [HistoricalNftTransfer] instance.
  HistoricalNftTransfer({
    @required this.transactionHash,
    @required this.address,
    @required this.blockTimestamp,
    @required this.blockNumber,
    @required this.blockHash,
    @required this.toAddress,
    @required this.fromAddress,
    this.tokenIds = const [],
    this.amounts = const [],
    @required this.contractType,
  });

  /// The transaction hash
  String transactionHash;

  /// The address of the token
  String address;

  /// The block timestamp
  String blockTimestamp;

  /// The block number
  String blockNumber;

  /// The block hash
  String blockHash;

  /// The recipient
  String toAddress;

  /// The sender
  String fromAddress;

  /// The token ids of the tokens that were transfered
  List<String> tokenIds;

  /// The amounts that were transfered
  List<String> amounts;

  /// They contract type of the transfer
  String contractType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricalNftTransfer &&
     other.transactionHash == transactionHash &&
     other.address == address &&
     other.blockTimestamp == blockTimestamp &&
     other.blockNumber == blockNumber &&
     other.blockHash == blockHash &&
     other.toAddress == toAddress &&
     other.fromAddress == fromAddress &&
     other.tokenIds == tokenIds &&
     other.amounts == amounts &&
     other.contractType == contractType;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionHash == null ? 0 : transactionHash.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (blockTimestamp == null ? 0 : blockTimestamp.hashCode) +
    (blockNumber == null ? 0 : blockNumber.hashCode) +
    (blockHash == null ? 0 : blockHash.hashCode) +
    (toAddress == null ? 0 : toAddress.hashCode) +
    (fromAddress == null ? 0 : fromAddress.hashCode) +
    (tokenIds == null ? 0 : tokenIds.hashCode) +
    (amounts == null ? 0 : amounts.hashCode) +
    (contractType == null ? 0 : contractType.hashCode);

  @override
  String toString() => 'HistoricalNftTransfer[transactionHash=$transactionHash, address=$address, blockTimestamp=$blockTimestamp, blockNumber=$blockNumber, blockHash=$blockHash, toAddress=$toAddress, fromAddress=$fromAddress, tokenIds=$tokenIds, amounts=$amounts, contractType=$contractType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_hash'] = transactionHash;
      json[r'address'] = address;
      json[r'block_timestamp'] = blockTimestamp;
      json[r'block_number'] = blockNumber;
      json[r'block_hash'] = blockHash;
      json[r'to_address'] = toAddress;
      json[r'from_address'] = fromAddress;
      json[r'token_ids'] = tokenIds;
      json[r'amounts'] = amounts;
      json[r'contract_type'] = contractType;
    return json;
  }

  /// Returns a new [HistoricalNftTransfer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricalNftTransfer fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return HistoricalNftTransfer(
        transactionHash: mapValueOfType<String>(json, r'transaction_hash'),
        address: mapValueOfType<String>(json, r'address'),
        blockTimestamp: mapValueOfType<String>(json, r'block_timestamp'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
        toAddress: mapValueOfType<String>(json, r'to_address'),
        fromAddress: mapValueOfType<String>(json, r'from_address'),
        tokenIds: json[r'token_ids'] is List
          ? (json[r'token_ids'] as List).cast<String>()
          : null,
        amounts: json[r'amounts'] is List
          ? (json[r'amounts'] as List).cast<String>()
          : null,
        contractType: mapValueOfType<String>(json, r'contract_type'),
      );
    }
    return null;
  }

  static List<HistoricalNftTransfer> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HistoricalNftTransfer.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HistoricalNftTransfer>[];

  static Map<String, HistoricalNftTransfer> mapFromJson(dynamic json) {
    final map = <String, HistoricalNftTransfer>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = HistoricalNftTransfer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HistoricalNftTransfer-objects as value to a dart map
  static Map<String, List<HistoricalNftTransfer>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HistoricalNftTransfer>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = HistoricalNftTransfer.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

