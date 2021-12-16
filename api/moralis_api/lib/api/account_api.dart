//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccountApi {
  AccountApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Gets NFT transfers to and from a given address
  ///
  /// Gets the transfers of the tokens matching the given parameters
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The sender or recepient of the transfer
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [String] direction:
  ///   The transfer direction
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<Response> getNFTTransfersWithHttpInfo(String address, { ChainList chain, String format, String direction, int offset, int limit, String cursor, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}/nft/transfers'
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
    if (direction != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'direction', direction));
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

  /// Gets NFT transfers to and from a given address
  ///
  /// Gets the transfers of the tokens matching the given parameters
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The sender or recepient of the transfer
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] format:
  ///   The format of the token id
  ///
  /// * [String] direction:
  ///   The transfer direction
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<NftTransferCollection> getNFTTransfers(String address, { ChainList chain, String format, String direction, int offset, int limit, String cursor, }) async {
    final response = await getNFTTransfersWithHttpInfo(address,  chain: chain, format: format, direction: direction, offset: offset, limit: limit, cursor: cursor, );
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

  /// Gets the NFTs owned by a given address
  ///
  /// Gets NFTs owned by the given address * The response will include status [SYNCED/SYNCING] based on the contracts being indexed. * Use the token_address param to get results for a specific contract only * Note results will include all indexed NFTs * Any request which includes the token_address param will start the indexing process for that NFT collection the very first time it is requested 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The owner of a given token
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
  Future<Response> getNFTsWithHttpInfo(String address, { ChainList chain, String format, int offset, int limit, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}/nft'
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

  /// Gets the NFTs owned by a given address
  ///
  /// Gets NFTs owned by the given address * The response will include status [SYNCED/SYNCING] based on the contracts being indexed. * Use the token_address param to get results for a specific contract only * Note results will include all indexed NFTs * Any request which includes the token_address param will start the indexing process for that NFT collection the very first time it is requested 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The owner of a given token
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
  Future<NftOwnerCollection> getNFTs(String address, { ChainList chain, String format, int offset, int limit, }) async {
    final response = await getNFTsWithHttpInfo(address,  chain: chain, format: format, offset: offset, limit: limit, );
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

  /// Gets the NFTs owned by a given address
  ///
  /// Gets NFTs owned by the given address * Use the token_address param to get results for a specific contract only * Note results will include all indexed NFTs * Any request which includes the token_address param will start the indexing process for that NFT collection the very first time it is requested 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The owner of a given token
  ///
  /// * [String] tokenAddress (required):
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
  Future<Response> getNFTsForContractWithHttpInfo(String address, String tokenAddress, { ChainList chain, String format, int offset, int limit, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }
    if (tokenAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tokenAddress');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}/nft/{token_address}'
      .replaceAll('{address}', address)
      .replaceAll('{token_address}', tokenAddress);

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

  /// Gets the NFTs owned by a given address
  ///
  /// Gets NFTs owned by the given address * Use the token_address param to get results for a specific contract only * Note results will include all indexed NFTs * Any request which includes the token_address param will start the indexing process for that NFT collection the very first time it is requested 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The owner of a given token
  ///
  /// * [String] tokenAddress (required):
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
  Future<NftOwnerCollection> getNFTsForContract(String address, String tokenAddress, { ChainList chain, String format, int offset, int limit, }) async {
    final response = await getNFTsForContractWithHttpInfo(address, tokenAddress,  chain: chain, format: format, offset: offset, limit: limit, );
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

  /// Gets native balance for a specific address.
  ///
  /// Gets native balance for a specific address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address for which the native balance will be checked
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [num] toBlock:
  ///   The block number on which the balances should be checked
  Future<Response> getNativeBalanceWithHttpInfo(String address, { ChainList chain, String providerUrl, num toBlock, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}/balance'
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

  /// Gets native balance for a specific address.
  ///
  /// Gets native balance for a specific address
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address for which the native balance will be checked
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [num] toBlock:
  ///   The block number on which the balances should be checked
  Future<NativeBalance> getNativeBalance(String address, { ChainList chain, String providerUrl, num toBlock, }) async {
    final response = await getNativeBalanceWithHttpInfo(address,  chain: chain, providerUrl: providerUrl, toBlock: toBlock, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NativeBalance',) as NativeBalance;
    
    }
    return Future<NativeBalance>.value();
  }

  /// Gets token balances for a specific address.
  ///
  /// Gets token balances for a specific address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address for which token balances will be checked
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [num] toBlock:
  ///   The block number on which the balances should be checked
  Future<Response> getTokenBalancesWithHttpInfo(String address, { ChainList chain, String subdomain, num toBlock, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}/erc20'
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

  /// Gets token balances for a specific address.
  ///
  /// Gets token balances for a specific address
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address for which token balances will be checked
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [num] toBlock:
  ///   The block number on which the balances should be checked
  Future<List<Erc20TokenBalance>> getTokenBalances(String address, { ChainList chain, String subdomain, num toBlock, }) async {
    final response = await getTokenBalancesWithHttpInfo(address,  chain: chain, subdomain: subdomain, toBlock: toBlock, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Erc20TokenBalance>') as List)
        .cast<Erc20TokenBalance>()
        .toList(growable: false);

    }
    return Future<List<Erc20TokenBalance>>.value();
  }

  /// Gets erc 20 token transactions
  ///
  /// Gets ERC20 token transactions in descending order based on block number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   address
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transactions * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the transactions. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transactions (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the transactions to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Response> getTokenTransfersWithHttpInfo(String address, { ChainList chain, String subdomain, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}/erc20/transfers'
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

  /// Gets erc 20 token transactions
  ///
  /// Gets ERC20 token transactions in descending order based on block number
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   address
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transactions * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the transactions. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transactions (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the transactions to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Erc20TransactionCollection> getTokenTransfers(String address, { ChainList chain, String subdomain, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, }) async {
    final response = await getTokenTransfersWithHttpInfo(address,  chain: chain, subdomain: subdomain, fromBlock: fromBlock, toBlock: toBlock, fromDate: fromDate, toDate: toDate, offset: offset, limit: limit, );
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

  /// Gets native transactions
  ///
  /// Gets native transactions in descending order based on block number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   address
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transactions * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the transactions. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transactions (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the transactions to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<Response> getTransactionsWithHttpInfo(String address, { ChainList chain, String subdomain, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}'
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

  /// Gets native transactions
  ///
  /// Gets native transactions in descending order based on block number
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   address
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the transactions * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the transactions. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the transactions (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the transactions to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  Future<TransactionCollection> getTransactions(String address, { ChainList chain, String subdomain, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, }) async {
    final response = await getTransactionsWithHttpInfo(address,  chain: chain, subdomain: subdomain, fromBlock: fromBlock, toBlock: toBlock, fromDate: fromDate, toDate: toDate, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransactionCollection',) as TransactionCollection;
    
    }
    return Future<TransactionCollection>.value();
  }
}
