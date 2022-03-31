import 'package:bioscope/App/Core/asstes/app_assets.dart';
import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoverImageSection extends StatelessWidget {
  CoverImageSection({
    Key? key,
  }) : super(key: key);

  final _controller = Get.find<MainViewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenDetails.screenHeight * 0.65,
      width: ScreenDetails.screenWidth,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          height: ScreenDetails.screenHeight * 0.65,
          viewportFraction: 1,
          autoPlayInterval: const Duration(seconds: 2),
          onPageChanged: (index, _) {
            _controller.selectedIndex.value = index;
          },
        ),
        items: [
          for (var i = 0; i < 6; i++)
            Builder(
              builder: (context) {
                return SizedBox(
                  width: ScreenDetails.screenWidth,
                  child: Image.asset(AppAssets.moviebg, fit: BoxFit.fill),
                );
              },
            )
        ],
      ),
      foregroundDecoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Theme.of(context).backgroundColor
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
