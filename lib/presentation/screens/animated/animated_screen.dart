import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 40;
  double height = 40;
  Color color = Colors.indigo;
  double borderRadius = 10;

  void changeShape() {
    final rand = Random();
    setState(() {
      width = (rand.nextDouble() * 300) + 10;
      height = (rand.nextDouble() * 300) + 10;
      borderRadius = rand.nextDouble() * 90;
      color = Color.fromRGBO(
          rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInCubic,
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRadius)),
        ),
      ),
    );
  }
}
