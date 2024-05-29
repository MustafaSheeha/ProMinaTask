import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/assets.dart';

class LoveCamerPhotographyWidget extends StatelessWidget {
  const LoveCamerPhotographyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Get.height * 0.04,
      left: Get.width * 0.2,
      child: Image.asset(Assets.imagesLovePhotography),
    );
  }
}
