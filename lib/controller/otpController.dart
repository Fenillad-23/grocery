// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

import 'package:grocery/utils/route.dart';
import 'package:otp_text_field/otp_field.dart';

class Otpcontroller extends GetxController {
  OtpFieldController otp = OtpFieldController();
  redirect_to() {
    Get.toNamed(RouteGenerator.resetpasswordscreen);
  }
}
