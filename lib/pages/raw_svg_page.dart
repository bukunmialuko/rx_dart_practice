import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rx_dart_learning/main.dart';

class RawSvgPage extends StatefulWidget {
  const RawSvgPage({Key? key}) : super(key: key);

  @override
  State<RawSvgPage> createState() => _RawSvgPageState();
}

class _RawSvgPageState extends State<RawSvgPage> {
  // final DrawableRoot svgRoot = await svg.fromSvgString(flutterLogoString, flutterLogoString);
//
// // If you only want the final Picture output, just use
//   final Picture picture = svgRoot.toPicture();
//
// // Otherwise, if you want to draw it to a canvas:
// // Optional, but probably normally desirable: scale the canvas dimensions to
// // the SVG's viewbox
//   svgRoot.scaleCanvasToViewBox(canvas);
//
// // Optional, but probably normally desireable: ensure the SVG isn't rendered
// // outside of the viewbox bounds
//   svgRoot.clipCanvasToViewBox(canvas);
//   svgRoot.draw(canvas, size);
//

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
