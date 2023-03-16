import 'package:flutter/material.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/utils/image_utils.dart';
import 'package:grocery/utils/string_utils.dart';
import 'package:grocery/widgets/TextView.dart';
import 'package:grocery/widgets/image_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../controller/homecontroller.dart';
import '../widgets/appBar.dart';
import '../widgets/categorycontainer.dart';
import '../widgets/detailcart.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        init: HomePageController(),
        builder: (_) {
          return Scaffold(
              resizeToAvoidBottomInset: true,
              appBar: Appbar(
                  StringUtils.welcomemsg,
                  false,
                  [
                    IconButton(
                        onPressed: () {},
                        icon: ImageView(
                            Image_utils.notification, ImageType.asset,
                            height: 20, width: 17))
                  ],
                  false),
              body: SingleChildScrollView(
                controller: _.ctrl,
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: CarouselSlider.builder(
                            itemBuilder: ((context, index, realIndex) => Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(18),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            gradient: LinearGradient(
                                                begin: FractionalOffset.topLeft,
                                                end: FractionalOffset.topRight,
                                                colors: AppColors.gradient),
                                          ),
                                          child: ImageView(
                                            _.offer[index]['img'],
                                            ImageType.asset,
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    Positioned(
                                        top: 16,
                                        left: 24,
                                        bottom: 3,
                                        child: Container(
                                          height: 80,
                                          // color: Colors.amberAccent,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextView(
                                                _.offer[index]['title'],
                                                textColor:
                                                    AppColors.secondwhitw,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                maxLines: 3,
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              TextView(
                                                _.offer[index]['duration'],
                                                textColor:
                                                    AppColors.secondwhitw,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                maxLines: 3,
                                              ),
                                            ],
                                          ),
                                        ))
                                  ],
                                )),
                            options: CarouselOptions(
                                onPageChanged: (index, reason) =>
                                    _.index.value = index,
                                autoPlay: true,
                                aspectRatio: 19 / 6,
                                enlargeCenterPage: true),
                            itemCount: _.offer.length,
                          ),
                        ),
                        Obx(
                          () => Center(
                            child: CarouselIndicator(
                              activeColor: AppColors.green,
                              color: AppColors.lightgreen,
                              height: 6,
                              width: 13,
                              count: _.offer.length,
                              index: _.index.value,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 24.0, right: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextView(StringUtils.category,
                                  textColor: AppColors.lightblack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                              TextView(StringUtils.viewAll,
                                  textColor: AppColors.lightblack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                            height: 90,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Flexible(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    controller: _.ctrl,
                                    itemCount: _.category.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: CustomContainer(
                                            _.category[index]['img'],
                                            _.category[index]['category']),
                                      );
                                    },
                                  ),
                                )
                              ],
                            )),
                        const SizedBox(
                          height: 48,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 24.0, right: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextView(StringUtils.bestselling,
                                  textColor: AppColors.lightblack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                              TextView(StringUtils.viewAll,
                                  textColor: AppColors.lightblack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0, left: 24, right: 24),
                                child: GroceryCard(_.groceryDetails)),
                          ),
                        )
                      ]),
                ),
              ));
        });
  }
}
