import 'package:bioscope/App/presentation/Edit%20Profile/edit_profile_controller.dart';
import 'package:bioscope/App/presentation/HomeView/home_controller.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:bioscope/App/presentation/Watch%20Now/watch_now_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MainViewController>(() => MainViewController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<EditProfileController>(() => EditProfileController(), fenix: true);
    Get.lazyPut<WatchNowController>(() => WatchNowController(), fenix: true);
  }
  
}