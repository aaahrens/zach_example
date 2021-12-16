//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Block {
  /// Returns a new [Block] instance.
  Block({
    @required this.timestamp,
    @required this.number,
    @required this.hash,
    @required this.parentHash,
    @required this.nonce,
    @required this.sha3Uncles,
    @required this.logsBloom,
    @required this.transactionsRoot,
    @required this.stateRoot,
    @required this.receiptsRoot,
    @required this.miner,
    @required this.difficulty,
    @required this.totalDifficulty,
    @required this.size,
    @required this.extraData,
    @required this.gasLimit,
    @required this.gasUsed,
    @required this.transactionCount,
    this.transactions = const [],
  });

  /// The block timestamp
  String timestamp;

  /// The block number
  String number;

  /// The block hash
  String hash;

  /// The block hash of the parent block
  String parentHash;

  /// The nonce
  String nonce;

  String sha3Uncles;

  String logsBloom;

  String transactionsRoot;

  String stateRoot;

  String receiptsRoot;

  /// The address of the miner
  String miner;

  /// The difficulty of the block
  String difficulty;

  /// The total difficulty
  String totalDifficulty;

  /// The block size
  String size;

  String extraData;

  /// The gas limit
  String gasLimit;

  /// The gas used
  String gasUsed;

  /// The number of transactions in the block
  String transactionCount;

  /// The transactions in the block
  List<BlockTransaction> transactions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Block &&
     other.timestamp == timestamp &&
     other.number == number &&
     other.hash == hash &&
     other.parentHash == parentHash &&
     other.nonce == nonce &&
     other.sha3Uncles == sha3Uncles &&
     other.logsBloom == logsBloom &&
     other.transactionsRoot == transactionsRoot &&
     other.stateRoot == stateRoot &&
     other.receiptsRoot == receiptsRoot &&
     other.miner == miner &&
     other.difficulty == difficulty &&
     other.totalDifficulty == totalDifficulty &&
     other.size == size &&
     other.extraData == extraData &&
     other.gasLimit == gasLimit &&
     other.gasUsed == gasUsed &&
     other.transactionCount == transactionCount &&
     other.transactions == transactions;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (timestamp == null ? 0 : timestamp.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (hash == null ? 0 : hash.hashCode) +
    (parentHash == null ? 0 : parentHash.hashCode) +
    (nonce == null ? 0 : nonce.hashCode) +
    (sha3Uncles == null ? 0 : sha3Uncles.hashCode) +
    (logsBloom == null ? 0 : logsBloom.hashCode) +
    (transactionsRoot == null ? 0 : transactionsRoot.hashCode) +
    (stateRoot == null ? 0 : stateRoot.hashCode) +
    (receiptsRoot == null ? 0 : receiptsRoot.hashCode) +
    (miner == null ? 0 : miner.hashCode) +
    (difficulty == null ? 0 : difficulty.hashCode) +
    (totalDifficulty == null ? 0 : totalDifficulty.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (extraData == null ? 0 : extraData.hashCode) +
    (gasLimit == null ? 0 : gasLimit.hashCode) +
    (gasUsed == null ? 0 : gasUsed.hashCode) +
    (transactionCount == null ? 0 : transactionCount.hashCode) +
    (transactions == null ? 0 : transactions.hashCode);

  @override
  String toString() => 'Block[timestamp=$timestamp, number=$number, hash=$hash, parentHash=$parentHash, nonce=$nonce, sha3Uncles=$sha3Uncles, logsBloom=$logsBloom, transactionsRoot=$transactionsRoot, stateRoot=$stateRoot, receiptsRoot=$receiptsRoot, miner=$miner, difficulty=$difficulty, totalDifficulty=$totalDifficulty, size=$size, extraData=$extraData, gasLimit=$gasLimit, gasUsed=$gasUsed, transactionCount=$transactionCount, transactions=$transactions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'timestamp'] = timestamp;
      json[r'number'] = number;
      json[r'hash'] = hash;
      json[r'parent_hash'] = parentHash;
      json[r'nonce'] = nonce;
      json[r'sha3_uncles'] = sha3Uncles;
      json[r'logs_bloom'] = logsBloom;
      json[r'transactions_root'] = transactionsRoot;
      json[r'state_root'] = stateRoot;
      json[r'receipts_root'] = receiptsRoot;
      json[r'miner'] = miner;
      json[r'difficulty'] = difficulty;
      json[r'total_difficulty'] = totalDifficulty;
      json[r'size'] = size;
      json[r'extra_data'] = extraData;
      json[r'gas_limit'] = gasLimit;
      json[r'gas_used'] = gasUsed;
      json[r'transaction_count'] = transactionCount;
      json[r'transactions'] = transactions;
    return json;
  }

  /// Returns a new [Block] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Block fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Block(
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        number: mapValueOfType<String>(json, r'number'),
        hash: mapValueOfType<String>(json, r'hash'),
        parentHash: mapValueOfType<String>(json, r'parent_hash'),
        nonce: mapValueOfType<String>(json, r'nonce'),
        sha3Uncles: mapValueOfType<String>(json, r'sha3_uncles'),
        logsBloom: mapValueOfType<String>(json, r'logs_bloom'),
        transactionsRoot: mapValueOfType<String>(json, r'transactions_root'),
        stateRoot: mapValueOfType<String>(json, r'state_root'),
        receiptsRoot: mapValueOfType<String>(json, r'receipts_root'),
        miner: mapValueOfType<String>(json, r'miner'),
        difficulty: mapValueOfType<String>(json, r'difficulty'),
        totalDifficulty: mapValueOfType<String>(json, r'total_difficulty'),
        size: mapValueOfType<String>(json, r'size'),
        extraData: mapValueOfType<String>(json, r'extra_data'),
        gasLimit: mapValueOfType<String>(json, r'gas_limit'),
        gasUsed: mapValueOfType<String>(json, r'gas_used'),
        transactionCount: mapValueOfType<String>(json, r'transaction_count'),
        transactions: BlockTransaction.listFromJson(json[r'transactions']),
      );
    }
    return null;
  }

  static List<Block> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Block.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Block>[];

  static Map<String, Block> mapFromJson(dynamic json) {
    final map = <String, Block>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Block.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Block-objects as value to a dart map
  static Map<String, List<Block>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Block>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Block.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

