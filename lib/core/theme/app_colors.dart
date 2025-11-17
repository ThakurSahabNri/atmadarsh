import 'package:flutter/material.dart';

/// Centralized color palette for the Atmadarsh portfolio app
class AppColors {
  // 🔳 Backgrounds
  static const Color primaryBlack = Color(0xFF000000);
  static const Color darkGrey = Color(0xFFD7D7D7);
  static const Color mediumGrey = Color(0xFF1E1E1E);
  static const Color lightGrey = Color(0xFFF4F4F4);

  // 🔤 Text colors
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textGrey = Color(0xFFD7D7D7);
  static const Color textBlack = Color(0xFF000000);

  // 🎨 Accent (if you need slight highlight — optional)
  static const Color accentWhite = Color(0xFFEAEAEA);
  static const Color dividerGrey = Color(0xFF3A3A3A);

  // 🧭 Button / Element states
  static const Color buttonActive = Color(0xFFFFFFFF);
  static const Color buttonInactive = Color(0xFF1C1C1C);

  static const Color footerBackgroundColor = Color(0xFF000000);


  /// Converts "#RRGGBB" or "#AARRGGBB" to Color safely
  static Color getColor(String? hex) {
    if (hex == null || hex.isEmpty) {
      return Colors.black; // default fallback color
    }

    String formatted = hex.replaceAll("#", "").toUpperCase();

    // If only RGB is provided → add full opacity
    if (formatted.length == 6) {
      formatted = "FF$formatted";
    }

    // If invalid, fallback
    if (formatted.length != 8) {
      return Colors.black;
    }

    try {
      return Color(int.parse("0x$formatted"));
    } catch (e) {
      return Colors.black;
    }
  }

}
