//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TokenApi {
  TokenApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieves the unique NFTs inside a given contract
  ///
  /// Gets data, including metadata (where available), for all token ids for the given contract address. * Results are sorted by the block the token id was minted (descending) and limited to 100 per page by default * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Response> getAllTokenIdsWithHttpInfo(String address, { ChainList chain, String format, int offset, int limit, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'format', format));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieves the unique NFTs inside a given contract
  ///
  /// Gets data, including metadata (where available), for all token ids for the given contract address. * Results are sorted by the block the token id was minted (descending) and limited to 100 per page by default * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<NftCollection> getAllTokenIds(String address, { ChainList chain, String format, int offset, int limit, }) async {
    final response = await getAllTokenIdsWithHttpInfo(address,  chain: chain, format: format, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NftCollection',) as NftCollection;
    
    }
    return Future<NftCollection>.value();
  }

  /// Gets NFT transfers of a given contract
  ///
  /// Gets the transfers of the tokens matching the given parameters
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<Response> getContractNFTTransfersWithHttpInfo(String address, { ChainList chain, String format, int offset, int limit, String cursor, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}/transfers'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'format', format));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (cursor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'cursor', cursor));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets NFT transfers of a given contract
  ///
  /// Gets the transfers of the tokens matching the given parameters
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<NftTransferCollection> getContractNFTTransfers(String address, { ChainList chain, String format, int offset, int limit, String cursor, }) async {
    final response = await getContractNFTTransfersWithHttpInfo(address,  chain: chain, format: format, offset: offset, limit: limit, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NftTransferCollection',) as NftTransferCollection;
    
    }
    return Future<NftTransferCollection>.value();
  }

  /// Get the lowest price found for a nft token contract
  ///
  /// Get the lowest price found for a nft token contract for the last x days (only trades paid in ETH)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [int] days:
  ///   The number of days to look back to find the lowest price If not provided 7 days will be the default 
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [String] marketplace:
  ///   marketplace from where to get the trades (only opensea is supported at the moment)
  Future<Response> getNFTLowestPriceWithHttpInfo(String address, { ChainList chain, int days, String providerUrl, String marketplace, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}/lowestprice'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (days != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'days', days));
    }
    if (providerUrl != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'provider_url', providerUrl));
    }
    if (marketplace != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'marketplace', marketplace));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get the lowest price found for a nft token contract
  ///
  /// Get the lowest price found for a nft token contract for the last x days (only trades paid in ETH)
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [int] days:
  ///   The number of days to look back to find the lowest price If not provided 7 days will be the default 
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [String] marketplace:
  ///   marketplace from where to get the trades (only opensea is supported at the moment)
  Future<Trade> getNFTLowestPrice(String address, { ChainList chain, int days, String providerUrl, String marketplace, }) async {
    final response = await getNFTLowestPriceWithHttpInfo(address,  chain: chain, days: days, providerUrl: providerUrl, marketplace: marketplace, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trade',) as Trade;
    
    }
    return Future<Trade>.value();
  }

  /// Gets the global metadata for a given contract
  ///
  /// Gets the contract level metadata (name, symbol, base token uri) for the given contract * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  Future<Response> getNFTMetadataWithHttpInfo(String address, { ChainList chain, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}/metadata'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets the global metadata for a given contract
  ///
  /// Gets the contract level metadata (name, symbol, base token uri) for the given contract * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  Future<NftContractMetadata> getNFTMetadata(String address, { ChainList chain, }) async {
    final response = await getNFTMetadataWithHttpInfo(address,  chain: chain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NftContractMetadata',) as NftContractMetadata;
    
    }
    return Future<NftContractMetadata>.value();
  }

  /// Gets the owners of the NFTs of a given contract
  ///
  /// Gets all owners of NFT items within a given contract collection * Use after /nft/contract/{token_address} to find out who owns each token id in a collection * Make sure to include a sort parm on a column like block_number_minted for consistent pagination results * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Response> getNFTOwnersWithHttpInfo(String address, { ChainList chain, String format, int offset, int limit, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}/owners'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'format', format));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets the owners of the NFTs of a given contract
  ///
  /// Gets all owners of NFT items within a given contract collection * Use after /nft/contract/{token_address} to find out who owns each token id in a collection * Make sure to include a sort parm on a column like block_number_minted for consistent pagination results * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<NftOwnerCollection> getNFTOwners(String address, { ChainList chain, String format, int offset, int limit, }) async {
    final response = await getNFTOwnersWithHttpInfo(address,  chain: chain, format: format, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NftOwnerCollection',) as NftOwnerCollection;
    
    }
    return Future<NftOwnerCollection>.value();
  }

  /// Get nft trades by marketplaces
  ///
  /// Get the nft trades for a given contracts and marketplace
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toBlock:
  ///   To get the reserves at this block number
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [String] marketplace:
  ///   marketplace from where to get the trades (only opensea is supported at the moment)
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Response> getNFTTradesWithHttpInfo(String address, { ChainList chain, int fromBlock, String toBlock, String fromDate, String toDate, String providerUrl, String marketplace, int offset, int limit, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}/trades'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (fromBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from_block', fromBlock));
    }
    if (toBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_block', toBlock));
    }
    if (fromDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from_date', fromDate));
    }
    if (toDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_date', toDate));
    }
    if (providerUrl != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'provider_url', providerUrl));
    }
    if (marketplace != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'marketplace', marketplace));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get nft trades by marketplaces
  ///
  /// Get the nft trades for a given contracts and marketplace
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toBlock:
  ///   To get the reserves at this block number
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [String] marketplace:
  ///   marketplace from where to get the trades (only opensea is supported at the moment)
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<TradeCollection> getNFTTrades(String address, { ChainList chain, int fromBlock, String toBlock, String fromDate, String toDate, String providerUrl, String marketplace, int offset, int limit, }) async {
    final response = await getNFTTradesWithHttpInfo(address,  chain: chain, fromBlock: fromBlock, toBlock: toBlock, fromDate: fromDate, toDate: toDate, providerUrl: providerUrl, marketplace: marketplace, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradeCollection',) as TradeCollection;
    
    }
    return Future<TradeCollection>.value();
  }

  /// Gets NFT transfers from a block number to a block number
  ///
  /// Gets the transfers of the tokens from a block number to a block number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the transfers. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [] UNKNOWN_PARAMETER_NAME:
  ///   Get transfers up until this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<Response> getNftTransfersFromToBlockWithHttpInfo({ ChainList chain, int fromBlock, int toBlock, String fromDate,  UNKNOWN_PARAMETER_NAME, String format, int offset, int limit, String cursor, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/nft/transfers';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (fromBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from_block', fromBlock));
    }
    if (toBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_block', toBlock));
    }
    if (fromDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from_date', fromDate));
    }
    if (UNKNOWN_PARAMETER_NAME != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_date', UNKNOWN_PARAMETER_NAME));
    }
    if (format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'format', format));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (cursor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'cursor', cursor));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets NFT transfers from a block number to a block number
  ///
  /// Gets the transfers of the tokens from a block number to a block number
  ///
  /// Parameters:
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the transfers. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [] UNKNOWN_PARAMETER_NAME:
  ///   Get transfers up until this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<NftTransferCollection> getNftTransfersFromToBlock({ ChainList chain, int fromBlock, int toBlock, String fromDate,  UNKNOWN_PARAMETER_NAME, String format, int offset, int limit, String cursor, }) async {
    final response = await getNftTransfersFromToBlockWithHttpInfo( chain: chain, fromBlock: fromBlock, toBlock: toBlock, fromDate: fromDate, UNKNOWN_PARAMETER_NAME: UNKNOWN_PARAMETER_NAME, format: format, offset: offset, limit: limit, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NftTransferCollection',) as NftTransferCollection;
    
    }
    return Future<NftTransferCollection>.value();
  }

  /// Gets erc20 transactions of a token contract
  ///
  /// Gets ERC20 token contract transactions in descending order based on block number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address of the token contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the transfers. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the transfers to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Response> getTokenAddressTransfersWithHttpInfo(String address, { ChainList chain, String subdomain, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/erc20/{address}/transfers'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (subdomain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'subdomain', subdomain));
    }
    if (fromBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from_block', fromBlock));
    }
    if (toBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_block', toBlock));
    }
    if (fromDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from_date', fromDate));
    }
    if (toDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_date', toDate));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets erc20 transactions of a token contract
  ///
  /// Gets ERC20 token contract transactions in descending order based on block number
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address of the token contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the transfers. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the transfers to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Erc20TransactionCollection> getTokenAddressTransfers(String address, { ChainList chain, String subdomain, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, }) async {
    final response = await getTokenAddressTransfersWithHttpInfo(address,  chain: chain, subdomain: subdomain, fromBlock: fromBlock, toBlock: toBlock, fromDate: fromDate, toDate: toDate, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Erc20TransactionCollection',) as Erc20TransactionCollection;
    
    }
    return Future<Erc20TransactionCollection>.value();
  }

  /// Gets the amount which the spender is allowed to withdraw from the owner.
  ///
  /// Gets the amount which the spender is allowed to withdraw from the spender
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address of the token contract
  ///
  /// * [String] ownerAddress (required):
  ///   The address of the token owner
  ///
  /// * [String] spenderAddress (required):
  ///   The address of the token spender
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<Response> getTokenAllowanceWithHttpInfo(String address, String ownerAddress, String spenderAddress, { ChainList chain, String providerUrl, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }
    if (ownerAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: ownerAddress');
    }
    if (spenderAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: spenderAddress');
    }

    // ignore: prefer_const_declarations
    final path = r'/erc20/{address}/allowance'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (providerUrl != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'providerUrl', providerUrl));
    }
      queryParams.addAll(_convertParametersForCollectionFormat('', 'owner_address', ownerAddress));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'spender_address', spenderAddress));

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets the amount which the spender is allowed to withdraw from the owner.
  ///
  /// Gets the amount which the spender is allowed to withdraw from the spender
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address of the token contract
  ///
  /// * [String] ownerAddress (required):
  ///   The address of the token owner
  ///
  /// * [String] spenderAddress (required):
  ///   The address of the token spender
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<Erc20Allowance> getTokenAllowance(String address, String ownerAddress, String spenderAddress, { ChainList chain, String providerUrl, }) async {
    final response = await getTokenAllowanceWithHttpInfo(address, ownerAddress, spenderAddress,  chain: chain, providerUrl: providerUrl, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Erc20Allowance',) as Erc20Allowance;
    
    }
    return Future<Erc20Allowance>.value();
  }

  /// Gets the NFT with the given id of a given contract
  ///
  /// Gets data, including metadata (where available), for the given token id of the given contract address. * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [String] tokenId (required):
  ///   The id of the token
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  Future<Response> getTokenIdMetadataWithHttpInfo(String address, String tokenId, { ChainList chain, String format, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }
    if (tokenId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tokenId');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}/{token_id}'
      .replaceAll('{address}', address)
      .replaceAll('{token_id}', tokenId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'format', format));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets the NFT with the given id of a given contract
  ///
  /// Gets data, including metadata (where available), for the given token id of the given contract address. * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [String] tokenId (required):
  ///   The id of the token
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  Future<Nft> getTokenIdMetadata(String address, String tokenId, { ChainList chain, String format, }) async {
    final response = await getTokenIdMetadataWithHttpInfo(address, tokenId,  chain: chain, format: format, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Nft',) as Nft;
    
    }
    return Future<Nft>.value();
  }

  /// Gets the owners of NFTs for a given contract
  ///
  /// Gets all owners of NFT items within a given contract collection * Use after /nft/contract/{token_address} to find out who owns each token id in a collection * Make sure to include a sort parm on a column like block_number_minted for consistent pagination results * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [String] tokenId (required):
  ///   The id of the token
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Response> getTokenIdOwnersWithHttpInfo(String address, String tokenId, { ChainList chain, String format, int offset, int limit, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }
    if (tokenId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tokenId');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}/{token_id}/owners'
      .replaceAll('{address}', address)
      .replaceAll('{token_id}', tokenId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'format', format));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets the owners of NFTs for a given contract
  ///
  /// Gets all owners of NFT items within a given contract collection * Use after /nft/contract/{token_address} to find out who owns each token id in a collection * Make sure to include a sort parm on a column like block_number_minted for consistent pagination results * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [String] tokenId (required):
  ///   The id of the token
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<NftOwnerCollection> getTokenIdOwners(String address, String tokenId, { ChainList chain, String format, int offset, int limit, }) async {
    final response = await getTokenIdOwnersWithHttpInfo(address, tokenId,  chain: chain, format: format, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NftOwnerCollection',) as NftOwnerCollection;
    
    }
    return Future<NftOwnerCollection>.value();
  }

  /// Gets token metadata
  ///
  /// Returns metadata (name, symbol, decimals, logo) for a given token contract address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] addresses (required):
  ///   The addresses to get metadata for
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<Response> getTokenMetadataWithHttpInfo(List<String> addresses, { ChainList chain, String subdomain, String providerUrl, }) async {
    // Verify required params are set.
    if (addresses == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addresses');
    }

    // ignore: prefer_const_declarations
    final path = r'/erc20/metadata';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (subdomain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'subdomain', subdomain));
    }
    if (providerUrl != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'providerUrl', providerUrl));
    }
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'addresses', addresses));

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets token metadata
  ///
  /// Returns metadata (name, symbol, decimals, logo) for a given token contract address.
  ///
  /// Parameters:
  ///
  /// * [List<String>] addresses (required):
  ///   The addresses to get metadata for
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<List<Erc20Metadata>> getTokenMetadata(List<String> addresses, { ChainList chain, String subdomain, String providerUrl, }) async {
    final response = await getTokenMetadataWithHttpInfo(addresses,  chain: chain, subdomain: subdomain, providerUrl: providerUrl, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Erc20Metadata>') as List)
        .cast<Erc20Metadata>()
        .toList(growable: false);

    }
    return Future<List<Erc20Metadata>>.value();
  }

  /// Gets token metadata
  ///
  /// Returns metadata (name, symbol, decimals, logo) for a given token contract address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] symbols (required):
  ///   The symbols to get metadata for
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  Future<Response> getTokenMetadataBySymbolWithHttpInfo(List<String> symbols, { ChainList chain, String subdomain, }) async {
    // Verify required params are set.
    if (symbols == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: symbols');
    }

    // ignore: prefer_const_declarations
    final path = r'/erc20/metadata/symbols';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (subdomain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'subdomain', subdomain));
    }
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'symbols', symbols));

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets token metadata
  ///
  /// Returns metadata (name, symbol, decimals, logo) for a given token contract address.
  ///
  /// Parameters:
  ///
  /// * [List<String>] symbols (required):
  ///   The symbols to get metadata for
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  Future<List<Erc20Metadata>> getTokenMetadataBySymbol(List<String> symbols, { ChainList chain, String subdomain, }) async {
    final response = await getTokenMetadataBySymbolWithHttpInfo(symbols,  chain: chain, subdomain: subdomain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Erc20Metadata>') as List)
        .cast<Erc20Metadata>()
        .toList(growable: false);

    }
    return Future<List<Erc20Metadata>>.value();
  }

  /// Gets token price
  ///
  /// Returns the price nominated in the native token and usd for a given token contract address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address of the token contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [String] exchange:
  ///   The factory name or address of the token exchange
  ///
  /// * [int] toBlock:
  ///   to_block
  Future<Response> getTokenPriceWithHttpInfo(String address, { ChainList chain, String providerUrl, String exchange, int toBlock, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/erc20/{address}/price'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (providerUrl != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'providerUrl', providerUrl));
    }
    if (exchange != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'exchange', exchange));
    }
    if (toBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_block', toBlock));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets token price
  ///
  /// Returns the price nominated in the native token and usd for a given token contract address.
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address of the token contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [String] exchange:
  ///   The factory name or address of the token exchange
  ///
  /// * [int] toBlock:
  ///   to_block
  Future<Erc20Price> getTokenPrice(String address, { ChainList chain, String providerUrl, String exchange, int toBlock, }) async {
    final response = await getTokenPriceWithHttpInfo(address,  chain: chain, providerUrl: providerUrl, exchange: exchange, toBlock: toBlock, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Erc20Price',) as Erc20Price;
    
    }
    return Future<Erc20Price>.value();
  }

  /// Gets NFT transfers of a given contract
  ///
  /// Gets the transfers of the tokens matching the given parameters
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [String] tokenId (required):
  ///   The id of the token
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] order:
  ///   The field(s) to order on and if it should be ordered in ascending or descending order. Specified by: fieldName1.order,fieldName2.order. Example 1: \"block_number\", \"block_number.ASC\", \"block_number.DESC\", Example 2: \"block_number and contract_type\", \"block_number.ASC,contract_type.DESC\"
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<Response> getWalletTokenIdTransfersWithHttpInfo(String address, String tokenId, { ChainList chain, String format, int offset, int limit, String order, String cursor, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }
    if (tokenId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tokenId');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}/{token_id}/transfers'
      .replaceAll('{address}', address)
      .replaceAll('{token_id}', tokenId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'format', format));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'order', order));
    }
    if (cursor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'cursor', cursor));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets NFT transfers of a given contract
  ///
  /// Gets the transfers of the tokens matching the given parameters
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [String] tokenId (required):
  ///   The id of the token
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] order:
  ///   The field(s) to order on and if it should be ordered in ascending or descending order. Specified by: fieldName1.order,fieldName2.order. Example 1: \"block_number\", \"block_number.ASC\", \"block_number.DESC\", Example 2: \"block_number and contract_type\", \"block_number.ASC,contract_type.DESC\"
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<NftTransferCollection> getWalletTokenIdTransfers(String address, String tokenId, { ChainList chain, String format, int offset, int limit, String order, String cursor, }) async {
    final response = await getWalletTokenIdTransfersWithHttpInfo(address, tokenId,  chain: chain, format: format, offset: offset, limit: limit, order: order, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NftTransferCollection',) as NftTransferCollection;
    
    }
    return Future<NftTransferCollection>.value();
  }

  /// Retrieves the NFT data based on a metadata search
  ///
  /// Gets NFTs that match a given metadata search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   The search string
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [String] filter:
  ///   What fields the search should match on. To look into the entire metadata set the value to 'global'. To have a better response time you can look into a specific field like name
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to start the search * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to end the search * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to start the search (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get search results up until this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Response> searchNFTsWithHttpInfo(String q, { ChainList chain, String format, String filter, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, }) async {
    // Verify required params are set.
    if (q == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: q');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/search';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'format', format));
    }
      queryParams.addAll(_convertParametersForCollectionFormat('', 'q', q));
    if (filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter', filter));
    }
    if (fromBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from_block', fromBlock));
    }
    if (toBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_block', toBlock));
    }
    if (fromDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from_date', fromDate));
    }
    if (toDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_date', toDate));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieves the NFT data based on a metadata search
  ///
  /// Gets NFTs that match a given metadata search.
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   The search string
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [String] filter:
  ///   What fields the search should match on. To look into the entire metadata set the value to 'global'. To have a better response time you can look into a specific field like name
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to start the search * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to end the search * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to start the search (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get search results up until this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<NftMetadataCollection> searchNFTs(String q, { ChainList chain, String format, String filter, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, }) async {
    final response = await searchNFTsWithHttpInfo(q,  chain: chain, format: format, filter: filter, fromBlock: fromBlock, toBlock: toBlock, fromDate: fromDate, toDate: toDate, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NftMetadataCollection',) as NftMetadataCollection;
    
    }
    return Future<NftMetadataCollection>.value();
  }

  /// Sync a Contract for NFT Index
  ///
  /// Sync a Contract for NFT Index 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  Future<Response> syncNFTContractWithHttpInfo(String address, { ChainList chain, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/nft/{address}/sync'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Sync a Contract for NFT Index
  ///
  /// Sync a Contract for NFT Index 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Address of the contract
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  Future<void> syncNFTContract(String address, { ChainList chain, }) async {
    final response = await syncNFTContractWithHttpInfo(address,  chain: chain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
