
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/constants/assets.dart';
import 'lavender_custom_painter.dart';

class UserProfilePicWidget extends StatelessWidget {
  const UserProfilePicWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: const Size(250, 200),
          painter: LavenderCustomPainter(),
        ),
        Positioned(
            right: Get.width * 0.1,
            top: Get.height * 0.07,
            child: Image.asset(Assets.imagesUserPic))
      ],
    );
  }
}
