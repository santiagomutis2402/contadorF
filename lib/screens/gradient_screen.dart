import 'package:flutter/material.dart';

class GradientScreen extends StatelessWidget {
  const GradientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _GradientScreenState(),
    );
  }
}

class _GradientScreenState extends StatelessWidget {
  const _GradientScreenState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red, Colors.cyan])),
    );
  }
}
