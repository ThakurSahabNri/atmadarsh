import 'package:flutter/material.dart';

class Buttons{
  static Widget getPrimaryButton({
      Color? buttonBackgroundColor,
      required String title,
      Color? color,
      double? fontSize,
   FontWeight? fontWeight,
    void Function()? onTap
  }){
      return GestureDetector(
          onTap: onTap ?? (){},
         child:  Container(
          color: buttonBackgroundColor,
          child: Text(title,
              style: TextStyle(
                  color: color,
                  fontSize:fontSize,
                fontWeight: fontWeight
              ))
      )
      );

  }
}