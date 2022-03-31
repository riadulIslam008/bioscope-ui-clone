import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.grey,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.whiteColor,
      titleTextStyle: TextStyle(
        color: AppColor.blackColor,
        fontSize: 20,
      ),
      iconTheme: IconThemeData(color: AppColor.blackColor, size: 20),
    ),
    backgroundColor: AppColor.whiteColor,
    textTheme: TextTheme(
  //appBar movie Geners text white theme
      headline1: TextStyle(
        color: Colors.grey[900],
      ),
  //drawer bioscope text theme
      headline3: const TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
  //trailer section Movie Name theme
      headline4: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.grey[900],
        fontSize: 17,
      ),
  // name and icon section text theme
      bodyText1: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
        color: AppColor.blackColor,
      ),
  //movie  subtitle section
      caption:const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w500,
        fontSize: 13,
      ),
    ),
  );
  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: AppColor.green900,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.darkColor,
      titleTextStyle: TextStyle(
        color: AppColor.whiteColor,
        fontSize: 20,
      ),
      iconTheme: IconThemeData(color: AppColor.whiteColor, size: 20),
    ),
    backgroundColor: AppColor.darkColor,
    textTheme: const TextTheme(
  //appBar bioscope text white theme
      headline1: TextStyle(
        color: AppColor.whiteColor,
        fontSize: 15,
      ),
  //drawer bioscope text theme
      headline3: TextStyle(
        fontSize: 25,
        color: AppColor.whiteColor,
        fontWeight: FontWeight.bold,
      ),
  //trailer section Movie Name theme
      headline4: TextStyle(
        fontWeight: FontWeight.w700,
        color: AppColor.whiteColor,
        fontSize: 17,
      ),
  // name and icon section text theme
      bodyText1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
        color: AppColor.whiteColor,
      ),
    caption: TextStyle(
        color: AppColor.whiteColor,
        fontSize: 13,
      ),
    ),
  );
}
