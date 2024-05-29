import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/constants/app_colors.dart';
import 'package:promina_gallery_task/core/constants/assets.dart';

import 'widgets/curved_circle_widget.dart';
import 'widgets/gradient_container.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          GradientContainer(),
          CurvedCircleWidget(
            imagePath: Assets.imagesCurvedCirclesVector2014,
            left: Get.height*0.013,
            top: -Get.height*0.123,
          ),
          CurvedCircleWidget(
            imagePath: Assets.imagesCurvedCirclesVector2013,
            left: -Get.height*0.007,
            top: -Get.height*0.154,
          ),
          CurvedCircleWidget(
            imagePath: Assets.imagesCurvedCirclesVector2009,
            left: -Get.height*0.02,
            top: -Get.height*0.169,
          ),
          CurvedCircleWidget(
            imagePath: Assets.imagesCurvedCirclesVector2010,
            left: -Get.height*0.033,
            top: -Get.height*0.188,
          ),
          CurvedCircleWidget(
            imagePath: Assets.imagesCurvedCirclesVector2011,
            left: -Get.height*0.053,
            top: -Get.height*0.215,
          ),
          CurvedCircleWidget(
            imagePath: Assets.imagesCurvedCirclesVector2012,
            left: -Get.height*0.072,
            top: -Get.height*0.229,
          ),
        ],
      ),
    );
  }
}
