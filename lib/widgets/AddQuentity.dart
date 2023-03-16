// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'TextView.dart';

class AddQuentity extends StatelessWidget {
  RxInt quentity;
  VoidCallback onAdd, onRemove;

  AddQuentity({
    super.key,
    required this.quentity,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.35,
      decoration: BoxDecoration(
          border: Border.all(
            // color: AppColor.aqua,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
            onTap: onRemove,
            child: const Icon(
              Icons.remove,
              size: 18,
            )),
        Container(
          alignment: Alignment.center,
          height: 34,
          width: 40,
          padding: const EdgeInsets.symmetric(horizontal: 2),
          // color: AppColor.aqua,
          child: Obx(
            () => TextView(
              quentity.value.toString(),
              fontSize: 15,
              // textColor: AppColor.white,
              // fontFamily: Constants.circularstdbookmedium_text,
            ),
          ),
        ),
        InkWell(
          onTap: onAdd,
          child: const Icon(
            Icons.add,
            size: 18,
          ),
        ),
      ]),
    );
  }
}
