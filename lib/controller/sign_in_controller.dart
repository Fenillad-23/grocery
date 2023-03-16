// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/utils/route.dart';
import 'package:grocery/utils/string_utils.dart';

import '../widgets/snackbar.dart';

class SigninController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool obscure = false.obs;
  altervisibiltiy() {
    obscure.value = !obscure.value;
  }

  GlobalKey<FormState> signinKey =
      GlobalKey<FormState>(debugLabel: "SigninController");
  signin() {
    if (!signinKey.currentState!.validate()) {
      return message(StringUtils.error_text);
    } else {
      Get.offNamed(RouteGenerator.homescreen);
      return message(StringUtils.login_success);
    }
  }

  go_signup() async =>
      Get.offNamed(RouteGenerator.signupscreen, preventDuplicates: true);
  go_forgotpassword() async => Get.toNamed(RouteGenerator.forgotpasswordscreen);
}
