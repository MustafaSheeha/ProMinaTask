
import 'package:flutter/material.dart';

class LavenderCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color(0xffDDCDFF)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.69, size.height * 0.72);
    path_0.quadraticBezierTo(
        size.width * 0.9, size.height * 0.7, size.width, size.height);
    path_0.lineTo(size.width, 0);
    path_0.quadraticBezierTo(size.width * 0.9, 0, size.width * 0.3, 0);
    path_0.cubicTo(
      size.width * 0.7,
      size.height * 0.3,
      size.width * 0.3,
      size.height * 0.3,
      size.width * 0.6,
      size.height * 0.68,
    );
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

