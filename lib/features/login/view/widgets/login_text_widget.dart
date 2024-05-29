
import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/widgets/text_widget.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 52, right: 52),
      child: TextWidget(
        text: AppStrings.login,
        style: AppTextStyles.segoeUIBold.copyWith(fontSize: 30),
      ),
    );
  }
}
