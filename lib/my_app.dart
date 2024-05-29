import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/view/login_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: LoginView(),
    );
  }
}