import 'package:flutter/material.dart';

class TextStyles {
  final Color textColor;
  final double fontSize;
  final String fontFamily;
  final double letterSpacing;

  const TextStyles({
    this.textColor = Colors.black,
    this.fontSize = 14,
    this.fontFamily = 'Montserrat', // 👈 default font (customize)
    this.letterSpacing =1
  });

  TextStyle getRegularStyle() {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing
    );
  }

  TextStyle getMediumStyle() {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing
    );
  }

  TextStyle getSemiBoldStyle() {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing
    );
  }

  TextStyle getBoldStyle() {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing
    );
  }
}
