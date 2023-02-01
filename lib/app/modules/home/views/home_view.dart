import 'package:final_project_2023/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: false,
      title: RichText(
          text: TextSpan(
        text: "Hai, ",
        style: TextStyle(
          fontSize: 18,
        ),
        children: [
          TextSpan(
            text: "Ayo Lapor Sampah",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      )),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(right: 20),
            width: 30,
            height: 30,
            child: Image.asset(
              "assets/icons/search.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
      backgroundColor: primaryBlue,
      elevation: 0,
    ));
  }
}
