
import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';

class Rectangle12Widget extends StatelessWidget {
  const Rectangle12Widget({
    super.key,
    this.top,
    this.left,
  });
  final double? top, left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top, left: left, child: Image.asset(Assets.imagesRectangle12));
  }
}
