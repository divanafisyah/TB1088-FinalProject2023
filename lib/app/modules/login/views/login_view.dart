import 'package:flutter/material.dart';
import 'package:get/get.dart' show GetView;
import '../controllers/login_controller.dart' show LoginController;

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Image.asset(
        "assets/images/logo_splash.png",
      ),
      Text(
        "Silahkan masuk dengan email anda",
        textAlign: TextAlign.center,
      ),
      Text(
        "Email",
        textAlign: TextAlign.center,
      ),
      Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Color.fromARGB(255, 23, 141, 251),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Informasi',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ),
      ),
    ]));
  }
}
