import 'package:flutter/material.dart';

class TextStyles {
  final Color textColor;
  final double fontSize;
  final String fontFamily;

  const TextStyles({
    this.textColor = Colors.black,
    this.fontSize = 14,
    this.fontFamily = 'Poppins', // 👈 default font (customize)
  });

  TextStyle getRegularStyle() {
    return TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
    );
  }

  TextStyle getMediumStyle() {
    return TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily,
    );
  }

  TextStyle getSemiBoldStyle() {
    return TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    );
  }

  TextStyle getBoldStyle() {
    return TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      fontFamily: fontFamily,
    );
  }
}
