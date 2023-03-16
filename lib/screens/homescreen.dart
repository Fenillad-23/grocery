import 'package:flutter/material.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/utils/image_utils.dart';
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
                bottomNavigationBar: Container(
                  decoration: const BoxDecoration(

                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14)),
                      boxShadow: [
                        BoxShadow(blurRadius: 3,),
                      ]),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                    child: BottomNavigationBar(
                      backgroundColor: AppColors.secondwhitw,
                      elevation: 4,
                      currentIndex: _.selectedIndex.value,
                      showSelectedLabels: true,
                      showUnselectedLabels: false,
                      selectedItemColor: AppColors.green,
                      type: BottomNavigationBarType.fixed,
                      items: [
                        BottomNavigationBarItem(
                          icon: ImageView(
                            Image_utils.home,
                            ImageType.asset,
                            height: 19.22,
                            width: 15.15,
                          ),
                          label: StringUtils.home,
                        ),
                        BottomNavigationBarItem(
                          icon: ImageView(
                            Image_utils.search,
                            ImageType.asset,
                            height: 19.22,
                            width: 15.15,
                          ),
                          label: StringUtils.search,
                        ),
                        BottomNavigationBarItem(
                          icon: ImageView(
                            Image_utils.buy,
                            ImageType.asset,
                            height: 19.22,
                            width: 15.15,
                          ),
                          label: StringUtils.buy,
                        ),
                        BottomNavigationBarItem(
                          icon: ImageView(
                            Image_utils.profile,
                            ImageType.asset,
                            height: 19.22,
                            width: 15.15,
                          ),
                          label: StringUtils.profile,
                        )
                      ],
                      onTap: (value) {
                        _.changeIndex(value);
                      },
                    ),
                  ),
                )),
          );
        });
  }
}
