import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'homecontroller.dart';

class SearchController extends GetxController{
  TextEditingController searchQuery = TextEditingController();
  HomePageController controller = Get.put(HomePageController());
  ScrollController scroll = ScrollController();
  List  groceryDetails =HomePageController().groceryDetails;

}