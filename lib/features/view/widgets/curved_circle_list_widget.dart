import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/constants/assets.dart';
import 'curved_circle_widget.dart';

class CurvedCircleListWidget extends StatelessWidget {
  const CurvedCircleListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buildCurvedCircleWidgets() {
      final double height = Get.height;

      final List<Map<String, dynamic>> circles = [
        {
          'imagePath': Assets.imagesCurvedCirclesVector2014,
          'left': height * 0.013,
          'top': -height * 0.123,
        },
        {
          'imagePath': Assets.imagesCurvedCirclesVector2013,
          'left': -height * 0.007,
          'top': -height * 0.154,
        },
        {
          'imagePath': Assets.imagesCurvedCirclesVector2009,
          'left': -height * 0.02,
          'top': -height * 0.169,
        },
        {
          'imagePath': Assets.imagesCurvedCirclesVector2010,
          'left': -height * 0.033,
          'top': -height * 0.188,
        },
        {
          'imagePath': Assets.imagesCurvedCirclesVector2011,
          'left': -height * 0.053,
          'top': -height * 0.215,
        },
        {
          'imagePath': Assets.imagesCurvedCirclesVector2012,
          'left': -height * 0.072,
          'top': -height * 0.229,
        },
      ];
      return circles.map((circle) {
        return CurvedCircleWidget(
          imagePath: circle['imagePath'],
          left: circle['left'],
          top: circle['top'],
        );
      }).toList();
    }

    return SizedBox(
      child: Stack(
        children: buildCurvedCircleWidgets(),
      ),
    );
  }
}
