import 'package:final_project_2023/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' show GetView;
import '../controllers/login_controller.dart' show LoginController;

void main() {
  runApp(MaterialApp(home: LoginView(), routes: <String, WidgetBuilder>{
    '/login': (context) => LoginView(),
    '/home': (context) => HomeView(),
  }));
}

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
        "Silahkan masukan username anda",
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
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: Text('Click here to login'),
        style: TextButton.styleFrom(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          primary: Colors.teal,
        ),
      ),
    ]));
  }
}
