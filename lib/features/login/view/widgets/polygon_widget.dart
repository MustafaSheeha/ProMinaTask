import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';

class PolygonWidget extends StatelessWidget {
  const PolygonWidget({
    super.key,
    this.top,
    this.left,
  });
  final double? top, left;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top, left: left, child: Image.asset(Assets.imagesPolygon1));
  }
}
