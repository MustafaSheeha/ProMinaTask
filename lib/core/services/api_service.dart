import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/api/end_points.dart';

class ApiService extends GetxService {
  late Dio _dio;

  @override
  void onInit() {
    super.onInit();
    _dio = Dio(BaseOptions(
      baseUrl: EndPoints.baseUrl, // Replace with your API base URL
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {
        'Content-Type': 'application/json',
      },
    ));
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<dynamic> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      return _handleDioException(e);
    }
  }

  Future<dynamic> post(String path,
      {dynamic data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await _dio.post(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      return _handleDioException(e);
    }
  }

  Future<dynamic> delete(String path,
      {dynamic data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await _dio.delete(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      return _handleDioException(e);
    }
  }

  Future<dynamic> patch(String path,
      {dynamic data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await _dio.patch(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      return _handleDioException(e);
    }
  }

  dynamic _handleDioException(DioException e) {
    String? errorMessage;
    if (e.response != null) {
      errorMessage = e.response!.data['message'] ?? e.message;
    } else {
      errorMessage = e.message;
    }
    Get.snackbar('Error', errorMessage!, snackPosition: SnackPosition.BOTTOM);
    return Future.error(errorMessage);
  }
}
