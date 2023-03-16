import 'package:get/get.dart';

import 'homecontroller.dart';

class GroceryInfoController extends GetxController {
  List groceryDetail = HomePageController().groceryDetails;
  var data;
  @override
  void onInit() {
    super.onInit();
    data = Get.arguments['object'];
    print(data);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
