import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/route.dart';
import '../utils/string_utils.dart';
import '../widgets/snackbar.dart';

class Signupcontroller extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  RxBool obscure = false.obs;
  RxBool isSelected = false.obs;
  altervisibiltiy(){
    obscure.value =!obscure.value;
  }

  GlobalKey<FormState> signupKey = GlobalKey<FormState>(debugLabel: "Signupcontroller");
  dynamic signup() {
    if (!signupKey.currentState!.validate()) {
      return message(StringUtils.error_text);
    } else {
      return message(StringUtils.login_success);
    }
  }
  acceptTerms()=> isSelected.value  =! isSelected.value;
  go_signin() async => Get.offNamed(RouteGenerator.loginscreen,preventDuplicates: true);

}