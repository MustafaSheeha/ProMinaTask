
import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_styles.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.hintText,
  });
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          enabledBorder: borderDecoration(),
          focusedBorder: borderDecoration(),
          errorBorder: borderDecoration(),
          hintText: hintText,
          hintStyle: AppTextStyles.segoeUISemiBold,
        ),
      ),
    );
  }

  OutlineInputBorder borderDecoration() {
    return const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(22)));
  }
}
