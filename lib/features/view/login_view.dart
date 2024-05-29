import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/constants/app_colors.dart';
import 'package:promina_gallery_task/core/constants/assets.dart';

import 'widgets/curved_circle_list_widget.dart';
import 'widgets/curved_circle_widget.dart';
import 'widgets/gradient_container.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          GradientContainer(),
          CurvedCircleListWidget(),
        ],
      ),
    );
  }
}
