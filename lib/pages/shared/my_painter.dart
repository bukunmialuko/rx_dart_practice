import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xff000000).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 1.2, size.height * 0.86);
    path.cubicTo(size.width * 1.2, size.height * 0.86, size.width * 1.32, size.height * 0.73, size.width * 1.32,
        size.height * 0.73);
    path.cubicTo(size.width * 1.41, size.height * 0.65, size.width * 1.41, size.height * 0.52, size.width * 1.32,
        size.height * 0.43);
    path.cubicTo(size.width * 1.24, size.height * 0.35, size.width * 1.1, size.height * 0.35, size.width * 1.02,
        size.height * 0.43);
    path.cubicTo(size.width * 1.02, size.height * 0.43, size.width * 0.86, size.height * 0.59, size.width * 0.86,
        size.height * 0.59);
    path.cubicTo(size.width * 0.65, size.height * 0.8, size.width * 1.09, size.height * 0.97, size.width * 0.89,
        size.height * 1.17);
    path.cubicTo(size.width * 0.89, size.height * 1.17, size.width * 0.75, size.height * 1.31, size.width * 0.75,
        size.height * 1.31);
    path.cubicTo(size.width * 0.66, size.height * 1.39, size.width * 0.53, size.height * 1.39, size.width * 0.45,
        size.height * 1.31);
    path.cubicTo(
        size.width * 0.36, size.height * 1.23, size.width * 0.36, size.height * 1.09, size.width * 0.45, size.height);
    path.cubicTo(
        size.width * 0.45, size.height, size.width * 0.54, size.height * 0.91, size.width * 0.54, size.height * 0.91);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
