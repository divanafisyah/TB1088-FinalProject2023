// ignore_for_file: prefer_const_constructors

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
          // ignore: prefer_const_literals_to_create_immutables
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
        backgroundColor: primaryGreen,
        elevation: 0,
      ),
    );
    // ignore: dead_code
    Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFFFFFFFF)),
          left: BorderSide(color: Color(0xFFFFFFFF)),
          right: BorderSide(),
          bottom: BorderSide(),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xFFDFDFDF)),
            left: BorderSide(color: Color(0xFFDFDFDF)),
            right: BorderSide(color: Color(0xFF7F7F7F)),
            bottom: BorderSide(color: Color(0xFF7F7F7F)),
          ),
          color: Color(0xFFBFBFBF),
        ),
        child: const Text('OK',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF000000))),
      ),
    );
  }
}
