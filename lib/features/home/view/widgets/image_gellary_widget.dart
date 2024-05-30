import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';

class ImageGellaryWidget extends StatelessWidget {
  const ImageGellaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          children: [
            ...List.generate(
              15,
              (index) {
                return Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Assets
                              .imagesVincentiuSolomonLn5drpvImIUnsplash))),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
