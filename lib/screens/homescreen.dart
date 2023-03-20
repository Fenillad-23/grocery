import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/utils/image_utils.dart';
import 'package:grocery/utils/route.dart';
import 'package:grocery/utils/string_utils.dart';
import 'package:grocery/widgets/image_view.dart';

import '../controller/bottombarcontroller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<homecontroller>(
        init: homecontroller(),
        builder: (_) {
          return Obx(
            () => Scaffold(
                backgroundColor: AppColors.white,
                body: _.screens.elementAt(_.selectedIndex.value),
                bottomNavigationBar: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CustomLineIndicatorBottomNavbar(
                    lineIndicatorWidth: 1.5,

                    currentIndex: _.selectedIndex.value,
                    indicatorType: IndicatorType.Top,
                    enableLineIndicator: true,
                    unSelectedColor: AppColors.green,
                    selectedColor: AppColors.green,
                    customBottomBarItems: [
                      CustomBottomBarItems(
                          icon: Icons.home_outlined, label: StringUtils.home),
                      CustomBottomBarItems(
                          icon: Icons.search_outlined,
                          label: StringUtils.search),
                      CustomBottomBarItems(
                          icon: Icons.shopping_cart_outlined,
                          label: StringUtils.buy),
                      CustomBottomBarItems(
                          icon: Icons.shopping_cart, label: StringUtils.buy)
                    ],
                    onTap: (int) {
                      _.changeIndex(int);
                    },
                    // child: BottomNavigationBar(
                    //   backgroundColor: AppColors.secondwhitw,
                    //   elevation: 4,
                    //   currentIndex: _.selectedIndex.value,
                    //   showSelectedLabels: true,
                    //   showUnselectedLabels: false,
                    //   selectedItemColor: AppColors.green,
                    //   type: BottomNavigationBarType.fixed,
                    //   items: [
                    //     BottomNavigationBarItem(
                    //       icon: ImageView(
                    //         Image_utils.home,
                    //         ImageType.asset,
                    //         height: 19.22,
                    //         width: 15.15,
                    //       ),
                    //       label: StringUtils.home,
                    //     ),
                    //     BottomNavigationBarItem(
                    //       icon: ImageView(
                    //         Image_utils.search,
                    //         ImageType.asset,
                    //         height: 19.22,
                    //         width: 15.15,
                    //       ),
                    //       label: StringUtils.search,
                    //     ),
                    //     BottomNavigationBarItem(
                    //       icon: ImageView(
                    //         Image_utils.buy,
                    //         ImageType.asset,
                    //         height: 19.22,
                    //         width: 15.15,
                    //       ),
                    //       label: StringUtils.buy,
                    //     ),
                    //     BottomNavigationBarItem(
                    //       icon: ImageView(
                    //         Image_utils.profile,
                    //         ImageType.asset,
                    //         height: 19.22,
                    //         width: 15.15,
                    //       ),
                    //       label: StringUtils.profile,
                    //     )
                    //   ],
                    //   onTap: (value) {
                    //     _.changeIndex(value);
                    //   },
                    // ),
                  ),
                )),
          );
        });
  }
}
