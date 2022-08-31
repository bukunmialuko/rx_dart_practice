import 'package:flutter/material.dart';
import 'package:rx_dart_learning/pages/shared/my_painter.dart';
import 'package:rx_dart_learning/pages/shared/sgape_painter.dart';

class CustomPainterPage extends StatefulWidget {
  const CustomPainterPage({Key? key}) : super(key: key);

  @override
  State<CustomPainterPage> createState() => _CustomPainterPageState();
}

class _CustomPainterPageState extends State<CustomPainterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow.shade100,
            ),
            const SizedBox(height: 50),
            CustomPaint(
              painter: MyPainter(),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green.shade100,
              ),
            ),
            const SizedBox(height: 100),
            CustomPaint(
              painter: ShapePainter(),
              child: Container(
                // width: 100,
                // height: 100,
                color: Colors.green.shade100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
