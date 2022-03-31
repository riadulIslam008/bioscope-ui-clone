import 'package:bioscope/App/Core/asstes/app_assets.dart';
import 'package:bioscope/App/Core/utils/app_list.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/name_and_icon.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChannelSection extends StatelessWidget {
  ChannelSection({
    Key? key,
    required this.channel,
  }) : super(key: key);

  final String channel;

  final MainViewController mainViewController = Get.find<MainViewController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          NameAndIcon(
              channel: channel,
              onTap: () {
                mainViewController.bottomBarSelectedItem.value = 2;
              }),
          const SizedBox(height: 10),
          SizedBox(
            height: 140,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                for (var channelItem in AppList.channelItems)
                  Column(
                    children: [
                      const SizedBox(
                        height: 100,
                        width: 150,
                        child: ChannelLogo(),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        channelItem.channelName,
                        style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).textTheme.headline1!.color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChannelLogo extends StatelessWidget {
  const ChannelLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      elevation: 5,
      child: Image.asset(
        AppAssets.channelLogo,
        fit: BoxFit.fill,
      ),
    );
  }
}
