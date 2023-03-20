import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/controller/homecontroller.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/utils/image_utils.dart';
import 'package:grocery/utils/route.dart';
import 'package:grocery/widgets/TextView.dart';
import 'package:grocery/widgets/image_view.dart';

bool? selectedIndex = false;

ListView GroceryCard(List data) {
  return ListView.builder(
    itemCount: data.length,
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    controller: HomePageController().ctrl,
    itemBuilder: (context, index) {
      String? img = Image_utils.heart;
      return GestureDetector(
        onTap: () {
          Get.toNamed(RouteGenerator.groceryInfo,
              arguments: {"object": data[index]});
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: Container(
            height: 120,
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(14.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(86, 35, 137, 40),
                      blurRadius: 6,
                      spreadRadius: 0.0,
                      offset:
                          Offset(1.0, 6.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 12),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 66.85,
                                width: 70,
                                child: Card(
                                    color: AppColors.greenbackground,
                                    child: ImageView(
                                        data[index]['img'], ImageType.asset))),
                            SizedBox(
                              height: 5.55,
                            ),
                            TextView(
                              data[index]['price'],
                              textColor: AppColors.hint,
                              maxLines: 1,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )
                          ]),
                    ),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            TextView(
                              data[index]['name'],
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Expanded(
                              child: TextView(
                                data[index]['desc'],
                                textColor: AppColors.hint,
                                maxLines: 3,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 24.0, top: 12),
                              child: TextView(data[index]['perKg']),
                            ),
                          ]),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              if (data[index]['isLiked'] == true) {
                                img = Image_utils.selectedItem;
                              } else {
                                img = Image_utils.heart;
                              }
                            },
                            icon: ImageView(
                              img,
                              ImageType.asset,
                              height: 15,
                              width: 15.83,
                            ),
                          )
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
