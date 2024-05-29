import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'union_widget.dart';
import 'widgets/app_name_and_login_form_widget.dart';
import 'widgets/curved_circle_list_widget.dart';
import 'widgets/ellipse_33_widget.dart';
import 'widgets/ellipse_62_wiget.dart';
import 'widgets/gradient_container.dart';
import 'widgets/love_camera_photography_widget.dart';
import 'widgets/polygon_widget.dart';
import 'widgets/rectangle_12_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const GradientContainer(),
            const CurvedCircleListWidget(),
            const LoveCamerPhotographyWidget(),
            Rectangle12Widget(top: Get.height * 0.65, left: Get.width * 0.35),
            Rectangle12Widget(top: Get.height * 0.4, left: Get.width * 0.1),
            const Ellipse62Wiget(),
            PolygonWidget(top: Get.height * 0.47, left: Get.width * 0.1),
            PolygonWidget(top: Get.height * 0.47, left: Get.width * 0.16),
            const Ellipse33Widget(),
            const UnionWidget(),
            const AppNameAndLoginFormWidget()
          ],
        ),
      ),
    );
  }
}
