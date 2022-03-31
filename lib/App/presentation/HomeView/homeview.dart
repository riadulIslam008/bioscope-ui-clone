import 'package:bioscope/App/presentation/HomeView/Widgets/catagory_section.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/channel_section.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/drama_section.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/popular_movies.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/song_section.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/trailer_section.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetWidget<MainViewController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        ChannelSection(channel: "tv channel"),
        const SizedBox(height: 20),
        CatagorySection(controller: controller),
        const Divider(thickness: 2),
        const SizedBox(height: 10),
        const PopularMovies(channel: "Most Popular"),
        const SizedBox(height: 20),
        const TrailerSection(),
        const SizedBox(height: 20),
        const DramaSection(prime: true),
        const SizedBox(height: 20),
        const SongSection(),
        const SizedBox(height: 20),
        const DramaSection(prime: false),
        const SizedBox(height: 10),
        const DramaSection(prime: false),
        const SizedBox(height: 15),
        PopularMovies(channel: "Olpho kothar golpo -abu".toUpperCase()),
        const SizedBox(height: 15),
        PopularMovies(channel: "7 dugune 14".toUpperCase()),
        const SizedBox(height: 15),
        PopularMovies(channel: "golpo golpo khela by Angshu".toUpperCase()),
        const SizedBox(height: 15),
        const DramaSection(prime: false),
      ],
    );
  }
}
