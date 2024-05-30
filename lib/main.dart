import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/constants/app_colors.dart';
import 'package:promina_gallery_task/core/database/cache/cache_helper.dart';
import 'package:promina_gallery_task/core/services/api_service.dart';
import 'package:promina_gallery_task/features/home/controller/home_controller.dart';
import 'package:promina_gallery_task/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setSystemUIOverlayStyle();
  CacheHelper().init();
  Get.put(CacheHelper());
  Get.put(ApiService());
  Get.put(HomeController());
  runApp(const MyApp());
}

void setSystemUIOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.orchid,
    ),
  );
}
