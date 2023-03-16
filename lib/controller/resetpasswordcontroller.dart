import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/route.dart';
import '../utils/string_utils.dart';
import '../widgets/snackbar.dart';

class ResetPasswordController extends GetxController {
  TextEditingController newpassword = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final newPassword = GlobalKey<FormState>();
  RxBool obscure = false.obs;
  verifyPassword() {
    if (newPassword.currentState!.validate()) {
      if (newpassword.text == confirmpassword.text) {
        Get.offNamed(RouteGenerator.loginscreen, preventDuplicates: true);
        return message(StringUtils.newpassword_success);
      } else {
        return message(StringUtils.newpassword_failed);
      }
    }
  }

  altervisibiltiy() {
    obscure.update((val) {
      obscure.value = !obscure.value;
    });
  }
}
