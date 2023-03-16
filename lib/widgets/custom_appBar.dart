// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';

import 'TextView.dart';

class CustomAppbar extends StatelessWidget {
  String title;
  bool isSerch;
  bool isClickProfile;
  bool isCart;
  bool isCartList;

  VoidCallback? onClickSearch;
  VoidCallback onClickCart;
  VoidCallback onClickProfile;
  VoidCallback onBack;

  CustomAppbar(
      {super.key,
      required this.title,
      required this.isSerch,
      required this.isClickProfile,
      this.onClickSearch,
      this.isCart = true,
      this.isCartList = true,
      required this.onClickCart,
      required this.onClickProfile,
      required this.onBack});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: onBack,
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          // color: AppColor.black,
          size: 20,
        ),
      ),
      flexibleSpace: Container(
        height: const Size.fromHeight(kToolbarHeight).height,
        color: Colors.white,
        margin: EdgeInsets.only(
          top: 35,
          left: width * 0.085,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            isClickProfile
                ? InkWell(
                    onTap: onClickProfile,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        border: Border.all(
                            // color: AppColor.white,
                            width: 0.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(25),
                        // color: AppColor.litegray,
                      ),
                      // child: ClipRRect(
                      //   borderRadius:
                      //       const BorderRadius.all(Radius.circular(25)),
                      //   child: ImageView(
                      //      AppAsset.companylogo,
                      //     ImageType.asset,
                      //     color: AppColor.black,
                      //     height: 35,
                      //     width: 35,
                      //   ),
                      // ),
                    ),
                  )
                : Container(),
            const SizedBox(
              width: 10,
            ),
            TextView(
              title,
              // fontFamily: Constants.circularstdbold_text,
              // textColor: AppColor.black,
              fontSize: 18,
            ),
          ],
        ),
      ),
      leadingWidth: 50,
      actions: [
        // isSerch
        //     ? InkWell(
        //         onTap: () {
        //           Get.toNamed(RouteGenerator.);
        //         },
        //         child: ImageView(
        //           AppAsset.search,
        //           ImageType.asset,
        //           height: height * 0.04,
        //           width: width * 0.055,
        //         ))
        //     : Container(),
        // const SizedBox(
        //   width: 10,
        // ),
        // isCart
        //     ? InkWell(
        //         onTap: () {
        //           Get.toNamed(RouteGenerator.cartscreen);
        //         },
        //         child: ImageView(
        //           AppAsset.bag,
        //           ImageType.asset,
        //           height: height * 0.04,
        //           width: width * 0.065,
        //         ),
        //       )
        //     : isCartList && isCart
        //         ? InkWell(
        //             onTap: () {
        //               Get.toNamed(RouteGenerator.cartscreen);
        //             },
        //             child: Container(
        //               width: 30,
        //               height: 28,
        //               color: Colors.transparent,
        //               child: Stack(
        //                 alignment: Alignment.centerRight,
        //                 children: [
        //                   ImageView(
        //                     AppAsset.bag,
        //                     ImageType.asset,
        //                     height: height * 0.04,
        //                     width: width * 0.065,
        //                   ),
        //                   Align(
        //                     alignment: Alignment.topLeft,
        //                     child: Container(
        //                       alignment: Alignment.center,
        //                       width: 18,
        //                       height: 18,
        //                       decoration: const BoxDecoration(
        //                           color: AppColor.aqua,
        //                           borderRadius:
        //                               BorderRadius.all(Radius.circular(30))),
        //                       child: const TextView("1",
        //                           fontSize: 13,
        //                           textColor: Colors.white,
        //                           fontFamily: Constants.circularstdbold_text),
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           )
        //         : Container(),
        // const SizedBox(
        //   width: 10,
        // ),
      ],
    );
  }
}
