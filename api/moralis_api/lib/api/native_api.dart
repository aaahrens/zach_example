//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NativeApi {
  NativeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Gets block contents by block hash
  ///
  /// Gets the contents of a block by block hash
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] blockNumberOrHash (required):
  ///   The block hash or block number
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  Future<Response> getBlockWithHttpInfo(String blockNumberOrHash, { ChainList chain, String subdomain, }) async {
    // Verify required params are set.
    if (blockNumberOrHash == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: blockNumberOrHash');
    }

    // ignore: prefer_const_declarations
    final path = r'/block/{block_number_or_hash}'
      .replaceAll('{block_number_or_hash}', blockNumberOrHash);

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

  /// Gets block contents by block hash
  ///
  /// Gets the contents of a block by block hash
  ///
  /// Parameters:
  ///
  /// * [String] blockNumberOrHash (required):
  ///   The block hash or block number
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  Future<Block> getBlock(String blockNumberOrHash, { ChainList chain, String subdomain, }) async {
    final response = await getBlockWithHttpInfo(blockNumberOrHash,  chain: chain, subdomain: subdomain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Block',) as Block;
    
    }
    return Future<Block>.value();
  }

  /// Gets events by topic
  ///
  /// Gets events in descending order based on block number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   address
  ///
  /// * [String] topic (required):
  ///   The topic of the event
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the logs * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the logs. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the logs (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the logs to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [Object] body:
  ///   ABI of the specific event
  Future<Response> getContractEventsWithHttpInfo(String address, String topic, { ChainList chain, String subdomain, String providerUrl, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, Object body, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }
    if (topic == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: topic');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}/events'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody = body;

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
      queryParams.addAll(_convertParametersForCollectionFormat('', 'topic', topic));
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets events by topic
  ///
  /// Gets events in descending order based on block number
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   address
  ///
  /// * [String] topic (required):
  ///   The topic of the event
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  ///
  /// * [int] fromBlock:
  ///   The minimum block number from where to get the logs * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [int] toBlock:
  ///   The maximum block number from where to get the logs. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the logs (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
  ///
  /// * [String] toDate:
  ///   Get the logs to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [Object] body:
  ///   ABI of the specific event
  Future<List<LogEvent>> getContractEvents(String address, String topic, { ChainList chain, String subdomain, String providerUrl, int fromBlock, int toBlock, String fromDate, String toDate, int offset, int limit, Object body, }) async {
    final response = await getContractEventsWithHttpInfo(address, topic,  chain: chain, subdomain: subdomain, providerUrl: providerUrl, fromBlock: fromBlock, toBlock: toBlock, fromDate: fromDate, toDate: toDate, offset: offset, limit: limit, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<LogEvent>') as List)
        .cast<LogEvent>()
        .toList(growable: false);

    }
    return Future<List<LogEvent>>.value();
  }

  /// Gets the closest block of the provided date
  ///
  /// Gets the closest block of the provided date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] date (required):
  ///   Unix date in miliseconds or a datestring (any format that is accepted by momentjs)
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<Response> getDateToBlockWithHttpInfo(String date, { ChainList chain, String providerUrl, }) async {
    // Verify required params are set.
    if (date == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: date');
    }

    // ignore: prefer_const_declarations
    final path = r'/dateToBlock';

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
      queryParams.addAll(_convertParametersForCollectionFormat('', 'date', date));

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

  /// Gets the closest block of the provided date
  ///
  /// Gets the closest block of the provided date
  ///
  /// Parameters:
  ///
  /// * [String] date (required):
  ///   Unix date in miliseconds or a datestring (any format that is accepted by momentjs)
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<BlockDate> getDateToBlock(String date, { ChainList chain, String providerUrl, }) async {
    final response = await getDateToBlockWithHttpInfo(date,  chain: chain, providerUrl: providerUrl, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlockDate',) as BlockDate;
    
    }
    return Future<BlockDate>.value();
  }

  /// Gets address logs
  ///
  /// Gets the logs from an address
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
  /// * [String] blockNumber:
  ///   The block number * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used 
  ///
  /// * [String] fromBlock:
  ///   The minimum block number from where to get the logs * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used 
  ///
  /// * [String] toBlock:
  ///   The maximum block number from where to get the logs * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the logs (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. * If 'from_date' and the block params are provided, the block params will be used. Please refer to the blocks params sections (block_number,from_block and to_block) on how to use them 
  ///
  /// * [String] toDate:
  ///   Get the logs to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. * If 'to_date' and the block params are provided, the block params will be used. Please refer to the blocks params sections (block_number,from_block and to_block) on how to use them 
  ///
  /// * [String] topic0:
  ///   topic0
  ///
  /// * [String] topic1:
  ///   topic1
  ///
  /// * [String] topic2:
  ///   topic2
  ///
  /// * [String] topic3:
  ///   topic3
  Future<Response> getLogsByAddressWithHttpInfo(String address, { ChainList chain, String subdomain, String blockNumber, String fromBlock, String toBlock, String fromDate, String toDate, String topic0, String topic1, String topic2, String topic3, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}/logs'
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
    if (blockNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'block_number', blockNumber));
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
    if (topic0 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'topic0', topic0));
    }
    if (topic1 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'topic1', topic1));
    }
    if (topic2 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'topic2', topic2));
    }
    if (topic3 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'topic3', topic3));
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

  /// Gets address logs
  ///
  /// Gets the logs from an address
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
  /// * [String] blockNumber:
  ///   The block number * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used 
  ///
  /// * [String] fromBlock:
  ///   The minimum block number from where to get the logs * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used 
  ///
  /// * [String] toBlock:
  ///   The maximum block number from where to get the logs * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used 
  ///
  /// * [String] fromDate:
  ///   The date from where to get the logs (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. * If 'from_date' and the block params are provided, the block params will be used. Please refer to the blocks params sections (block_number,from_block and to_block) on how to use them 
  ///
  /// * [String] toDate:
  ///   Get the logs to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. * If 'to_date' and the block params are provided, the block params will be used. Please refer to the blocks params sections (block_number,from_block and to_block) on how to use them 
  ///
  /// * [String] topic0:
  ///   topic0
  ///
  /// * [String] topic1:
  ///   topic1
  ///
  /// * [String] topic2:
  ///   topic2
  ///
  /// * [String] topic3:
  ///   topic3
  Future<LogEventByAddress> getLogsByAddress(String address, { ChainList chain, String subdomain, String blockNumber, String fromBlock, String toBlock, String fromDate, String toDate, String topic0, String topic1, String topic2, String topic3, }) async {
    final response = await getLogsByAddressWithHttpInfo(address,  chain: chain, subdomain: subdomain, blockNumber: blockNumber, fromBlock: fromBlock, toBlock: toBlock, fromDate: fromDate, toDate: toDate, topic0: topic0, topic1: topic1, topic2: topic2, topic3: topic3, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LogEventByAddress',) as LogEventByAddress;
    
    }
    return Future<LogEventByAddress>.value();
  }

  /// Gets NFT transfers by block number or block hash
  ///
  /// Gets NFT transfers by block number or block hash
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] blockNumberOrHash (required):
  ///   The block hash or block number
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<Response> getNFTTransfersByBlockWithHttpInfo(String blockNumberOrHash, { ChainList chain, String subdomain, int offset, int limit, String cursor, }) async {
    // Verify required params are set.
    if (blockNumberOrHash == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: blockNumberOrHash');
    }

    // ignore: prefer_const_declarations
    final path = r'/block/{block_number_or_hash}/nft/transfers'
      .replaceAll('{block_number_or_hash}', blockNumberOrHash);

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

  /// Gets NFT transfers by block number or block hash
  ///
  /// Gets NFT transfers by block number or block hash
  ///
  /// Parameters:
  ///
  /// * [String] blockNumberOrHash (required):
  ///   The block hash or block number
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [int] offset:
  ///   offset
  ///
  /// * [int] limit:
  ///   limit
  ///
  /// * [String] cursor:
  ///   The cursor returned in the last response (for getting the next page) 
  Future<NftTransferCollection> getNFTTransfersByBlock(String blockNumberOrHash, { ChainList chain, String subdomain, int offset, int limit, String cursor, }) async {
    final response = await getNFTTransfersByBlockWithHttpInfo(blockNumberOrHash,  chain: chain, subdomain: subdomain, offset: offset, limit: limit, cursor: cursor, );
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

  /// Get transaction details by transaction hash
  ///
  /// Gets the contents of a block transaction by hash
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transactionHash (required):
  ///   The transaction hash
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  Future<Response> getTransactionWithHttpInfo(String transactionHash, { ChainList chain, String subdomain, }) async {
    // Verify required params are set.
    if (transactionHash == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: transactionHash');
    }

    // ignore: prefer_const_declarations
    final path = r'/transaction/{transaction_hash}'
      .replaceAll('{transaction_hash}', transactionHash);

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

  /// Get transaction details by transaction hash
  ///
  /// Gets the contents of a block transaction by hash
  ///
  /// Parameters:
  ///
  /// * [String] transactionHash (required):
  ///   The transaction hash
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  Future<BlockTransaction> getTransaction(String transactionHash, { ChainList chain, String subdomain, }) async {
    final response = await getTransactionWithHttpInfo(transactionHash,  chain: chain, subdomain: subdomain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlockTransaction',) as BlockTransaction;
    
    }
    return Future<BlockTransaction>.value();
  }

  /// Runs a function of a contract abi
  ///
  /// Runs a given function of a contract abi and returns readonly data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   address
  ///
  /// * [String] functionName (required):
  ///   function_name
  ///
  /// * [RunContractDto] runContractDto (required):
  ///   Body
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<Response> runContractFunctionWithHttpInfo(String address, String functionName, RunContractDto runContractDto, { ChainList chain, String subdomain, String providerUrl, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }
    if (functionName == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: functionName');
    }
    if (runContractDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: runContractDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/{address}/function'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody = runContractDto;

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
      queryParams.addAll(_convertParametersForCollectionFormat('', 'function_name', functionName));

    const authNames = <String>['ApiKeyAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Runs a function of a contract abi
  ///
  /// Runs a given function of a contract abi and returns readonly data
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   address
  ///
  /// * [String] functionName (required):
  ///   function_name
  ///
  /// * [RunContractDto] runContractDto (required):
  ///   Body
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] subdomain:
  ///   The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<String> runContractFunction(String address, String functionName, RunContractDto runContractDto, { ChainList chain, String subdomain, String providerUrl, }) async {
    final response = await runContractFunctionWithHttpInfo(address, functionName, runContractDto,  chain: chain, subdomain: subdomain, providerUrl: providerUrl, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }
}
