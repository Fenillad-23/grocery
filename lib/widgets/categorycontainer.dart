// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/widgets/TextView.dart';
import 'package:grocery/widgets/image_view.dart';

Widget CustomContainer(String? path, String? type) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    child: Container(
      clipBehavior: Clip.antiAlias,
      height: 90,
      width: 80,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(86, 35, 137, 40),
            blurRadius: 6.5,
            spreadRadius: 0.0,
            offset: Offset(0.0, 6.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          ImageView(
            path!,
            ImageType.asset,
            height: 34,
            width: 34,
          ),
          const SizedBox(
            height: 10,
          ),
          TextView(
            type,
            textColor: AppColors.lightblack,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    ),
  );
}
