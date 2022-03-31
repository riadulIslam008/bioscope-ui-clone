import 'package:bioscope/App/rotues/app_pages.dart';
import 'package:bioscope/App/rotues/app_routes.dart';
import 'package:bioscope/App/theme/themes.dart';
import 'package:bioscope/di/bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      title: 'Bioscope Demo',
      theme:Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      initialRoute: Routes.initialRoutes,
      getPages: AppPages.routes,
    );
  }
}