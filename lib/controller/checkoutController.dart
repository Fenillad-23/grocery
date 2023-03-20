import 'package:get/get.dart';

class CheckOutController extends GetxController {
  RxBool isHome = true.obs;
  RxString paymentmethod = "".obs;
  changeAddreess() {
    isHome.value = !isHome.value;
  }

  changePaymentMethod() {}
}
