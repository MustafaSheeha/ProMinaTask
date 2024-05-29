import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_colors.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          AppColors.orchid,
          AppColors.lavenderBlue,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      )),
    );
  }
}
