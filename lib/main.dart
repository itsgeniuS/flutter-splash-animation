import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:splash_animation/custom_widget.dart';
import 'package:splash_animation/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash screen animation demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCustomWidget(),
    );
  }
}
