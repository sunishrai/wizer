import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart' as di;
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../config.dart';
import '../components/functions/custom_snackbars.dart';
import '../services/local_storage_service.dart';
import '../theme/app_strings.dart';

class BaseApiImp {
  final di.Dio _dio = di.Dio();

  Future<String?> _getToken() async {
    return await LocalStorageService.instance.readData(AppStrings.token);
  }

  Future<Map<String, dynamic>?> _sendRequest(
    String method,
    String endpoint, {
    dynamic data,
    String? authToken,
  }) async {
    if (!await _isConnected()) {
      throw Exception('No internet connection');
    }

    authToken ??= await _getToken();

    try {
      final response = await _dio.request(
        '${ConfigEnvironments.getCurrentEnvironment().url}$endpoint',
        options: di.Options(
          method: method,
          headers: {
            'Authorization': authToken ?? "",
            'Content-Type': 'application/json',
          },
        ),
        data: data,
      );
      _logRequestDetails(method, endpoint, data, response);

      if (response.statusCode == 200) {
        final responseData = response.data as Map<String, dynamic>?;
        if (responseData != null && (responseData['status'] != false)) {
          return responseData;
        } else {
          final errorMessage = responseData?['message']?.toString() ?? '';
          showSnackBar(
            errorMessage.isNotEmpty ? errorMessage : 'Something went wrong!',
            isError: true,
          );
          return null;
        }
      } else {
        throw di.DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
    } on di.DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<bool> _isConnected() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  void _logRequestDetails(
      String method, String endpoint, dynamic data, di.Response response) {
    log('Request: $method ${ConfigEnvironments.getCurrentEnvironment().url}$endpoint');
    log('Payload: $data');
    log('Status Code: ${response.statusCode}');
    log('Response: ${response.data}');
  }

  Future<void> _handleError(di.DioException e) async {
    try {
      final errorMessage =
          jsonDecode(e.response.toString())['message'] ?? e.message;
      showSnackBar(errorMessage.toString(), isError: true);
    } catch (error) {
      showSnackBar(e.message ?? '', isError: true);
    }
  }

  Future<Map<String, dynamic>?> get(
    String endpoint, {
    String? authToken,
  }) async {
    return _sendRequest('GET', endpoint, authToken: authToken);
  }

  Future<Map<String, dynamic>?> post(
    String endpoint,
    dynamic data, {
    String? authToken,
  }) async {
    return _sendRequest('POST', endpoint, data: data, authToken: authToken);
  }

// Add methods for PUT, DELETE, etc., following a similar pattern
}
