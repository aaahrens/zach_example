//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StorageApi {
  StorageApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Uploads multiple files and place them in a folder directory
  ///
  /// Uploads multiple files and place them in a folder directory 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<IpfsFileRequest>] ipfsFileRequest:
  ///   Array of JSON and Base64 Supported
  Future<Response> uploadFolderWithHttpInfo({ List<IpfsFileRequest> ipfsFileRequest, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/ipfs/uploadFolder';

    // ignore: prefer_final_locals
    Object postBody = ipfsFileRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Uploads multiple files and place them in a folder directory
  ///
  /// Uploads multiple files and place them in a folder directory 
  ///
  /// Parameters:
  ///
  /// * [List<IpfsFileRequest>] ipfsFileRequest:
  ///   Array of JSON and Base64 Supported
  Future<List<IpfsFile>> uploadFolder({ List<IpfsFileRequest> ipfsFileRequest, }) async {
    final response = await uploadFolderWithHttpInfo( ipfsFileRequest: ipfsFileRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IpfsFile>') as List)
        .cast<IpfsFile>()
        .toList(growable: false);

    }
    return Future<List<IpfsFile>>.value();
  }
}
