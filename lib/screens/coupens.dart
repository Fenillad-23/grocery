import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/utils/image_utils.dart';

import '../controller/coupenController.dart';
import '../utils/app_color.dart';
import '../widgets/TextView.dart';
import '../widgets/appBar.dart';
import '../widgets/image_view.dart';
import '../widgets/raised_button.dart';

class Coupen extends StatelessWidget {
  const Coupen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CoupenController>(
        init: CoupenController(),
        builder: (_) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: Appbar('Coupen', true, [], true),
            body: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Column(
                children: [
                  Container(
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
                              offset: Offset(
                                  1.0, 6.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, left: 12),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 66.85,
                                        width: 70,
                                        child: Card(
                                            color: AppColors.greenbackground,
                                            child: ImageView(Image_utils.coupen,
                                                ImageType.asset))),
                                    SizedBox(
                                      height: 5.55,
                                    ),
                                  ]),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      TextView(
                                        'Swiggy Foods',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: TextView(
                                          '(Per 1 Kg)',
                                          textColor: AppColors.hint,
                                          maxLines: 3,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 24.0, top: 12),
                                        child: TextView('Promo Code :'),
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 12.0,
                                top: 18,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextView('75 % off'),
                                    SizedBox(
                                      height: 29,
                                    ),
                                    AppRaisedButton(
                                      title: 'AVAILABLE75',
                                      buttoncolor: AppColors.green,
                                      borderRadius: 6,
                                      onPressed: (() {}),
                                      height: 27,
                                      width: 115,
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                              offset: Offset(
                                  1.0, 6.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, left: 12),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 66.85,
                                        width: 70,
                                        child: Card(
                                            color: AppColors.greenbackground,
                                            child: ImageView(Image_utils.coupen,
                                                ImageType.asset))),
                                    SizedBox(
                                      height: 5.55,
                                    ),
                                  ]),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      TextView(
                                        'Swiggy Foods',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: TextView(
                                          '(Per 1 Kg)',
                                          textColor: AppColors.hint,
                                          maxLines: 3,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 24.0, top: 12),
                                        child: TextView('Promo Code :'),
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 12.0,
                                top: 18,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextView('75 % off'),
                                    SizedBox(
                                      height: 29,
                                    ),
                                    AppRaisedButton(
                                      title: 'AVAILABLE75',
                                      buttoncolor: AppColors.green,
                                      borderRadius: 6,
                                      onPressed: (() {}),
                                      height: 27,
                                      width: 115,
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                              offset: Offset(
                                  1.0, 6.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, left: 12),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 66.85,
                                        width: 70,
                                        child: Card(
                                            color: AppColors.greenbackground,
                                            child: ImageView(Image_utils.coupen,
                                                ImageType.asset))),
                                    SizedBox(
                                      height: 5.55,
                                    ),
                                  ]),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      TextView(
                                        'Swiggy Foods',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: TextView(
                                          '(Per 1 Kg)',
                                          textColor: AppColors.hint,
                                          maxLines: 3,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 24.0, top: 12),
                                        child: TextView('Promo Code :'),
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 12.0,
                                top: 18,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextView('75 % off'),
                                    SizedBox(
                                      height: 29,
                                    ),
                                    AppRaisedButton(
                                      title: 'AVAILABLE75',
                                      buttoncolor: AppColors.green,
                                      borderRadius: 6,
                                      onPressed: (() {}),
                                      height: 27,
                                      width: 115,
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                              offset: Offset(
                                  1.0, 6.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, left: 12),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 66.85,
                                        width: 70,
                                        child: Card(
                                            color: AppColors.greenbackground,
                                            child: ImageView(Image_utils.coupen,
                                                ImageType.asset))),
                                    SizedBox(
                                      height: 5.55,
                                    ),
                                  ]),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      TextView(
                                        'Swiggy Foods',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: TextView(
                                          '(Per 1 Kg)',
                                          textColor: AppColors.hint,
                                          maxLines: 3,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 24.0, top: 12),
                                        child: TextView('Promo Code :'),
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 12.0,
                                top: 18,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextView('75 % off'),
                                    SizedBox(
                                      height: 29,
                                    ),
                                    AppRaisedButton(
                                      title: 'AVAILABLE75',
                                      buttoncolor: AppColors.green,
                                      borderRadius: 6,
                                      onPressed: (() {}),
                                      height: 27,
                                      width: 115,
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
