import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:final_project_2023/app/modules/home/views/home_view.dart';

class LoginController extends GetxController {
  var checkC = false.obs;
  TextEditingController phoneC = TextEditingController();

  @override
  void onClose() {
    phoneC.dispose();
    super.onClose();
  }
}
