import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            body: Center(
                child: Container(
              width: Get.width * 1,
              height: Get.width * 1,
              child: Image.asset(
                "assets/images/logo_splash.png",
                fit: BoxFit.contain,
              ),
            ))));
  }
}