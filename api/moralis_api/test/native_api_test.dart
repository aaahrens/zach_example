//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:petstore_api/api.dart';
import 'package:test/test.dart';


/// tests for NativeApi
void main() {
  final instance = NativeApi();

  group('tests for NativeApi', () {
    // Gets block contents by block hash
    //
    // Gets the contents of a block by block hash
    //
    //Future<Block> getBlock(String blockNumberOrHash, { ChainList chain, String subdomain }) async
    test('test getBlock', () async {
      // TODO
    });

    // Gets events by topic
    //
    // Gets events in descending order based on block number
    //
    //Future<List<LogEvent>> getContractEvents(String address, String topic, { ChainList chain, String subdomain, String providerUrl, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, Object body }) async
    test('test getContractEvents', () async {
      // TODO
    });

    // Gets the closest block of the provided date
    //
    // Gets the closest block of the provided date
    //
    //Future<BlockDate> getDateToBlock(String date, { ChainList chain, String providerUrl }) async
    test('test getDateToBlock', () async {
      // TODO
    });

    // Gets address logs
    //
    // Gets the logs from an address
    //
    //Future<LogEventByAddress> getLogsByAddress(String address, { ChainList chain, String subdomain, String blockNumber, String fromBlock, String toBlock, String fromDate, String toDate, String topic0, String topic1, String topic2, String topic3 }) async
    test('test getLogsByAddress', () async {
      // TODO
    });

    // Gets NFT transfers by block number or block hash
    //
    // Gets NFT transfers by block number or block hash
    //
    //Future<NftTransferCollection> getNFTTransfersByBlock(String blockNumberOrHash, { ChainList chain, String subdomain, int offset, int limit, String cursor }) async
    test('test getNFTTransfersByBlock', () async {
      // TODO
    });

    // Get transaction details by transaction hash
    //
    // Gets the contents of a block transaction by hash
    //
    //Future<BlockTransaction> getTransaction(String transactionHash, { ChainList chain, String subdomain }) async
    test('test getTransaction', () async {
      // TODO
    });

    // Runs a function of a contract abi
    //
    // Runs a given function of a contract abi and returns readonly data
    //
    //Future<String> runContractFunction(String address, String functionName, RunContractDto runContractDto, { ChainList chain, String subdomain, String providerUrl }) async
    test('test runContractFunction', () async {
      // TODO
    });

  });
}
