import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/api/api_key.dart';
import 'package:promina_gallery_task/core/api/end_points.dart';
import 'package:promina_gallery_task/core/constants/app_strings.dart';
import 'package:promina_gallery_task/core/errors/exceptions.dart';

import '../../../core/services/api_service.dart';

class LoginController extends GetxController {
  final ApiService _apiService = Get.find<ApiService>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    try {
      _apiService.post(EndPoints.login, data: {
        ApiKey.email: emailController.text,
        ApiKey.password: passwordController.text
      });
      Get.snackbar(AppStrings.congratulations, 'Login Successful');
    } on ServerException catch (e) {
      ;
      Get.snackbar(AppStrings.error, e.errorModel.errorMessage.toString());
    }
  }
}
