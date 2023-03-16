// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../utils/route.dart';

class Forgotpasswordcontroller extends GetxController {
  TextEditingController emailController = TextEditingController();
  go_otpScreen() {
    print('juo');
    Get.toNamed(RouteGenerator.otpscreen);
  }
}
