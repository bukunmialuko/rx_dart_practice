import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rx_dart_learning/pages/svg_to_paint.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  return runZonedGuarded(() async {
    runApp(const MyApp());
  }, (_, __) {});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SVGToPaint(),
    );
  }
}
