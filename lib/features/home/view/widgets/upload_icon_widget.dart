
import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';

class UploadIconWidget extends StatelessWidget {
  const UploadIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.yellow.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(-2, 0),
              ),
            ],
          ),
          child: Image.asset(Assets.imagesYellowVector)),
      Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          top: 0,
          child: Image.asset(
            Assets.imagesUpward,
            scale: 0.6,
          )),
    ]);
  }
}
