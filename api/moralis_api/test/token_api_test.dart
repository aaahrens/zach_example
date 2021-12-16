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


/// tests for TokenApi
void main() {
  final instance = TokenApi();

  group('tests for TokenApi', () {
    // Retrieves the unique NFTs inside a given contract
    //
    // Gets data, including metadata (where available), for all token ids for the given contract address. * Results are sorted by the block the token id was minted (descending) and limited to 100 per page by default * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
    //
    //Future<NftCollection> getAllTokenIds(String address, { ChainList chain, String format, int offset, int limit }) async
    test('test getAllTokenIds', () async {
      // TODO
    });

    // Gets NFT transfers of a given contract
    //
    // Gets the transfers of the tokens matching the given parameters
    //
    //Future<NftTransferCollection> getContractNFTTransfers(String address, { ChainList chain, String format, int offset, int limit, String cursor }) async
    test('test getContractNFTTransfers', () async {
      // TODO
    });

    // Get the lowest price found for a nft token contract
    //
    // Get the lowest price found for a nft token contract for the last x days (only trades paid in ETH)
    //
    //Future<Trade> getNFTLowestPrice(String address, { ChainList chain, int days, String providerUrl, String marketplace }) async
    test('test getNFTLowestPrice', () async {
      // TODO
    });

    // Gets the global metadata for a given contract
    //
    // Gets the contract level metadata (name, symbol, base token uri) for the given contract * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
    //
    //Future<NftContractMetadata> getNFTMetadata(String address, { ChainList chain }) async
    test('test getNFTMetadata', () async {
      // TODO
    });

    // Gets the owners of the NFTs of a given contract
    //
    // Gets all owners of NFT items within a given contract collection * Use after /nft/contract/{token_address} to find out who owns each token id in a collection * Make sure to include a sort parm on a column like block_number_minted for consistent pagination results * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
    //
    //Future<NftOwnerCollection> getNFTOwners(String address, { ChainList chain, String format, int offset, int limit }) async
    test('test getNFTOwners', () async {
      // TODO
    });

    // Get nft trades by marketplaces
    //
    // Get the nft trades for a given contracts and marketplace
    //
    //Future<TradeCollection> getNFTTrades(String address, { ChainList chain, int fromBlock, String toBlock, String fromDate, String toDate, String providerUrl, String marketplace, int offset, int limit }) async
    test('test getNFTTrades', () async {
      // TODO
    });

    // Gets NFT transfers from a block number to a block number
    //
    // Gets the transfers of the tokens from a block number to a block number
    //
    //Future<NftTransferCollection> getNftTransfersFromToBlock({ ChainList chain, int fromBlock, int toBlock, String fromDate,  UNKNOWN_PARAMETER_NAME, String format, int offset, int limit, String cursor }) async
    test('test getNftTransfersFromToBlock', () async {
      // TODO
    });

    // Gets erc20 transactions of a token contract
    //
    // Gets ERC20 token contract transactions in descending order based on block number
    //
    //Future<Erc20TransactionCollection> getTokenAddressTransfers(String address, { ChainList chain, String subdomain, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit }) async
    test('test getTokenAddressTransfers', () async {
      // TODO
    });

    // Gets the amount which the spender is allowed to withdraw from the owner.
    //
    // Gets the amount which the spender is allowed to withdraw from the spender
    //
    //Future<Erc20Allowance> getTokenAllowance(String address, String ownerAddress, String spenderAddress, { ChainList chain, String providerUrl }) async
    test('test getTokenAllowance', () async {
      // TODO
    });

    // Gets the NFT with the given id of a given contract
    //
    // Gets data, including metadata (where available), for the given token id of the given contract address. * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
    //
    //Future<Nft> getTokenIdMetadata(String address, String tokenId, { ChainList chain, String format }) async
    test('test getTokenIdMetadata', () async {
      // TODO
    });

    // Gets the owners of NFTs for a given contract
    //
    // Gets all owners of NFT items within a given contract collection * Use after /nft/contract/{token_address} to find out who owns each token id in a collection * Make sure to include a sort parm on a column like block_number_minted for consistent pagination results * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
    //
    //Future<NftOwnerCollection> getTokenIdOwners(String address, String tokenId, { ChainList chain, String format, int offset, int limit }) async
    test('test getTokenIdOwners', () async {
      // TODO
    });

    // Gets token metadata
    //
    // Returns metadata (name, symbol, decimals, logo) for a given token contract address.
    //
    //Future<List<Erc20Metadata>> getTokenMetadata(List<String> addresses, { ChainList chain, String subdomain, String providerUrl }) async
    test('test getTokenMetadata', () async {
      // TODO
    });

    // Gets token metadata
    //
    // Returns metadata (name, symbol, decimals, logo) for a given token contract address.
    //
    //Future<List<Erc20Metadata>> getTokenMetadataBySymbol(List<String> symbols, { ChainList chain, String subdomain }) async
    test('test getTokenMetadataBySymbol', () async {
      // TODO
    });

    // Gets token price
    //
    // Returns the price nominated in the native token and usd for a given token contract address.
    //
    //Future<Erc20Price> getTokenPrice(String address, { ChainList chain, String providerUrl, String exchange, int toBlock }) async
    test('test getTokenPrice', () async {
      // TODO
    });

    // Gets NFT transfers of a given contract
    //
    // Gets the transfers of the tokens matching the given parameters
    //
    //Future<NftTransferCollection> getWalletTokenIdTransfers(String address, String tokenId, { ChainList chain, String format, int offset, int limit, String order, String cursor }) async
    test('test getWalletTokenIdTransfers', () async {
      // TODO
    });

    // Retrieves the NFT data based on a metadata search
    //
    // Gets NFTs that match a given metadata search.
    //
    //Future<NftMetadataCollection> searchNFTs(String q, { ChainList chain, String format, String filter, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit }) async
    test('test searchNFTs', () async {
      // TODO
    });

    // Sync a Contract for NFT Index
    //
    // Sync a Contract for NFT Index 
    //
    //Future syncNFTContract(String address, { ChainList chain }) async
    test('test syncNFTContract', () async {
      // TODO
    });

  });
}
