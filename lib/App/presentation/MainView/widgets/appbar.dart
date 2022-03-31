import 'package:bioscope/App/Core/asstes/app_assets.dart';
import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:bioscope/App/presentation/MainView/widgets/button_section.dart';
import 'package:bioscope/App/presentation/MainView/widgets/carousel_indecator.dart';
import 'package:bioscope/App/presentation/MainView/widgets/cover_photo.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:bioscope/App/presentation/MainView/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeSliverAppBar extends StatelessWidget {
  const CustomeSliverAppBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final MainViewController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SliverAppBar(
        backgroundColor: controller.changeAppBarColor.value
            ? Theme.of(context).backgroundColor
            : AppColor.transparentColor,
        pinned: true,
        elevation: 0,
        expandedHeight: ScreenDetails.screenHeight * 0.70,
        flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          background: Column(
            children: [
              SizedBox(
                height: ScreenDetails.screenHeight * 0.65,
                child: Stack(
                  children: [
                    CoverImageSection(),
                    const ButtonSection(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              CarouselIndecator(controller: controller),
            ],
          ),
        ),
        leading: LeadingIcon(
            controller: controller,
            iconColor: AppColor.whiteColor,
            onTap: () => controller.openDrawer()),
        centerTitle: true,
        title: LogoAndTitle(
            controller: controller, titleColor: AppColor.whiteColor),
        actions: [
          SearchIcon(controller: controller, iconColor: AppColor.whiteColor),
        ],
      ),
    );
  }
}

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    Key? key,
    required this.controller,
    required this.iconColor,
  }) : super(key: key);

  final MainViewController controller;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showSearch(context: context, delegate: SearchBar());
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Icon(
          CupertinoIcons.search,
          color: controller.changeAppBarColor.value
              ? Theme.of(context).iconTheme.color
              : iconColor,
        ),
      ),
    );
  }
}

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({
    Key? key,
    required this.controller,
    required this.titleColor,
  }) : super(key: key);

  final MainViewController controller;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(AppAssets.bioscopeLogo, fit: BoxFit.fitHeight),
        ),
        const SizedBox(width: 10),
        Text(
          "bioscope",
          style: TextStyle(
            color: controller.changeAppBarColor.value
                ? Theme.of(context).appBarTheme.titleTextStyle!.color
                : titleColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    Key? key,
    required this.controller,
    required this.iconColor,
    required this.onTap,
  }) : super(key: key);

  final MainViewController controller;
  final Color iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Icon(
          CupertinoIcons.text_alignleft,
          color: controller.changeAppBarColor.value
              ? Theme.of(context).iconTheme.color
              : iconColor,
        ),
      ),
    );
  }
}
