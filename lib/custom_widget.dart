import 'dart:async';

import 'package:animations/animations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:splash_animation/second_page.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({super.key});

  @override
  MyCustomWidgetState createState() => MyCustomWidgetState();
}

class MyCustomWidgetState extends State<MyCustomWidget> {
  GlobalKey<MyCustomWidgetState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    OpenContainer openContainer = OpenContainer(
      key: myKey,
      closedBuilder: (_, openContainer) {
        return Container(
          color: Colors.black,
        );
      },
      openColor: Colors.black,
      // closedElevation: 20,
      // closedShape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20),
      // ),
      transitionDuration: const Duration(milliseconds: 700),
      openBuilder: (_, closeContainer) {
        return const SecondPage();
      },
    );

    GestureDetector gestureDetector = GestureDetector(
      onTap: () {
        print("tap detected");
      },
      child: openContainer
    );

    // return Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         const Text("Suppose this is an app in your phone menu page"),
    //         OpenContainer(
    //           closedBuilder: (_, openContainer) {
    //             return const SizedBox(
    //               height: 80,
    //               width: 80,
    //               child: Center(
    //                 child: Text('App logo'),
    //               ),
    //             );
    //           },
    //           openColor: Colors.white,
    //           closedElevation: 20,
    //           closedShape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           transitionDuration: const Duration(milliseconds: 700),
    //           openBuilder: (_, closeContainer) {
    //             return const SecondPage();
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    Timer(const Duration(milliseconds: 1300), () {
      print("tap triggered");
      gestureDetector.onTap!();
    });
    return gestureDetector;
  }
}
