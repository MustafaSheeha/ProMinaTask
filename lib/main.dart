import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/services/api_service.dart';
import 'package:promina_gallery_task/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ApiService());
  runApp(const MyApp());
}
