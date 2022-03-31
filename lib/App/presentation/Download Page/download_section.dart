import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:bioscope/App/presentation/MainView/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DownloadPage extends GetWidget<MainViewController> {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width> 400 ? 400: Get.width,
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(
            // leading: IconButton(
            //   onPressed: () {
            //     controller.openFromDrawerPage.value = false;
            //   },
            //   icon: const Icon(Icons.arrow_back),
            // ),
            title: LogoAndTitle(
              controller: controller,
              titleColor: Theme.of(context).appBarTheme.titleTextStyle!.color!,
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.download_outlined,
                  size: 70,
                  color: Colors.grey,
                ),
                const SizedBox(height: 15),
                Text(
                  "Your downloadvideos will appear here.",
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
