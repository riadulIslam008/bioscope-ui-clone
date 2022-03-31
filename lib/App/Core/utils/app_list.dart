import 'package:bioscope/App/Core/useCases/channel_list.dart';
import 'package:bioscope/App/Core/useCases/menu_item.dart';
import 'package:bioscope/App/Core/useCases/movie_download_model.dart';
import 'package:bioscope/App/Core/useCases/popular_movies_model.dart';
import 'package:flutter/material.dart';

class AppList {
  static final List appMenuListItem = [
    MenuItems(
      text: "My Profile",
      icon: Icons.person_outline,
    ),
    MenuItems(
      text: "My Download",
      icon: Icons.download_outlined,
    ),
    MenuItems(
      text: "Setting & Theme",
      icon: Icons.settings_outlined,
    ),
    MenuItems(
      text: "Invite Friend",
      icon: Icons.add_box_rounded,
    ),
  ];

  static final List channelItems = [
    ChannelItem(channelName: "channel Name1"),
    ChannelItem(channelName: "channel Name2"),
    ChannelItem(channelName: "channel Name3"),
    ChannelItem(channelName: "channel Name4"),
    ChannelItem(channelName: "channel Name5"),
    ChannelItem(channelName: "channel Name6"),
  ];

  static final List catagorySection = [
    "All",
    "News",
    "drama",
    "entertainment",
    "sports",
    "talkshow",
    "kids",
    "music",
    "movie",
    "infotainment",
    "political",
    "islamic",
    "religious"
  ];

  static final List popularMovieList = [
    PopularMovieModel(movieName: "oh My God", rating: 4.8),
    PopularMovieModel(movieName: "Aura Ep 01: Boron", rating: 4.5),
    PopularMovieModel(movieName: "oh My God", rating: 4.8),
    PopularMovieModel(movieName: "oh My God", rating: 4.8),
    PopularMovieModel(movieName: "oh My God", rating: 4.8),
    PopularMovieModel(movieName: "oh My God", rating: 4.8),
  ];

  static final List downloadAbleList = [
    DownloadableItem(iconName: Icons.download_outlined, sectionName: "download", onTap: (){}),
    DownloadableItem(iconName: Icons.share_outlined, sectionName: "share", onTap: (){}),
    DownloadableItem(iconName: Icons.add_outlined, sectionName: "my list", onTap: (){}),
  ];
}
