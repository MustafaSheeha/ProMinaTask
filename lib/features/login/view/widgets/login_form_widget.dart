import 'package:flutter/cupertino.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'login_text_widget.dart';
import 'submit_button_widget.dart';
import 'text_form_field_widget.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(32),
      ),
      child: const Column(
        children: [
          LoginTextWidget(),
          TextFormFieldWidget(hintText: AppStrings.userName),
          TextFormFieldWidget(hintText: AppStrings.password),
          SubmitButtonWidget(),
          VerticalSpace(40)
        ],
      ),
    );
  }
}
