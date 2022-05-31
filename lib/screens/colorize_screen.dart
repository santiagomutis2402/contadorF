import 'dart:math';

import 'package:flutter/material.dart';

class ColorizeScreen extends StatefulWidget {
  const ColorizeScreen({Key? key}) : super(key: key);

  @override
  _ColorizeScreenState createState() => _ColorizeScreenState();
}

class _ColorizeScreenState extends State<ColorizeScreen> {
  Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Container(
        child: GestureDetector(
          onTap: () {
            setState(() {
              color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
            });
          },
        ),
      ),
    );
  }
}
