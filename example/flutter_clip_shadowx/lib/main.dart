import 'dart:math';

import 'package:clip_shadowx/clip_shadowx.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DemoScreen(),
    );
  }
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipShadow(
          clipper: ClipperPolygon(),
          shadows: const [
            BoxShadow(color: Colors.red, blurRadius: 10, spreadRadius: 10)
          ],
          child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/CairoEgMuseumTaaMaskMostlyPhotographed.jpg/480px-CairoEgMuseumTaaMaskMostlyPhotographed.jpg'),
        ),
      ),
    );
  }
}

class ClipperPolygon extends CustomClipper<Path> {
  final double degree;
  final int points;
  ClipperPolygon({this.points = 5, this.degree = 0});

  @override
  Path getClip(Size size) {
    final path = Path();

    var centerX = size.width / 2;
    var centerY = size.height / 2;

    var radius = size.width / 2;
    // var inner = radius / 2;
    var rotation = pi / 2 * 3;
    var step = pi / points;

    path.lineTo(centerX, centerY - radius);

    for (var i = 0; i < points; i++) {
      var x = centerX + cos(rotation) * radius;
      var y = centerY + sin(rotation) * radius;
      path.lineTo(x, y);
      rotation += step;

      // x = centerX + cos(rotation) * inner;
      // y = centerY + sin(rotation) * inner;
      // path.lineTo(x, y);
      rotation += step;
    }

    path.lineTo(centerX, centerY - radius);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(ClipperPolygon oldClipper) => false;
}
