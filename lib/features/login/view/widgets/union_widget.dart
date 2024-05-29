
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/assets.dart';

class UnionWidget extends StatelessWidget {
  const UnionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: Get.height * 0.39,
        left: Get.width * 0.52,
        child: Image.asset(
          Assets.imagesUnion,
          scale: 1.6,
          color: AppColors.white.withOpacity(0.5),
        ));
  }
}
