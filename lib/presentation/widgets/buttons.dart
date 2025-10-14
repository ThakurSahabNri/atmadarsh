import 'package:flutter/material.dart';

class Buttons{
  static Widget getPrimaryButton({
      Color? buttonBackgroundColor,
      required String title,
      Color? color,
      double? fontSize,
      VoidCallback? onTap
  }){
      return Container(
          color: buttonBackgroundColor,
          child: Text(title,
              style: TextStyle(
                  color: color,
                  fontSize:fontSize,
              ))
      );

  }
}