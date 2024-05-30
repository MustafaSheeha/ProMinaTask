import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:promina_gallery_task/core/constants/assets.dart';
import 'package:promina_gallery_task/core/widgets/vertical_space.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/widgets/text_widget.dart';
import 'upload_icon_widget.dart';

class UploadWidget extends StatelessWidget {
  const UploadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.white),
      ),
      onPressed: () {
        Get.dialog(
          Container(
            margin: const EdgeInsets.symmetric(vertical: 250, horizontal: 32),
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(32),
              backgroundBlendMode: BlendMode.luminosity,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            AppColors.lightLavenderPink),
                      ),
                      onPressed: () async {
                        await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Assets.imagesGallery),
                          TextWidget(
                            text: AppStrings.gellary,
                            style: AppTextStyles.segoeUIBold.copyWith(
                                fontSize: 20, color: AppColors.darkGrey),
                          ),
                        ],
                      )),
                ),
                const VerticalSpace(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(AppColors.skyBlue),
                      ),
                      onPressed: () async {
                        await ImagePicker()
                            .pickImage(source: ImageSource.camera);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Assets.imagesCamera, scale: 1.8),
                          TextWidget(
                            text: AppStrings.camera,
                            style: AppTextStyles.segoeUIBold.copyWith(
                                fontSize: 20, color: AppColors.darkGrey),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const UploadIconWidget(),
          TextWidget(
            text: AppStrings.upload,
            style: AppTextStyles.balooThambi2
                .copyWith(fontSize: 20, color: AppColors.darkGrey),
          )
        ],
      ),
    );
  }
}
