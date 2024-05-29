import 'package:get/get.dart';
import 'package:promina_gallery_task/core/api/api_key.dart';
import 'package:promina_gallery_task/core/api/end_points.dart';
import 'package:promina_gallery_task/core/errors/exceptions.dart';

import '../../../core/services/api_service.dart';

class LoginController extends GetxController {
  final ApiService _apiService = Get.find<ApiService>();

  void login(String email, String password) {
    try {
      _apiService.post(EndPoints.login,
          data: {ApiKey.email: email, ApiKey.password: password});
    } on ServerException catch (e) {
      ;
      Get.snackbar('Error', e.errorModel.errorMessage.toString());
    }
  }
}
