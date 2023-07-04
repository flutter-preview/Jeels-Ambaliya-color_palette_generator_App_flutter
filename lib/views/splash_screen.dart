import 'package:flutter/material.dart';

import '../controllers/color_controller.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  TimeToGo() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, 'Home_Screen', (route) => false);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    TimeToGo();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Splash_Screen.png"),
          ),
        ),
      ),
    );
  }
}
