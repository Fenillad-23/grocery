import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/widgets/TextView.dart';

import '../controller/groceryInfo.dart';
import '../utils/image_utils.dart';
import '../widgets/image_view.dart';

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
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextView(_.data['name'],
                                  fontSize: 16, fontWeight: FontWeight.w700),
                              SizedBox(width: 8),
                              TextView(
                                _.data['price'],
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 33.0, left: 69),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  // crossAxisAlignment: ,
                                  children: [
                                    Container(

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
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:24.0,top: 8),
                        child: Row(children: [TextView(_.data['perKg'])],),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
