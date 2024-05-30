
import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';

class LogoutIconWidget extends StatelessWidget {
  const LogoutIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.orange.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(-2, 0),
                ),
              ],
            ),
            child: Image.asset(Assets.imagesRedVector)),
        Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            top: 0,
            child: Image.asset(
              Assets.imagesLeftward,
              scale: 0.6,
            )),
      ],
    );
  }
}
