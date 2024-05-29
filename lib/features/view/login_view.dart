import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/constants/app_colors.dart';
import 'package:promina_gallery_task/core/constants/app_strings.dart';
import 'package:promina_gallery_task/core/constants/app_text_styles.dart';
import 'package:promina_gallery_task/core/constants/assets.dart';

import '../../core/widgets/text_widget.dart';
import 'widgets/curved_circle_list_widget.dart';
import 'widgets/curved_circle_widget.dart';
import 'widgets/gradient_container.dart';
import 'widgets/love_camera_photography_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GradientContainer(),
          CurvedCircleListWidget(),
          LoveCamerPhotographyWidget(),
          SizedBox(
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: AppStrings.myGellary,
                  style: AppTextStyles.segoeUIBold.copyWith(fontSize: 32),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      TextWidget(
                        text: AppStrings.login,
                        style: AppTextStyles.segoeUIBold.copyWith(fontSize: 30),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
