import 'package:bioscope/App/presentation/Coupon%20Page/coupon_page.dart';
import 'package:bioscope/App/presentation/Download%20Page/download_section.dart';
import 'package:bioscope/App/presentation/Edit%20Profile/edit_profile.dart';
import 'package:bioscope/App/presentation/MainView/main_view.dart';
import 'package:bioscope/App/presentation/My%20Profile/profile.dart';
import 'package:bioscope/App/presentation/Settings%20And%20Themes/settings_and_theme.dart';
import 'package:bioscope/App/presentation/Watch%20Now/watch_now.dart';
import 'package:bioscope/App/rotues/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.initialRoutes, page: () => const MainView()),
    GetPage(
        name: Routes.myProfile,
        page: () => const Profile(),
        participatesInRootNavigator: false),
    GetPage(name: Routes.editProfile, page: () => const EditProfile()),
    GetPage(name: Routes.myDownloadList, page: () => const DownloadPage()),
    GetPage(name: Routes.couponPage, page: () => const CouponPage()),
    GetPage(name: Routes.settingAndTheme, page: () => const SettingsAndTheme()),
    GetPage(name: Routes.watchNowView, page: () => const WatchNowView()),
  ];

  static const drawerPages = [Profile(), DownloadPage(), SettingsAndTheme(),CouponPage()];
}
