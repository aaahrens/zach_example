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


/// tests for AccountApi
void main() {
  final instance = AccountApi();

  group('tests for AccountApi', () {
    // Gets NFT transfers to and from a given address
    //
    // Gets the transfers of the tokens matching the given parameters
    //
    //Future<NftTransferCollection> getNFTTransfers(String address, { ChainList chain, String format, String direction, int offset, int limit, String cursor }) async
    test('test getNFTTransfers', () async {
      // TODO
    });

    // Gets the NFTs owned by a given address
    //
    // Gets NFTs owned by the given address * The response will include status [SYNCED/SYNCING] based on the contracts being indexed. * Use the token_address param to get results for a specific contract only * Note results will include all indexed NFTs * Any request which includes the token_address param will start the indexing process for that NFT collection the very first time it is requested 
    //
    //Future<NftOwnerCollection> getNFTs(String address, { ChainList chain, String format, int offset, int limit }) async
    test('test getNFTs', () async {
      // TODO
    });

    // Gets the NFTs owned by a given address
    //
    // Gets NFTs owned by the given address * Use the token_address param to get results for a specific contract only * Note results will include all indexed NFTs * Any request which includes the token_address param will start the indexing process for that NFT collection the very first time it is requested 
    //
    //Future<NftOwnerCollection> getNFTsForContract(String address, String tokenAddress, { ChainList chain, String format, int offset, int limit }) async
    test('test getNFTsForContract', () async {
      // TODO
    });

    // Gets native balance for a specific address.
    //
    // Gets native balance for a specific address
    //
    //Future<NativeBalance> getNativeBalance(String address, { ChainList chain, String providerUrl, num toBlock }) async
    test('test getNativeBalance', () async {
      // TODO
    });

    // Gets token balances for a specific address.
    //
    // Gets token balances for a specific address
    //
    //Future<List<Erc20TokenBalance>> getTokenBalances(String address, { ChainList chain, String subdomain, num toBlock }) async
    test('test getTokenBalances', () async {
      // TODO
    });

    // Gets erc 20 token transactions
    //
    // Gets ERC20 token transactions in descending order based on block number
    //
    //Future<Erc20TransactionCollection> getTokenTransfers(String address, { ChainList chain, String subdomain, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit }) async
    test('test getTokenTransfers', () async {
      // TODO
    });

    // Gets native transactions
    //
    // Gets native transactions in descending order based on block number
    //
    //Future<TransactionCollection> getTransactions(String address, { ChainList chain, String subdomain, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit }) async
    test('test getTransactions', () async {
      // TODO
    });

  });
}
