import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:grocery/utils/image_utils.dart';

import 'package:grocery/utils/string_utils.dart';

class HomePageController extends GetxController {
  RxInt index = 0.obs;
  ScrollController ctrl = ScrollController();
  List offer = [
    {
      'title': StringUtils.offer,
      'img': Image_utils.offer,
      'duration': StringUtils.timing,
      'icon': Image_utils.timer,
      'offer': StringUtils.offer1
    },
    {
      'title': StringUtils.offer,
      'img': Image_utils.offer,
      'duration': StringUtils.timing,
      'icon': Image_utils.timer,
      'offer': StringUtils.offer1
    },
    {
      'title': StringUtils.offer,
      'img': Image_utils.offer,
      'duration': StringUtils.timing,
      'icon': Image_utils.timer,
      'offer': StringUtils.offer1
    }
  ];
  List groceryDetails = [
    {
      'img': Image_utils.oranges,
      'price': 'M.R.P 400',
      'name': 'Fresh Oranges',
      'desc': 'Lorem ipsum dolor sit amet,\nconsectetu adipiscing elit.',
      'perKg': '250 (for 6 Piece)',
      'isLiked': 'true',
      'offer': StringUtils.offer1
    },
    {
      'img': Image_utils.carrot,
      'price': 'M.R.P 400',
      'name': 'Carrots',
      'desc': 'Lorem ipsum dolor sit amet,\nconsectetu adipiscing elit',
      'perKg': '150 (per Kg)',
      'isLiked': 'true',
      'offer': StringUtils.offer1
    },
    {
      'img': Image_utils.oranges,
      'price': 'M.R.P 400',
      'name': 'Fresh Oranges',
      'desc': 'Lorem ipsum dolor sit amet,\nconsectetu adipiscing elit.',
      'perKg': '250 (for 6 Piece)',
      'isLiked': 'true',
      'offer': StringUtils.offer1
    },
    {
      'img': Image_utils.carrot,
      'price': 'M.R.P 400',
      'name': 'Carrots',
      'desc': 'Lorem ipsum dolor sit amet,\nconsectetu adipiscing elit',
      'perKg': '150 (per Kg)',
      'isLiked': 'false',
      'offer': StringUtils.offer1
    },
    {
      'img': Image_utils.oranges,
      'price': 'M.R.P 400',
      'name': 'Fresh Oranges',
      'desc': 'Lorem ipsum dolor sit amet,\nconsectetu adipiscing elit.',
      'perKg': '250 (for 6 Piece)',
      'isLiked': 'true',
      'offer': StringUtils.offer1
    },
    {
      'img': Image_utils.carrot,
      'price': 'M.R.P 400',
      'name': 'Carrots',
      'desc': 'Lorem ipsum dolor sit amet,\nconsectetu adipiscing elit',
      'perKg': '150 (per Kg)',
      'isLiked': 'false',
      'offer': StringUtils.offer1
    },
    {
      'img': Image_utils.oranges,
      'price': 'M.R.P 400',
      'name': 'Fresh Oranges',
      'desc': 'Lorem ipsum dolor sit amet,\nconsectetu adipiscing elit.',
      'perKg': '250 (for 6 Piece)',
      'isLiked': 'true',
      'offer': StringUtils.offer1
    },
    {
      'img': Image_utils.carrot,
      'price': 'M.R.P 400',
      'name': 'Carrots',
      'desc': 'Lorem ipsum dolor sit amet,\nconsectetu adipiscing elit',
      'perKg': '150 (per Kg)',
      'isLiked': 'false',
      'offer': StringUtils.offer1
    },
  ];
  List category = [
    {'img': Image_utils.fruit, 'category': StringUtils.fruit},
    {'img': Image_utils.bread, 'category': StringUtils.Bread},
    {'img': Image_utils.veg, 'category': StringUtils.veg},
    {'img': Image_utils.dairy, 'category': StringUtils.Dairy},
    {'img': Image_utils.fruit, 'category': StringUtils.fruit},
    {'img': Image_utils.bread, 'category': StringUtils.Bread},
    {'img': Image_utils.veg, 'category': StringUtils.veg},
    {'img': Image_utils.dairy, 'category': StringUtils.Dairy},
  ];
}
