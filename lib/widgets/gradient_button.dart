// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppGradientButton extends StatelessWidget {
  String? title;
  Widget? child;
  Gradient? gradient;
  double? width;
  double? height;
  BoxConstraints? constraints;
  double? elevation;
  double borderRadius;
  EdgeInsetsGeometry? margin;
  Color titleColor;
  double titleSize;
  FontWeight titleFontWeight;
  int titleMaxLines;
  TextAlign titleAlign;
  TextDecoration? titleDecoration;
  VoidCallback? onPressed;
  bool? showBorder;
  EdgeInsets contentPadding;

  AppGradientButton({
    Key? key,
    this.title,
    this.child,
    this.gradient,
    this.width,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    this.height,
    this.constraints,
    this.elevation = 10,
    this.borderRadius = 5.0,
    this.showBorder = true,
    this.margin,
    this.titleColor = Colors.white,
    this.titleSize = 16,
    this.titleFontWeight = FontWeight.normal,
    this.titleMaxLines = 1,
    this.titleAlign = TextAlign.center,
    this.titleDecoration,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashFactory: NoSplash.splashFactory,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      //splashColor: Colors.transparent,
      child: Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          // side: showBorder ?? true
          //     ? const BorderSide(color: Colors.white, width: 1.0)
          //     : BorderSide.none,
        ),
        clipBehavior: Clip.hardEdge,
        margin: margin,
        child: Container(
          width: width,
          height: height,
          constraints: constraints,
          decoration: BoxDecoration(
            gradient: gradient ??
                LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.yellow],
                ),
          ),
          clipBehavior: Clip.hardEdge,
          child: TextButton(
            onPressed: null,
            style: TextButton.styleFrom(
              padding: contentPadding,
              splashFactory: NoSplash.splashFactory,
              textStyle: TextStyle(
                  fontSize: titleSize,
                  fontWeight: titleFontWeight,
                  decoration: titleDecoration),
            ),
            child: title != null
                ? Text(title!,
                    maxLines: titleMaxLines,
                    textAlign: titleAlign,
                    style: TextStyle(
                        fontSize: titleSize,
                        color: titleColor,
                        fontWeight: titleFontWeight,
                        decoration: titleDecoration))
                : child ?? Container(decoration: BoxDecoration()),
          ),
        ),
      ),
    );
  }
}
