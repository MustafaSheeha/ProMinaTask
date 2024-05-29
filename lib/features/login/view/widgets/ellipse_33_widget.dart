
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/assets.dart';

class Ellipse33Widget extends StatelessWidget {
  const Ellipse33Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: Get.height * 0.375,
        left: Get.width * 0.59,
        child: Image.asset(Assets.imagesEllipse33));
  }
}
