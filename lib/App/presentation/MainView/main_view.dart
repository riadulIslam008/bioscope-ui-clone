import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:bioscope/App/presentation/Drama/drama_collection.dart';
import 'package:bioscope/App/presentation/Live%20TV%20Channel/channel_list.dart';
import 'package:bioscope/App/presentation/MainView/widgets/appbar.dart';
import 'package:bioscope/App/presentation/MainView/widgets/bottom_bar.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/custome_drawer.dart';
import 'package:bioscope/App/presentation/HomeView/homeview.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:bioscope/App/presentation/MoviesPage/movie_view.dart';
import 'package:bioscope/App/presentation/Originals/originals.dart';
import 'package:bioscope/App/rotues/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends GetWidget<MainViewController> {
  const MainView({Key? key}) : super(key: key);

  final List _widget = const <Widget>[
    HomeView(),
    MoviesCollection(),
    ChannelList(),
    Originals(),
    DramaCollections(),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width > 400
            ? 400
            : ScreenDetails.screenWidth,
        child: Obx(
          () => controller.openFromDrawerPage.value
              ? Obx(() =>
                  AppPages.drawerPages[controller.changeDrawerItemNumber.value])
              : Scaffold(
                  backgroundColor: Theme.of(context).backgroundColor,
                  key: controller.scaffoldLKey,
                  bottomNavigationBar: BottomBar(),
                  floatingActionButton: FloatingButton(controller: controller),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.miniCenterDocked,
                  drawer: const CustomeDrawer(),
                  body: CustomScrollView(
                    controller: controller.scrollController,
                    slivers: [
                      CustomeSliverAppBar(controller: controller),
                      SliverToBoxAdapter(
                        child: Obx(() =>
                            _widget[controller.bottomBarSelectedItem.value]),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
    required this.controller,
    this.callFromDrawerPage = false,
  }) : super(key: key);

  final MainViewController controller;
  final bool callFromDrawerPage;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: controller.showFloatingButton.value ? 70 : 0,
        child: FloatingActionButton(
          child: const Icon(Icons.play_arrow, color: Colors.white),
          backgroundColor: AppColor.green900,
          onPressed: () {
            controller.bottomBarSelectedItem.value = 2;
            if (callFromDrawerPage) {
              controller.openFromDrawerPage.value = true;
            }
          },
        ),
      ),
    );
  }
}
