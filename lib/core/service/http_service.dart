
import 'package:dio/dio.dart';

class HttpService {

  static const String BASE_URL = 'https://techcrunch.com/wp-json/wp/v2/';

  static const String NEWS_API = "posts";

  HttpService._();

  static final HttpService _instance = HttpService._();

  static HttpService get instance => _instance;

  final _dio = Dio();

  Future<Response> get(String endPoint, dynamic data, Map<String, dynamic>? queryParameters) async {
    return await _dio.get('$BASE_URL$endPoint', data: data, queryParameters: queryParameters);
  }

  Future<Response> post(String endPoint, dynamic data, Map<String, dynamic>? queryParameters) async {
    return await _dio.post('$BASE_URL$endPoint', data: data, queryParameters: queryParameters);
  }

  // TODO: add more functions

}
