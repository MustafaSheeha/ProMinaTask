
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/widgets/text_widget.dart';
import 'login_form_widget.dart';

class AppNameAndLoginFormWidget extends StatelessWidget {
  const AppNameAndLoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
