import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/constants/app_colors.dart';
import 'package:promina_gallery_task/core/constants/app_strings.dart';
import 'package:promina_gallery_task/core/constants/app_text_styles.dart';
import 'package:promina_gallery_task/core/constants/assets.dart';
import 'package:promina_gallery_task/core/widgets/vertical_space.dart';

import '../../../core/widgets/text_widget.dart';
import 'widgets/curved_circle_list_widget.dart';
import 'widgets/curved_circle_widget.dart';
import 'widgets/gradient_container.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/love_camera_photography_widget.dart';
import 'widgets/submit_button_widget.dart';
import 'widgets/text_form_field_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const GradientContainer(),
            const CurvedCircleListWidget(),
            const LoveCamerPhotographyWidget(),
            Positioned(
                top: Get.height * 0.65,
                left: Get.width * 0.3,
                child: Image.asset(Assets.imagesRectangle12)),
            Positioned(
                top: Get.height * 0.4,
                left: Get.width * 0.1,
                child: Image.asset(Assets.imagesRectangle12)),
            Positioned(
                top: Get.height * 0.43,
                left: Get.width * 0.17,
                child: Image.asset(Assets.imagesEllipse62)),
            Positioned(
                top: Get.height * 0.47,
                left: Get.width * 0.1,
                child: Image.asset(Assets.imagesPolygon1)),
            Positioned(
                top: Get.height * 0.47,
                left: Get.width * 0.16,
                child: Image.asset(Assets.imagesPolygon1)),
            Positioned(
                top: Get.height * 0.375,
                left: Get.width * 0.59,
                child: Image.asset(Assets.imagesEllipse33)),
            Positioned(
                top: Get.height * 0.39,
                left: Get.width * 0.52,
                child: Image.asset(
                  Assets.imagesUnion,
                  scale: 1.6,
                  color: AppColors.white.withOpacity(0.5),
                )),
            Container(
              margin: EdgeInsets.only(top: Get.height * 0.1),
              width: Get.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    text: AppStrings.myGellary,
                    style: AppTextStyles.segoeUIBold.copyWith(fontSize: 32),
                  ),
                  const LoginFormWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
