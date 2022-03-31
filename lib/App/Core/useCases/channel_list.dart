import 'package:bioscope/App/Core/asstes/app_assets.dart';

class ChannelItem {
  final String channelName;
  final String channelLogo;

  ChannelItem(
      {required this.channelName, this.channelLogo = AppAssets.channelLogo});
}
