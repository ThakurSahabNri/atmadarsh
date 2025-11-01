import 'package:flutter/material.dart';

class DeviceTypeUtil {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
          MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static String getDeviceType(BuildContext context) {
    if (isMobile(context)) return "mobile";
    if (isTablet(context)) return "tablet";
    return "desktop";
  }
}
