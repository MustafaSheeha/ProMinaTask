
import 'package:flutter/cupertino.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../../core/widgets/vertical_space.dart';

class WelcomeUserWidget extends StatelessWidget {
  const WelcomeUserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: AppStrings.welcome,
            style: AppTextStyles.balooThambi2.copyWith(fontSize: 32),
          ),
          TextWidget(
            text: AppStrings.mina,
            style: AppTextStyles.balooThambi2.copyWith(fontSize: 32),
          ),
          const VerticalSpace(40)
        ],
      ),
    );
  }
}
