import 'package:flutter/material.dart';

class Shape extends StatefulWidget {
  const Shape({super.key});

  @override
  State<Shape> createState() => _ShapeState();
}

class _ShapeState extends State<Shape> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
          '/images/Vector.png',
          width: 141,
          height: 129,
        );
  }
}