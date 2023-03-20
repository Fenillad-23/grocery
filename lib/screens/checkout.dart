import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/utils/image_utils.dart';
import 'package:grocery/utils/string_utils.dart';
import 'package:grocery/widgets/TextView.dart';
import 'package:grocery/widgets/appBar.dart';
import 'package:grocery/widgets/image_view.dart';
import 'package:grocery/widgets/raised_button.dart';

import '../controller/checkoutController.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutController>(
        init: CheckOutController(),
        builder: (_) {
          return Scaffold(
            appBar: Appbar('Checkout', true, [], true),
            body: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    StringUtils.address,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.secondwhitw,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(86, 35, 137, 40),
                            blurRadius: 6,
                            spreadRadius: 0.0,
                            offset: Offset(
                                1.0, 6.0), // shadow direction: bottom right
                          )
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    height: 86,
                    width: 366,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _.isHome.value ? null : _.changeAddreess();
                                  },
                                  child: Obx(
                                    () => Container(
                                      height: 35,
                                      width: 35,
                                      child: _.isHome.value
                                          ? ImageView(Image_utils.address,
                                              ImageType.asset)
                                          : null,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: AppColors.green)),
                                    ),
                                  ),
                                )
                              ]),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                StringUtils.home,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextView(
                                '1258 Bel Meadow Drive, Los AngelesCA',
                                maxLines: 2,
                              )
                            ]),
                        Padding(
                            padding:
                                const EdgeInsets.only(right: 14.8, top: 6.32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [Icon(Icons.more_vert)],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(86, 35, 137, 40),
                            blurRadius: 6,
                            spreadRadius: 0.0,
                            offset: Offset(
                                1.0, 6.0), // shadow direction: bottom right
                          )
                        ],
                        color: AppColors.secondwhitw,
                        borderRadius: BorderRadius.circular(10)),
                    height: 86,
                    width: 366,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _.isHome.value ? _.changeAddreess() : null;
                                  },
                                  child: Obx(
                                    () => Container(
                                      height: 35,
                                      width: 35,
                                      child: _.isHome.value
                                          ? null
                                          : ImageView(Image_utils.address,
                                              ImageType.asset),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: AppColors.green)),
                                    ),
                                  ),
                                )
                              ]),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                StringUtils.office,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextView(
                                '1258 Bel Meadow Drive, Los AngelesCA',
                                maxLines: 2,
                              )
                            ]),
                        Padding(
                            padding:
                                const EdgeInsets.only(right: 14.8, top: 6.32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [Icon(Icons.more_vert)],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 4),
                    child: TextView(
                      StringUtils.paymentMethod,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 68,
                    width: 366,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        ImageView(Image_utils.discover, ImageType.asset),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              'Debit Card',
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextView(
                              '8765 **** **** 7928',
                              textColor: AppColors.hint,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 144.0, top: 16),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _.paymentmethod.value = 'debit card';
                                },
                                child: Obx(
                                  () => Container(
                                    height: 35,
                                    width: 35,
                                    child: _.paymentmethod.value == 'debit card'
                                        ? ImageView(Image_utils.paymentMethod,
                                            ImageType.asset)
                                        : null,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: AppColors.green)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(86, 35, 137, 40),
                            blurRadius: 6,
                            spreadRadius: 0.0,
                            offset: Offset(
                                1.0, 6.0), // shadow direction: bottom right
                          )
                        ],
                        color: AppColors.secondwhitw,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 68,
                    width: 366,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        ImageView(
                          Image_utils.wallet,
                          ImageType.asset,
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                'Wallets',
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextView(
                                'Available upi wallets',
                                textColor: AppColors.hint,
                              )
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(left: 144.0, top: 16),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _.paymentmethod.value = 'wallet';
                                },
                                child: Obx(
                                  () => Container(
                                    height: 35,
                                    width: 35,
                                    child: _.paymentmethod.value == 'wallet'
                                        ? ImageView(Image_utils.paymentMethod,
                                            ImageType.asset)
                                        : null,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: AppColors.green)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(86, 35, 137, 40),
                            blurRadius: 6,
                            spreadRadius: 0.0,
                            offset: Offset(
                                1.0, 6.0), // shadow direction: bottom right
                          )
                        ],
                        color: AppColors.secondwhitw,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 68,
                    width: 366,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        ImageView(
                          Image_utils.cod,
                          ImageType.asset,
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                'Cash on delivery',
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextView(
                                'Available upi wallets',
                                textColor: AppColors.hint,
                              )
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(left: 144.0, top: 16),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _.paymentmethod.value = 'cod';
                                },
                                child: Obx(
                                  () => Container(
                                    height: 35,
                                    width: 35,
                                    child: _.paymentmethod.value == 'cod'
                                        ? ImageView(Image_utils.paymentMethod,
                                            ImageType.asset)
                                        : null,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: AppColors.green)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(86, 35, 137, 40),
                            blurRadius: 6,
                            spreadRadius: 0.0,
                            offset: Offset(
                                1.0, 6.0), // shadow direction: bottom right
                          )
                        ],
                        color: AppColors.secondwhitw,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: 102,
                  ),
                  Center(
                    child: AppRaisedButton(
                      title: StringUtils.proceed,
                      borderRadius: 12,
                      height: 48,
                      width: 270,
                      buttoncolor: AppColors.green,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
