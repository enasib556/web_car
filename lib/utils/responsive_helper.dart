import 'package:flutter/material.dart';

class ResponsiveHelper {
  // Singleton pattern to ensure a single instance
  static final ResponsiveHelper _instance = ResponsiveHelper._internal();

  factory ResponsiveHelper() {
    return _instance;
  }

  ResponsiveHelper._internal();

  // Method to get screen width
  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Method to get screen height
  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Method to check if it's a mobile device
  bool isMobile(BuildContext context) {
    return getScreenWidth(context) < 600;
  }

  // Method to check if it's a tablet device
  bool isTablet(BuildContext context) {
    double width = getScreenWidth(context);
    return width >= 600 && width < 1200;
  }

  // Method to check if it's a desktop device
  bool isDesktop(BuildContext context) {
    return getScreenWidth(context) >= 1200;
  }

  // Method to get widget for different screen types
  Widget getResponsiveWidget({
    required BuildContext context,
    required Widget mobileWidget,
    required Widget tabletWidget,
    required Widget desktopWidget,
  }) {
    if (isMobile(context)) {
      return mobileWidget;
    } else if (isTablet(context)) {
      return tabletWidget;
    } else {
      return desktopWidget;
    }
  }
}
