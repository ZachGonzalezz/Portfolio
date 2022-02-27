import 'dart:io' show Platform;

import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  //If is true then user in on mobile app if false user is in browser
  static bool isMobileOs(BuildContext context) => Platform.isAndroid || Platform.isAndroid;

  
}