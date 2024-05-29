import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../controller/login_controller.dart';

class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return GestureDetector(
      onTap: () {
        loginController.login();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        padding: const EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 10,
        ),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: TextWidget(
          text: AppStrings.submit,
          style: AppTextStyles.segoeUIBold
              .copyWith(fontSize: 18, color: AppColors.white),
        ),
      ),
    );
  }
}
