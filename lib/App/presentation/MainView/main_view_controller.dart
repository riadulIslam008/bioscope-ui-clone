import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class MainViewController extends GetxController {
  var scaffoldLKey = GlobalKey<ScaffoldState>();
  var settingScaffoldKey = GlobalKey<ScaffoldState>();
  var myProfileScaffoldKey = GlobalKey<ScaffoldState>();

  RxInt selectedIndex = 0.obs;
  RxInt catagorySelectedIndex = 0.obs;
  RxBool showFloatingButton = true.obs;
  RxBool changeAppBarColor = false.obs;
  RxInt bottomBarSelectedItem = 0.obs;
  RxBool isDarkTheme = false.obs;

  RxBool openFromDrawerPage = false.obs;
  RxInt changeDrawerItemNumber = 0.obs;

  late ScrollController scrollController;

  @override
  void onInit() {
    scrollController = ScrollController(
      keepScrollOffset: false,
    );
    scrollController.addListener(() {
      showFloatingButton.value =
          scrollController.position.userScrollDirection ==
              ScrollDirection.forward;
      if (scrollController.offset > ScreenDetails.screenHeight * 0.40) {
        changeAppBarColor.value = true;
      } else {
        changeAppBarColor.value = false;
      }
    });
    super.onInit();
  }

  openDrawer() => scaffoldLKey.currentState!.openDrawer();
  settingDrawer() => settingScaffoldKey.currentState!.openDrawer();
  myProfileDrawer() => myProfileScaffoldKey.currentState!.openDrawer();
}
