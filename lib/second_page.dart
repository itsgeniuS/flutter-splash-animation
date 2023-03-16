import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:splash_animation/home_page.dart';

import 'fade_route_builder.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 400), () {
      setState(() {
        a = true;
      });
    });
    Timer(const Duration(milliseconds: 400), () {
      setState(() {
        b = true;
      });
    });
    Timer(const Duration(milliseconds: 1300), () {
      setState(() {
        c = true;
      });
    });
    Timer(const Duration(milliseconds: 1700), () {
      setState(() {
        e = true;
      });
    });
    Timer(const Duration(milliseconds: 3400), () {
      setState(() {
        d = true;
      });
    });
    Timer(const Duration(milliseconds: 3850), () {
      setState(() {
        Navigator.of(context).pushReplacement(
          FadeRouteBuilder(page: const HomePage()),
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: d ? 900 : 2500),
              curve: d ? Curves.fastLinearToSlowEaseIn : Curves.elasticOut,
              height: d
                  ? 0
                  : a
                      ? h / 2
                      : 20,
              width: 20,
            ),
            AnimatedContainer(
              duration: Duration(
                seconds: d
                    ? 1
                    : c
                        ? 2
                        : 0,
              ),
              curve: Curves.fastLinearToSlowEaseIn,
              height: d
                  ? h
                  : c
                      ? 80
                      : 20,
              width: d
                  ? w
                  : c
                      ? 200
                      : 20,
              decoration: BoxDecoration(
                color: b ? Colors.white : Colors.transparent,
                borderRadius:
                    d ? const BorderRadius.only() : BorderRadius.circular(30),
              ),
              child: Center(
                child: e
                    ? AnimatedTextKit(
                        totalRepeatCount: 1,
                        animatedTexts: [
                          FadeAnimatedText(
                            'Awesome app',
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                            duration: const Duration(milliseconds: 1700),
                          )
                        ],
                      )
                    : const SizedBox(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
