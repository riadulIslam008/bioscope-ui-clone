import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/popular_movies.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:bioscope/App/presentation/MainView/widgets/appbar.dart';
import 'package:bioscope/App/rotues/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends GetWidget<MainViewController>
    implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.leadingIconTap,
    this.editIcon = false,
  }) : super(key: key);

  final VoidCallback leadingIconTap;
  final bool editIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      elevation: 0,
      leading: LeadingIcon(
        controller: controller,
        iconColor: Get.isDarkMode ? AppColor.whiteColor : AppColor.blackColor,
        onTap: leadingIconTap,
      ),
      title: LogoAndTitle(
        controller: controller,
        titleColor: Get.isDarkMode ? AppColor.whiteColor : AppColor.blackColor,
      ),
      centerTitle: true,
      actions: [
        SearchIcon(
          controller: controller,
          iconColor: Get.isDarkMode ? AppColor.whiteColor : AppColor.blackColor,
        ),
        if (editIcon) ...[
          InkWell(
            onTap: () => Get.toNamed(Routes.editProfile),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomeText(
                  name: "edit".toUpperCase(),
                  color: Theme.of(context).appBarTheme.titleTextStyle!.color!,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          )
        ],
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
