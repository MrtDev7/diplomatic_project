import 'dart:async';

import 'package:diplomatic/constants/assets.dart';
import 'package:flutter/material.dart';

import 'home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  secondaryLogo,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
