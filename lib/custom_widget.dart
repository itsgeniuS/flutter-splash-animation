import 'dart:async';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:splash_animation/second_page.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({super.key});

  @override
  MyCustomWidgetState createState() => MyCustomWidgetState();
}

class MyCustomWidgetState extends State<MyCustomWidget> {

  late VoidCallback closedBuilderCallback;

  @override
  void initState() {
    Timer(const Duration(milliseconds: 1500), () {
      setState(() {
        closedBuilderCallback.call();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedBuilder: (_, void Function() action) {
        closedBuilderCallback = action;
        return Container(
          color: Colors.black,
        );
      },
      openColor: Colors.black,
      transitionDuration: const Duration(milliseconds: 700),
      openBuilder: (_, closeContainer) {
        return const SecondPage();
      },
    );
  }
}
