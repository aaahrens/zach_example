//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/account_api.dart';
part 'api/defi_api.dart';
part 'api/native_api.dart';
part 'api/resolve_api.dart';
part 'api/storage_api.dart';
part 'api/token_api.dart';

part 'model/block.dart';
part 'model/block_date.dart';
part 'model/block_transaction.dart';
part 'model/chain_list.dart';
part 'model/ens.dart';
part 'model/erc20_allowance.dart';
part 'model/erc20_metadata.dart';
part 'model/erc20_price.dart';
part 'model/erc20_token_balance.dart';
part 'model/erc20_transaction.dart';
part 'model/erc20_transaction_collection.dart';
part 'model/erc721_metadata.dart';
part 'model/historical_nft_transfer.dart';
part 'model/ipfs_file.dart';
part 'model/ipfs_file_request.dart';
part 'model/log.dart';
part 'model/log_event.dart';
part 'model/log_event_by_address.dart';
part 'model/native_balance.dart';
part 'model/native_erc20_price.dart';
part 'model/nft.dart';
part 'model/nft_collection.dart';
part 'model/nft_contract_metadata.dart';
part 'model/nft_contract_metadata_collection.dart';
part 'model/nft_metadata.dart';
part 'model/nft_metadata_collection.dart';
part 'model/nft_owner.dart';
part 'model/nft_owner_collection.dart';
part 'model/nft_transfer.dart';
part 'model/nft_transfer_collection.dart';
part 'model/reserves_collection.dart';
part 'model/resolve.dart';
part 'model/run_contract_dto.dart';
part 'model/trade.dart';
part 'model/trade_collection.dart';
part 'model/transaction.dart';
part 'model/transaction_collection.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
