import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promina_gallery_task/core/constants/app_strings.dart';
import 'package:promina_gallery_task/core/constants/app_text_styles.dart';
import 'package:promina_gallery_task/core/widgets/text_widget.dart';
import 'package:promina_gallery_task/features/home/controller/home_controller.dart';

import '../../../../core/constants/assets.dart';

class ImageGellaryWidget extends StatefulWidget {
  const ImageGellaryWidget({
    super.key,
  });

  @override
  State<ImageGellaryWidget> createState() => _ImageGellaryWidgetState();
}

class _ImageGellaryWidgetState extends State<ImageGellaryWidget> {
  @override
  void initState() {
    Get.find<HomeController>().getImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
    return GetBuilder<HomeController>(builder: (c) {
      return c.imageList.isEmpty
          ? const NoImagesAvailableWidget()
          : Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    ...List.generate(
                      homeController.imageList.length,
                      (index) {
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      homeController.imageList[index].path))),
                        );
                      },
                    )
                  ],
                ),
              ),
            );
    });
  }
}

class NoImagesAvailableWidget extends StatelessWidget {
  const NoImagesAvailableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextWidget(
          text: AppStrings.noImagesAvailable,
          style: AppTextStyles.segoeUIBold.copyWith(fontSize: 20),
        ),
      );
  }
}
