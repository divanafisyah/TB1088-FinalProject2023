import 'package:final_project_2023/app/widgets/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
void main() {
  runApp(Cleanin());
}
class Cleanin extends StatelessWidget {
  const Cleanin({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, Snapshot) {
          if (Snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else 
          return GetMaterialApp(
            title: "Cleanin",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }
    );
  }
}
