// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/utils/image_utils.dart';

import '../utils/app_color.dart';
import 'TextView.dart';
import 'image_view.dart';

// class AppBarCommon extends StatelessWidget {
//   String title;
//   GestureTapCallback onBack;
//   String? fontfamily;
//   double? fontSize;
//   FontWeight? fontWeight;
//   bool? isenabled;
//   List<Widget>? actions;

//   AppBarCommon(
//       {super.key,
//       required this.title,
//       required this.onBack,
//       this.fontfamily,
//       this.fontSize,
//       this.fontWeight,
//       this.isenabled,
//       this.actions});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: AppColors.green,
//       elevation: 0,
//       leadingWidth: 50,
//       actions: actions ?? [],
//       leading: IconButton(
//           onPressed: onBack,
//           icon: ImageView(
//             Image_utils.back,
//             ImageType.asset,
//             height: 20,
//             width: 20,
//           )),
//       title: TextView(
//         title,
//         textColor: AppColors.white,
//         fontSize: fontSize ?? 18,
//         maxLines: 3,
//       ),
//       automaticallyImplyLeading: false,
//     );
//   }
// }

AppBar Appbar(
  String? title, [
  bool? Leading,
  List<Widget>? actions,
  bool? centerTitle,
]) {
  return AppBar(
    backgroundColor: AppColors.green,
    elevation: 0,
    toolbarHeight: 80,
    centerTitle: centerTitle,
    leading: Leading!
        ? IconButton(
            icon: ImageView(
              Image_utils.back,
              ImageType.asset,
              height: 20,
              width: 20,
            ),
            onPressed: () {
              Get.back();
            },
          )
        : null,
    automaticallyImplyLeading: false,
    title: TextView(
      '$title',
      textColor: AppColors.white,
    ),
    actions: actions,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
  );
}
