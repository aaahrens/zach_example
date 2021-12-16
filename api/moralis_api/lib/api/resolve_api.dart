//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ResolveApi {
  ResolveApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Return the ENS domain when available (Only for ETH)
  ///
  /// Resolves an ETH address and find the ENS name 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address to be resolved
  Future<Response> resolveAddressWithHttpInfo(String address,) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/resolve/{address}/reverse'
      .replaceAll('{address}', address);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Return the ENS domain when available (Only for ETH)
  ///
  /// Resolves an ETH address and find the ENS name 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   The address to be resolved
  Future<Ens> resolveAddress(String address,) async {
    final response = await resolveAddressWithHttpInfo(address,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Ens',) as Ens;
    
    }
    return Future<Ens>.value();
  }

  /// Resolves an Unstoppable domain and returns the address
  ///
  /// Resolves an Unstoppable domain and returns the address 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   Domain to be resolved
  ///
  /// * [String] currency:
  ///   The currency to query
  Future<Response> resolveDomainWithHttpInfo(String domain, { String currency, }) async {
    // Verify required params are set.
    if (domain == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: domain');
    }

    // ignore: prefer_const_declarations
    final path = r'/resolve/{domain}'
      .replaceAll('{domain}', domain);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (currency != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'currency', currency));
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

  /// Resolves an Unstoppable domain and returns the address
  ///
  /// Resolves an Unstoppable domain and returns the address 
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   Domain to be resolved
  ///
  /// * [String] currency:
  ///   The currency to query
  Future<Resolve> resolveDomain(String domain, { String currency, }) async {
    final response = await resolveDomainWithHttpInfo(domain,  currency: currency, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Resolve',) as Resolve;
    
    }
    return Future<Resolve>.value();
  }
}
