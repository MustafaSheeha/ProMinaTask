import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/vertical_space.dart';
import '../../controller/login_controller.dart';
import 'login_text_widget.dart';
import 'submit_button_widget.dart';
import 'text_form_field_widget.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(32),
        backgroundBlendMode: BlendMode.luminosity,
      ),
      child: Column(
        children: [
          const LoginTextWidget(),
          TextFormFieldWidget(
            hintText: AppStrings.userName,
            controller: loginController.emailController,
          ),
          TextFormFieldWidget(
            hintText: AppStrings.password,
            controller: loginController.passwordController,
            isPassword: true,
          ),
          const SubmitButtonWidget(),
          const VerticalSpace(40)
        ],
      ),
    );
  }
}
