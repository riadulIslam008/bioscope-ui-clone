import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key, this.callFromDrawerPage = false}) : super(key: key);
  final bool callFromDrawerPage;

  final MainViewController _controller = Get.find<MainViewController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _controller.showFloatingButton.value
          ? BottomAppBar(
            notchMargin: 6,
            shape: const CircularNotchedRectangle(),
            color: AppColor.transparentColor,
            child: ClipRRect(
              borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
              child: BottomNavigationBar(
                  backgroundColor: Theme.of(context).backgroundColor,
                  elevation: 0,
                  unselectedItemColor: Colors.grey,
                  selectedItemColor: AppColor.green900,
                  selectedFontSize: 12,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  currentIndex: _controller.bottomBarSelectedItem.value,
                  onTap: (presentIndex) {
                    _controller.bottomBarSelectedItem.value = presentIndex;
                    _controller.openFromDrawerPage.value = false;
                  },
                  selectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.local_movies_outlined),
                        label: "Movies"),
                    BottomNavigationBarItem(
                        icon: Icon(null),
                        label: "Live TV",
                        backgroundColor: AppColor.transparentColor),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.circle_outlined), label: "Orginals"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.masks_outlined), label: "Drama"),
                  ],
                ),
            ),
          )
          : const SizedBox.shrink(),
    );
  }
}
