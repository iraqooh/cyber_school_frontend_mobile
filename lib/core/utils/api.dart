import 'package:cyber_school/core/utils/constants.dart';
import 'package:dio/dio.dart';

class Api {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.baseUrl,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 30000),
    ),
  );

  static Future<Response> get(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response;
    } on DioException catch (e) {
      throw Exception('GET request error: ${e.response?.data ?? e.message}');
    }
  }

  // POST request
  static Future<Response> post(String endpoint, {dynamic data}) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      throw Exception('POST request error: ${e.response?.data ?? e.message}');
    }
  }

  // PUT request
  static Future<Response> put(String endpoint, {dynamic data}) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      throw Exception('PUT request error: ${e.response?.data ?? e.message}');
    }
  }

  // DELETE request
  static Future<Response> delete(String endpoint) async {
    try {
      final response = await _dio.delete(endpoint);
      return response;
    } on DioException catch (e) {
      throw Exception('DELETE request error: ${e.response?.data ?? e.message}');
    }
  }
}