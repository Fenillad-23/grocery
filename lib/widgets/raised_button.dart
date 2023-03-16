// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class AppRaisedButton extends StatelessWidget {
  String title;
  Widget? child;
  Color? color;
  Color? buttoncolor;
  Color? textcolor;
  Color? bordercolor;
  Color? surfaceColor;
  double? height;
  String? titlefontFamily;
  double? width;
  BoxConstraints? constraints;
  double borderRadius;
  Color titleColor;
  double? titleSize;
  double? borderWidth;
  FontWeight? titleFontWeight;
  int titleMaxLines;
  TextAlign titleAlign;
  double elevation;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  VoidCallback? onPressed;
  AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    var height_ = MediaQuery.of(context).size.height;
    return Container(
      width: width ?? double.maxFinite,
      height: height ?? height_ * 0.058,
      constraints: constraints,
      margin: margin,
      alignment: alignment,
      decoration: BoxDecoration(
        color: buttoncolor ?? AppColors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onSurface: textcolor ?? AppColors.white,
          primary: buttoncolor ?? AppColors.white,
          side: BorderSide(
              color: bordercolor ?? Colors.transparent,
              width: borderWidth ?? 2),
          textStyle: TextStyle(
            color: titleColor,
            fontSize: titleSize ?? 18,
            // fontFamily: titlefontFamily ?? Constants.circularstdbook_text,
            fontWeight: titleFontWeight,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: elevation,
          padding: padding,
        ),
        onPressed: onPressed,
        child: title.isNotEmpty
            ? Text(
                title,
                maxLines: titleMaxLines,
                textAlign: titleAlign,
                style: TextStyle(
                  color: titleColor,
                  fontSize: titleSize,
                  fontWeight: titleFontWeight,
                  // fontFamily: titlefontFamily ?? Constants.circularstdbook_text,
                ),
              )
            : child,
      ),
    );
  }

  AppRaisedButton({
    Key? key,
    required this.title,
    this.child,
    this.alignment,
    this.color,
    this.buttoncolor,
    this.bordercolor,
    this.height,
    this.width,
    this.constraints,
    this.borderRadius = 5,
    this.titleColor = Colors.white,
    this.titleSize,
    this.titleFontWeight,
    this.titleMaxLines = 1,
    this.titlefontFamily,
    this.titleAlign = TextAlign.center,
    this.elevation = 1.0,
    this.padding,
    this.surfaceColor,
    this.margin,
    this.onPressed,
    this.borderWidth,
  }) : super(key: key) {
    buttoncolor ??= AppColors.white;
  }
}
