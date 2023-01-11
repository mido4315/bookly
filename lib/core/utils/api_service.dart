import 'package:dio/dio.dart';

class APIService {
  APIService(this._dio);

  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  Future<Map<String, dynamic>> get({required String path}) async {
    Response response = await _dio.get('$_baseUrl$path');
    return response.data;
  }
}
