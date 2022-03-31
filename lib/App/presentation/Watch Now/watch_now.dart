import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/app_list.dart';
import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/name_and_icon.dart';
import 'package:bioscope/App/presentation/Watch%20Now/watch_now_controller.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WatchNowView extends GetWidget<WatchNowController> {
  const WatchNowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
         width: MediaQuery.of(context).size.width> 400 ? 400: Get.width,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Chewie(controller: controller.chewieController),
                      const SizedBox(
                        height: kToolbarHeight,
                        child: WatchNowPageAppBar(movieName: ""),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenDetails.screenHeight * 0.60,
                  child: Column(
                    children: [
                      Obx(
                        () => ExpansionTile(
                          title: NameAndIcon(
                            channel: "Movie Name",
                            icon: null,
                            onTap: () {},
                          ),
                          onExpansionChanged: (value) {
                            controller.expansiobPanelChange.value =
                                !controller.expansiobPanelChange.value;
                          },
                          initiallyExpanded: controller.expansiobPanelChange.value,
                          childrenPadding:
                              const EdgeInsets.symmetric(horizontal: 15),
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Director : ",
                                        style: TextStyle(
                                            color: Colors.pink,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: " Movie Name",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    const Text(
                                      "Release On Date",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Icon(CupertinoIcons.clock_solid,
                                        color: Colors.grey[400]),
                                    const SizedBox(width: 4),
                                    const Text(
                                      "runtime",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Icon(Icons.star_rate,
                                        color: Colors.orange, size: 15),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "rating",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  children: [
                                    for (var i = 0; i < 4; i++)
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Text("Geners"),
                                      ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const MovieDownloadSection(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MovieDownloadSection extends StatelessWidget {
  const MovieDownloadSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          for (var item in AppList.downloadAbleList)
            InkWell(
              onTap: () => item.onTap,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(item.iconName,
                        color: Theme.of(context).textTheme.caption!.color,
                        size: 30),
                    const SizedBox(height: 10),
                    Text(
                      item.sectionName.toUpperCase(),
                      style: TextStyle(
                          color: Theme.of(context).textTheme.caption!.color),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class WatchNowPageAppBar extends GetWidget<WatchNowController>
    implements PreferredSizeWidget {
  const WatchNowPageAppBar({Key? key, required this.movieName})
      : super(key: key);

  final String movieName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.transparentColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(Icons.arrow_back, color: AppColor.whiteColor),
      ),
      title: Text(
        movieName,
        style: const TextStyle(color: AppColor.whiteColor),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: AppColor.whiteColor),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
