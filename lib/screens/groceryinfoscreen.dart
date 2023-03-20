import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/controller/homecontroller.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/utils/string_utils.dart';
import 'package:grocery/widgets/TextView.dart';

import '../controller/groceryInfo.dart';
import '../utils/image_utils.dart';
import '../widgets/detailcart.dart';
import '../widgets/image_view.dart';
import '../widgets/raised_button.dart';

class GroceryInfo extends StatelessWidget {
  const GroceryInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GroceryInfoController>(
        init: GroceryInfoController(),
        builder: (_) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        Container(
                            height: 288,
                            width: 414,
                            color: AppColors.lightgreen,
                            child: ImageView(
                              _.data['img'],
                              ImageType.asset,
                              fit: BoxFit.cover,
                              height: 280,
                              width: 414,
                            )),
                        Positioned(
                            top: 20,
                            left: 26,
                            child: IconButton(
                                onPressed: () {},
                                icon: ImageView(
                                    Image_utils.back, ImageType.asset,
                                    height: 20, width: 20)))
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24.0, top: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextView(_.data['name'] + " " + _.data['price'],
                                fontSize: 16, fontWeight: FontWeight.w700),
                            SizedBox(width: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 33.0, left: 69),
                              child: Container(
                                height: 27,
                                width: 82,
                                decoration: BoxDecoration(
                                    color: AppColors.lightgreen,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: TextView(
                                  _.data['offer'],
                                  textColor: AppColors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, top: 8),
                        child: Row(
                          children: [TextView(_.data['perKg'])],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 24, right: 24),
                          child: TextView(
                            _.data['desc'],
                            fontSize: 12,
                            maxLines: 3,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.hint,
                            textAlign: TextAlign.justify,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 16),
                        child: Row(
                          children: [
                            AppRaisedButton(
                              title: '',
                              width: 35,
                              height: 35,
                              child: Center(
                                  child: ImageView(
                                Image_utils.minus,
                                ImageType.asset,
                                height: 20,
                                width: 10,
                              )),
                              onPressed: () => _.decrease_quantity(),
                              buttoncolor: AppColors.lightgreen,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Row(
                              children: [
                                Obx(() => TextView(
                                      _.quantity.value.toString(),
                                      textColor: AppColors.hint,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    )),
                                TextView(
                                  ' Kg',
                                  textColor: AppColors.hint,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            AppRaisedButton(
                              title: '',
                              width: 35,
                              height: 35,
                              child: Center(
                                  child: ImageView(
                                Image_utils.plus,
                                ImageType.asset,
                                height: 20,
                                width: 10,
                              )),
                              buttoncolor: AppColors.green,
                              onPressed: () => _.increase_quantity(),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Expanded(
                              child: AppRaisedButton(
                                width: 213,
                                height: 48,
                                borderRadius: 8,
                                title: 'Add To Cart',
                                buttoncolor: AppColors.green,
                                onPressed: () => _.add_to_cart(_.data),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextView(
                              StringUtils.bestselling,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            TextView(
                              StringUtils.viewAll,
                              fontSize: 14,
                              textColor: AppColors.hint,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 16),
                        child: GroceryCard(HomePageController().groceryDetails),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
