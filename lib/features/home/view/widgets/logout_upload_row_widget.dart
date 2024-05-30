import 'package:flutter/material.dart';

import 'logout_widget.dart';
import 'upload_widget.dart';

class LogoutUploadRowWidget extends StatelessWidget {
  const LogoutUploadRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [LogoutWidget(), UploadWidget()],
    );
  }
}
