import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/constants/app_colors.dart';
import 'package:promina_gallery_task/core/constants/assets.dart';
import '../../../core/widgets/vertical_space.dart';
import 'widgets/image_gellary_widget.dart';
import 'widgets/logout_upload_row_widget.dart';
import 'widgets/user_profile_pic_widget.dart';
import 'widgets/welcome_user_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [AppColors.lavenderBlush, AppColors.white],
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft,
      )),
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
          ),
          LogoutUploadRowWidget(),
          VerticalSpace(10),
          ImageGellaryWidget()
        ],
      ),
    )));
  }
}
