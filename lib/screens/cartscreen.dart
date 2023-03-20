import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/utils/route.dart';
import 'package:grocery/utils/string_utils.dart';
import '../controller/cartcontroller.dart';
import '../controller/groceryInfo.dart';
import '../utils/app_color.dart';
import '../utils/image_utils.dart';
import '../widgets/TextView.dart';
import '../widgets/appBar.dart';
import '../widgets/image_view.dart';
import '../widgets/raised_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (_) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: Appbar('cart', true, [], true),
          body: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 24, right: 24),
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
                                          child: ImageView(_.cart[0]['img'],
                                              ImageType.asset))),
                                  SizedBox(
                                    height: 5.55,
                                  ),
                                  TextView(
                                    _.cart[0]['price'],
                                    textColor: AppColors.hint,
                                    maxLines: 1,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  )
                                ]),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 12),
                                    TextView(
                                      _.cart[0]['name'],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Expanded(
                                      child: TextView(
                                        _.cart[0]['perKg'],
                                        textColor: AppColors.hint,
                                        maxLines: 3,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 24.0, top: 12),
                                      child: TextView(_.cart[0]['']),
                                    ),
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 14.0, top: 8),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: AppRaisedButton(
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
                                  ),
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
                                          child: ImageView(_.cart[0]['img'],
                                              ImageType.asset))),
                                  SizedBox(
                                    height: 5.55,
                                  ),
                                  TextView(
                                    _.cart[0]['price'],
                                    textColor: AppColors.hint,
                                    maxLines: 1,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  )
                                ]),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 12),
                                    TextView(
                                      _.cart[0]['name'],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Expanded(
                                      child: TextView(
                                        _.cart[0]['perKg'],
                                        textColor: AppColors.hint,
                                        maxLines: 3,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 24.0, top: 12),
                                      child: TextView(_.cart[0]['']),
                                    ),
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 14.0, top: 8),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: AppRaisedButton(
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
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.lightgreen,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        ImageView(Image_utils.coupen, ImageType.asset),
                        SizedBox(
                          width: 8,
                        ),
                        TextView(StringUtils.promocode),
                        SizedBox(
                          width: 120,
                        ),
                        AppRaisedButton(
                          height: 27,
                          width: 82,
                          title: 'Find',
                          buttoncolor: AppColors.green,
                          onPressed: () {
                            Get.toNamed(RouteGenerator.coupen);
                          },
                        )
                      ],
                    )),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView(
                          'Sub Total',
                          textColor: AppColors.hint,
                          fontWeight: FontWeight.w600,
                        ),
                        TextView('500.00')
                      ],
                    )),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        TextView(
                          'Delivery',
                          textColor: AppColors.hint,
                          fontWeight: FontWeight.w600,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 283.0),
                          child: TextView('40.00'),
                        ),
                        Container(
                          height: 9.97,
                          width: 9.98,
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            shape: BoxShape.circle,
                          ),
                          child: ImageView(
                            Image_utils.plus,
                            ImageType.asset,
                            height: 7,
                            width: 7,
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        TextView(
                          'Tax & fees',
                          textColor: AppColors.hint,
                          fontWeight: FontWeight.w600,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 265.0),
                          child: TextView('500.00'),
                        ),
                        Container(
                          height: 9.97,
                          width: 9.98,
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            shape: BoxShape.circle,
                          ),
                          child: ImageView(
                            Image_utils.plus,
                            ImageType.asset,
                            height: 7,
                            width: 7,
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: TextView(
                            "--------------------------------------------",
                            letterSpacing: 5,
                            textColor: AppColors.hint,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView(
                          'Total',
                          textColor: AppColors.hint,
                          fontWeight: FontWeight.w600,
                        ),
                        TextView('558.00'),
                      ],
                    )),
                SizedBox(
                  height: 32,
                ),
                AppRaisedButton(
                  title: 'Place Order',
                  height: 48,
                  width: 270,
                  borderRadius: 12,
                  buttoncolor: AppColors.green,
                  onPressed: () {
                    _.goto();
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
