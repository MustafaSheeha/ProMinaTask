
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/widgets/text_widget.dart';
import 'logout_icon_widget.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.white),
      ),
      onPressed: () {
        
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LogoutIconWidget(),
          TextWidget(
            text: AppStrings.logout,
            style: AppTextStyles.balooThambi2.copyWith(fontSize: 20,color: AppColors.darkGrey),
          )
        ],
      ),
    );
  }
}
