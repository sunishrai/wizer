import 'dart:developer';

import 'package:dio/dio.dart' as di;
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../config.dart';
import '../services/local_storage_service.dart';
import '../theme/app_strings.dart';
import 'base_handler.dart';

class BaseApi {
  final di.Dio _dio = di.Dio();

  Future<String?> _getToken() async {
    return await LocalStorageService.instance.readData(AppStrings.token);
  }

  Future<BaseHandler> _sendRequest(
    String method,
    String endpoint, {
    dynamic data,
    String? authToken,
  }) async {
    final hasConnection = await _isConnected();
    if (!hasConnection) {
      throw Exception('No internet connection');
    }

    authToken ??= await _getToken();

    try {
      final response = await _dio.request(
        ConfigEnvironments.getCurrentEnvironment().url + endpoint,
        options: di.Options(
          method: method,
          headers: {
            'Authorization': authToken ?? "",
            'Content-Type': 'application/json',
          },
        ),
        data: data,
      );
      print(response.data);
      _logRequestDetails(method, endpoint, data, response);
      if (response.statusCode == 200) {
        return BaseHandler.response(
            response: response.data as Map<String, dynamic>);
      } else {
        return BaseHandler.error(errorMsg: response.statusMessage);
      }
    } on di.DioException catch (e) {
      return BaseHandler.error(errorMsg: e.message);
    }
  }

  Future<bool> _isConnected() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  void _logRequestDetails(
      String method, String endpoint, dynamic data, di.Response response) {
    log('Request: $method $endpoint');
    log('Payload: $data');
    log('Status Code: ${response.statusCode}');
    log('Response: ${response.data}');
  }

  Future<BaseHandler> get(String endpoint, {String? authToken}) async {
    return _sendRequest('GET', endpoint, authToken: authToken);
  }

  Future<BaseHandler> post(String endpoint, dynamic data,
      {String? authToken}) async {
    return _sendRequest('POST', endpoint, data: data, authToken: authToken);
  }

  // Add methods for PUT, DELETE, etc., following a similar pattern
}
