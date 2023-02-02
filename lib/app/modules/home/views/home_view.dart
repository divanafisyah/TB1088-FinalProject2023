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
            style: TextStyle(
              fontSize: 18,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextSpan(
                text: "CLEANIN",
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
                  "assets/images/logo_splash.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
          backgroundColor: primaryGreen,
          elevation: 0,
        ),
        body: Stack(children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: primaryGreen,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(children: [
                Column(children: [
                  ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 255, 255),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                          ),
                        ),
                        child: Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [Text("Total sampah yang telah kamu kumpulkan :",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20, fontWeight: FontWeight.bold,
                                ),
                                )
                                ],
                              )
                            ],
                          ),
                          Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Sampah(
                            title: "Sampah",
                            data: "74",
                            satuan: "kg",
                          ),
                          Sampah(
                            title: "Poin",
                            data: "88",
                            satuan: " poin",
                          ),

                        ]),
                      )
                        ]
                      )
                      )
                  )
                ]
                )
              ]))
        ]
        )
        );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class Sampah extends StatelessWidget {
  Sampah({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          RichText(
            text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                      text: " $satuan",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF747D8C),
                      ))
                ]),
          )
        ]),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
