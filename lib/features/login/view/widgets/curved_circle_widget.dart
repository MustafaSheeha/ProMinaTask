import 'package:flutter/material.dart';

class CurvedCircleWidget extends StatelessWidget {
  const CurvedCircleWidget({
    super.key,
    this.top,
    this.left,
    required this.imagePath,
  });
  final double? top, left;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Image.asset(imagePath),
    );
  }
}
