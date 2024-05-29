import 'package:flutter/material.dart';
import 'package:promina_gallery_task/core/constants/app_text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home View',
          style: AppTextStyles.segoeUIBold,
        ),
      ),
    );
  }
}
