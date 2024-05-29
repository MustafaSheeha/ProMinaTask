import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/assets.dart';

class Ellipse62Wiget extends StatelessWidget {
  const Ellipse62Wiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: Get.height * 0.43,
        left: Get.width * 0.17,
        child: Image.asset(Assets.imagesEllipse62));
  }
}
