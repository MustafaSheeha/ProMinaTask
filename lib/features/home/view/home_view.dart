import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/constants/app_colors.dart';
import 'package:promina_gallery_task/core/constants/app_strings.dart';
import 'package:promina_gallery_task/core/constants/app_text_styles.dart';
import 'package:promina_gallery_task/core/constants/assets.dart';
import 'package:promina_gallery_task/core/widgets/text_widget.dart';
import 'package:promina_gallery_task/core/widgets/vertical_space.dart';

import 'widgets/lavender_custom_painter.dart';
import 'widgets/user_profile_pic_widget.dart';
import 'widgets/welcome_user_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SizedBox(
      height: Get.height,
      width: Get.width,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WelcomeUserWidget(),
              UserProfilePicWidget(),
            ],
          )
        ],
      ),
    )));
  }
}
