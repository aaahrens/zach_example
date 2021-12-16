//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefiApi {
  DefiApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get pair address based on token0 and token1 address
  ///
  /// Fetches and returns pair data of the provided token0+token1 combination. The token0 and token1 options are interchangable (ie. there is no different outcome in \"token0=WETH and token1=USDT\" or \"token0=USDT and token1=WETH\") 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchange (required):
  ///   The factory name or address of the token exchange
  ///
  /// * [String] token0Address (required):
  ///   Token0 address
  ///
  /// * [String] token1Address (required):
  ///   Token1 address
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] toBlock:
  ///   To get the reserves at this block number
  ///
  /// * [String] toDate:
  ///   Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  Future<Response> getPairAddressWithHttpInfo(String exchange, String token0Address, String token1Address, { ChainList chain, String toBlock, String toDate, }) async {
    // Verify required params are set.
    if (exchange == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: exchange');
    }
    if (token0Address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: token0Address');
    }
    if (token1Address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: token1Address');
    }

    // ignore: prefer_const_declarations
    final path = r'/{token0_address}/{token1_address}/pairAddress'
      .replaceAll('{token0_address}', token0Address)
      .replaceAll('{token1_address}', token1Address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (toBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_block', toBlock));
    }
    if (toDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_date', toDate));
    }
      queryParams.addAll(_convertParametersForCollectionFormat('', 'exchange', exchange));

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

  /// Get pair address based on token0 and token1 address
  ///
  /// Fetches and returns pair data of the provided token0+token1 combination. The token0 and token1 options are interchangable (ie. there is no different outcome in \"token0=WETH and token1=USDT\" or \"token0=USDT and token1=WETH\") 
  ///
  /// Parameters:
  ///
  /// * [String] exchange (required):
  ///   The factory name or address of the token exchange
  ///
  /// * [String] token0Address (required):
  ///   Token0 address
  ///
  /// * [String] token1Address (required):
  ///   Token1 address
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] toBlock:
  ///   To get the reserves at this block number
  ///
  /// * [String] toDate:
  ///   Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  Future<ReservesCollection> getPairAddress(String exchange, String token0Address, String token1Address, { ChainList chain, String toBlock, String toDate, }) async {
    final response = await getPairAddressWithHttpInfo(exchange, token0Address, token1Address,  chain: chain, toBlock: toBlock, toDate: toDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReservesCollection',) as ReservesCollection;
    
    }
    return Future<ReservesCollection>.value();
  }

  /// Get liquidity pair reserves
  ///
  /// Get the liquidity reserves for a given pair address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pairAddress (required):
  ///   Liquidity pair address
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] toBlock:
  ///   To get the reserves at this block number
  ///
  /// * [String] toDate:
  ///   Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<Response> getPairReservesWithHttpInfo(String pairAddress, { ChainList chain, String toBlock, String toDate, String providerUrl, }) async {
    // Verify required params are set.
    if (pairAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pairAddress');
    }

    // ignore: prefer_const_declarations
    final path = r'/{pair_address}/reserves'
      .replaceAll('{pair_address}', pairAddress);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'chain', chain));
    }
    if (toBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_block', toBlock));
    }
    if (toDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to_date', toDate));
    }
    if (providerUrl != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'provider_url', providerUrl));
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

  /// Get liquidity pair reserves
  ///
  /// Get the liquidity reserves for a given pair address
  ///
  /// Parameters:
  ///
  /// * [String] pairAddress (required):
  ///   Liquidity pair address
  ///
  /// * [ChainList] chain:
  ///   The chain to query
  ///
  /// * [String] toBlock:
  ///   To get the reserves at this block number
  ///
  /// * [String] toDate:
  ///   Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
  ///
  /// * [String] providerUrl:
  ///   web3 provider url to user when using local dev chain
  Future<ReservesCollection> getPairReserves(String pairAddress, { ChainList chain, String toBlock, String toDate, String providerUrl, }) async {
    final response = await getPairReservesWithHttpInfo(pairAddress,  chain: chain, toBlock: toBlock, toDate: toDate, providerUrl: providerUrl, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReservesCollection',) as ReservesCollection;
    
    }
    return Future<ReservesCollection>.value();
  }
}
