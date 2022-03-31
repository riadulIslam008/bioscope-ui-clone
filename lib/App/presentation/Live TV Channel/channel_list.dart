import 'package:bioscope/App/presentation/Global%20Widgets/name_and_icon.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/channel_section.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChannelList extends GetWidget<MainViewController> {
  const ChannelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ChannelCatagorySection(
          channelType: "entertainment",
        ),
        EntertainmentChannelList(listLength: 12),
        SizedBox(height: 20),
        ChannelCatagorySection(
          channelType: "news",
        ),
        EntertainmentChannelList(listLength: 10),
        SizedBox(height: 20),
        ChannelCatagorySection(
          channelType: "sports channel",
        ),
        EntertainmentChannelList(listLength: 8),
        SizedBox(height: 20),
        ChannelCatagorySection(
          channelType: "kids",
        ),
        EntertainmentChannelList(listLength: 5),
        SizedBox(height: 20),
        ChannelCatagorySection(
          channelType: "movies channel",
        ),
        EntertainmentChannelList(listLength: 4),
        SizedBox(height: 20),
        ChannelCatagorySection(
          channelType: "musics",
        ),
        EntertainmentChannelList(listLength: 2),
      ],
    );
  }
}

class ChannelCatagorySection extends StatelessWidget {
  const ChannelCatagorySection({
    Key? key,
    required this.channelType,
  }) : super(key: key);
  final String channelType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: NameAndIcon(channel: channelType.toUpperCase(), icon: null, onTap: (){}),
    );
  }
}

class EntertainmentChannelList extends StatelessWidget {
  const EntertainmentChannelList({
    Key? key, required this.listLength,
  }) : super(key: key);

  final int listLength;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: listLength,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 2.5,
      ),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: ChannelLogo(),
        );
      },
    );
  }
}
