import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'homecontroller.dart';

class GroceryInfoController extends GetxController{
  List groceryDetail = HomePageController().groceryDetails;
  var data;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  data = Get.arguments['object'];
   print(data);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }

}