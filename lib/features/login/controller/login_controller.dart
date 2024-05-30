import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/api/api_key.dart';
import 'package:promina_gallery_task/core/api/end_points.dart';
import 'package:promina_gallery_task/core/constants/app_strings.dart';
import 'package:promina_gallery_task/core/errors/exceptions.dart';
import 'package:promina_gallery_task/features/home/view/home_view.dart';

import '../../../core/database/cache/cache_helper.dart';
import '../../../core/services/api_service.dart';

class LoginController extends GetxController {
  final ApiService _apiService = Get.find<ApiService>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  login() async {
    try {
      final response = await _apiService.post(EndPoints.login, data: {
        ApiKey.email: emailController.text,
        ApiKey.password: passwordController.text
      });
      final token = response[ApiKey.token];
      Get.find<CacheHelper>().setData(key: ApiKey.token, value: token);
      Get.snackbar(
        AppStrings.congratulations,
        AppStrings.loginSuccessful,
        snackPosition: SnackPosition.BOTTOM,
      );
      Future.delayed(const Duration(seconds: 2), () {
        Get.offAll(() => const HomeView());
      });
    } on ServerException catch (e) {
      ;
      Get.snackbar(AppStrings.error, e.errorModel.errorMessage.toString());
    }
  }
}
