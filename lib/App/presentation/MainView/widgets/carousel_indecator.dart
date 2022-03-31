
import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselIndecator extends StatelessWidget {
  const CarouselIndecator({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final MainViewController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < 6; i++)
          Obx(
            () => Container(
              margin: const EdgeInsets.all(3),
              height: 10,
              width: controller.selectedIndex.value == i ? 16 : 10,
              decoration: BoxDecoration(
                  color: controller.selectedIndex.value == i
                      ? AppColor.green900
                      : AppColor.transparentColor,
                  borderRadius: BorderRadius.circular(
                      controller.selectedIndex.value == i ? 40 : 50),
                  border: Border.all(
                    width: 1.5,
                    color: AppColor.green900,
                  )),
            ),
          ),
      ],
    );
  }
}