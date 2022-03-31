import 'package:bioscope/App/Core/asstes/app_assets.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class WatchNowController extends GetxController {
  RxBool expansiobPanelChange = true.obs;
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void onInit() {
    initializedVideoPlayer();
    super.onInit();
  }

  void initializedVideoPlayer() async {
    videoPlayerController = VideoPlayerController.asset(
      AppAssets.videoAssets,
    );
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      looping: true,
      aspectRatio: 3 / 2,
      autoInitialize: true,
      materialProgressColors: ChewieProgressColors(
        backgroundColor: Colors.blue,
        bufferedColor: Colors.grey,
        handleColor: Colors.red,
        playedColor: Colors.white,
      ),
      autoPlay: true,
      errorBuilder: (context, errorMessage) => const Center(
        child: Text(
          "Video Can't load",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.onClose();
  }
}
