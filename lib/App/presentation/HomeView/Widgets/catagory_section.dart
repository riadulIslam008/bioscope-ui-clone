import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/app_list.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagorySection extends StatelessWidget {
  const CatagorySection({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final MainViewController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Obx(
        () => ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            for (var i = 0; i < AppList.catagorySection.length; i++)
              GestureDetector(
                onTap: () {
                  controller.catagorySelectedIndex.value = i;
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: controller.catagorySelectedIndex.value == i
                        ? AppColor.green900
                        : AppColor.transparentColor,
                    border: Border.all(
                      width: 2,
                      color: controller.catagorySelectedIndex.value == i
                          ? AppColor.green900
                          : Colors.grey,
                    ),
                  ),
                  child: Text(
                    AppList.catagorySection[i].toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: controller.catagorySelectedIndex.value == i
                          ? Colors.white
                          : Theme.of(context).textTheme.headline1!.color,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
