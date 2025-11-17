import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';


class PageTitleView {
  static Widget pageTitleView(String title,{Color? backgroundColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.darkGrey,
          border: Border.all(
            color: AppColors.primaryBlack, // subtle border
            width: 4,
          )
      ),
      child: Text(title,
        style: TextStyle(
            color: AppColors.textBlack,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontFamily: "Montserrat",
            letterSpacing: 10
        ),
      ),
    );
  }
}