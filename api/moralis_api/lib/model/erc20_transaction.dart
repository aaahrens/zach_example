//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Erc20Transaction {
  /// Returns a new [Erc20Transaction] instance.
  Erc20Transaction({
    @required this.transactionHash,
    @required this.address,
    @required this.blockTimestamp,
    @required this.blockNumber,
    @required this.blockHash,
    @required this.toAddress,
    @required this.fromAddress,
    @required this.value,
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

  /// The value that was transfered (in wei)
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Erc20Transaction &&
     other.transactionHash == transactionHash &&
     other.address == address &&
     other.blockTimestamp == blockTimestamp &&
     other.blockNumber == blockNumber &&
     other.blockHash == blockHash &&
     other.toAddress == toAddress &&
     other.fromAddress == fromAddress &&
     other.value == value;

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
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'Erc20Transaction[transactionHash=$transactionHash, address=$address, blockTimestamp=$blockTimestamp, blockNumber=$blockNumber, blockHash=$blockHash, toAddress=$toAddress, fromAddress=$fromAddress, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_hash'] = transactionHash;
      json[r'address'] = address;
      json[r'block_timestamp'] = blockTimestamp;
      json[r'block_number'] = blockNumber;
      json[r'block_hash'] = blockHash;
      json[r'to_address'] = toAddress;
      json[r'from_address'] = fromAddress;
      json[r'value'] = value;
    return json;
  }

  /// Returns a new [Erc20Transaction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Erc20Transaction fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Erc20Transaction(
        transactionHash: mapValueOfType<String>(json, r'transaction_hash'),
        address: mapValueOfType<String>(json, r'address'),
        blockTimestamp: mapValueOfType<String>(json, r'block_timestamp'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
        toAddress: mapValueOfType<String>(json, r'to_address'),
        fromAddress: mapValueOfType<String>(json, r'from_address'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<Erc20Transaction> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Erc20Transaction.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Erc20Transaction>[];

  static Map<String, Erc20Transaction> mapFromJson(dynamic json) {
    final map = <String, Erc20Transaction>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Erc20Transaction.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Erc20Transaction-objects as value to a dart map
  static Map<String, List<Erc20Transaction>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Erc20Transaction>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Erc20Transaction.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

