import 'package:flutter/material.dart';

class AppColor {
  static const Color transparentColor = Colors.transparent;
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;

  static const Color pinkColor800 = Color(0xFFEA0582);
  static const Color pinkColor900 = Color(0xFFE31D4F);
  static const Gradient pinkButton = LinearGradient(
    colors: [pinkColor800, pinkColor900],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Color green800 = Color(0xFF0EC48C);
  static const Color green900 = Color(0xFF06B791);
  static const Gradient greenButton = LinearGradient(
    colors: [green800, green900],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Color dramabg = Color(0xFF202F41);
  static const darkColor = Color(0xFF222931);
}
