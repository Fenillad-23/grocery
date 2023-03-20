import 'package:get/get.dart';

import 'homecontroller.dart';

class GroceryInfoController extends GetxController {
  List groceryDetail = HomePageController().groceryDetails;
  RxList cartList = [].obs;
  RxInt quantity = 1.obs;
  var data;
  @override
  void onInit() {
    super.onInit();
    data = Get.arguments['object'];
    print(data);
  }

  void increase_quantity() {
    quantity.value++;
  }

  void decrease_quantity() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }

  void add_to_cart(dynamic data) {
    cartList.add(data);
    print(cartList);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
