import 'package:get/state_manager.dart';
import 'package:grocery/screens/forgot_password/otp_verificationscreen.dart';
import 'package:grocery/screens/sign_up.dart';

import '../screens/home.dart';
import '../screens/searchgrocery.dart';

class homecontroller extends GetxController {
  RxInt selectedIndex = 0.obs;
  List screens = [
    const Dash(),
    const Search(),
    const Signup(),
    const OtpVerification()
  ];
  changeIndex(int value) {
    selectedIndex.value = value;
  }
}
