import 'package:get/get.dart';

import 'package:grocery/controller/homecontroller.dart';
import 'package:grocery/utils/route.dart';

class CartController extends GetxController {
  List cart = HomePageController().groceryDetails;
  RxInt quantity = 1.obs;
  @override
  void onInit() {
    super.onInit();
    print('print');
  }

  void increase_quantity() {
    quantity.value++;
  }

  void decrease_quantity() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }

  void goto() {
    Get.toNamed(RouteGenerator.checkOut);
  }
}
